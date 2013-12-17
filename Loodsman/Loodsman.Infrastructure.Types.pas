unit Loodsman.Infrastructure.Types;

interface

uses
    SysUtils, Messages, Loodsman_TLB;

const
    CAppServerV8 = 20061001;
    CAppServerV9 = 20080300;
    CAppServerV10 = 20090306;
    CAppServerV11 = 20100701;

const
    WM_REFRESHVERSION = WM_USER + 1;
    WM_REFRESHPARENT = WM_USER + 4;
    WM_GOTOCHILD = WM_USER + 5;
    WM_REFRESHCHECKOUTLIST = WM_USER + 6;
    WM_REFRESHPROJECTLIST =  WM_USER + 7;
    WM_GOTONODE = WM_USER + 8;
    WM_GOTOOBJECT = WM_USER + 9;
    WM_OPENOBJECTINNEWWINDOW = WM_USER + 100;
    WM_OPENOBJECTSINNEWWINDOW = WM_USER + 101;

type
    TAccessLevel = (alNoAccess, alRead, alReadWrite, alAdministration);
    TAccessMethod = (amIntegrated, amPassword, amPassword2, amNone, amUnknown);
    TAttributeType = (atString, atInteger, atFloat, atDateTime, atText = 5, atImage = 6);
    TCardControlType = (cctEdit, cctNumEdit, cctNumMeasuredEdit, cctDate, cctTime,
        cctText, cctImage, cctLabel, cctBevel);
    TConnectionType = (ctDCOM, ctSocket, ctWeb);
    TLinkDirection = (ldAny, ldForwardOnly, ldBackwardOnly = -1);
    TLinkKind = (lkVertical, lkHorizontal);
    TLinkQuantity = (lqNone, lqParent, lqChild, lqAlways);
    TLockLevel = (llNone, llLockOwner, llLocked);
    TRoleType = (rtUser, rtRole, rtDepartment, rtOrganization);
    TRouteItemState = (risNone, risReceived = 2, risAccepted, risExecuted,
        risQuestion, risRefuse, risRefuseStop = 8, risWait, risQuestionStop);
    TRouteItemType = (ritStage = 1, ritSubFlow, ritCondition = 4, ritAutoOperation, ritWaitOperation);
    TRouteSeqType = (rstForward, rstReturn, rstYes, rstNo, rstTimeLimit);
    TRouteState = (rsNone, rsActive, rsStopped, rsFinished);

    TFieldType = (ftUnknown, ftString, ftSmallint, ftInteger, ftWord, ftBoolean,
        ftFloat, ftCurrency, ftBCD, ftDate, ftTime, ftDateTime, ftBytes, ftVarBytes,
        ftAutoInc, ftBlob, ftMemo);

const
    MAX_TEXT_LENGTH = 255;

type
    TLoodsmanAddMenuCom = record
        stMenu: array [0..MAX_TEXT_LENGTH-1] of AnsiChar;
        stFunction: array [0..MAX_TEXT_LENGTH-1] of AnsiChar;
    end;

    PLoodsmanAddMenuCom = ^TLoodsmanAddMenuCom;

    TWorkflowVersionData = record
        inIDRoute: LongInt;
        stAppServName: array[0..MAX_TEXT_LENGTH-1] of AnsiChar;
        stBaseName: array[0..MAX_TEXT_LENGTH-1] of AnsiChar;
        inID: LongInt;
        stProduct: array[0..MAX_TEXT_LENGTH-1] of AnsiChar;
        stType: array[0..MAX_TEXT_LENGTH-1] of AnsiChar;
        stVersion: array[0..MAX_TEXT_LENGTH-1] of AnsiChar;
        stState: array[0..MAX_TEXT_LENGTH-1] of AnsiChar;
        inAccessLevel: Byte;
        inLockLevel: Byte;
        boDocument: Byte;
        boRevision: Byte;
    end;

    PWorkflowVersionData = ^TWorkflowVersionData;

    TPgiInitUserDLLCom = function (AValue: PLoodsmanAddMenuCom): Integer; stdcall;
    TPgiCheckMenuItemCom = function (AFunction: PAnsiChar;
        APluginCall: IPluginCall): Boolean; stdcall;
    TPgiFunctionCom = procedure (APluginCall: IPluginCall); stdcall;

    TWorkflowPgiFunction = function (AMainHandle: THandle;
        ADbListData: OleVariant;
        APDMVersion: PWorkflowVersionData): OleVariant; stdcall;
    TWorkflowPgiFunctionEx = function (AMainHandle: THandle;
        ADbListData: OleVariant;
        APDMVersion: PWorkflowVersionData;
        AUserData: OleVariant): OleVariant; stdcall;

    /// <summary>Класс исключения при ошибках в работе с сервером приложений, 
    /// в том числе и при ошибках чтения конфигурации.</summary>
    EServerException = class(Exception)
    end;

    /// <summary>Интерфейс подключения к серверу приложений. 
    /// Не является частью API ЛОЦМАН:PLM.</summary>
    IRemoteConnection = interface(IInterface)
        ['{0FBADFEF-7975-4C8E-8CC8-7D5323187F5F}']
        function GetAppServer: Variant;
        function GetConnected: Boolean;
        function GetConnectedWF: Boolean;
        function GetCurrentBase: String;
        function GetCurrentCheckOutID: Integer;
        function GetDataSet(const AName: String; const AParams: array of
            Variant): IDataSet;
        function GetServerName: String;
        function GetServerVersion: Integer;
        procedure RestoreState;
        function RunMethod(const AName: String; const AParams: array of
            Variant): Variant;
        procedure SetConnected(Value: Boolean);
        procedure SetConnectedWF(Value: Boolean);
        procedure SetCurrentBase(const Value: String);
        procedure SetCurrentCheckOutID(Value: Integer);
        property AppServer: Variant read GetAppServer;
        property Connected: Boolean read GetConnected write SetConnected;
        property ConnectedWF: Boolean read GetConnectedWF write SetConnectedWF;
        property CurrentBase: String read GetCurrentBase write SetCurrentBase;
        property CurrentCheckOutID: Integer read GetCurrentCheckOutID write
            SetCurrentCheckOutID;
        property ServerName: String read GetServerName;
        property ServerVersion: Integer read GetServerVersion;
    end;


function GetValue(const ADataSet: IDataSet; const AFieldName: String; const
    ADefault: Variant): Variant; overload;

function GetValue(const ADataSet: IDataSet; const AFieldName: String): Variant;
    overload;

implementation

uses
    Variants;

resourcestring
    SRequiredFieldNotFound = 'Обязательное поле [%s] не найдено в наборе данных';

function GetValue(const ADataSet: IDataSet; const AFieldName: String; const
    ADefault: Variant): Variant;
begin
    if ADataSet.FieldValue[AFieldName] <> Null then
        Result := ADataSet.FieldValue[AFieldName]
    else
        Result := ADefault;
end;

function GetValue(const ADataSet: IDataSet; const AFieldName: String): Variant;
begin
    if ADataSet.FieldValue[AFieldName] <> Null then
        Result := ADataSet.FieldValue[AFieldName]
    else
        raise EServerException.CreateFmt(SRequiredFieldNotFound, [AFieldName]);
end;


end.
