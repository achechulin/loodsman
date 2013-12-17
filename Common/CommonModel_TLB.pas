unit CommonModel_TLB;

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
// File generated on 13.09.2010 10:21:16 from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\WINDOWS\system32\CommonModel.dll (1)
// LIBID: {04026FE3-4B59-4838-9C9D-7488D7562B52}
// LCID: 0
// Helpfile: 
// HelpString: CommonModel Library
// DepndLst: 
//   (1) v2.0 stdole, (C:\WINDOWS\system32\STDOLE2.TLB)
// Parent TypeLibrary:
//   (0) v1.0 IntegratorObject, (C:\Program Files\ASCON\Loodsman\Client\Integrator\LoodsmanIntegrator.dll)
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
{$ALIGN 4}
interface

uses Windows, ActiveX, Classes, Graphics, OleServer, Variants;
  

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  CommonModelMajorVersion = 1;
  CommonModelMinorVersion = 0;

  LIBID_CommonModel: TGUID = '{04026FE3-4B59-4838-9C9D-7488D7562B52}';

  IID_ImProperable: TGUID = '{BF2FF6C9-4411-4E18-BD33-E0038255EBD4}';
  IID_IModel: TGUID = '{1D21C421-420D-4462-9029-0E4D83E087AB}';
  IID_ImProperty: TGUID = '{D1BFB2A4-945F-4CBE-9C4D-17B2CB29FE04}';
  CLASS_Model: TGUID = '{7FB90545-2732-4489-9C59-D6CEF94874F0}';
  IID_ImObject: TGUID = '{D3A546B5-0320-4F87-A396-7E782DFEE46E}';
  IID_ImLink: TGUID = '{904B549E-7294-469B-A949-52DFD70E1DF0}';
  CLASS_mObject: TGUID = '{911A4CF6-2968-4576-A5D5-9F0C80AE509B}';
  CLASS_mLink: TGUID = '{C4068B01-3987-40DF-895D-141D98754644}';
  CLASS_mProperty: TGUID = '{0589AD2C-2334-42FE-97ED-B39E83C660CA}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  ImProperable = interface;
  ImProperableDisp = dispinterface;
  IModel = interface;
  IModelDisp = dispinterface;
  ImProperty = interface;
  ImPropertyDisp = dispinterface;
  ImObject = interface;
  ImObjectDisp = dispinterface;
  ImLink = interface;
  ImLinkDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  Model = IModel;
  mObject = ImObject;
  mLink = ImLink;
  mProperty = ImProperty;


// *********************************************************************//
// Declaration of structures, unions and aliases.                         
// *********************************************************************//
  POleVariant1 = ^OleVariant; {*}


// *********************************************************************//
// Interface: ImProperable
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {BF2FF6C9-4411-4E18-BD33-E0038255EBD4}
// *********************************************************************//
  ImProperable = interface(IDispatch)
    ['{BF2FF6C9-4411-4E18-BD33-E0038255EBD4}']
    function Get_PropCount: Integer; safecall;
    function AddProp(const Name: WideString; const Value: WideString): ImProperty; safecall;
    function Get_Props(Index: Integer): ImProperty; safecall;
    function FindProp(const Name: WideString): ImProperty; safecall;
    function FindPropIdx(const Name: WideString): Integer; safecall;
    function GetPropValue(const Name: WideString): WideString; safecall;
    function SetPropValue(const Name: WideString; const Value: WideString): ImProperty; safecall;
    property PropCount: Integer read Get_PropCount;
    property Props[Index: Integer]: ImProperty read Get_Props;
  end;

// *********************************************************************//
// DispIntf:  ImProperableDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {BF2FF6C9-4411-4E18-BD33-E0038255EBD4}
// *********************************************************************//
  ImProperableDisp = dispinterface
    ['{BF2FF6C9-4411-4E18-BD33-E0038255EBD4}']
    property PropCount: Integer readonly dispid 101;
    function AddProp(const Name: WideString; const Value: WideString): ImProperty; dispid 102;
    property Props[Index: Integer]: ImProperty readonly dispid 103;
    function FindProp(const Name: WideString): ImProperty; dispid 104;
    function FindPropIdx(const Name: WideString): Integer; dispid 105;
    function GetPropValue(const Name: WideString): WideString; dispid 106;
    function SetPropValue(const Name: WideString; const Value: WideString): ImProperty; dispid 107;
  end;

// *********************************************************************//
// Interface: IModel
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {1D21C421-420D-4462-9029-0E4D83E087AB}
// *********************************************************************//
  IModel = interface(ImProperable)
    ['{1D21C421-420D-4462-9029-0E4D83E087AB}']
    function Get_ObjCount: Integer; safecall;
    function Get_Objs(Index: Integer): ImObject; safecall;
    function AddObj: ImObject; safecall;
    procedure Load(const FileName: WideString); safecall;
    procedure Save(const FileName: WideString); safecall;
    function SaveVariant: OleVariant; safecall;
    procedure LoadVariant(var Data: OleVariant); safecall;
    procedure Clear; safecall;
    property ObjCount: Integer read Get_ObjCount;
    property Objs[Index: Integer]: ImObject read Get_Objs;
  end;

// *********************************************************************//
// DispIntf:  IModelDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {1D21C421-420D-4462-9029-0E4D83E087AB}
// *********************************************************************//
  IModelDisp = dispinterface
    ['{1D21C421-420D-4462-9029-0E4D83E087AB}']
    property ObjCount: Integer readonly dispid 1;
    property Objs[Index: Integer]: ImObject readonly dispid 2;
    function AddObj: ImObject; dispid 3;
    procedure Load(const FileName: WideString); dispid 4;
    procedure Save(const FileName: WideString); dispid 5;
    function SaveVariant: OleVariant; dispid 6;
    procedure LoadVariant(var Data: OleVariant); dispid 7;
    procedure Clear; dispid 8;
    property PropCount: Integer readonly dispid 101;
    function AddProp(const Name: WideString; const Value: WideString): ImProperty; dispid 102;
    property Props[Index: Integer]: ImProperty readonly dispid 103;
    function FindProp(const Name: WideString): ImProperty; dispid 104;
    function FindPropIdx(const Name: WideString): Integer; dispid 105;
    function GetPropValue(const Name: WideString): WideString; dispid 106;
    function SetPropValue(const Name: WideString; const Value: WideString): ImProperty; dispid 107;
  end;

// *********************************************************************//
// Interface: ImProperty
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D1BFB2A4-945F-4CBE-9C4D-17B2CB29FE04}
// *********************************************************************//
  ImProperty = interface(IDispatch)
    ['{D1BFB2A4-945F-4CBE-9C4D-17B2CB29FE04}']
    function Get_Name: WideString; safecall;
    procedure Set_Name(const Value: WideString); safecall;
    function Get_Value: WideString; safecall;
    procedure Set_Value(const Value: WideString); safecall;
    function Get_ReadOnly: WordBool; safecall;
    procedure Set_ReadOnly(Value: WordBool); safecall;
    function Get_Mandatory: WordBool; safecall;
    procedure Set_Mandatory(Value: WordBool); safecall;
    function Get_IDUnit: WideString; safecall;
    procedure Set_IDUnit(const Value: WideString); safecall;
    function Get_IDNature: WideString; safecall;
    procedure Set_IDNature(const Value: WideString); safecall;
    procedure Delete; safecall;
    property Name: WideString read Get_Name write Set_Name;
    property Value: WideString read Get_Value write Set_Value;
    property ReadOnly: WordBool read Get_ReadOnly write Set_ReadOnly;
    property Mandatory: WordBool read Get_Mandatory write Set_Mandatory;
    property IDUnit: WideString read Get_IDUnit write Set_IDUnit;
    property IDNature: WideString read Get_IDNature write Set_IDNature;
  end;

// *********************************************************************//
// DispIntf:  ImPropertyDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D1BFB2A4-945F-4CBE-9C4D-17B2CB29FE04}
// *********************************************************************//
  ImPropertyDisp = dispinterface
    ['{D1BFB2A4-945F-4CBE-9C4D-17B2CB29FE04}']
    property Name: WideString dispid 1;
    property Value: WideString dispid 2;
    property ReadOnly: WordBool dispid 3;
    property Mandatory: WordBool dispid 4;
    property IDUnit: WideString dispid 5;
    property IDNature: WideString dispid 6;
    procedure Delete; dispid 7;
  end;

// *********************************************************************//
// Interface: ImObject
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D3A546B5-0320-4F87-A396-7E782DFEE46E}
// *********************************************************************//
  ImObject = interface(ImProperable)
    ['{D3A546B5-0320-4F87-A396-7E782DFEE46E}']
    function Get_LinkCount: Integer; safecall;
    function Get_Links(Index: Integer): ImLink; safecall;
    function AddLink(const Child: ImObject): ImLink; safecall;
    procedure Delete; safecall;
    function GetIntObject: Integer; safecall;
    property LinkCount: Integer read Get_LinkCount;
    property Links[Index: Integer]: ImLink read Get_Links;
  end;

// *********************************************************************//
// DispIntf:  ImObjectDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D3A546B5-0320-4F87-A396-7E782DFEE46E}
// *********************************************************************//
  ImObjectDisp = dispinterface
    ['{D3A546B5-0320-4F87-A396-7E782DFEE46E}']
    property LinkCount: Integer readonly dispid 1;
    property Links[Index: Integer]: ImLink readonly dispid 7;
    function AddLink(const Child: ImObject): ImLink; dispid 8;
    procedure Delete; dispid 2;
    function GetIntObject: Integer; dispid 3;
    property PropCount: Integer readonly dispid 101;
    function AddProp(const Name: WideString; const Value: WideString): ImProperty; dispid 102;
    property Props[Index: Integer]: ImProperty readonly dispid 103;
    function FindProp(const Name: WideString): ImProperty; dispid 104;
    function FindPropIdx(const Name: WideString): Integer; dispid 105;
    function GetPropValue(const Name: WideString): WideString; dispid 106;
    function SetPropValue(const Name: WideString; const Value: WideString): ImProperty; dispid 107;
  end;

// *********************************************************************//
// Interface: ImLink
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {904B549E-7294-469B-A949-52DFD70E1DF0}
// *********************************************************************//
  ImLink = interface(ImProperable)
    ['{904B549E-7294-469B-A949-52DFD70E1DF0}']
    function Get_Parent: ImObject; safecall;
    function Get_Child: ImObject; safecall;
    procedure Delete; safecall;
    property Parent: ImObject read Get_Parent;
    property Child: ImObject read Get_Child;
  end;

// *********************************************************************//
// DispIntf:  ImLinkDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {904B549E-7294-469B-A949-52DFD70E1DF0}
// *********************************************************************//
  ImLinkDisp = dispinterface
    ['{904B549E-7294-469B-A949-52DFD70E1DF0}']
    property Parent: ImObject readonly dispid 1;
    property Child: ImObject readonly dispid 2;
    procedure Delete; dispid 3;
    property PropCount: Integer readonly dispid 101;
    function AddProp(const Name: WideString; const Value: WideString): ImProperty; dispid 102;
    property Props[Index: Integer]: ImProperty readonly dispid 103;
    function FindProp(const Name: WideString): ImProperty; dispid 104;
    function FindPropIdx(const Name: WideString): Integer; dispid 105;
    function GetPropValue(const Name: WideString): WideString; dispid 106;
    function SetPropValue(const Name: WideString; const Value: WideString): ImProperty; dispid 107;
  end;

implementation

end.
