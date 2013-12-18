// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this file,
// You can obtain one at http://mozilla.org/MPL/2.0/
unit Loodsman.Infrastructure.Resources;

interface

uses
    SysUtils, ActiveX;

///  <summary>Освобождает все загруженные ресурсы.</summary>
procedure FreeResources;

///  <summary>Получить библиотеку типов ЛОЦМАН Клиент.</summary>
///  <remarks>Библиотека типов необходима для реализации описанных
///  в ней интерфейсов (например, <c>IDataSet</c>) с помощью
///  <see cref="ComObj|TAutoIntfObject">TAutoIntfObject</see>.</remarks>
function GetLoodsmanTypeLib: ITypeLib;

implementation

{$R 'Loodsman.Infrastructure.Resources.res' 'Loodsman.Infrastructure.Resources.rc'}

uses
    ComObj, Windows;

var
    LoodsmanTypeLib: ITypeLib;

procedure FreeResources;
begin
    LoodsmanTypeLib := nil;
end;

function GetModuleFileName(AInstance: THandle): String;
var
    LRes: Integer;
begin
    SetLength(Result, MAX_PATH);
    LRes := Windows.GetModuleFileName(AInstance, PChar(Result), Length(Result));
    if LRes = 0 then RaiseLastOSError();
    LRes := GetLongPathName(PChar(Result), PChar(Result), Length(Result));
    if LRes = 0 then RaiseLastOSError();
    Assert(LRes <= MAX_PATH);
    SetLength(Result, LRes);
end;

function GetLoodsmanTypeLib: ITypeLib;
var
    LFileName: String;
begin
    if LoodsmanTypeLib = nil then
    begin
        // Loodsman.Infrastructure.Resources.rc
        // 1 TYPELIB "Resources\\Loodsman.tlb"
        LFileName := GetModuleFileName(HInstance) + PathDelim + '1';
        OleCheck(LoadTypeLibEx(PChar(LFileName), REGKIND_NONE, LoodsmanTypeLib));
    end;
    Result := LoodsmanTypeLib;
end;

initialization

finalization
    FreeResources();

end.
