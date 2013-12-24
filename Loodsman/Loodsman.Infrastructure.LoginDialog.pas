// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this file,
// You can obtain one at http://mozilla.org/MPL/2.0/
unit Loodsman.Infrastructure.LoginDialog;

interface

uses
    SysUtils;

function ShowLoodsmanLoginDialog(const ABase: String; var AUserName, APassword: String; var ASavePassword: Boolean): Boolean;

implementation

{$WARN SYMBOL_PLATFORM OFF}

uses
    Forms, Windows;

resourcestring
    SCaptionFormat = 'Подключение к %s';
    SDescriptionFormat = 'Подключение к базе данных %s.';

type
    TCredUIInfo = record
        cbSize: DWORD;
        hwndParent: HWND;
        pszMessageText: PChar;
        pszCaptionText: PChar;
        hbmBanner: HBITMAP;
    end;
    PCredUIInfo = ^TCredUIInfo;

const
    CRED_MAX_LENGTH = 256;
    CREDUI_FLAGS_DO_NOT_PERSIST = $00002;
    CREDUI_FLAGS_SHOW_SAVE_CHECK_BOX = $00040;
    CREDUI_FLAGS_ALWAYS_SHOW_UI = $00080;
    CREDUI_FLAGS_GENERIC_CREDENTIALS = $40000;
    CCredUIDLL = 'credui.dll';

function CredUIPromptForCredentialsW(pUiInfo: PCredUIInfo;
    pszTargetName: PChar; pContext: Pointer; dwAuthError: DWORD;
    pszUserName: PChar; ulUserNameBufferSize: ULONG;
    pszPassword: PChar; ulPasswordBufferSize: ULONG;
    var pfSave: BOOL; dwFlags: DWORD): DWORD; stdcall; external CCredUIDLL delayed;

function ShowLoodsmanLoginDialog(const ABase: String; var AUserName, APassword: String; var ASavePassword: Boolean): Boolean;
var
    LCredInfo: TCredUIInfo;
    LUserName, LPassword: String;
    LSave: BOOL;
    LFlags: DWORD;
begin
    FillChar(LCredInfo, SizeOf(LCredInfo), 0);
    LCredInfo.cbSize := SizeOf(LCredInfo);
    if Screen.FocusedForm <> nil then
        LCredInfo.hwndParent := Screen.FocusedForm.Handle
    else if Screen.ActiveForm <> nil then
        LCredInfo.hwndParent := Screen.ActiveForm.Handle
    else
        LCredInfo.hwndParent := 0;
    LCredInfo.pszCaptionText := PChar(Format(SCaptionFormat, [ABase]));
    LCredInfo.pszMessageText := PChar(Format(SDescriptionFormat, [ABase]));
    LUserName := AUserName + #0;
    LPassword := APassword + #0;
    SetLength(LUserName, CRED_MAX_LENGTH);
    SetLength(LPassword, CRED_MAX_LENGTH);
    LSave := ASavePassword;
    LFlags := CREDUI_FLAGS_ALWAYS_SHOW_UI or CREDUI_FLAGS_DO_NOT_PERSIST
        or CREDUI_FLAGS_GENERIC_CREDENTIALS;
    if ASavePassword then
        LFlags := LFlags or CREDUI_FLAGS_SHOW_SAVE_CHECK_BOX;
    if CredUIPromptForCredentialsW(@LCredInfo, nil, nil, 0,
        PChar(LUserName), CRED_MAX_LENGTH, PChar(LPassword), CRED_MAX_LENGTH,
        LSave, LFlags) = NO_ERROR then
    begin
        AUserName := PChar(LUserName);
        APassword := PChar(LPassword);
        ASavePassword := LSave;
        Result := True;
    end
    else
        Result := False;
end;

end.
