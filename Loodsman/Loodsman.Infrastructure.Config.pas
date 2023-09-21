// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this file,
// You can obtain one at http://mozilla.org/MPL/2.0/
unit Loodsman.Infrastructure.Config;

interface

uses
    SysUtils, Classes, Types, Loodsman_TLB, Loodsman.Infrastructure.Types;

procedure AddToFavorites(const ABase, AName: String; const AVersionID: Integer);

function CreateDBAuthList: IDataSet;

procedure DeCryptDBAuthList(const ADataSet: IDataSet);

function DeCryptDBAuthListData(const AData: OleVariant): OleVariant;

procedure GetAppServerList(const AWorkflow: Boolean; const AList: TStrings);

procedure GetAppServerParams(const AConnectionString: String; var AConnection:
    TConnectionType; var AHost: String; var APort: Integer; var AProxy,
    AUserName, APassword: String);

procedure GetAuthCredFromFile(const AFileName: String; out AUserName, APassword: String);

procedure GetBaseAuthParams(const ADataSet: IDataSet; const ABase: String;
    var ADatabaseAuth: TDatabaseAuth; var AUserName, APassword: String);

procedure GetBaseAuthParamsWithUI(const ADataSet: IDataSet; const ABase: String; var ADatabaseAuth: TDatabaseAuth; var
        AUserName, APassword: String; var ANewPassword, ASavePassword: Boolean);

function GetDBAuthList: IDataSet;

function GetDBAuthListData: OleVariant;

function GetLoodsmanAppDataPath: String;

function GetLoodsmanClientPath: String;

function GetLoodsmanCommonPath: String;

function GetLoodsmanEncoding: TEncoding;

function GetLoodsmanFavorites(const ABase: String): TIntegerDynArray;

function GetLoodsmanPath: String;

procedure OverrideAppServerList(const AList: String);

procedure OverrideDBAuthList(const ABase: String; const ADatabaseAuth:
    TDatabaseAuth; const AUserName, APassword: String);

procedure RemoveFromFavorites(const ABase: String; const AVersionID: Integer);

procedure SetBaseAuthParams(const ADataSet: IDataSet; const ABase: String;
    const ADatabaseAuth: TDatabaseAuth; const AUserName, APassword: String);

procedure SetDBAuthList(const ADataSet: IDataSet);

procedure SetDBAuthListData(const AData: OleVariant);

implementation

uses
    EncdDecd, IniFiles, Registry, ShlObj, StrUtils, Variants, Windows,
    {$ifndef CONSOLE}Loodsman.Infrastructure.LoginDialog,{$endif}
    Loodsman.Infrastructure.DataSet;

const
    CLoodsmanRegKeyName = 'Software\ASCON\Loodsman';
    CLoodsmanClientRegKeyName = 'Software\ASCON\Loodsman\Client';
    CRegValueSP = 'SP';
    CRegValueWorkFlowSP = 'WorkFlowSP';
    CRegValueClientSP = 'ClientSP';
    CRegValueDBList = 'DBList';
    CRegValuePath = 'Path';
    CRegValueCommonPath = 'CommonPath';
    CAppServerSeparator = ';';
    CParamSeparator = '|';
    CParamValueSeparator = '=';
    CPortSeparator = ':';
    CAppServerConnection = 'ConnectionType';
    CHost = 'Host';
    CPort = 'Port';
    CProxy = 'Proxy';
    CUserName = 'User';
    CPassword = 'Password';
    CDefaultPort = 4804;
    CWCFDefaultPort = 8076;
    CXorKey = 117;
    CDBAuthFieldBase = '_DataBase';
    CDBAuthFieldUser = '_UserName';
    CDBAuthFieldMethod = '_AccessMethod';
    CDBAuthFieldPassword = '_Password';
    CDBAuthFieldConnected = '_Connected';
    CLoodsmanAppDataPath = 'ASCON\Loodsman\';
    CDefaultLoodsmanPath = '%PROGRAMFILES%\ASCON\Loodsman\';
    CDefaultLoodsmanClientPath = '%PROGRAMFILES%\ASCON\Loodsman\Client\';
    CFavoritesFileNameFormat = '%sFavorites\%s.lfo';
    CFavoritesSectionName = 'Favorites';

var
    OverridedAppServerList: String;
    OverridedDBAuthList: IDataSet;

function DeCrypt(const AText: String): String;
var
    LBytes: TBytes;
    i: Integer;
begin
    LBytes := DecodeBase64(AnsiString(AText));
    for i := 0 to Length(LBytes) - 1 do
        LBytes[i] := LBytes[i] Xor CXorKey;
    Result := GetLoodsmanEncoding().GetString(LBytes);
end;

function EnCrypt(const AText: String): String;
var
    LBytes: TBytes;
    i: Integer;
begin
    LBytes := GetLoodsmanEncoding().GetBytes(AText);
    for i := 0 to Length(LBytes) - 1 do
        LBytes[i] := LBytes[i] Xor CXorKey;
    Result := String(EncodeBase64(@LBytes[0], Length(LBytes)));
end;

function ExpandEnvironmentStrings(const AFileName: String): String;
begin
    if Pos('%', AFileName) > 0 then
    begin
        SetLength(Result, MAX_PATH);
        Windows.ExpandEnvironmentStrings(PChar(AFileName), PChar(Result), MAX_PATH);
        SetLength(Result, StrLen(PChar(Result)));
    end
    else
        Result := AFileName;
end;

function GetFolderPath(const AFolder: Integer): String;
var
    Hr: HResult;
begin
    SetLength(Result, MAX_PATH);
    Hr := SHGetFolderPath(0, AFolder, 0, 0, PChar(Result));
    if Failed(Hr) then RaiseLastOSError(Hr);
    SetLength(Result, StrLen(PChar(Result)));
    Result := IncludeTrailingPathDelimiter(Result);
end;

procedure AddToFavorites(const ABase, AName: String; const AVersionID: Integer);
var
    LFileName: String;
    LIniFile: TIniFile;
begin
    LFileName := Format(CFavoritesFileNameFormat, [GetLoodsmanAppDataPath(), ABase]);
    ForceDirectories(ExtractFileDir(LFileName));
    LIniFile := TIniFile.Create(LFileName);
    try
        LIniFile.WriteInteger(CFavoritesSectionName, AName, AVersionID);
    finally
        LIniFile.Free();
    end;
end;

function CreateDBAuthList: IDataSet;
begin
    Result := CreateDataSet([CDBAuthFieldBase, Integer(ftString), 256,
        CDBAuthFieldUser, Integer(ftString), 256,
        CDBAuthFieldMethod, Integer(ftInteger), 0,
        CDBAuthFieldPassword, Integer(ftString), 256,
        CDBAuthFieldConnected, Integer(ftString), 256]);
end;

procedure DeCryptDBAuthList(const ADataSet: IDataSet);
begin
    ADataSet.First();
    while not ADataSet.Eof do
    begin
        ADataSet.Edit();
        ADataSet.FieldValue[CDBAuthFieldPassword] := DeCrypt(ADataSet.FieldValue[CDBAuthFieldPassword]);
        ADataSet.Post();
        ADataSet.Next();
    end;
    ADataSet.First();
end;

function DeCryptDBAuthListData(const AData: OleVariant): OleVariant;
var
    LDataSet: IDataSet;
begin
    LDataSet := CreateDataSet(AData);
    DeCryptDBAuthList(LDataSet);
    Result := LDataSet.Data;
end;

procedure GetAppServerList(const AWorkflow: Boolean; const AList: TStrings);
var
    LRegistry: TRegistry;
    LKeyOpened: Boolean;
begin
    AList.Clear();
    AList.LineBreak := CAppServerSeparator;

    if OverridedAppServerList <> '' then
    begin
        AList.Text := OverridedAppServerList;
        Exit;
    end;

    LRegistry := TRegistry.Create();
    try
        LKeyOpened := LRegistry.OpenKeyReadOnly(CLoodsmanRegKeyName);
        if not LKeyOpened then
        begin
            LRegistry.RootKey := HKEY_LOCAL_MACHINE;
            LKeyOpened := LRegistry.OpenKeyReadOnly(CLoodsmanRegKeyName);
        end;
        if LKeyOpened then
        begin
            if AWorkflow and LRegistry.ValueExists(CRegValueWorkFlowSP) then
                AList.Text := LRegistry.ReadString(CRegValueWorkFlowSP)
            else if (not AWorkflow) and LRegistry.ValueExists(CRegValueClientSP) then
                AList.Text := LRegistry.ReadString(CRegValueClientSP)
            else
                AList.Text := LRegistry.ReadString(CRegValueSP);
        end;
    finally
        LRegistry.Free();
    end;
end;

procedure GetAppServerParams(const AConnectionString: String; var AConnection:
    TConnectionType; var AHost: String; var APort: Integer; var AProxy,
    AUserName, APassword: String);
var
    LParams: TStringList;
    i: Integer;
    LName: String;
    LValue: String;
    LParts: TStringDynArray;
begin
    AConnection := ctDCOM;
    AHost := AConnectionString;
    APort := CDefaultPort;

    if Pos(CParamSeparator, AConnectionString) > 0 then
    begin
        LParams := TStringList.Create();
        try
            LParams.LineBreak := CParamSeparator;
            LParams.NameValueSeparator := CParamValueSeparator;
            LParams.Text := AConnectionString;
            for i := 0 to LParams.Count - 1 do
            begin
                LName := LParams.Names[i];
                LValue := LParams.ValueFromIndex[i];

                if LName = CAppServerConnection then
                    AConnection := TConnectionType(StrToIntDef(LValue, Ord(ctDCOM)))
                else if LName = CHost then
                    AHost := LValue
                else if LName = CPort then
                    APort := StrToIntDef(LValue, CDefaultPort)
                else if LName = CProxy then
                    AProxy := LValue
                else if LName = CUserName then
                    AUserName := LValue
                else if LName = CPassword then
                    APassword := DeCrypt(LValue);
            end;
        finally
            LParams.Free();
        end;
    end
    else if Pos(CPortSeparator, AConnectionString) > 0 then
    begin
        LParts := SplitString(AConnectionString, CPortSeparator);
        Assert(Length(LParts) > 1);
        AConnection := ctWCF;
        AHost := LParts[0];
        APort := StrToIntDef(LParts[1], CWCFDefaultPort);
    end;
end;

procedure GetAuthCredFromFile(const AFileName: String; out AUserName, APassword: String);
var
    LStringStream: TStringStream;
    LAuthInfo: TStringDynArray;
begin
    LStringStream := TStringStream.Create();
    try
        LStringStream.LoadFromFile(AFileName);
        LAuthInfo := SplitString(DeCrypt(LStringStream.DataString), CParamSeparator);
        if Length(LAuthInfo) = 2 then
        begin
            AUserName := LAuthInfo[0];
            APassword := LAuthInfo[1];
        end;
    finally
        LStringStream.Free();
    end;
end;

procedure GetBaseAuthParams(const ADataSet: IDataSet; const ABase: String; var ADatabaseAuth: TDatabaseAuth;
    var AUserName, APassword: String);
begin
    if ADataSet.Locate(CDBAuthFieldBase, ABase, False, False) then
    begin
        ADatabaseAuth := TDatabaseAuth(ADataSet.FieldValue[CDBAuthFieldMethod]);
        AUserName := ADataSet.FieldValue[CDBAuthFieldUser];
        APassword := DeCrypt(ADataSet.FieldValue[CDBAuthFieldPassword]);
    end
    else
    begin
        ADatabaseAuth := amWindows;
        AUserName := '';
        APassword := '';
    end;
end;

procedure GetBaseAuthParamsWithUI(const ADataSet: IDataSet; const ABase: String; var ADatabaseAuth: TDatabaseAuth; var
        AUserName, APassword: String; var ANewPassword, ASavePassword: Boolean);
begin
    if ADataSet.Locate(CDBAuthFieldBase, ABase, False, False) then
    begin
        ADatabaseAuth := TDatabaseAuth(ADataSet.FieldValue[CDBAuthFieldMethod]);
        AUserName := ADataSet.FieldValue[CDBAuthFieldUser];
        APassword := DeCrypt(ADataSet.FieldValue[CDBAuthFieldPassword]);
    end
    else
        ADatabaseAuth := amWindows;

{$ifndef CONSOLE}
    if (ADatabaseAuth = amSqlServer) and (APassword = '') then
    begin
        if not ShowLoodsmanLoginDialog(ABase, AUserName, APassword, ASavePassword) then
            Abort();
        ADatabaseAuth := amSqlServerSaved;
        ANewPassword := True;
    end
    else
{$endif}
    begin
        ANewPassword := False;
        ASavePassword := False;
    end;
end;

function GetDBAuthList: IDataSet;
var
    LData: OleVariant;
begin
    if OverridedDBAuthList <> nil then
    begin
        Result := OverridedDBAuthList;
    end;

    LData := GetDBAuthListData();
    if not VarIsEmpty(LData) then
    begin
        Result := CreateDataSet();
        Result.Data := LData;
    end;
end;

function GetDBAuthListData: OleVariant;
var
    LRegistry: TRegistry;
    LSize: Integer;
    P: Pointer;
begin
    if OverridedDBAuthList <> nil then
    begin
        Result := OverridedDBAuthList.Data;
    end;

    LRegistry := TRegistry.Create();
    try
        if LRegistry.OpenKeyReadOnly(CLoodsmanRegKeyName) then
        begin
            LSize := LRegistry.GetDataSize(CRegValueDBList);
            if LSize > 0 then
            begin
                Result := VarArrayCreate([0, LSize - 1], varByte);
                P := VarArrayLock(Result);
                LRegistry.ReadBinaryData(CRegValueDBList, P^, LSize);
                VarArrayUnLock(Result);
            end;
        end;
    finally
        LRegistry.Free();
    end;
end;

function GetLoodsmanAppDataPath: String;
begin
    Result := GetFolderPath(CSIDL_APPDATA) + CLoodsmanAppDataPath;
end;

function GetLoodsmanClientPath: String;
var
    LRegistry: TRegistry;
begin
    LRegistry := TRegistry.Create();
    try
        LRegistry.RootKey := HKEY_LOCAL_MACHINE;
        if LRegistry.OpenKeyReadOnly(CLoodsmanClientRegKeyName)
            and LRegistry.ValueExists(CRegValuePath) then
        begin
            Result := LRegistry.ReadString(CRegValuePath);
            Result := IncludeTrailingPathDelimiter(Result);
        end
        else
            Result := ExpandEnvironmentStrings(CDefaultLoodsmanClientPath);
    finally
        LRegistry.Free;
    end;
end;

function GetLoodsmanCommonPath: String;
var
    LRegistry: TRegistry;
begin
    LRegistry := TRegistry.Create(KEY_READ);
    try
        LRegistry.RootKey := HKEY_LOCAL_MACHINE;
        if LRegistry.OpenKeyReadOnly(CLoodsmanRegKeyName)
            and LRegistry.ValueExists(CRegValueCommonPath) then
        begin
            Result := LRegistry.ReadString(CRegValueCommonPath);
            Result := IncludeTrailingPathDelimiter(Result);
        end;
    finally
        LRegistry.Free;
    end;
end;

function GetLoodsmanEncoding: TEncoding;
begin
    Result := TEncoding.Default;
end;

function GetLoodsmanFavorites(const ABase: String): TIntegerDynArray;
var
    LFileName: String;
    LIniFile: TIniFile;
    LValues: TStringList;
    i: Integer;
begin
    LFileName := Format(CFavoritesFileNameFormat, [GetLoodsmanAppDataPath(), ABase]);
    LIniFile := TIniFile.Create(LFileName);
    try
        LValues := TStringList.Create();
        try
            LIniFile.ReadSectionValues(CFavoritesSectionName, LValues);
            SetLength(Result, LValues.Count);
            for i := 0 to LValues.Count - 1 do
                Result[i] := StrToIntDef(LValues.ValueFromIndex[i], 0);
        finally
            LValues.Free();
        end;
    finally
        LIniFile.Free();
    end;
end;

function GetLoodsmanPath: String;
var
    LRegistry: TRegistry;
begin
    LRegistry := TRegistry.Create();
    try
        LRegistry.RootKey := HKEY_LOCAL_MACHINE;
        if LRegistry.OpenKeyReadOnly(CLoodsmanRegKeyName)
            and LRegistry.ValueExists(CRegValuePath) then
        begin
            Result := LRegistry.ReadString(CRegValuePath);
            Result := IncludeTrailingPathDelimiter(Result);
        end
        else
            Result := ExpandEnvironmentStrings(CDefaultLoodsmanPath);
    finally
        LRegistry.Free;
    end;
end;

procedure OverrideAppServerList(const AList: String);
begin
    OverridedAppServerList := AList;
end;

procedure OverrideDBAuthList(const ABase: String; const ADatabaseAuth:
    TDatabaseAuth; const AUserName, APassword: String);
begin
    OverridedDBAuthList := CreateDBAuthList();
    SetBaseAuthParams(OverridedDBAuthList, ABase, ADatabaseAuth,
        AUserName, APassword);
end;

procedure RemoveFromFavorites(const ABase: String; const AVersionID: Integer);
var
    LFileName: String;
    LIniFile: TIniFile;
    LValues: TStringList;
    i: Integer;
begin
    LFileName := Format(CFavoritesFileNameFormat, [GetLoodsmanAppDataPath(), ABase]);
    LIniFile := TIniFile.Create(LFileName);
    try
        LValues := TStringList.Create();
        try
            LIniFile.ReadSectionValues(CFavoritesSectionName, LValues);
            for i := 0 to LValues.Count - 1 do
            begin
                if StrToIntDef(LValues.ValueFromIndex[i], 0) = AVersionID then
                    LIniFile.DeleteKey(CFavoritesSectionName, LValues.Names[i]);
            end;
        finally
            LValues.Free();
        end;
    finally
        LIniFile.Free();
    end;
end;

procedure SetBaseAuthParams(const ADataSet: IDataSet; const ABase: String; const ADatabaseAuth: TDatabaseAuth;
    const AUserName, APassword: String);
begin
    if ADataSet.Locate(CDBAuthFieldBase, ABase, False, False) then
        ADataSet.Edit()
    else
        ADataSet.Append();
    ADataSet.FieldValue[CDBAuthFieldBase] := ABase;
    ADataSet.FieldValue[CDBAuthFieldUser] := AUserName;
    ADataSet.FieldValue[CDBAuthFieldMethod] := ADatabaseAuth;
    ADataSet.FieldValue[CDBAuthFieldPassword] := EnCrypt(APassword);
    ADataSet.FieldValue[CDBAuthFieldConnected] := Null;
    ADataSet.Post();
end;

procedure SetDBAuthList(const ADataSet: IDataSet);
begin
    SetDBAuthListData(ADataSet.Data);
end;

procedure SetDBAuthListData(const AData: OleVariant);
var
    LRegistry: TRegistry;
    LBytes: TBytes;
begin
    LRegistry := TRegistry.Create();
    try
        if LRegistry.OpenKey(CLoodsmanRegKeyName, True) then
        begin
            LBytes := AData;
            LRegistry.WriteBinaryData(CRegValueDBList, LBytes[0], Length(LBytes));
        end;
    finally
        LRegistry.Free();
    end;
end;

end.
