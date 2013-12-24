unit TestConfig;

interface

uses
    SysUtils, DB, TestFrameWork, Loodsman_TLB, Loodsman.Infrastructure.Types,
    Loodsman.Infrastructure.Config;

type
    TTestConfig = class(TTestCase)
    protected
        procedure SetUp; override;
        procedure TearDown; override;
    published
        procedure TestAddToFavorites;
        procedure TestCreateDBAuthList;
        procedure TestDeCryptDBAuthList;
        procedure TestGetAppServerList;
        procedure TestGetAppServerParams;
        procedure TestGetAuthCredFromFile;
        procedure TestGetBaseAuthParams;
        procedure TestGetBaseAuthParamsWithUI;
        procedure TestGetDBAuthListData;
        procedure TestGetAppDataPath;
        procedure TestGetClientPath;
        procedure TestGetEncoding;
        procedure TestGetPath;
        procedure TestRemoveFromFavorites;
        procedure TestSetBaseAuthParams;
        procedure TestSetDBAuthList;
    end;

implementation

uses
    Classes, IniFiles, Registry, Variants, Windows,
    Loodsman.Infrastructure.DataSet;

function GetFileAsVariant(const AFileName: String): Variant;
var
    LFileStream: TFileStream;
    LSize: Integer;
    P: Pointer;
begin
    LFileStream := TFileStream.Create(AFileName, fmOpenRead, fmShareDenyWrite);
    try
        LSize := LFileStream.Size;
        // Массив создается по следуюзей схеме:
        // ElementCount := HighBound - LowBound + 1;
        // Поэтому мы может в качестве размера передать [0, -1]
        // и у нас будет правильный массив нулевого размера
        Result := VarArrayCreate([0, LSize - 1], varByte);
        P := VarArrayLock(Result);
        try
            LFileStream.ReadBuffer(P^, LSize);
        finally
            VarArrayUnLock(Result);
        end;
    finally
        LFileStream.Free;
    end;
end;

procedure SetFileAsVariant(const AFileName: String; const AFileData: Variant);
var
    LFileStream: TFileStream;
    LSize: Integer;
    P: Pointer;
begin
    LFileStream := TFileStream.Create(AFileName, fmCreate, fmShareDenyWrite);
    try
        // В случае нулевого размера, HighBound будет -1,
        // и размер вычислится правильно
        LSize := VarArrayHighBound(AFileData, 1) - VarArrayLowBound(AFileData, 1) + 1;
        Assert(LSize >= 0);
        P := VarArrayLock(AFileData);
        try
            LFileStream.WriteBuffer(P^, LSize);
        finally
            VarArrayUnLock(AFileData);
        end;
    finally
        LFileStream.Free();
    end;
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

{ TTestTypes }

procedure TTestConfig.SetUp;
begin
    inherited;
end;

procedure TTestConfig.TearDown;
begin
    inherited;
end;

procedure TTestConfig.TestAddToFavorites;
var
    LIniFileName: String;
    LIniFile: TIniFile;
begin
    LIniFileName := ExpandEnvironmentStrings('%APPDATA%\ASCON\Loodsman\Favorites\ДемоМашиностроение.lfo');
    DeleteFile(PChar(LIniFileName));

    AddToFavorites('ДемоМашиностроение', '078.505.9.0100.00123', 13079);

    LIniFile := TIniFile.Create(LIniFileName);

    CheckEquals(13079, LIniFile.ReadInteger('Favorites', '078.505.9.0100.00123', 0));

    LIniFile.Free;
    DeleteFile(PChar(LIniFileName));
end;

procedure TTestConfig.TestCreateDBAuthList;
var
    LDataSet: IDataSet;
begin
    LDataSet := CreateDBAuthList();
    Check(LDataSet <> nil);

    CheckEquals(5, LDataSet.FieldCount);
    CheckEquals('_DataBase', LDataSet.FieldName[0]);
    CheckEquals('_UserName', LDataSet.FieldName[1]);
    CheckEquals('_AccessMethod', LDataSet.FieldName[2]);
    CheckEquals('_Password', LDataSet.FieldName[3]);
    CheckEquals('_Connected', LDataSet.FieldName[4]);

    LDataSet.Append();
    LDataSet.FieldValue['_DataBase'] := 'Демо';
    LDataSet.FieldValue['_UserName'] := 'Пользователь';
    LDataSet.FieldValue['_AccessMethod'] := 42;
    LDataSet.FieldValue['_Password'] := 'Пароль';
    LDataSet.FieldValue['_Connected'] := '';
    LDataSet.Post();

    CheckEquals('Демо', LDataSet.FieldValue['_DataBase']);
    CheckEquals('Пользователь', LDataSet.FieldValue['_UserName']);
    CheckEquals(42, LDataSet.FieldValue['_AccessMethod']);
    CheckEquals('Пароль', LDataSet.FieldValue['_Password']);
    CheckEquals('', LDataSet.FieldValue['_Connected']);
end;

procedure TTestConfig.TestDeCryptDBAuthList;
var
    LDataSet: IDataSet;
begin
    LDataSet := CreateDataSet(GetFileAsVariant('SampleData_DBList.cds'));
    Check(LDataSet <> nil);

    CheckEquals('upWFm56J', LDataSet.FieldValue['_Password']);
    LDataSet.Next();
    CheckEquals('pJCfhZCH', LDataSet.FieldValue['_Password']);

    DeCryptDBAuthList(LDataSet);

    CheckEquals('Пароль', LDataSet.FieldValue['_Password']);
    LDataSet.Next();
    CheckEquals('Секрет', LDataSet.FieldValue['_Password']);
end;

procedure TTestConfig.TestGetAppServerList;
var
    LRegistry: TRegistry;
    LServerList: TStringList;
begin
    LRegistry := TRegistry.Create();
    LServerList := TStringList.Create();

    Check(LRegistry.OpenKey('Software\ASCON\Loodsman', True));
    LRegistry.DeleteValue('SP');
    LRegistry.DeleteValue('ClientSP');
    LRegistry.DeleteValue('WorkflowSP');

    LRegistry.WriteString('SP', 'Сервер №1|Порт=1;Сервер №2|Порт=2');

    GetAppServerList(False, LServerList);
    CheckEquals(2, LServerList.Count);
    CheckEquals('Сервер №1|Порт=1', LServerList.Strings[0]);
    CheckEquals('Сервер №2|Порт=2', LServerList.Strings[1]);

    GetAppServerList(True, LServerList);
    CheckEquals(2, LServerList.Count);
    CheckEquals('Сервер №1|Порт=1', LServerList.Strings[0]);
    CheckEquals('Сервер №2|Порт=2', LServerList.Strings[1]);

    LRegistry.WriteString('SP', 'Сервер|Компьютер=Сервер|Порт=42');

    GetAppServerList(False, LServerList);
    CheckEquals(1, LServerList.Count);
    CheckEquals('Сервер|Компьютер=Сервер|Порт=42', LServerList.Strings[0]);

    GetAppServerList(True, LServerList);
    CheckEquals(1, LServerList.Count);
    CheckEquals('Сервер|Компьютер=Сервер|Порт=42', LServerList.Strings[0]);

    LRegistry.WriteString('ClientSP', 'Сервер №3');

    GetAppServerList(False, LServerList);
    CheckEquals(1, LServerList.Count);
    CheckEquals('Сервер №3', LServerList.Strings[0]);

    GetAppServerList(True, LServerList);
    CheckEquals(1, LServerList.Count);
    CheckEquals('Сервер|Компьютер=Сервер|Порт=42', LServerList.Strings[0]);

    LRegistry.WriteString('WorkflowSP', 'Сервер №4');

    GetAppServerList(False, LServerList);
    CheckEquals(1, LServerList.Count);
    CheckEquals('Сервер №3', LServerList.Strings[0]);

    GetAppServerList(True, LServerList);
    CheckEquals(1, LServerList.Count);
    CheckEquals('Сервер №4', LServerList.Strings[0]);

    OverrideAppServerList('Сервер №5');

    GetAppServerList(False, LServerList);
    CheckEquals(1, LServerList.Count);
    CheckEquals('Сервер №5', LServerList.Strings[0]);

    GetAppServerList(True, LServerList);
    CheckEquals(1, LServerList.Count);
    CheckEquals('Сервер №5', LServerList.Strings[0]);

    LRegistry.DeleteValue('SP');
    LRegistry.DeleteValue('ClientSP');
    LRegistry.DeleteValue('WorkflowSP');
    OverrideAppServerList('');

    LServerList.Free();
    LRegistry.Free();
end;

procedure TTestConfig.TestGetAppServerParams;
var
    LConnectionType: TConnectionType;
    LServerName: String;
    LPort: Integer;
    LProxy: String;
    LUserName: String;
    LPassword: String;
begin
    GetAppServerParams('',
        LConnectionType, LServerName, LPort, LProxy, LUserName, LPassword);
    CheckEquals(Ord(ctDCOM), Ord(LConnectionType));
    CheckEquals('', LServerName);
    CheckEquals(4804, LPort);
    CheckEquals('', LProxy);
    CheckEquals('', LUserName);
    CheckEquals('', LPassword);

    GetAppServerParams('Сервер №1',
        LConnectionType, LServerName, LPort, LProxy, LUserName, LPassword);
    CheckEquals(Ord(ctDCOM), Ord(LConnectionType));
    CheckEquals('Сервер №1', LServerName);
    CheckEquals(4804, LPort);
    CheckEquals('', LProxy);
    CheckEquals('', LUserName);
    CheckEquals('', LPassword);

    GetAppServerParams('DisplayName=192.168.0.1:4801|ConnectionType=1|Host=192.168.0.1|Port=4801',
        LConnectionType, LServerName, LPort, LProxy, LUserName, LPassword);
    CheckEquals(Ord(ctSocket), Ord(LConnectionType));
    CheckEquals('192.168.0.1', LServerName);
    CheckEquals(4801, LPort);
    CheckEquals('', LProxy);
    CheckEquals('', LUserName);
    CheckEquals('', LPassword);

    GetAppServerParams('DisplayName=http://example.com|ConnectionType=2|Host=http://example.com|User=Пользователь|Password=BRQGBkc=|Proxy=proxy.mynet.com',
        LConnectionType, LServerName, LPort, LProxy, LUserName, LPassword);
    CheckEquals(Ord(ctWeb), Ord(LConnectionType));
    CheckEquals('http://example.com', LServerName);
    CheckEquals(4804, LPort);
    CheckEquals('proxy.mynet.com', LProxy);
    CheckEquals('Пользователь', LUserName);
    CheckEquals('pass2', LPassword);
end;

procedure TTestConfig.TestGetAuthCredFromFile;
var
    LUserName: String;
    LPassword: String;
begin
    GetAuthCredFromFile('SampleData_CredFile.txt', LUserName, LPassword);
    CheckEquals('Пользователь', LUserName);
    CheckEquals('Пароль', LPassword);
end;

procedure TTestConfig.TestGetBaseAuthParams;
var
    LDataSet: IDataSet;
    LDatabaseAuth: TDatabaseAuth;
    LUserName: String;
    LPassword: String;
begin
    LDataSet := CreateDataSet(GetFileAsVariant('SampleData_DBList.cds'));
    Check(LDataSet <> nil);

    GetBaseAuthParams(LDataSet, 'Демо', LDatabaseAuth, LUserName, LPassword);
    CheckEquals(Ord(amSqlServer), Ord(LDatabaseAuth));
    CheckEquals('Пользователь', LUserName);
    CheckEquals('Пароль', LPassword);

    GetBaseAuthParams(LDataSet, 'ДемоМашиностроение', LDatabaseAuth, LUserName, LPassword);
    CheckEquals(Ord(amSqlServerSaved), Ord(LDatabaseAuth));
    CheckEquals('Машиностроитель', LUserName);
    CheckEquals('Секрет', LPassword);

    GetBaseAuthParams(LDataSet, 'Несуществующая', LDatabaseAuth, LUserName, LPassword);
    CheckEquals(Ord(amWindows), Ord(LDatabaseAuth));
    CheckEquals('', LUserName);
    CheckEquals('', LPassword);
end;

procedure TTestConfig.TestGetBaseAuthParamsWithUI;
var
    LDataSet: IDataSet;
    LDatabaseAuth: TDatabaseAuth;
    LUserName: String;
    LPassword: String;
    LNewPassword: Boolean;
    LSavePassword: Boolean;
begin
    LDataSet := CreateDataSet(GetFileAsVariant('SampleData_DBList.cds'));
    Check(LDataSet <> nil);

    SetBaseAuthParams(LDataSet, 'Демо', amSqlServer, 'Пользователь', '');
    LSavePassword := True;

    GetBaseAuthParamsWithUI(LDataSet, 'Демо', LDatabaseAuth, LUserName, LPassword,
        LNewPassword, LSavePassword);

    CheckEquals(Ord(amSqlServerSaved), Ord(LDatabaseAuth));
    CheckEquals('Пользователь', LUserName);
    CheckEquals('Пароль', LPassword);
    CheckEquals(True, LNewPassword);
    CheckEquals(True, LSavePassword);

    GetBaseAuthParamsWithUI(LDataSet, 'ДемоМашиностроение', LDatabaseAuth, LUserName, LPassword,
        LNewPassword, LSavePassword);

    CheckEquals(Ord(amSqlServerSaved), Ord(LDatabaseAuth));
    CheckEquals('Машиностроитель', LUserName);
    CheckEquals('Секрет', LPassword);
    CheckEquals(False, LNewPassword);
    CheckEquals(False, LSavePassword);
end;

procedure TTestConfig.TestGetDBAuthListData;
var
    LRegistry: TRegistry;
    LBytes: TBytes;
    LDataSet: IDataSet;
begin
    LRegistry := TRegistry.Create();

    Check(LRegistry.OpenKey('Software\ASCON\Loodsman', True));
    LRegistry.DeleteValue('DBList');

    LBytes := GetFileAsVariant('SampleData_DBList.cds');
    LRegistry.WriteBinaryData('DBList', LBytes[0], Length(LBytes));

    LDataSet := GetDBAuthList();

    CheckEquals('Демо', LDataSet.FieldValue['_DataBase']);
    CheckEquals('Пользователь', LDataSet.FieldValue['_UserName']);
    CheckEquals(1, LDataSet.FieldValue['_AccessMethod']);
    CheckEquals('upWFm56J', LDataSet.FieldValue['_Password']);
    CheckEquals('', LDataSet.FieldValue['_Connected']);

    LDataSet.Next();

    CheckEquals('ДемоМашиностроение', LDataSet.FieldValue['_DataBase']);
    CheckEquals('Машиностроитель', LDataSet.FieldValue['_UserName']);
    CheckEquals(2, LDataSet.FieldValue['_AccessMethod']);
    CheckEquals('pJCfhZCH', LDataSet.FieldValue['_Password']);
    CheckEquals('', LDataSet.FieldValue['_Connected']);

    LRegistry.DeleteValue('DBList');
    LRegistry.Free();
end;

procedure TTestConfig.TestGetAppDataPath;
begin
    CheckEquals(ExpandEnvironmentStrings('%APPDATA%\ASCON\Loodsman\'), GetLoodsmanAppDataPath());
end;

procedure TTestConfig.TestGetClientPath;
begin
    CheckEquals(ExpandEnvironmentStrings('%ProgramFiles%\ASCON\Loodsman\Client\'), GetLoodsmanClientPath());
end;

procedure TTestConfig.TestGetEncoding;
begin
    CheckEquals(1251, GetLoodsmanEncoding().CodePage);
end;

procedure TTestConfig.TestGetPath;
begin
    CheckEquals(ExpandEnvironmentStrings('%ProgramFiles%\ASCON\Loodsman\'), GetLoodsmanPath());
end;

procedure TTestConfig.TestRemoveFromFavorites;
var
    LIniFileName: String;
    LIniFile: TIniFile;
begin
    LIniFileName := ExpandEnvironmentStrings('%APPDATA%\ASCON\Loodsman\Favorites\ДемоМашиностроение.lfo');
    DeleteFile(PChar(LIniFileName));

    LIniFile := TIniFile.Create(LIniFileName);

    LIniFile.WriteInteger('Favorites', '078.505.9.0100.00123', 13079);
    LIniFile.WriteInteger('Favorites', 'Изделие', 13079);

    RemoveFromFavorites('ДемоМашиностроение', 13079);

    CheckEquals(0, LIniFile.ReadInteger('Favorites', '078.505.9.0100.00123', 0));
    CheckEquals(0, LIniFile.ReadInteger('Favorites', 'Изделие', 0));

    LIniFile.Free;
    DeleteFile(PChar(LIniFileName));
end;

procedure TTestConfig.TestSetBaseAuthParams;
var
    LDataSet: IDataSet;
    LDatabaseAuth: TDatabaseAuth;
    LUserName: String;
    LPassword: String;
begin
    LDataSet := CreateDataSet(GetFileAsVariant('SampleData_DBList.cds'));
    Check(LDataSet <> nil);

    SetBaseAuthParams(LDataSet, 'Демо', amSqlServerSaved, 'Машиностроитель', 'Секрет');

    GetBaseAuthParams(LDataSet, 'Демо', LDatabaseAuth, LUserName, LPassword);
    CheckEquals(Ord(amSqlServerSaved), Ord(LDatabaseAuth));
    CheckEquals('Машиностроитель', LUserName);
    CheckEquals('Секрет', LPassword);
end;

procedure TTestConfig.TestSetDBAuthList;
var
    LRegistry: TRegistry;
    LSize: Integer;
    LSampleBytes: TBytes;
    LWrittenBytes: TBytes;
    LDataSet: IDataSet;
begin
    LRegistry := TRegistry.Create();

    Check(LRegistry.OpenKey('Software\ASCON\Loodsman', True));
    LRegistry.DeleteValue('DBList');

    LSampleBytes := GetFileAsVariant('SampleData_DBList.cds');
    LDataSet := CreateDataSet(LSampleBytes);

    SetDBAuthList(LDataSet);

    LSize := LRegistry.GetDataSize('DBList');
    SetLength(LWrittenBytes, LSize);
    LRegistry.ReadBinaryData('DBList', LWrittenBytes[0], LSize);

    CheckEqualsMem(@LSampleBytes[0], @LWrittenBytes[0], Length(LSampleBytes));

    LRegistry.DeleteValue('DBList');
    LRegistry.Free();
end;

initialization
    TestFramework.RegisterTest(TTestConfig.Suite);

end.
