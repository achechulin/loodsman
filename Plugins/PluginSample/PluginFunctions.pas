unit PluginFunctions;

interface

uses
    SysUtils, Loodsman_TLB;

    function InitUserDLLCom(AValue: Pointer): Integer; stdcall;
    function PgiCheckMenuItemCom(AFunction: PAnsiChar; APluginCall: IPluginCall): Boolean; stdcall;
    procedure ProjectList(APluginCall: IPluginCall); stdcall;
    procedure LinkedFast(APluginCall: IPluginCall); stdcall;
    procedure FindObj(APluginCall: IPluginCall); stdcall;

implementation

uses
    Windows, Variants, Forms, Loodsman.Infrastructure.Types,
    Loodsman.Infrastructure.PluginUtils, LinkedObjects, FindObjects;

function InitUserDLLCom(AValue: Pointer): Integer;
var
    LMenuItem: PLoodsmanAddMenuCom;
begin
    if AValue <> nil then
    begin
        LMenuItem := AValue;

        StrLCopy(LMenuItem.stMenu, 'BEFORE_MI_TOOLS#Мои плагины#Тестовый#Список проектов', SizeOf(LMenuItem.stMenu) - 1);
        StrLCopy(LMenuItem.stFunction, 'ProjectList', SizeOf(LMenuItem.stFunction) - 1);
        Inc(LMenuItem);

        StrLCopy(LMenuItem.stMenu, 'BEFORE_MI_TOOLS#Мои плагины#Тестовый#Состав', SizeOf(LMenuItem.stMenu) - 1);
        StrLCopy(LMenuItem.stFunction, 'LinkedFast', SizeOf(LMenuItem.stFunction) - 1);
        Inc(LMenuItem);

        StrLCopy(LMenuItem.stMenu, 'BEFORE_MI_TOOLS#Мои плагины#Тестовый#Найти', SizeOf(LMenuItem.stMenu) - 1);
        StrLCopy(LMenuItem.stFunction, 'FindObj', SizeOf(LMenuItem.stFunction) - 1);
        Inc(LMenuItem);
    end;
    Result := 3;
end;

function PgiCheckMenuItemCom(AFunction: PAnsiChar; APluginCall: IPluginCall): Boolean;
var
    LFuncName: String;
begin
    Result := False;
    try
        LFuncName := String(AFunction);

        if LFuncName = 'ProjectList' then
        begin
            Result := True;
        end;

        if LFuncName = 'LinkedFast' then
        begin
            Result := APluginCall.stType <> 'Документ';
        end;

        if LFuncName = 'FindObj' then
        begin
            Result := True;
        end;
    except
        on E: Exception do
        begin
            Application.ShowException(E);
        end;
    end;
end;

procedure ProjectList(APluginCall: IPluginCall);
var
    LDataSet: IDataSet;
    LProjNames: String;
begin
    HookApplication(APluginCall.AppHandle);
    Application.Handle := APluginCall.AppHandle;
    try
        LDataSet := APluginCall.GetDataSet('GetProjectList', VarArrayOf([]));
        while not LDataSet.Eof do
        begin
            LProjNames := LProjNames + #13#10
                + GetValue(LDataSet, '_PRODUCT', '');
            LDataSet.Next;
        end;
        Application.MessageBox(PChar(LProjNames), 'Результат', MB_OK or MB_ICONINFORMATION);
    except
        on E: Exception do
        begin
            Application.ShowException(E);
        end;
    end;
    Application.Handle := 0;
    UnhookApplication(APluginCall.AppHandle);
end;

procedure LinkedFast(APluginCall: IPluginCall);
begin
    HookApplication(APluginCall.AppHandle);
    Application.Handle := APluginCall.AppHandle;
    try
        ShowLinkedObjectsDialog(Application, APluginCall);
    except
        on E: Exception do
        begin
            Application.ShowException(E);
        end;
    end;
    Application.Handle := 0;
    UnhookApplication(APluginCall.AppHandle);
end;

procedure FindObj(APluginCall: IPluginCall);
begin
    HookApplication(APluginCall.AppHandle);
    Application.Handle := APluginCall.AppHandle;
    try
        ShowFindObjectsDialog(Application, APluginCall);
    except
        on E: Exception do
        begin
            Application.ShowException(E);
        end;
    end;
    Application.Handle := 0;
    UnhookApplication(APluginCall.AppHandle);
end;

end.
