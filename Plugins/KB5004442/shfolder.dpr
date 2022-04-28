// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this file,
// You can obtain one at http://mozilla.org/MPL/2.0/
library shfolder;

// Для закрытия уязвимости CVE-2021-26414 исправление KB5004442
// повышает минимальнЫй уровень проверки подлинности при
// удаленных вызовах DCOM до RPC_C_AUTHN_LEVEL_PKT_INTEGRITY.
// Данный патч выполняет подмену CoInitializeSecurity для замены уровня
// проверки подлинности dwAuthnLevel на RPC_C_AUTHN_LEVEL_PKT_INTEGRITY.

uses
    Windows;

const
    shell32 = 'shell32.dll';
    ole32    = 'ole32.dll';
    RPC_C_AUTHN_LEVEL_PKT_INTEGRITY = 5;

function GetFolderPathA(hwnd: HWND; csidl: Integer; hToken: THandle;
    dwFlags: DWORD; pszPath: LPSTR): HResult; stdcall; external shell32 name 'SHGetFolderPathA';
function GetFolderPathW(hwnd: HWND; csidl: Integer; hToken: THandle;
    dwFlags: DWORD; pszPath: LPWSTR): HResult; stdcall; external shell32 name 'SHGetFolderPathW';
function CoInitializeSecurity(pSecDesc: Pointer; cAuthSvc: Longint;
    asAuthSvc: Pointer; pReserved1: Pointer; dwAuthnLevel, dImpLevel: Longint;
    pReserved2: Pointer; dwCapabilities: Longint;
    pReserved3: Pointer): HResult; stdcall; external ole32 name 'CoInitializeSecurity';

// Функции shfolder.dll в новых версиях Windows
// реализованы в shell32.dll

function SHGetFolderPathA(hwnd: HWND; csidl: Integer; hToken: THandle; dwFlags: DWord; pszPath: LPSTR): HRESULT; stdcall;
begin
    Result := GetFolderPathA(hwnd, csidl, hToken, dwFlags, pszPath);
end;

function SHGetFolderPathW(hwnd: HWND; csidl: Integer; hToken: THandle; dwFlags: DWord; pszPath: LPWSTR): HRESULT; stdcall;
begin
    Result := GetFolderPathW(hwnd, csidl, hToken, dwFlags, pszPath);
end;

exports
    SHGetFolderPathA, SHGetFolderPathW;

var
    ProcAddress: Pointer;
    BytesWritten: DWORD;
    OriginalBytes: array [0..5] of Byte;

function NewCoInitializeSecurity(pSecDesc: Pointer; cAuthSvc: Longint;
    asAuthSvc: Pointer; pReserved1: Pointer; dwAuthnLevel, dImpLevel: Longint;
    pReserved2: Pointer; dwCapabilities: Longint;
    pReserved3: Pointer): HResult; stdcall;
begin
    // Восстанавливаем начало функции
    WriteProcessMemory(GetCurrentProcess(), ProcAddress, @OriginalBytes[0],
        SizeOf(OriginalBytes), BytesWritten);
    FlushInstructionCache(GetCurrentProcess(), @OriginalBytes[0],
        SizeOf(OriginalBytes));
    // Вызов с измененным параметром
    Result := CoInitializeSecurity(pSecDesc, cAuthSvc, asAuthSvc, pReserved1,
        RPC_C_AUTHN_LEVEL_PKT_INTEGRITY, dImpLevel, pReserved2, dwCapabilities,
        pReserved3);
end;

procedure Hook;
var
    LibHandle: THandle;
    BytesRead: DWORD;
    LNewProc: Pointer;
    Patch: array [0..5] of Byte;
begin
    LibHandle := LoadLibrary(ole32);
    ProcAddress := GetProcAddress(LibHandle, 'CoInitializeSecurity');
    BytesRead := 0;
    // Запоминаем начало функции
    ReadProcessMemory(GetCurrentProcess(), ProcAddress, @OriginalBytes[0],
        SizeOf(OriginalBytes), BytesRead);
    // Заменяем начало функции:
    // push <address of NewCoInitializeSecurity>
    // ret
    LNewProc := @NewCoInitializeSecurity;
    Patch[0] := $68;
    Move(LNewProc, Patch[1], 4);
    Patch[5] := $C3;
    WriteProcessMemory(GetCurrentProcess(), ProcAddress, @Patch[0],
        SizeOf(Patch), &BytesWritten);
    FlushInstructionCache(GetCurrentProcess(), @OriginalBytes[0],
        SizeOf(OriginalBytes));
end;

begin
    Hook;
end.
