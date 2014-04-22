unit BOSimple_TLB;

// ************************************************************************ //
// WARNING                                                                    
// -------                                                                    
// The types declared in this file were generated from data read from a       
// Type Library. If this type library is explicitly or indirectly (via        
// another type library referring to this type library) re-imported, or the   
// 'Refresh' command of the Type Library Editor activated while editing the   
// Type Library, the contents of this file will be regenerated and all        
// manual modifications will be lost.                                         
// ************************************************************************ //

// $Rev: 17244 $
// File generated on 01.02.2011 10:57:12 from Type Library described below.

// ************************************************************************  //
// Type Lib: BOSimple.DLL (1)
// LIBID: {45276A6A-6A03-4BC0-B984-FB84C70BBCCF}
// LCID: 0
// Helpfile: 
// HelpString: BOSimple Library
// DepndLst: 
//   (1) v2.0 stdole, (C:\WINDOWS\system32\STDOLE2.TLB)
// Parent TypeLibrary:
//   (0) v1.0 Loodsman, (Loodsman.tlb)
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
{$ALIGN 4}
interface

uses Windows, ActiveX, Classes, Graphics, OleCtrls, OleServer, Variants;
  


// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  BOSimpleMajorVersion = 1;
  BOSimpleMinorVersion = 0;

  LIBID_BOSimple: TGUID = '{45276A6A-6A03-4BC0-B984-FB84C70BBCCF}';

  IID_IBOItem: TGUID = '{16D42597-F51E-46F8-A9D1-98D040DA5ED3}';
  IID_IBOObject: TGUID = '{85299E3F-6D6B-430B-9CBE-72F28E128D0E}';
  IID_IBOAttribute: TGUID = '{F262BEE6-DAA8-4EAB-958F-589253F8D3B3}';
  IID_IBOItemCollection: TGUID = '{231BE669-E7A5-4194-81B1-12F439570297}';
  IID_IBOAttributeCollection: TGUID = '{FE05BB59-5F48-435D-8B21-705CA58C0EE3}';
  IID_IBOObjectCollection: TGUID = '{3B531410-3836-4243-B3A2-9D60026BAFF3}';
  IID_IBORequest: TGUID = '{8FA91A6F-C560-452D-AF37-F1EA3456E961}';
  IID_IBOResponse: TGUID = '{97AF12CB-8FF5-4DAF-94D0-2D9A65F64DE3}';
  IID_IBOSimpleProvider: TGUID = '{B57C3F55-8C78-437F-AEFD-911FC1A3617A}';
  CLASS_BOObject: TGUID = '{4EB0DA4A-17FF-47E1-BCAD-93535DF25448}';
  CLASS_BOAttribute: TGUID = '{9E8FF4B2-B300-472B-A492-595C7F0A9B71}';
  CLASS_BOObjectCollection: TGUID = '{2400090C-1C41-45C0-82FA-41220EC1AAEF}';
  CLASS_BOAttributeCollection: TGUID = '{DC8083FF-C2F9-4395-BF6E-AB9F3D234DF2}';
  CLASS_BORequest: TGUID = '{188D189D-4ED7-404B-8DC4-F458B6F65076}';
  CLASS_BOResponse: TGUID = '{79059E91-42F5-4DD0-9A37-7BFC95C2E823}';
  IID_IBOKernel: TGUID = '{03F6492D-5155-4CF2-A372-65DD1403458B}';
  CLASS_BOKernel: TGUID = '{FE0C0722-1E0C-4174-A9BF-F637B7EF1244}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  IBOItem = interface;
  IBOItemDisp = dispinterface;
  IBOObject = interface;
  IBOObjectDisp = dispinterface;
  IBOAttribute = interface;
  IBOAttributeDisp = dispinterface;
  IBOItemCollection = interface;
  IBOItemCollectionDisp = dispinterface;
  IBOAttributeCollection = interface;
  IBOAttributeCollectionDisp = dispinterface;
  IBOObjectCollection = interface;
  IBOObjectCollectionDisp = dispinterface;
  IBORequest = interface;
  IBORequestDisp = dispinterface;
  IBOResponse = interface;
  IBOResponseDisp = dispinterface;
  IBOSimpleProvider = interface;
  IBOSimpleProviderDisp = dispinterface;
  IBOKernel = interface;
  IBOKernelDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  BOObject = IBOObject;
  BOAttribute = IBOAttribute;
  BOObjectCollection = IBOObjectCollection;
  BOAttributeCollection = IBOAttributeCollection;
  BORequest = IBORequest;
  BOResponse = IBOResponse;
  BOKernel = IBOKernel;


// *********************************************************************//
// Interface: IBOItem
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {16D42597-F51E-46F8-A9D1-98D040DA5ED3}
// *********************************************************************//
  IBOItem = interface(IDispatch)
    ['{16D42597-F51E-46F8-A9D1-98D040DA5ED3}']
    function Get_XML: WideString; safecall;
    property XML: WideString read Get_XML;
  end;

// *********************************************************************//
// DispIntf:  IBOItemDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {16D42597-F51E-46F8-A9D1-98D040DA5ED3}
// *********************************************************************//
  IBOItemDisp = dispinterface
    ['{16D42597-F51E-46F8-A9D1-98D040DA5ED3}']
    property XML: WideString readonly dispid 1610743808;
  end;

// *********************************************************************//
// Interface: IBOObject
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {85299E3F-6D6B-430B-9CBE-72F28E128D0E}
// *********************************************************************//
  IBOObject = interface(IBOItem)
    ['{85299E3F-6D6B-430B-9CBE-72F28E128D0E}']
    function Get_Attributes: IBOAttributeCollection; safecall;
    function Get_Attribute(const aName: WideString): IBOAttribute; safecall;
    function Get_Objects: IBOObjectCollection; safecall;
    function Get_ObjectID: WideString; safecall;
    procedure Set_ObjectID(const Value: WideString); safecall;
    function Get_ClassID: WideString; safecall;
    procedure Set_ClassID(const Value: WideString); safecall;
    function Get_DisplayName: WideString; safecall;
    property Attributes: IBOAttributeCollection read Get_Attributes;
    property Attribute[const aName: WideString]: IBOAttribute read Get_Attribute;
    property Objects: IBOObjectCollection read Get_Objects;
    property ObjectID: WideString read Get_ObjectID write Set_ObjectID;
    property ClassID: WideString read Get_ClassID write Set_ClassID;
    property DisplayName: WideString read Get_DisplayName;
  end;

// *********************************************************************//
// DispIntf:  IBOObjectDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {85299E3F-6D6B-430B-9CBE-72F28E128D0E}
// *********************************************************************//
  IBOObjectDisp = dispinterface
    ['{85299E3F-6D6B-430B-9CBE-72F28E128D0E}']
    property Attributes: IBOAttributeCollection readonly dispid 5;
    property Attribute[const aName: WideString]: IBOAttribute readonly dispid 6;
    property Objects: IBOObjectCollection readonly dispid 4;
    property ObjectID: WideString dispid 1;
    property ClassID: WideString dispid 3;
    property DisplayName: WideString readonly dispid 2;
    property XML: WideString readonly dispid 1610743808;
  end;

// *********************************************************************//
// Interface: IBOAttribute
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F262BEE6-DAA8-4EAB-958F-589253F8D3B3}
// *********************************************************************//
  IBOAttribute = interface(IBOItem)
    ['{F262BEE6-DAA8-4EAB-958F-589253F8D3B3}']
    function Get_Name: WideString; safecall;
    function Get_Value: WideString; safecall;
    procedure Set_Value(const Value: WideString); safecall;
    function Get_AsString: WideString; safecall;
    procedure Set_AsString(const Value: WideString); safecall;
    function Get_AsFloat: Double; safecall;
    procedure Set_AsFloat(Value: Double); safecall;
    function Get_AsInteger: Integer; safecall;
    procedure Set_AsInteger(Value: Integer); safecall;
    function Get_AsBoolean: WordBool; safecall;
    procedure Set_AsBoolean(Value: WordBool); safecall;
    function Get_Attributes: IBOAttributeCollection; safecall;
    function Get_Attribute(const aName: WideString): IBOAttribute; safecall;
    property Name: WideString read Get_Name;
    property Value: WideString read Get_Value write Set_Value;
    property AsString: WideString read Get_AsString write Set_AsString;
    property AsFloat: Double read Get_AsFloat write Set_AsFloat;
    property AsInteger: Integer read Get_AsInteger write Set_AsInteger;
    property AsBoolean: WordBool read Get_AsBoolean write Set_AsBoolean;
    property Attributes: IBOAttributeCollection read Get_Attributes;
    property Attribute[const aName: WideString]: IBOAttribute read Get_Attribute;
  end;

// *********************************************************************//
// DispIntf:  IBOAttributeDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F262BEE6-DAA8-4EAB-958F-589253F8D3B3}
// *********************************************************************//
  IBOAttributeDisp = dispinterface
    ['{F262BEE6-DAA8-4EAB-958F-589253F8D3B3}']
    property Name: WideString readonly dispid 1;
    property Value: WideString dispid 2;
    property AsString: WideString dispid 4;
    property AsFloat: Double dispid 5;
    property AsInteger: Integer dispid 6;
    property AsBoolean: WordBool dispid 7;
    property Attributes: IBOAttributeCollection readonly dispid 3;
    property Attribute[const aName: WideString]: IBOAttribute readonly dispid 8;
    property XML: WideString readonly dispid 1610743808;
  end;

// *********************************************************************//
// Interface: IBOItemCollection
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {231BE669-E7A5-4194-81B1-12F439570297}
// *********************************************************************//
  IBOItemCollection = interface(IDispatch)
    ['{231BE669-E7A5-4194-81B1-12F439570297}']
    function Get_Count: Integer; safecall;
    function Get_XML: WideString; safecall;
    procedure Clear; safecall;
    procedure Delete(Index: Integer); safecall;
    property Count: Integer read Get_Count;
    property XML: WideString read Get_XML;
  end;

// *********************************************************************//
// DispIntf:  IBOItemCollectionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {231BE669-E7A5-4194-81B1-12F439570297}
// *********************************************************************//
  IBOItemCollectionDisp = dispinterface
    ['{231BE669-E7A5-4194-81B1-12F439570297}']
    property Count: Integer readonly dispid 1;
    property XML: WideString readonly dispid 4;
    procedure Clear; dispid 200;
    procedure Delete(Index: Integer); dispid 205;
  end;

// *********************************************************************//
// Interface: IBOAttributeCollection
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {FE05BB59-5F48-435D-8B21-705CA58C0EE3}
// *********************************************************************//
  IBOAttributeCollection = interface(IBOItemCollection)
    ['{FE05BB59-5F48-435D-8B21-705CA58C0EE3}']
    function Get_Item(Index: Integer): IBOAttribute; safecall;
    function Get_Attribute(const aName: WideString): IBOAttribute; safecall;
    function Add(const aName: WideString; const aValue: WideString): IBOAttribute; safecall;
    function Get_Value(const aName: WideString): WideString; safecall;
    procedure Set_Value(const aName: WideString; const Value: WideString); safecall;
    function Get_AutoAppend: WordBool; safecall;
    procedure Set_AutoAppend(Value: WordBool); safecall;
    function Get_Duplicates: WordBool; safecall;
    procedure Set_Duplicates(Value: WordBool); safecall;
    property Item[Index: Integer]: IBOAttribute read Get_Item;
    property Attribute[const aName: WideString]: IBOAttribute read Get_Attribute;
    property Value[const aName: WideString]: WideString read Get_Value write Set_Value;
    property AutoAppend: WordBool read Get_AutoAppend write Set_AutoAppend;
    property Duplicates: WordBool read Get_Duplicates write Set_Duplicates;
  end;

// *********************************************************************//
// DispIntf:  IBOAttributeCollectionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {FE05BB59-5F48-435D-8B21-705CA58C0EE3}
// *********************************************************************//
  IBOAttributeCollectionDisp = dispinterface
    ['{FE05BB59-5F48-435D-8B21-705CA58C0EE3}']
    property Item[Index: Integer]: IBOAttribute readonly dispid 3;
    property Attribute[const aName: WideString]: IBOAttribute readonly dispid 2;
    function Add(const aName: WideString; const aValue: WideString): IBOAttribute; dispid 201;
    property Value[const aName: WideString]: WideString dispid 5;
    property AutoAppend: WordBool dispid 7;
    property Duplicates: WordBool dispid 6;
    property Count: Integer readonly dispid 1;
    property XML: WideString readonly dispid 4;
    procedure Clear; dispid 200;
    procedure Delete(Index: Integer); dispid 205;
  end;

// *********************************************************************//
// Interface: IBOObjectCollection
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {3B531410-3836-4243-B3A2-9D60026BAFF3}
// *********************************************************************//
  IBOObjectCollection = interface(IBOItemCollection)
    ['{3B531410-3836-4243-B3A2-9D60026BAFF3}']
    function Get_Item(Index: Integer): IBOObject; safecall;
    function Add(const aClassID: WideString; const aObjectID: WideString; 
                 const aDisplayName: WideString): IBOObject; safecall;
    property Item[Index: Integer]: IBOObject read Get_Item;
  end;

// *********************************************************************//
// DispIntf:  IBOObjectCollectionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {3B531410-3836-4243-B3A2-9D60026BAFF3}
// *********************************************************************//
  IBOObjectCollectionDisp = dispinterface
    ['{3B531410-3836-4243-B3A2-9D60026BAFF3}']
    property Item[Index: Integer]: IBOObject readonly dispid 3;
    function Add(const aClassID: WideString; const aObjectID: WideString; 
                 const aDisplayName: WideString): IBOObject; dispid 6;
    property Count: Integer readonly dispid 1;
    property XML: WideString readonly dispid 4;
    procedure Clear; dispid 200;
    procedure Delete(Index: Integer); dispid 205;
  end;

// *********************************************************************//
// Interface: IBORequest
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8FA91A6F-C560-452D-AF37-F1EA3456E961}
// *********************************************************************//
  IBORequest = interface(IDispatch)
    ['{8FA91A6F-C560-452D-AF37-F1EA3456E961}']
    function Get_Attributes: IBOAttributeCollection; safecall;
    function Get_Topic: WideString; safecall;
    procedure Set_Topic(const Value: WideString); safecall;
    function Get_Attribute(const aName: WideString): IBOAttribute; safecall;
    function Get_XML: WideString; safecall;
    function Get_Objects: IBOObjectCollection; safecall;
    property Attributes: IBOAttributeCollection read Get_Attributes;
    property Topic: WideString read Get_Topic write Set_Topic;
    property Attribute[const aName: WideString]: IBOAttribute read Get_Attribute;
    property XML: WideString read Get_XML;
    property Objects: IBOObjectCollection read Get_Objects;
  end;

// *********************************************************************//
// DispIntf:  IBORequestDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8FA91A6F-C560-452D-AF37-F1EA3456E961}
// *********************************************************************//
  IBORequestDisp = dispinterface
    ['{8FA91A6F-C560-452D-AF37-F1EA3456E961}']
    property Attributes: IBOAttributeCollection readonly dispid 1;
    property Topic: WideString dispid 2;
    property Attribute[const aName: WideString]: IBOAttribute readonly dispid 5;
    property XML: WideString readonly dispid 4;
    property Objects: IBOObjectCollection readonly dispid 3;
  end;

// *********************************************************************//
// Interface: IBOResponse
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {97AF12CB-8FF5-4DAF-94D0-2D9A65F64DE3}
// *********************************************************************//
  IBOResponse = interface(IBOObjectCollection)
    ['{97AF12CB-8FF5-4DAF-94D0-2D9A65F64DE3}']
    function Get_Attributes: IBOAttributeCollection; safecall;
    procedure SetError(ACode: Integer; const AMsg: WideString); safecall;
    property Attributes: IBOAttributeCollection read Get_Attributes;
  end;

// *********************************************************************//
// DispIntf:  IBOResponseDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {97AF12CB-8FF5-4DAF-94D0-2D9A65F64DE3}
// *********************************************************************//
  IBOResponseDisp = dispinterface
    ['{97AF12CB-8FF5-4DAF-94D0-2D9A65F64DE3}']
    property Attributes: IBOAttributeCollection readonly dispid 2;
    procedure SetError(ACode: Integer; const AMsg: WideString); dispid 5;
    property Item[Index: Integer]: IBOObject readonly dispid 3;
    function Add(const aClassID: WideString; const aObjectID: WideString; 
                 const aDisplayName: WideString): IBOObject; dispid 6;
    property Count: Integer readonly dispid 1;
    property XML: WideString readonly dispid 4;
    procedure Clear; dispid 200;
    procedure Delete(Index: Integer); dispid 205;
  end;

// *********************************************************************//
// Interface: IBOSimpleProvider
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B57C3F55-8C78-437F-AEFD-911FC1A3617A}
// *********************************************************************//
  IBOSimpleProvider = interface(IDispatch)
    ['{B57C3F55-8C78-437F-AEFD-911FC1A3617A}']
    function Get_Request: IBORequest; safecall;
    procedure Refresh; safecall;
    function Get_SourceID: WideString; safecall;
    procedure ExecuteRequest; safecall;
    function Get_Response: IBOResponse; safecall;
    function GetObject(const ClassID: WideString; const ObjectID: WideString; Options: Integer): IBOObject; safecall;
    function GetObjects(const ClassID: WideString; Options: Integer): IBOObjectCollection; safecall;
    function Select(Modal: WordBool; var Location: WideString; ClientWindow: Integer): WordBool; safecall;
    procedure GetObjectInfo(const Location: WideString; var ClassID: WideString; 
                            var ObjectID: WideString); safecall;
    procedure RegisterClient(const aName: WideString); safecall;
    procedure UnRegisterClient; safecall;
    function Get_ClientID: Integer; safecall;
    function Get_Status: Integer; safecall;
    property Request: IBORequest read Get_Request;
    property SourceID: WideString read Get_SourceID;
    property Response: IBOResponse read Get_Response;
    property ClientID: Integer read Get_ClientID;
    property Status: Integer read Get_Status;
  end;

// *********************************************************************//
// DispIntf:  IBOSimpleProviderDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B57C3F55-8C78-437F-AEFD-911FC1A3617A}
// *********************************************************************//
  IBOSimpleProviderDisp = dispinterface
    ['{B57C3F55-8C78-437F-AEFD-911FC1A3617A}']
    property Request: IBORequest readonly dispid 9;
    procedure Refresh; dispid 1;
    property SourceID: WideString readonly dispid 2;
    procedure ExecuteRequest; dispid 3;
    property Response: IBOResponse readonly dispid 4;
    function GetObject(const ClassID: WideString; const ObjectID: WideString; Options: Integer): IBOObject; dispid 5;
    function GetObjects(const ClassID: WideString; Options: Integer): IBOObjectCollection; dispid 6;
    function Select(Modal: WordBool; var Location: WideString; ClientWindow: Integer): WordBool; dispid 8;
    procedure GetObjectInfo(const Location: WideString; var ClassID: WideString; 
                            var ObjectID: WideString); dispid 10;
    procedure RegisterClient(const aName: WideString); dispid 11;
    procedure UnRegisterClient; dispid 12;
    property ClientID: Integer readonly dispid 13;
    property Status: Integer readonly dispid 7;
  end;

// *********************************************************************//
// Interface: IBOKernel
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {03F6492D-5155-4CF2-A372-65DD1403458B}
// *********************************************************************//
  IBOKernel = interface(IDispatch)
    ['{03F6492D-5155-4CF2-A372-65DD1403458B}']
    procedure Refresh; safecall;
    function Get_Count: Integer; safecall;
    procedure Set_Count(Value: Integer); safecall;
    function ExternalResponse(const SourceID: WideString; Engine: Integer; 
                              const Request: IBORequest; const Response: IBOResponse): WordBool; safecall;
    property Count: Integer read Get_Count write Set_Count;
  end;

// *********************************************************************//
// DispIntf:  IBOKernelDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {03F6492D-5155-4CF2-A372-65DD1403458B}
// *********************************************************************//
  IBOKernelDisp = dispinterface
    ['{03F6492D-5155-4CF2-A372-65DD1403458B}']
    procedure Refresh; dispid 1;
    property Count: Integer dispid 3;
    function ExternalResponse(const SourceID: WideString; Engine: Integer; 
                              const Request: IBORequest; const Response: IBOResponse): WordBool; dispid 4;
  end;

implementation

end.
