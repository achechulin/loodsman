unit Loodsman.Infrastructure.PluginUtils;

interface

uses
    SysUtils, Windows;

procedure ApplicationCancelHint;

procedure ApplicationDestroyHandle;

procedure HookApplication(const AHandle: THandle);

procedure UnhookApplication(const AHandle: THandle);

implementation

uses
    Controls, Forms, Messages;

type
    TApplicationHelper = class helper for TApplication
        procedure _CancelHint;
        procedure _DestroyHandle;
    end;

procedure TApplicationHelper._CancelHint;
begin
    Self.FHintControl := TControl(1);
    Self.CancelHint();
end;

procedure TApplicationHelper._DestroyHandle;
begin
    if (Self.FHandle <> 0) and Self.FHandleCreated then
    begin
        if NewStyleControls then
            SendMessage(Self.FHandle, WM_SETICON, ICON_BIG, 0);
        DestroyWindow(Self.FHandle);
        Self.FHandle := 0;
        Self.FHandleCreated := False;
    end;
end;

procedure ApplicationCancelHint;
begin
    Application._CancelHint();
end;

procedure ApplicationDestroyHandle;
begin
    Application._DestroyHandle();
end;

var
    OldApplicationWndProc: TFNWndProc;

function ApplicationWndProc(Window: HWND; Message, WParam, LParam: LongInt): LongInt; stdcall;
begin
    case Message of
        CM_ACTIONEXECUTE, CM_ACTIONUPDATE:
            Result := 0;
        CM_APPKEYDOWN:
            Result := 0;
        WM_HELP, CM_INVOKEHELP:
            Result := 0;
    else
        Result := CallWindowProc(OldApplicationWndProc, Window, Message, WParam, LParam);
    end;
end;

procedure HookApplication(const AHandle: THandle);
var
    LHook: LongInt;
begin
    LHook := LongInt(@ApplicationWndProc);
    if GetWindowLong(AHandle, GWL_WNDPROC) <> LHook then
    begin
        OldApplicationWndProc := TFNWndProc(SetWindowLong(AHandle, GWL_WNDPROC, LHook));
    end;
end;

procedure UnhookApplication(const AHandle: THandle);
var
    LHook: LongInt;
begin
    LHook := LongInt(@ApplicationWndProc);
    if GetWindowLong(AHandle, GWL_WNDPROC) = LHook then
        SetWindowLong(AHandle, GWL_WNDPROC, LongInt(OldApplicationWndProc));
end;

end.
