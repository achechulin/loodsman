unit DataProvider_TLB;

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

// $Rev: 34747 $
// File generated on 22.04.2014 12:58:19 from Type Library described below.

// ************************************************************************  //
// Type Lib: DataProvider.dll (1)
// LIBID: {76AA08AD-DEDA-40CB-962B-24440A3E96AD}
// LCID: 0
// Helpfile: 
// HelpString: DataProvider Library
// DepndLst: 
//   (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
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
  DataProviderMajorVersion = 1;
  DataProviderMinorVersion = 0;

  LIBID_DataProvider: TGUID = '{76AA08AD-DEDA-40CB-962B-24440A3E96AD}';

  IID_ILoodsmanAPI8: TGUID = '{F8057A8A-73E3-4EE3-90D7-08C873C83A72}';
  CLASS_LoodsmanAPI8: TGUID = '{7E5D7823-6208-4B55-8066-CC99CF3D5461}';
  IID_ILoodsmanConnection: TGUID = '{087027DC-A928-4FFD-8027-B259D7687B1F}';
  CLASS_LoodsmanConnection: TGUID = '{044259A0-FEAE-4B55-B6FE-E9B024FCCD4B}';
  IID_IDataSet: TGUID = '{AAE5A095-1616-4AA6-A14D-D2C973191E79}';
  CLASS_DataSet: TGUID = '{45358808-2037-48A1-B646-692EA4251E6D}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  ILoodsmanAPI8 = interface;
  ILoodsmanAPI8Disp = dispinterface;
  ILoodsmanConnection = interface;
  ILoodsmanConnectionDisp = dispinterface;
  IDataSet = interface;
  IDataSetDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  LoodsmanAPI8 = ILoodsmanAPI8;
  LoodsmanConnection = ILoodsmanConnection;
  DataSet = IDataSet;


// *********************************************************************//
// Interface: ILoodsmanAPI8
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F8057A8A-73E3-4EE3-90D7-08C873C83A72}
// *********************************************************************//
  ILoodsmanAPI8 = interface(IDispatch)
    ['{F8057A8A-73E3-4EE3-90D7-08C873C83A72}']
    procedure ConnectToApp(const stServers: WideString); safecall;
    function RunMethod(const stMethod: WideString; vaParams: OleVariant): OleVariant; safecall;
    function GetDataSet(const stMethod: WideString; vaParams: OleVariant): IDispatch; safecall;
    function Get_Connected: WordBool; safecall;
    procedure Set_Connected(Value: WordBool); safecall;
    function UniConnect(const stDBName: WideString; const stCheckout: WideString): Integer; safecall;
    function ShowDBConnectionDialog(const stDBName: WideString): Integer; safecall;
    procedure Clone(const Dolly: ILoodsmanAPI8); safecall;
    function Get_UseDebugger: Integer; safecall;
    procedure Set_UseDebugger(Value: Integer); safecall;
    property Connected: WordBool read Get_Connected write Set_Connected;
    property UseDebugger: Integer read Get_UseDebugger write Set_UseDebugger;
  end;

// *********************************************************************//
// DispIntf:  ILoodsmanAPI8Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F8057A8A-73E3-4EE3-90D7-08C873C83A72}
// *********************************************************************//
  ILoodsmanAPI8Disp = dispinterface
    ['{F8057A8A-73E3-4EE3-90D7-08C873C83A72}']
    procedure ConnectToApp(const stServers: WideString); dispid 1;
    function RunMethod(const stMethod: WideString; vaParams: OleVariant): OleVariant; dispid 3;
    function GetDataSet(const stMethod: WideString; vaParams: OleVariant): IDispatch; dispid 58;
    property Connected: WordBool dispid 59;
    function UniConnect(const stDBName: WideString; const stCheckout: WideString): Integer; dispid 60;
    function ShowDBConnectionDialog(const stDBName: WideString): Integer; dispid 61;
    procedure Clone(const Dolly: ILoodsmanAPI8); dispid 62;
    property UseDebugger: Integer dispid 4;
  end;

// *********************************************************************//
// Interface: ILoodsmanConnection
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {087027DC-A928-4FFD-8027-B259D7687B1F}
// *********************************************************************//
  ILoodsmanConnection = interface(IDispatch)
    ['{087027DC-A928-4FFD-8027-B259D7687B1F}']
    function Get_API8: ILoodsmanAPI8; safecall;
    procedure SetConnectionString(const stServers: WideString); safecall;
    procedure ShowAppSrvDialog; safecall;
    function Get_Connected: WordBool; safecall;
    procedure Set_Connected(Value: WordBool); safecall;
    function Clone: ILoodsmanConnection; safecall;
    function Get_UseDebugger: Integer; safecall;
    procedure Set_UseDebugger(Value: Integer); safecall;
    property API8: ILoodsmanAPI8 read Get_API8;
    property Connected: WordBool read Get_Connected write Set_Connected;
    property UseDebugger: Integer read Get_UseDebugger write Set_UseDebugger;
  end;

// *********************************************************************//
// DispIntf:  ILoodsmanConnectionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {087027DC-A928-4FFD-8027-B259D7687B1F}
// *********************************************************************//
  ILoodsmanConnectionDisp = dispinterface
    ['{087027DC-A928-4FFD-8027-B259D7687B1F}']
    property API8: ILoodsmanAPI8 readonly dispid 1;
    procedure SetConnectionString(const stServers: WideString); dispid 2;
    procedure ShowAppSrvDialog; dispid 3;
    property Connected: WordBool dispid 4;
    function Clone: ILoodsmanConnection; dispid 5;
    property UseDebugger: Integer dispid 7;
  end;

// *********************************************************************//
// Interface: IDataSet
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {AAE5A095-1616-4AA6-A14D-D2C973191E79}
// *********************************************************************//
  IDataSet = interface(IDispatch)
    ['{AAE5A095-1616-4AA6-A14D-D2C973191E79}']
    procedure First; safecall;
    procedure Last; safecall;
    procedure Next; safecall;
    procedure Prior; safecall;
    function Get_CurrentRecord: Integer; safecall;
    procedure Set_CurrentRecord(Value: Integer); safecall;
    function Get_RecordCount: Integer; safecall;
    function Get_FieldValue(const Name: WideString): OleVariant; safecall;
    procedure Set_FieldValue(const Name: WideString; Value: OleVariant); safecall;
    function Get_FieldCount: Integer; safecall;
    function Get_FieldName(Index: Integer): WideString; safecall;
    function Get_Filter: WideString; safecall;
    procedure Set_Filter(const Value: WideString); safecall;
    function Get_Filtered: WordBool; safecall;
    procedure Set_Filtered(Value: WordBool); safecall;
    procedure Append; safecall;
    procedure Delete; safecall;
    procedure Edit; safecall;
    procedure Post; safecall;
    procedure Cancel; safecall;
    procedure Insert; safecall;
    function MoveBy(Distance: Integer): Integer; safecall;
    function IsEmpty: WordBool; safecall;
    function Locate(const KeyFields: WideString; KeyValues: OleVariant; CaseSensitive: WordBool; 
                    PartialKey: WordBool): WordBool; safecall;
    function Get_DATA: OleVariant; safecall;
    procedure Set_DATA(Value: OleVariant); safecall;
    function Get_Eof: WordBool; safecall;
    function Get_Bof: WordBool; safecall;
    function Get_IndexFieldNames: WideString; safecall;
    procedure Set_IndexFieldNames(const Value: WideString); safecall;
    property CurrentRecord: Integer read Get_CurrentRecord write Set_CurrentRecord;
    property RecordCount: Integer read Get_RecordCount;
    property FieldValue[const Name: WideString]: OleVariant read Get_FieldValue write Set_FieldValue;
    property FieldCount: Integer read Get_FieldCount;
    property FieldName[Index: Integer]: WideString read Get_FieldName;
    property Filter: WideString read Get_Filter write Set_Filter;
    property Filtered: WordBool read Get_Filtered write Set_Filtered;
    property DATA: OleVariant read Get_DATA write Set_DATA;
    property Eof: WordBool read Get_Eof;
    property Bof: WordBool read Get_Bof;
    property IndexFieldNames: WideString read Get_IndexFieldNames write Set_IndexFieldNames;
  end;

// *********************************************************************//
// DispIntf:  IDataSetDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {AAE5A095-1616-4AA6-A14D-D2C973191E79}
// *********************************************************************//
  IDataSetDisp = dispinterface
    ['{AAE5A095-1616-4AA6-A14D-D2C973191E79}']
    procedure First; dispid 1;
    procedure Last; dispid 2;
    procedure Next; dispid 3;
    procedure Prior; dispid 4;
    property CurrentRecord: Integer dispid 5;
    property RecordCount: Integer readonly dispid 7;
    property FieldValue[const Name: WideString]: OleVariant dispid 9;
    property FieldCount: Integer readonly dispid 10;
    property FieldName[Index: Integer]: WideString readonly dispid 11;
    property Filter: WideString dispid 12;
    property Filtered: WordBool dispid 13;
    procedure Append; dispid 14;
    procedure Delete; dispid 15;
    procedure Edit; dispid 16;
    procedure Post; dispid 17;
    procedure Cancel; dispid 18;
    procedure Insert; dispid 19;
    function MoveBy(Distance: Integer): Integer; dispid 20;
    function IsEmpty: WordBool; dispid 21;
    function Locate(const KeyFields: WideString; KeyValues: OleVariant; CaseSensitive: WordBool; 
                    PartialKey: WordBool): WordBool; dispid 22;
    property DATA: OleVariant dispid 6;
    property Eof: WordBool readonly dispid 8;
    property Bof: WordBool readonly dispid 23;
    property IndexFieldNames: WideString dispid 24;
  end;

implementation

end.
