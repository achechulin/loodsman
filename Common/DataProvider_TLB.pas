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
// File generated on 23.04.2014 12:29:04 from Type Library described below.

// ************************************************************************  //
// Type Lib: DataProvider.dll (1)
// LIBID: {76AA08AD-DEDA-40CB-962B-24440A3E96AD}
// LCID: 0
// Helpfile: 
// HelpString: DataProvider Library
// DepndLst: 
//   (1) v2.0 stdole, (C:\Windows\system32\stdole2.tlb)
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
{$ALIGN 4}
interface

uses Windows, ActiveX, Classes, Graphics, OleServer, StdVCL, Variants;
  

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
  IID_IDataSetV13: TGUID = '{AAE5A095-1616-4AA6-A14D-D2C973191E79}';
  CLASS_DataSetV13: TGUID = '{45358808-2037-48A1-B646-692EA4251E6D}';
  IID_IDataSetV11: TGUID = '{60446488-9D7B-4776-866E-7EE647F72972}';
  CLASS_DataSetV11: TGUID = '{A4896438-F452-49F1-8B40-EF50F24BF5B6}';
  IID_ISimpleAPI: TGUID = '{838FDA67-F5CE-4949-93B5-DED6E073BB35}';
  CLASS_SimpleAPI: TGUID = '{97D93D7B-39BB-4871-BFBF-444DAEFB1ED2}';
  IID_IAsyncTask: TGUID = '{9526C798-5E18-4D9E-ADFC-DC0769050561}';
  IID_IPluginCallBack: TGUID = '{5FCE0015-3B06-40E7-9DA5-2C2E5D4AAABC}';
  CLASS_CoAsyncTask: TGUID = '{B8C3DC46-EA8E-4700-963F-3CEDA6B28DE3}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  ILoodsmanAPI8 = interface;
  ILoodsmanConnection = interface;
  IDataSetV13 = interface;
  IDataSetV11 = interface;
  ISimpleAPI = interface;
  IAsyncTask = interface;
  IPluginCallBack = interface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  LoodsmanAPI8 = ILoodsmanAPI8;
  LoodsmanConnection = ILoodsmanConnection;
  DataSetV13 = IDataSetV13;
  DataSetV11 = IDataSetV11;
  SimpleAPI = ISimpleAPI;
  CoAsyncTask = IAsyncTask;


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
    function Get_MapWorkingDirectory: Integer; safecall;
    procedure Set_MapWorkingDirectory(Value: Integer); safecall;
    function GetSimpleAPI: ISimpleAPI; safecall;
    function Get_AsyncTask: IAsyncTask; safecall;
    function Get_DBName: WideString; safecall;
    function Get_Checkout: WideString; safecall;
    function ShowDBConnectionDialog2(const stDBName: WideString): Integer; safecall;
    function Get_ConnectionString: WideString; safecall;
    function Get_ConnectAttemptSuccess: WordBool; safecall;
    function Get_SilentConnect: WordBool; safecall;
    procedure Set_SilentConnect(Value: WordBool); safecall;
    property Connected: WordBool read Get_Connected write Set_Connected;
    property UseDebugger: Integer read Get_UseDebugger write Set_UseDebugger;
    property MapWorkingDirectory: Integer read Get_MapWorkingDirectory write Set_MapWorkingDirectory;
    property AsyncTask: IAsyncTask read Get_AsyncTask;
    property DBName: WideString read Get_DBName;
    property Checkout: WideString read Get_Checkout;
    property ConnectionString: WideString read Get_ConnectionString;
    property ConnectAttemptSuccess: WordBool read Get_ConnectAttemptSuccess;
    property SilentConnect: WordBool read Get_SilentConnect write Set_SilentConnect;
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
// Interface: IDataSet
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {AAE5A095-1616-4AA6-A14D-D2C973191E79}
// *********************************************************************//
  IDataSetV13 = interface(IDispatch)
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
    procedure Clear; safecall;
    function Locate2(const KeyFields: WideString; KeyValues: OleVariant; CaseSensitive: WordBool; 
                     PartialKey: WordBool): WordBool; safecall;
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
// Interface: IDataSet
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {60446488-9D7B-4776-866E-7EE647F72972}
// *********************************************************************//
  IDataSetV11 = interface(IDispatch)
    ['{60446488-9D7B-4776-866E-7EE647F72972}']
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
    procedure Clear; safecall;
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
// Interface: ISimpleAPI
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {838FDA67-F5CE-4949-93B5-DED6E073BB35}
// *********************************************************************//
  ISimpleAPI = interface(IDispatch)
    ['{838FDA67-F5CE-4949-93B5-DED6E073BB35}']
    function RunMethod(const stMethod: WideString; vaParams: OleVariant): OleVariant; safecall;
    function GetDataSet(const stMethod: WideString; vaParams: OleVariant): IDispatch; safecall;
    function Get_AsyncTask: IAsyncTask; safecall;
    function Get_DBName: WideString; safecall;
    function Get_Checkout: WideString; safecall;
    property AsyncTask: IAsyncTask read Get_AsyncTask;
    property DBName: WideString read Get_DBName;
    property Checkout: WideString read Get_Checkout;
  end;

// *********************************************************************//
// Interface: IAsyncTask
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9526C798-5E18-4D9E-ADFC-DC0769050561}
// *********************************************************************//
  IAsyncTask = interface(IDispatch)
    ['{9526C798-5E18-4D9E-ADFC-DC0769050561}']
    function Run(const MethodName: WideString; Params: OleVariant; 
                 const CallBackIntf: IPluginCallBack; Tag: Integer): Integer; safecall;
    procedure Cancel(TaskID: Integer); safecall;
    procedure CancelAll; safecall;
  end;

// *********************************************************************//
// Interface: IPluginCallBack
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {5FCE0015-3B06-40E7-9DA5-2C2E5D4AAABC}
// *********************************************************************//
  IPluginCallBack = interface(IDispatch)
    ['{5FCE0015-3B06-40E7-9DA5-2C2E5D4AAABC}']
    procedure CallBackProc(TaskID: Integer; ResultData: OleVariant; const DataSet: IDataSetV13;
                           const ErrorMsg: WideString; Tag: Integer); safecall;
  end;

implementation

end.
