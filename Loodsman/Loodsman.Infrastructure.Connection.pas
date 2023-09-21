// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this file,
// You can obtain one at http://mozilla.org/MPL/2.0/
unit Loodsman.Infrastructure.Connection;

interface

uses
    SysUtils, Loodsman_TLB, Loodsman.Infrastructure.Types;

/// <summary>Освобождает ссылку на общее подключение.</summary>
procedure FreeConnections;

/// <summary>Создает новое подключение к серверу приложений.</summary>
/// <remarks>Параметры подключения получаются из реестра.</remarks>
function GetLoodsmanConnection: IRemoteConnection; overload;

/// <summary>Создает новое подключение к серверу приложений.</summary>
/// <param name="APluginCall">Интерейс, передаваемый в плагин, для работы с сервером приложений.</param>
function GetLoodsmanConnection(const APluginCall: IPluginCall): IRemoteConnection; overload;

/// <summary>Создает новое подключение к серверу приложений.</summary>
/// <remarks>Функция всегда создает новое подключение.
/// Параметры подключения получаются из реестра.</remarks>
function GetLoodsmanConnectionEx: IRemoteConnection; overload;

/// <summary>Создает новое подключение к серверу приложений.</summary>
/// <param name="ABase">Имя базы данных.</param>
/// <param name="AUserName">Имя пользователя для аутентификации средствами SQL-сервера.</param>
/// <param name="APassword">Пароль для аутентификации средствами SQL-сервера.</param>
/// <remarks>Функция всегда создает новое подключение.
/// Параметры подключения к базе данных указываются при вызове функции.</remarks>
function GetLoodsmanConnectionEx(const ABase, AUserName, APassword: String): IRemoteConnection; overload;

implementation

uses
    ActiveX, Classes, ComObj, Variants, Windows, DBClient, MConnect, MidConst,
    SConnect, WConnect, Loodsman.Infrastructure.Config, Loodsman.Infrastructure.DataSet;

const
    CMaxDispArgs = 32;
    CLoodsmanAppServerGUID = '{392BA982-A82F-44AB-BA8A-69BE25199F73}';
    CWorkflowAppServerGUID = '{3D7F4F8F-F8A2-4AC5-B9E7-48CBC7CD2749}';
    CWebConnectionAgent = 'ЛОЦМАН:PLM Client';
    CWorkflowBase = 'WorkFlow';
    CWorkflowMethodPrefix = 'WF';
    CDisconnectTimeOut = 15 * 60 * 1000;

resourcestring
    SAppServerFailed = '%s: %s'#13#10;
    SAppServerListFailed = 'Не удалось подключиться к серверу приложений ЛОЦМАН:PLM.'#13#10#13#10'%s';
    SAppServerListEmpty = 'Не определен список серверов приложений ЛОЦМАН:PLM.';

var
    SharedConnection: IRemoteConnection;
    DisconnectTimerID: NativeUInt;

type
    TConnectionBase = class abstract(TInterfacedObject, IRemoteConnection)
    private
        FCurrentBase: String;
        FCurrentCheckOutID: Integer;
        FDBAuthList: IDataSet;
        FLastCalled: Cardinal;
        FLastCalledWF: Cardinal;
        FServerVersion: Integer;
        FWorkflowBaseConnected: Boolean;
        procedure DisconnectTimerProc(ATime: Cardinal);
    protected
        procedure ConnectTo(const ABase: String);
        procedure ConnectToCheckOut(const ABase: String; const ACheckOutID:
            Integer);
        procedure ConnectToWF(const ABase: String);
        function DoRunMethod(const AName: String; const AParams: array of
            Variant): Variant; virtual; abstract;
        function DoRunMethodWF(const AName: String; const AParams: array of
            Variant): Variant; virtual; abstract;
    public
        constructor Create(const ADBAuthList: IDataSet);
        function GetAppServer: Variant; virtual;
        function GetAppServerWF: Variant; virtual;
        function GetConnected: Boolean; virtual;
        function GetConnectedWF: Boolean; virtual;
        function GetCurrentBase: String;
        function GetCurrentCheckOutID: Integer;
        function GetDataSet(const AName: String; const AParams: array of
            Variant): IDataSet;
        function GetServerName: String; virtual;
        function GetServerVersion: Integer;
        procedure RestoreState;
        function RunMethod(const AName: String; const AParams: array of
            Variant): Variant;
        procedure SetConnected(Value: Boolean); virtual;
        procedure SetConnectedWF(Value: Boolean); virtual;
        procedure SetCurrentBase(const Value: String);
        procedure SetCurrentCheckOutID(Value: Integer);
        property AppServer: Variant read GetAppServer;
        property AppServerWF: Variant read GetAppServerWF;
        property Connected: Boolean read GetConnected write SetConnected;
        property ConnectedWF: Boolean read GetConnectedWF write SetConnectedWF;
        property CurrentBase: String read GetCurrentBase write SetCurrentBase;
        property CurrentCheckOutID: Integer read GetCurrentCheckOutID write
            SetCurrentCheckOutID;
        property ServerName: String read GetServerName;
        property ServerVersion: Integer read GetServerVersion;
    end;

    TPluginCallConnection = class(TConnectionBase)
    private
        FPluginCall: IPluginCall;
        function GetSharedConnection: IRemoteConnection;
    protected
        function CallRunMethod(const AName: String; const AParams: array of
            Variant): Variant;
        function DoRunMethod(const AName: String; const AParams: array of
            Variant): Variant; override;
        function DoRunMethodWF(const AName: String; const AParams: array of
            Variant): Variant; override;
        property SharedConnection: IRemoteConnection read GetSharedConnection;
    public
        constructor Create(const ADBAuthList: IDataSet; const APluginCall:
            IPluginCall);
    end;

    TRemoteConnection = class(TConnectionBase)
    private
        FConnection: TDispatchConnection;
        FConnectionWF: TDispatchConnection;
        function GetConnection: TDispatchConnection;
        function GetConnectionWF: TDispatchConnection;
    protected
        function CallRunMethod(const AConnection: TDispatchConnection; const
            AName: String; const AParams: array of Variant): Variant;
        function CreateConnection(const AWorkflow: Boolean):
            TDispatchConnection;
        function DoRunMethod(const AName: String; const AParams: array of
            Variant): Variant; override;
        function DoRunMethodWF(const AName: String; const AParams: array of
            Variant): Variant; override;
        function TryCreateConnection(const AConnectionString, AServerGUID:
            String): TDispatchConnection;
        property Connection: TDispatchConnection read GetConnection;
        property ConnectionWF: TDispatchConnection read GetConnectionWF;
    public
        destructor Destroy; override;
        function GetAppServer: Variant; override;
        function GetAppServerWF: Variant; override;
        function GetConnected: Boolean; override;
        function GetConnectedWF: Boolean; override;
        function GetServerName: String; override;
        procedure SetConnected(Value: Boolean); override;
        procedure SetConnectedWF(Value: Boolean); override;
    end;


{$I DispConnFix.inc}

procedure DisconnectTimerProc(AWindow: THandle; AMessage: Cardinal;
    ATimerID: NativeUInt; ATime: Cardinal); stdcall;
begin
    if SharedConnection <> nil then
        TConnectionBase(SharedConnection).DisconnectTimerProc(ATime);
end;

procedure FreeConnections;
begin
    if DisconnectTimerID <> 0 then
    begin
        KillTimer(0, DisconnectTimerID);
        DisconnectTimerID := 0;
    end;
    SharedConnection := nil;
    TWCFConnection.CloseShared();
end;

function GetCompName: String;
var
    LBuffSize: LongWord;
    LBuff: String;
begin
    LBuffSize := MAX_COMPUTERNAME_LENGTH + 1;
    SetLength(LBuff, LBuffSize);
    if GetComputerName(PChar(LBuff), LBuffSize) then
        SetLength(LBuff, LBuffSize)
    else
        SetLength(LBuff, 0);
    Result := UpperCase(LBuff, loUserLocale);
end;

function GetLoodsmanSharedConnection: IRemoteConnection;
begin
    if SharedConnection = nil then
    begin
        DisconnectTimerID := SetTimer(0, 0, CDisconnectTimeOut, @DisconnectTimerProc);
        SharedConnection := TRemoteConnection.Create(GetDBAuthList());
    end;
    Result := SharedConnection;
end;

function GetLoodsmanConnection: IRemoteConnection;
begin
    if GetCurrentThreadID() = MainThreadID then
        Result := GetLoodsmanSharedConnection()
    else
        Result := TRemoteConnection.Create(GetDBAuthList());
end;

function GetLoodsmanConnection(const APluginCall: IPluginCall): IRemoteConnection;
begin
    Result := TPluginCallConnection.Create(GetDBAuthList(), APluginCall);
end;

function GetLoodsmanConnectionEx: IRemoteConnection;
begin
    Result := TRemoteConnection.Create(GetDBAuthList());
end;

function GetLoodsmanConnectionEx(const ABase, AUserName, APassword: String): IRemoteConnection;
var
    LDBAuthList: IDataSet;
begin
    LDBAuthList := CreateDBAuthList();
    SetBaseAuthParams(LDBAuthList, ABase, amSqlServerSaved, AUserName, APassword);
    SetBaseAuthParams(LDBAuthList, CWorkflowBase, amSqlServerSaved, AUserName, APassword);
    Result := TRemoteConnection.Create(LDBAuthList);
end;

{
******************************* TConnectionBase ********************************
}
constructor TConnectionBase.Create(const ADBAuthList: IDataSet);
begin
    inherited Create();
    FDBAuthList := ADBAuthList;
    FLastCalled := GetTickCount();
    FLastCalledWF := FLastCalled;
end;

procedure TConnectionBase.ConnectTo(const ABase: String);
var
    LDatabaseAuth: TDatabaseAuth;
    LUserName: String;
    LPassword: String;
    LNewPassword: Boolean;
    LSavePassword: Boolean;
begin
    LDatabaseAuth := amWindows;
    LNewPassword := False;
    LSavePassword := True;
    if FDBAuthList <> nil then
        GetBaseAuthParamsWithUI(FDBAuthList, ABase, LDatabaseAuth, LUserName, LPassword, LNewPassword, LSavePassword);

    if LDatabaseAuth in [amSqlServer,amSqlServerSaved] then
        RunMethod('ConnectToDBEx', [ABase, LUserName, LPassword])
    else
        RunMethod('ConnectToDB', [ABase]);

    if LNewPassword then
    begin
        SetBaseAuthParams(FDBAuthList, ABase, LDatabaseAuth, LUserName, LPassword);
        if LSavePassword then
            SetDBAuthList(FDBAuthList);
    end;
end;

procedure TConnectionBase.ConnectToCheckOut(const ABase: String; const
    ACheckOutID: Integer);
begin
    if ACheckOutID <> 0 then
    begin
        RunMethod('ConnectToCheckOut', [ACheckOutID, ABase]);
    end
    else
    begin
        RunMethod('DisconnectCheckOut', [FCurrentCheckOutID, ABase]);
    end;
end;

procedure TConnectionBase.ConnectToWF(const ABase: String);
var
    LBase: String;
    LDatabaseAuth: TDatabaseAuth;
    LUserName: String;
    LPassword: String;
    LNewPassword: Boolean;
    LSavePassword: Boolean;
begin
    // Для версии сервера приложений ниже 10-й подключение к WorkFlow
    // выполняется только один раз
    if not FWorkflowBaseConnected then
    begin
        // Начиная с версии 10 нет отдельной базы данных WorkFlow.
        // При подключении к серверу приложений WorkFlow версии ниже 10-й,
        // вместо указанной базы ABase будет осуществлено подключение к
        // базе WorkFlow. При этом само WorkFlow будет подключено к указанной
        // базе ABase, см. ниже
        if ServerVersion < CAppServerV10 then
            LBase := CWorkflowBase
        else
            LBase := ABase;

        LDatabaseAuth := amWindows;
        LNewPassword := False;
        LSavePassword := True;
        if FDBAuthList <> nil then
            GetBaseAuthParamsWithUI(FDBAuthList, LBase, LDatabaseAuth, LUserName, LPassword, LNewPassword, LSavePassword);

        if ServerVersion < CAppServerV10 then
        begin
            RunMethod('WFConnectWorkFlowOnDb', [GetCompName(), LUserName, LPassword]);
            FWorkflowBaseConnected := True;
        end
        else
        begin
            RunMethod('WFConnectWorkFlowOnDbEx', [LBase, GetCompName(), LUserName, LPassword]);
        end;

        if LNewPassword then
        begin
            SetBaseAuthParams(FDBAuthList, ABase, LDatabaseAuth, LUserName, LPassword);
            if LSavePassword then
                SetDBAuthList(FDBAuthList);
        end;

        if ServerVersion < CAppServerV10 then
        begin
            if FDBAuthList <> nil then
                RunMethod('WFSendDbList', [DeCryptDBAuthListData(FDBAuthList.Data)]);
        end;
    end;

    // Для того, чтобы методы сервера приложений Workflow могли получать
    // информация из БД Лоцмана (например, для объектов автоопераций),
    // необходимо подключить базу Workflow к базе Лоцмана

    LDatabaseAuth := amWindows;
    LNewPassword := False;
    LSavePassword := True;
    if FDBAuthList <> nil then
        GetBaseAuthParamsWithUI(FDBAuthList, ABase, LDatabaseAuth, LUserName, LPassword, LNewPassword, LSavePassword);

    RunMethod('WFConnectToDb', [ABase, LUserName, LPassword]);

    if LNewPassword then
    begin
        SetBaseAuthParams(FDBAuthList, ABase, LDatabaseAuth, LUserName, LPassword);
        if LSavePassword then
            SetDBAuthList(FDBAuthList);
    end;
end;

procedure TConnectionBase.DisconnectTimerProc(ATime: Cardinal);
begin
    // Проверка переполнения счетчика GetTickCount
    if FLastCalled > ATime then
        FLastCalled := GetTickCount();
    if FLastCalledWF > ATime then
        FLastCalledWF := GetTickCount();

    // Отключение неактивных подключений
    if (ATime - FLastCalled) > CDisconnectTimeOut then
        Connected := False;
    if (ATime - FLastCalledWF) > CDisconnectTimeOut then
        ConnectedWF := False;
end;

function TConnectionBase.GetAppServer: Variant;
begin
    Result := Unassigned;
end;

function TConnectionBase.GetAppServerWF: Variant;
begin
    Result := Unassigned;
end;

function TConnectionBase.GetConnected: Boolean;
begin
    Result := True;
end;

function TConnectionBase.GetConnectedWF: Boolean;
begin
    Result := True;
end;

function TConnectionBase.GetCurrentBase: String;
begin
    Result := FCurrentBase;
end;

function TConnectionBase.GetCurrentCheckOutID: Integer;
begin
    Result := FCurrentCheckOutID;
end;

function TConnectionBase.GetDataSet(const AName: String; const AParams: array
    of Variant): IDataSet;
begin
    Result := CreateDataSet();
    Result.Data := RunMethod(AName, AParams);
end;

function TConnectionBase.GetServerName: String;
begin
    Result := '';
end;

function TConnectionBase.GetServerVersion: Integer;
begin
    if FServerVersion = 0 then
    begin
        FServerVersion := StrToIntDef(RunMethod('ApplicationVersion', []), CAppServerV8);
    end;
    Result := FServerVersion;
end;

procedure TConnectionBase.RestoreState;
begin
    if FCurrentBase <> '' then
    begin
        if Connected then
        begin
            ConnectTo(FCurrentBase);
            if FCurrentCheckOutID <> 0 then
                ConnectToCheckOut(FCurrentBase, FCurrentCheckOutID);
        end;
        if ConnectedWF then
            ConnectToWF(FCurrentBase);
    end;
end;

function TConnectionBase.RunMethod(const AName: String; const AParams: array of
    Variant): Variant;
var
    LWorkflowMethod: Boolean;
begin
    LWorkflowMethod := StrLComp(PChar(AName), CWorkflowMethodPrefix, Length(CWorkflowMethodPrefix)) = 0;
    if LWorkflowMethod then
    begin
        FLastCalledWF := GetTickCount();
        Result := DoRunMethodWF(Copy(AName, Length(CWorkflowMethodPrefix) + 1, Length(AName)), AParams);
    end
    else
    begin
        FLastCalled := GetTickCount();
        Result := DoRunMethod(AName, AParams);
    end;
end;

procedure TConnectionBase.SetConnected(Value: Boolean);
begin
end;

procedure TConnectionBase.SetConnectedWF(Value: Boolean);
begin
    if not Value then
        FWorkflowBaseConnected := False;
end;

procedure TConnectionBase.SetCurrentBase(const Value: String);
begin
    if FCurrentBase <> Value then
    begin
        if Connected then
        begin
            ConnectTo(Value);
            FCurrentCheckOutID := 0;
        end;
        if ConnectedWF then
            ConnectToWF(Value);
        FCurrentBase := Value;
    end;
end;

procedure TConnectionBase.SetCurrentCheckOutID(Value: Integer);
begin
    if FCurrentCheckOutID <> Value then
    begin
        if Connected then
            ConnectToCheckOut(FCurrentBase, Value);
        FCurrentCheckOutID := Value;
    end;
end;

{
**************************** TPluginCallConnection *****************************
}
constructor TPluginCallConnection.Create(const ADBAuthList: IDataSet; const
    APluginCall: IPluginCall);
begin
    inherited Create(ADBAuthList);
    FPluginCall := APluginCall;
end;

function TPluginCallConnection.CallRunMethod(const AName: String; const
    AParams: array of Variant): Variant;
var
    LParams: Variant;
    i: Integer;
begin
    LParams := VarArrayCreate([0, High(AParams)], varVariant);
    for i := 0 to High(AParams) do
    begin
        if VarType(AParams[i]) = varUString then
        begin
            LParams[i] := VarAsType(AParams[i], varOleStr)
        end
        else
            LParams[i] := AParams[i];
    end;
    Result := FPluginCall.RunMethod(AName, LParams);
end;

function TPluginCallConnection.DoRunMethod(const AName: String; const AParams:
    array of Variant): Variant;
begin
    Result := CallRunMethod(AName, AParams);
end;

function TPluginCallConnection.DoRunMethodWF(const AName: String; const
    AParams: array of Variant): Variant;
begin
    if ServerVersion >= CAppServerV11 then
        Result := CallRunMethod(CWorkflowMethodPrefix + AName, AParams)
    else
        Result := SharedConnection.RunMethod(CWorkflowMethodPrefix + AName, AParams);
end;

function TPluginCallConnection.GetSharedConnection: IRemoteConnection;
begin
    Result := GetLoodsmanConnection();
    Result.CurrentBase := CurrentBase;
    Result.CurrentCheckOutID := CurrentCheckOutID;
end;

{
****************************** TRemoteConnection *******************************
}
destructor TRemoteConnection.Destroy;
begin
    FreeAndNil(FConnection);
    FreeAndNil(FConnectionWF);
    inherited Destroy;
end;

function TRemoteConnection.CallRunMethod(const AConnection: TDispatchConnection;
    const AName: String; const AParams: array of Variant): Variant;
var
    LAppServerDisp: IDispatch;
    LNames: array[0..0] of PWideChar;
    LNameDispId: TDispID;
    Hr: HResult;
    LArgs: array[0..CMaxDispArgs - 1] of OleVariant;
    LArgCnt: Integer;
    LReturnCode: OleVariant;
    LErrorMessage: OleVariant;
    i: Integer;
    LDispParams: TDispParams;
    LExcepInfo: TExcepInfo;
    LArgErr: Integer;
begin
    Assert(VarType(AConnection.AppServer) = varDispatch);
    LAppServerDisp := IDispatch(AConnection.AppServer);

    LNames[0] := PWideChar(AName);
    Hr := LAppServerDisp.GetIDsOfNames(GUID_NULL, @LNames, 1, 0, @LNameDispId);
    OleCheck(Hr);

    TVariantArg(LArgs[0]).vt := VT_BYREF or VT_VARIANT;
    TVariantArg(LArgs[0]).pvarVal := @LErrorMessage;
    TVariantArg(LArgs[1]).vt := VT_BYREF or VT_VARIANT;
    TVariantArg(LArgs[1]).pvarVal := @LReturnCode;
    LArgCnt := 2;

    for i := High(AParams) downto 0 do
    begin
        if VarType(AParams[i]) = (varVariant or varByRef) then
        begin
            TVariantArg(LArgs[LArgCnt]).vt := VT_BYREF or VT_VARIANT;
            TVariantArg(LArgs[LArgCnt]).pvarVal := TVarData(AParams[i]).VPointer;
        end
        else
            LArgs[LArgCnt] := AParams[i];

        Inc(LArgCnt);
        if LArgCnt >= CMaxDispArgs then
            Break;
    end;

    with LDispParams do begin
        rgvarg := @LArgs;
        cArgs := LArgCnt;
        rgdispidNamedArgs := nil;
        cNamedArgs := 0;
    end;
    Hr := LAppServerDisp.Invoke(LNameDispId, GUID_NULL, 0, DISPATCH_METHOD, LDispParams,
        @Result, @LExcepInfo, @LArgErr);
    if Failed(Hr) and (High(AParams) = -1) then
    begin
        LDispParams.cArgs := 0;
        LDispParams.rgvarg := nil;
        Hr := LAppServerDisp.Invoke(LNameDispId, GUID_NULL, 0, DISPATCH_PROPERTYGET, LDispParams,
            @Result, @LExcepInfo, @LArgErr);
    end;
    if Failed(Hr) then
        DispatchInvokeError(Hr, LExcepInfo);

    if (LReturnCode <> 0) then
        raise EServerException.Create(LErrorMessage, LReturnCode);
end;

function TRemoteConnection.CreateConnection(const AWorkflow: Boolean):
    TDispatchConnection;
var
    LServerGUID: String;
    LAppServerList: TStringList;
    i: Integer;
    LConnection: TDispatchConnection;
    LErrors: String;
begin
    if AWorkflow then
        LServerGUID := CWorkflowAppServerGUID
    else
        LServerGUID := CLoodsmanAppServerGUID;
    LAppServerList := TStringList.Create();
    try
        GetAppServerList(AWorkflow, LAppServerList);
        if LAppServerList.Count = 0 then
            raise EServerException.Create(SAppServerListEmpty, 0);
        for i := 0 to LAppServerList.Count - 1 do
        begin
            try
                LConnection := TryCreateConnection(LAppServerList.Strings[i], LServerGUID);
                Exit(LConnection);
            except
                on E: Exception do
                begin
                    LErrors := LErrors + Format(SAppServerFailed,
                        [Copy(LAppServerList.Strings[i], 1, 32), E.Message]);
                end;
            end;
        end;
    finally
        LAppServerList.Free();
    end;
    raise EServerException.CreateFmt(SAppServerListFailed, [LErrors]);
end;

function TRemoteConnection.DoRunMethod(const AName: String; const AParams:
    array of Variant): Variant;
var
    LRpcFailed: Boolean;
begin
    // В случае ошибки при первом вызове, метод сервера приложений
    // вызывается повторно. Дело в том, что при аварийном завершении
    // серверного процесса соединение с сервером приложений теряется.
    // Поэтому мы пытаемся подключиться заново и восстановить состояние
    // соединения
    LRpcFailed := False;
    try
        Result := CallRunMethod(Connection, AName, AParams);
    except
        on E: EOleSysError do
        begin
            LRpcFailed := True;
        end;
        on E: EServerException do
        begin
            // 2 - Тайм-аут локального сокета
            if E.ErrorCode = 2 then
                LRpcFailed := True
            else
                raise;
        end;
    end;

    if LRpcFailed then
    begin
        Connected := False;
        ConnectTo(FCurrentBase);
        if FCurrentCheckOutID <> 0 then
            ConnectToCheckOut(FCurrentBase, FCurrentCheckOutID);
        Result := CallRunMethod(Connection, AName, AParams);
    end;
end;

function TRemoteConnection.DoRunMethodWF(const AName: String; const AParams:
    array of Variant): Variant;
var
    LRpcFailed: Boolean;
begin
    // Некоторые редко используемые методы сервера приложений WorkFlow не принимают
    // два последних параметра inReturnCode, stErrorMessage
    if AName = 'SendDbList' then
        Exit(ConnectionWF.AppServer.SendDbList(OleVariant(AParams[0])));
    if AName = 'GetSPVersion' then
        Exit(ConnectionWF.AppServer.GetSPVersion);

    // В случае ошибки при первом вызове, метод сервера приложений
    // вызывается повторно. Дело в том, что при аварийном завершении
    // серверного процесса соединение с сервером приложений теряется.
    // Поэтому мы пытаемся подключиться заново и восстановить состояние
    // соединения
    LRpcFailed := False;
    try
        Result := CallRunMethod(ConnectionWF, AName, AParams);
    except
        on E: EOleSysError do
        begin
            LRpcFailed := True;
        end;
    end;

    if LRpcFailed then
    begin
        ConnectedWF := False;
        ConnectToWF(FCurrentBase);
        Result := CallRunMethod(Connection, AName, AParams);
    end;
end;

function TRemoteConnection.GetAppServer: Variant;
begin
    Result := Connection.AppServer;
end;

function TRemoteConnection.GetAppServerWF: Variant;
begin
    Result := ConnectionWF.AppServer;
end;

function TRemoteConnection.GetConnected: Boolean;
begin
    Result := FConnection <> nil;
end;

function TRemoteConnection.GetConnectedWF: Boolean;
begin
    Result := FConnectionWF <> nil;
end;

function TRemoteConnection.GetConnection: TDispatchConnection;
begin
    Connected := True;
    Assert(FConnection <> nil);
    Result := FConnection;
end;

function TRemoteConnection.GetConnectionWF: TDispatchConnection;
begin
    ConnectedWF := True;
    Assert(FConnectionWF <> nil);
    Result := FConnectionWF;
end;

function TRemoteConnection.GetServerName: String;
begin
    if FConnection <> nil then
    begin
        if FConnection is TDCOMConnection then
            Result := TDCOMConnection(FConnection).ComputerName
        else if FConnection is TSocketConnection then
        begin
            if TSocketConnection(FConnection).Address <> '' then
                Result := TSocketConnection(FConnection).Address
            else
                Result := TSocketConnection(FConnection).Host;
        end
        else if FConnection is TWebConnection then
            Result := TWebConnection(FConnection).URL
        else if FConnection is TWCFConnection then
            Result := TWCFConnection(FConnection).Host;
    end;
end;

procedure TRemoteConnection.SetConnected(Value: Boolean);
begin
    if Value then
    begin
        if FConnection = nil then
        begin
            FConnection := CreateConnection(False);
            if FCurrentBase <> '' then
            begin
                ConnectTo(FCurrentBase);
                if FCurrentCheckOutID <> 0 then
                    ConnectToCheckOut(FCurrentBase, FCurrentCheckOutID);
            end;
        end;
    end
    else
        FreeAndNil(FConnection);
    inherited SetConnected(Value);
end;

procedure TRemoteConnection.SetConnectedWF(Value: Boolean);
begin
    if Value then
    begin
        if FConnectionWF = nil then
        begin
            FConnectionWF := CreateConnection(True);
            if FCurrentBase <> '' then
                ConnectToWF(FCurrentBase);
        end;
    end
    else
        FreeAndNil(FConnectionWF);
    inherited SetConnectedWF(Value);
end;

function TRemoteConnection.TryCreateConnection(const AConnectionString,
    AServerGUID: String): TDispatchConnection;
var
    LConnectionType: TConnectionType;
    LServerName: String;
    LPort: Integer;
    LProxy: String;
    LUserName: String;
    LPassword: String;

    function IsIPAddress(const Value: String): Boolean;
    var
        i: Integer;
    begin
        for i := 1 to Length(Value) do
        begin
            if not CharInSet(Value[i], ['0'..'9', '.']) then
                Exit(False);
        end;
        Exit(True);
    end;

begin
    Result := nil;

    GetAppServerParams(AConnectionString, LConnectionType, LServerName, LPort, LProxy,
        LUserName, LPassword);

    case LConnectionType of
        ctDCOM:
            begin
                Result := TDCOMConnection.Create(nil);
                TDCOMConnection(Result).ComputerName := LServerName;
            end;

        ctSocket:
            begin
                Result := TSocketConnection.Create(nil);
                TSocketConnection(Result).SupportCallbacks := False;
                if IsIPAddress(LServerName) then
                    TSocketConnection(Result).Address := LServerName
                else
                    TSocketConnection(Result).Host := LServerName;
                TSocketConnection(Result).Port := LPort;
            end;

        ctWeb:
            begin
                Result := TWebConnection.Create(nil);
                TWebConnection(Result).Agent := CWebConnectionAgent;
                TWebConnection(Result).URL := LServerName;
                TWebConnection(Result).Proxy := LProxy;
                TWebConnection(Result).UserName := LUserName;
                TWebConnection(Result).Password := LPassword;
            end;

        ctWCF:
            begin
                Result := TWCFConnection.Create(nil);
                TWCFConnection(Result).Host := LServerName;
                TWCFConnection(Result).Port := LPort;
            end;
    end;

    Assert(Result <> nil);

    Result.ServerGUID := AServerGUID;

    try
        Result.Connected := True;
    except
        Result.Free();
        raise;
    end;
end;


initialization

finalization
    FreeConnections();

end.
