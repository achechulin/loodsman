unit TestResources;

interface

uses
    SysUtils, TestFrameWork, Loodsman.Infrastructure.Resources;

type
    TTestResources = class(TTestCase)
    protected
        procedure SetUp; override;
        procedure TearDown; override;
    published
        procedure TestGetTypeLib;
    end;

implementation

uses
    ActiveX, ComObj;

{ TTestResources }

procedure TTestResources.SetUp;
begin
    inherited;
end;

procedure TTestResources.TearDown;
begin
    inherited;
end;

procedure TTestResources.TestGetTypeLib;
var
    LTypeLib: ITypeLib;
    LTypeInfo: ITypeInfo;
    LTypeAttr: PTypeAttr;
begin
    LTypeLib := GetLoodsmanTypeLib();
    Check(LTypeLib <> nil);
    CheckEquals(82, LTypeLib.GetTypeInfoCount);
    // IDataSet
    OleCheck(LTypeLib.GetTypeInfoOfGuid(StringToGUID('{60446488-9D7B-4776-866E-7EE647F72972}'), LTypeInfo));
    OleCheck(LTypeInfo.GetTypeAttr(LTypeAttr));
    CheckEquals(38, LTypeAttr.cFuncs);
    LTypeInfo.ReleaseTypeAttr(LTypeAttr);
    LTypeInfo := nil;
    // IPluginCall
    OleCheck(LTypeLib.GetTypeInfoOfGuid(StringToGUID('{7779A0A3-1BF6-45C8-A536-21AD4B97E46D}'), LTypeInfo));
    OleCheck(LTypeInfo.GetTypeAttr(LTypeAttr));
    CheckEquals(27, LTypeAttr.cFuncs);
    LTypeInfo.ReleaseTypeAttr(LTypeAttr);
    LTypeInfo := nil;
end;

initialization
    TestFramework.RegisterTest(TTestResources.Suite);

end.
