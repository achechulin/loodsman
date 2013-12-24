unit TestConnection;

interface

uses
    SysUtils, TestFrameWork, Loodsman.Infrastructure.Types,
    Loodsman.Infrastructure.Connection, Loodsman.Infrastructure.Resources,
    Loodsman.Infrastructure.Config;

type
    TTestConnection = class(TTestCase)
    protected
        procedure SetUp; override;
        procedure TearDown; override;
    published
        procedure TestGetConnectionNoSP;
        procedure TestGetConnectionInvalidSP;
        procedure TestGetConnectionEx;
        procedure TestFreeConnections;
        procedure TestConnected;
        procedure TestServerNameAndVersion;
        procedure TestCurrentBase;
        procedure TestCurrentCheckOut;
        procedure TestAppServer;
    end;

implementation

uses
    Classes, Registry;

const
    CTestServerName = 'localhost';
    CTestBase1 = 'ДемоМашиностроение';
    CTestBase2 = 'Рабочая';
    CTestUser = 'semeng';
    CTestUserPassword = '123';
    CTestObjType = 'Сборочная единица';
    CTestObjProduct = '078.505.9.0100.00';
    CTestObjVersion = '1';

procedure TTestConnection.SetUp;
begin
    inherited;
end;

procedure TTestConnection.TearDown;
begin
    inherited;
end;

procedure TTestConnection.TestGetConnectionNoSP;
var
    LRegistry: TRegistry;
    LConnection: IRemoteConnection;
begin
    LRegistry := TRegistry.Create();

    Check(LRegistry.OpenKey('Software\ASCON\Loodsman', True));
    LRegistry.DeleteValue('SP');
    LRegistry.DeleteValue('ClientSP');
    LRegistry.DeleteValue('WorkflowSP');

    LRegistry.Free();

    LConnection := GetLoodsmanConnection();
    Check(LConnection <> nil);

    StartExpectingException(EServerException);
    try
        LConnection.Connected := True;
    finally
        FreeConnections();
        FreeResources();
    end;
    StopExpectingException();
end;

procedure TTestConnection.TestGetConnectionInvalidSP;
var
    LConnection: IRemoteConnection;
begin
    OverrideAppServerList('Нет такого сервера');

    LConnection := GetLoodsmanConnection();
    Check(LConnection <> nil);

    StartExpectingException(EServerException);
    try
        LConnection.Connected := True;
    finally
        OverrideAppServerList('');
        FreeConnections();
        FreeResources();
    end;
    StopExpectingException();
end;

procedure TTestConnection.TestGetConnectionEx;
var
    LConnection: IRemoteConnection;
begin
    OverrideAppServerList(CTestServerName);

    LConnection := GetLoodsmanConnectionEx(CTestBase1, CTestUser, CTestUserPassword);
    LConnection.CurrentBase := CTestBase1;
    CheckEquals(CTestBase1, LConnection.RunMethod('CurrentBase', []));

    OverrideAppServerList('');
    FreeConnections();
    FreeResources();
end;

procedure TTestConnection.TestFreeConnections;
var
    LConnection1: IRemoteConnection;
    LConnection2: IRemoteConnection;
begin
    LConnection1 := GetLoodsmanConnection();
    FreeConnections();
    LConnection2 := GetLoodsmanConnection();
    CheckNotEquals(Integer(Pointer(LConnection1)),
        Integer(Pointer(LConnection2)));

    FreeConnections();
end;

procedure TTestConnection.TestConnected;
var
    LConnection: IRemoteConnection;
begin
    OverrideAppServerList(CTestServerName);

    LConnection := GetLoodsmanConnection();
    Check(LConnection <> nil);

    LConnection.Connected := True;
    CheckEquals(True, LConnection.Connected);
    CheckEquals(False, LConnection.ConnectedWF);

    LConnection.Connected := False;
    CheckEquals(False, LConnection.Connected);
    CheckEquals(False, LConnection.ConnectedWF);

    LConnection.ConnectedWF := True;
    CheckEquals(False, LConnection.Connected);
    CheckEquals(True, LConnection.ConnectedWF);

    LConnection.ConnectedWF := False;
    CheckEquals(False, LConnection.Connected);
    CheckEquals(False, LConnection.ConnectedWF);

    OverrideAppServerList('');
    FreeConnections();
    FreeResources();
end;

procedure TTestConnection.TestServerNameAndVersion;
var
    LConnection: IRemoteConnection;
    LServerVersion: Integer;
begin
    OverrideAppServerList(CTestServerName);

    LConnection := GetLoodsmanConnection();
    Check(LConnection <> nil);

    LServerVersion := StrToInt(LConnection.RunMethod('ApplicationVersion', []));
    CheckEquals(LConnection.ServerVersion, LServerVersion);

    CheckEquals(CTestServerName, LConnection.ServerName);

    OverrideAppServerList('');
    FreeConnections();
    FreeResources();
end;

procedure TTestConnection.TestCurrentBase;
var
    LConnection: IRemoteConnection;
begin
    OverrideAppServerList(CTestServerName);

    LConnection := GetLoodsmanConnection();
    Check(LConnection <> nil);

    CheckEquals('', LConnection.CurrentBase);

    LConnection.CurrentBase := CTestBase1;
    CheckEquals(CTestBase1, LConnection.CurrentBase);
    CheckEquals(False, LConnection.Connected);

    CheckEquals(CTestBase1, LConnection.RunMethod('CurrentBase', []));
    CheckEquals(True, LConnection.Connected);

    LConnection.Connected := False;
    CheckEquals(CTestBase1, LConnection.CurrentBase);
    CheckEquals(False, LConnection.Connected);

    CheckEquals(CTestBase1, LConnection.RunMethod('CurrentBase', []));
    CheckEquals(True, LConnection.Connected);

    LConnection.Connected := False;
    CheckEquals(CTestBase1, LConnection.CurrentBase);
    CheckEquals(False, LConnection.Connected);

    LConnection.CurrentBase := CTestBase2;
    CheckEquals(CTestBase2, LConnection.CurrentBase);
    CheckEquals(False, LConnection.Connected);

    CheckEquals(CTestBase2, LConnection.RunMethod('CurrentBase', []));
    CheckEquals(True, LConnection.Connected);

    OverrideAppServerList('');
    FreeConnections();
    FreeResources();
end;

procedure TTestConnection.TestCurrentCheckOut;
var
    LConnection: IRemoteConnection;
    LCheckOutID: Integer;
begin
    OverrideAppServerList(CTestServerName);

    LConnection := GetLoodsmanConnection();
    Check(LConnection <> nil);

    CheckEquals('', LConnection.CurrentBase);
    CheckEquals(0, LConnection.CurrentCheckOutID);

    LConnection.CurrentBase := CTestBase1;
    CheckEquals(CTestBase1, LConnection.CurrentBase);
    CheckEquals(0, LConnection.CurrentCheckOutID);
    CheckEquals(CTestBase1, LConnection.RunMethod('CurrentBase', []));
    CheckEquals('', LConnection.RunMethod('CurrentCheckOut', []));

    LCheckOutID := LConnection.RunMethod('CheckOut', [CTestObjType, CTestObjProduct, CTestObjVersion, 0]);

    CheckEquals(CTestBase1, LConnection.CurrentBase);
    CheckEquals(0, LConnection.CurrentCheckOutID);
    CheckEquals(CTestBase1, LConnection.RunMethod('CurrentBase', []));
    CheckEquals('', LConnection.RunMethod('CurrentCheckOut', []));

    LConnection.CurrentCheckOutID := LCheckOutID;

    CheckEquals(CTestBase1, LConnection.CurrentBase);
    CheckEquals(LCheckOutID, LConnection.CurrentCheckOutID);
    CheckEquals(CTestBase1, LConnection.RunMethod('CurrentBase', []));
    CheckEquals(LCheckOutID, LConnection.RunMethod('CurrentCheckOut', []));

    LConnection.Connected := False;

    CheckEquals(CTestBase1, LConnection.CurrentBase);
    CheckEquals(LCheckOutID, LConnection.CurrentCheckOutID);
    CheckEquals(CTestBase1, LConnection.RunMethod('CurrentBase', []));
    CheckEquals(LCheckOutID, LConnection.RunMethod('CurrentCheckOut', []));

    LConnection.CurrentBase := CTestBase2;

    CheckEquals(CTestBase2, LConnection.CurrentBase);
    CheckEquals(0, LConnection.CurrentCheckOutID);
    CheckEquals(CTestBase2, LConnection.RunMethod('CurrentBase', []));
    CheckEquals('', LConnection.RunMethod('CurrentCheckOut', []));

    LConnection.CurrentBase := CTestBase1;
    LConnection.CurrentCheckOutID := LCheckOutID;

    CheckEquals(CTestBase1, LConnection.CurrentBase);
    CheckEquals(LCheckOutID, LConnection.CurrentCheckOutID);
    CheckEquals(CTestBase1, LConnection.RunMethod('CurrentBase', []));
    CheckEquals(LCheckOutID, LConnection.RunMethod('CurrentCheckOut', []));

    LConnection.RunMethod('CancelCheckOut', [LCheckOutID, CTestBase1]);

    CheckEquals(CTestBase1, LConnection.CurrentBase);
    CheckEquals(LCheckOutID, LConnection.CurrentCheckOutID);
    CheckEquals(CTestBase1, LConnection.RunMethod('CurrentBase', []));
    CheckEquals('', LConnection.RunMethod('CurrentCheckOut', []));

    OverrideAppServerList('');
    FreeConnections();
    FreeResources();
end;

procedure TTestConnection.TestAppServer;
var
    LConnection: IRemoteConnection;
    LServerVersion: Integer;
begin
    OverrideAppServerList(CTestServerName);

    LConnection := GetLoodsmanConnection();
    Check(LConnection <> nil);

    LServerVersion := LConnection.AppServer.ApplicationVersion;
    CheckEquals(LConnection.ServerVersion, LServerVersion);

    LServerVersion := LConnection.AppServerWF.GetSPVersion;
    CheckEquals(LConnection.ServerVersion, LServerVersion);

    OverrideAppServerList('');
    FreeConnections();
    FreeResources();
end;


initialization
    TestFramework.RegisterTest(TTestConnection.Suite);

end.
