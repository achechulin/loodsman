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
// File generated on 22.04.2014 12:59:50 from Type Library described below.

// ************************************************************************  //
// Type Lib: DataProvider.dll (1)
// LIBID: {76AA08AD-DEDA-40CB-962B-24440A3E96AD}
// LCID: 0
// Helpfile: 
// HelpString: DataProvider Library
// DepndLst: 
//   (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
// Cmdline:
//   "C:\Program Files (x86)\Embarcadero\RAD Studio\8.0\bin\tlibimp.exe" -P DataProvider.dll
// ************************************************************************ //
// *************************************************************************//
// NOTE:                                                                      
// Items guarded by $IFDEF_LIVE_SERVER_AT_DESIGN_TIME are used by properties  
// which return objects that may need to be explicitly created via a function 
// call prior to any access via the property. These items have been disabled  
// in order to prevent accidental use from within the object inspector. You   
// may enable them by defining LIVE_SERVER_AT_DESIGN_TIME or by selectively   
// removing them from the $IFDEF blocks. However, such items must still be    
// programmatically created via a method of the appropriate CoClass before    
// they can be used.                                                          
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
  IID_IDataSet: TGUID = '{AAE5A095-1616-4AA6-A14D-D2C973191E79}';
  CLASS_DataSet: TGUID = '{45358808-2037-48A1-B646-692EA4251E6D}';
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
  ILoodsmanAPI8Disp = dispinterface;
  ILoodsmanConnection = interface;
  ILoodsmanConnectionDisp = dispinterface;
  IDataSet = interface;
  IDataSetDisp = dispinterface;
  ISimpleAPI = interface;
  ISimpleAPIDisp = dispinterface;
  IAsyncTask = interface;
  IAsyncTaskDisp = dispinterface;
  IPluginCallBack = interface;
  IPluginCallBackDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  LoodsmanAPI8 = ILoodsmanAPI8;
  LoodsmanConnection = ILoodsmanConnection;
  DataSet = IDataSet;
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
    property MapWorkingDirectory: Integer dispid 201;
    function GetSimpleAPI: ISimpleAPI; dispid 202;
    property AsyncTask: IAsyncTask readonly dispid 203;
    property DBName: WideString readonly dispid 204;
    property Checkout: WideString readonly dispid 205;
    function ShowDBConnectionDialog2(const stDBName: WideString): Integer; dispid 206;
    property ConnectionString: WideString readonly dispid 207;
    property ConnectAttemptSuccess: WordBool readonly dispid 208;
    property SilentConnect: WordBool dispid 209;
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
    procedure Clear; dispid 201;
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
// DispIntf:  ISimpleAPIDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {838FDA67-F5CE-4949-93B5-DED6E073BB35}
// *********************************************************************//
  ISimpleAPIDisp = dispinterface
    ['{838FDA67-F5CE-4949-93B5-DED6E073BB35}']
    function RunMethod(const stMethod: WideString; vaParams: OleVariant): OleVariant; dispid 201;
    function GetDataSet(const stMethod: WideString; vaParams: OleVariant): IDispatch; dispid 202;
    property AsyncTask: IAsyncTask readonly dispid 203;
    property DBName: WideString readonly dispid 204;
    property Checkout: WideString readonly dispid 205;
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
// DispIntf:  IAsyncTaskDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9526C798-5E18-4D9E-ADFC-DC0769050561}
// *********************************************************************//
  IAsyncTaskDisp = dispinterface
    ['{9526C798-5E18-4D9E-ADFC-DC0769050561}']
    function Run(const MethodName: WideString; Params: OleVariant; 
                 const CallBackIntf: IPluginCallBack; Tag: Integer): Integer; dispid 201;
    procedure Cancel(TaskID: Integer); dispid 202;
    procedure CancelAll; dispid 203;
  end;

// *********************************************************************//
// Interface: IPluginCallBack
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {5FCE0015-3B06-40E7-9DA5-2C2E5D4AAABC}
// *********************************************************************//
  IPluginCallBack = interface(IDispatch)
    ['{5FCE0015-3B06-40E7-9DA5-2C2E5D4AAABC}']
    procedure CallBackProc(TaskID: Integer; ResultData: OleVariant; const DataSet: IDataSet; 
                           const ErrorMsg: WideString; Tag: Integer); safecall;
  end;

// *********************************************************************//
// DispIntf:  IPluginCallBackDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {5FCE0015-3B06-40E7-9DA5-2C2E5D4AAABC}
// *********************************************************************//
  IPluginCallBackDisp = dispinterface
    ['{5FCE0015-3B06-40E7-9DA5-2C2E5D4AAABC}']
    procedure CallBackProc(TaskID: Integer; ResultData: OleVariant; const DataSet: IDataSet; 
                           const ErrorMsg: WideString; Tag: Integer); dispid 201;
  end;

// *********************************************************************//
// The Class CoLoodsmanAPI8 provides a Create and CreateRemote method to          
// create instances of the default interface ILoodsmanAPI8 exposed by              
// the CoClass LoodsmanAPI8. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoLoodsmanAPI8 = class
    class function Create: ILoodsmanAPI8;
    class function CreateRemote(const MachineName: string): ILoodsmanAPI8;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TLoodsmanAPI8
// Help String      : Co Class ILoodsmanAPI
// Default Interface: ILoodsmanAPI8
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TLoodsmanAPI8Properties= class;
{$ENDIF}
  TLoodsmanAPI8 = class(TOleServer)
  private
    FIntf: ILoodsmanAPI8;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TLoodsmanAPI8Properties;
    function GetServerProperties: TLoodsmanAPI8Properties;
{$ENDIF}
    function GetDefaultInterface: ILoodsmanAPI8;
  protected
    procedure InitServerData; override;
    function Get_Connected: WordBool;
    procedure Set_Connected(Value: WordBool);
    function Get_UseDebugger: Integer;
    procedure Set_UseDebugger(Value: Integer);
    function Get_MapWorkingDirectory: Integer;
    procedure Set_MapWorkingDirectory(Value: Integer);
    function Get_AsyncTask: IAsyncTask;
    function Get_DBName: WideString;
    function Get_Checkout: WideString;
    function Get_ConnectionString: WideString;
    function Get_ConnectAttemptSuccess: WordBool;
    function Get_SilentConnect: WordBool;
    procedure Set_SilentConnect(Value: WordBool);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: ILoodsmanAPI8);
    procedure Disconnect; override;
    procedure ConnectToApp(const stServers: WideString);
    function RunMethod(const stMethod: WideString; vaParams: OleVariant): OleVariant;
    function GetDataSet(const stMethod: WideString; vaParams: OleVariant): IDispatch;
    function UniConnect(const stDBName: WideString; const stCheckout: WideString): Integer;
    function ShowDBConnectionDialog(const stDBName: WideString): Integer;
    procedure Clone(const Dolly: ILoodsmanAPI8);
    function GetSimpleAPI: ISimpleAPI;
    function ShowDBConnectionDialog2(const stDBName: WideString): Integer;
    property DefaultInterface: ILoodsmanAPI8 read GetDefaultInterface;
    property AsyncTask: IAsyncTask read Get_AsyncTask;
    property DBName: WideString read Get_DBName;
    property Checkout: WideString read Get_Checkout;
    property ConnectionString: WideString read Get_ConnectionString;
    property ConnectAttemptSuccess: WordBool read Get_ConnectAttemptSuccess;
    property Connected: WordBool read Get_Connected write Set_Connected;
    property UseDebugger: Integer read Get_UseDebugger write Set_UseDebugger;
    property MapWorkingDirectory: Integer read Get_MapWorkingDirectory write Set_MapWorkingDirectory;
    property SilentConnect: WordBool read Get_SilentConnect write Set_SilentConnect;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TLoodsmanAPI8Properties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TLoodsmanAPI8
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TLoodsmanAPI8Properties = class(TPersistent)
  private
    FServer:    TLoodsmanAPI8;
    function    GetDefaultInterface: ILoodsmanAPI8;
    constructor Create(AServer: TLoodsmanAPI8);
  protected
    function Get_Connected: WordBool;
    procedure Set_Connected(Value: WordBool);
    function Get_UseDebugger: Integer;
    procedure Set_UseDebugger(Value: Integer);
    function Get_MapWorkingDirectory: Integer;
    procedure Set_MapWorkingDirectory(Value: Integer);
    function Get_AsyncTask: IAsyncTask;
    function Get_DBName: WideString;
    function Get_Checkout: WideString;
    function Get_ConnectionString: WideString;
    function Get_ConnectAttemptSuccess: WordBool;
    function Get_SilentConnect: WordBool;
    procedure Set_SilentConnect(Value: WordBool);
  public
    property DefaultInterface: ILoodsmanAPI8 read GetDefaultInterface;
  published
    property Connected: WordBool read Get_Connected write Set_Connected;
    property UseDebugger: Integer read Get_UseDebugger write Set_UseDebugger;
    property MapWorkingDirectory: Integer read Get_MapWorkingDirectory write Set_MapWorkingDirectory;
    property SilentConnect: WordBool read Get_SilentConnect write Set_SilentConnect;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoLoodsmanConnection provides a Create and CreateRemote method to          
// create instances of the default interface ILoodsmanConnection exposed by              
// the CoClass LoodsmanConnection. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoLoodsmanConnection = class
    class function Create: ILoodsmanConnection;
    class function CreateRemote(const MachineName: string): ILoodsmanConnection;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TLoodsmanConnection
// Help String      : CoClass ILoodsmanConnection Object
// Default Interface: ILoodsmanConnection
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TLoodsmanConnectionProperties= class;
{$ENDIF}
  TLoodsmanConnection = class(TOleServer)
  private
    FIntf: ILoodsmanConnection;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TLoodsmanConnectionProperties;
    function GetServerProperties: TLoodsmanConnectionProperties;
{$ENDIF}
    function GetDefaultInterface: ILoodsmanConnection;
  protected
    procedure InitServerData; override;
    function Get_API8: ILoodsmanAPI8;
    function Get_Connected: WordBool;
    procedure Set_Connected(Value: WordBool);
    function Get_UseDebugger: Integer;
    procedure Set_UseDebugger(Value: Integer);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: ILoodsmanConnection);
    procedure Disconnect; override;
    procedure SetConnectionString(const stServers: WideString);
    procedure ShowAppSrvDialog;
    function Clone: ILoodsmanConnection;
    property DefaultInterface: ILoodsmanConnection read GetDefaultInterface;
    property API8: ILoodsmanAPI8 read Get_API8;
    property Connected: WordBool read Get_Connected write Set_Connected;
    property UseDebugger: Integer read Get_UseDebugger write Set_UseDebugger;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TLoodsmanConnectionProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TLoodsmanConnection
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TLoodsmanConnectionProperties = class(TPersistent)
  private
    FServer:    TLoodsmanConnection;
    function    GetDefaultInterface: ILoodsmanConnection;
    constructor Create(AServer: TLoodsmanConnection);
  protected
    function Get_API8: ILoodsmanAPI8;
    function Get_Connected: WordBool;
    procedure Set_Connected(Value: WordBool);
    function Get_UseDebugger: Integer;
    procedure Set_UseDebugger(Value: Integer);
  public
    property DefaultInterface: ILoodsmanConnection read GetDefaultInterface;
  published
    property Connected: WordBool read Get_Connected write Set_Connected;
    property UseDebugger: Integer read Get_UseDebugger write Set_UseDebugger;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoDataSet provides a Create and CreateRemote method to          
// create instances of the default interface IDataSet exposed by              
// the CoClass DataSet. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDataSet = class
    class function Create: IDataSet;
    class function CreateRemote(const MachineName: string): IDataSet;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TDataSet
// Help String      : 
// Default Interface: IDataSet
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TDataSetProperties= class;
{$ENDIF}
  TDataSet = class(TOleServer)
  private
    FIntf: IDataSet;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TDataSetProperties;
    function GetServerProperties: TDataSetProperties;
{$ENDIF}
    function GetDefaultInterface: IDataSet;
  protected
    procedure InitServerData; override;
    function Get_CurrentRecord: Integer;
    procedure Set_CurrentRecord(Value: Integer);
    function Get_RecordCount: Integer;
    function Get_FieldValue(const Name: WideString): OleVariant;
    procedure Set_FieldValue(const Name: WideString; Value: OleVariant);
    function Get_FieldCount: Integer;
    function Get_FieldName(Index: Integer): WideString;
    function Get_Filter: WideString;
    procedure Set_Filter(const Value: WideString);
    function Get_Filtered: WordBool;
    procedure Set_Filtered(Value: WordBool);
    function Get_DATA: OleVariant;
    procedure Set_DATA(Value: OleVariant);
    function Get_Eof: WordBool;
    function Get_Bof: WordBool;
    function Get_IndexFieldNames: WideString;
    procedure Set_IndexFieldNames(const Value: WideString);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IDataSet);
    procedure Disconnect; override;
    procedure First;
    procedure Last;
    procedure Next;
    procedure Prior;
    procedure Append;
    procedure Delete;
    procedure Edit;
    procedure Post;
    procedure Cancel;
    procedure Insert;
    function MoveBy(Distance: Integer): Integer;
    function IsEmpty: WordBool;
    function Locate(const KeyFields: WideString; KeyValues: OleVariant; CaseSensitive: WordBool; 
                    PartialKey: WordBool): WordBool;
    procedure Clear;
    property DefaultInterface: IDataSet read GetDefaultInterface;
    property RecordCount: Integer read Get_RecordCount;
    property FieldValue[const Name: WideString]: OleVariant read Get_FieldValue write Set_FieldValue;
    property FieldCount: Integer read Get_FieldCount;
    property FieldName[Index: Integer]: WideString read Get_FieldName;
    property DATA: OleVariant read Get_DATA write Set_DATA;
    property Eof: WordBool read Get_Eof;
    property Bof: WordBool read Get_Bof;
    property CurrentRecord: Integer read Get_CurrentRecord write Set_CurrentRecord;
    property Filter: WideString read Get_Filter write Set_Filter;
    property Filtered: WordBool read Get_Filtered write Set_Filtered;
    property IndexFieldNames: WideString read Get_IndexFieldNames write Set_IndexFieldNames;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TDataSetProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TDataSet
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TDataSetProperties = class(TPersistent)
  private
    FServer:    TDataSet;
    function    GetDefaultInterface: IDataSet;
    constructor Create(AServer: TDataSet);
  protected
    function Get_CurrentRecord: Integer;
    procedure Set_CurrentRecord(Value: Integer);
    function Get_RecordCount: Integer;
    function Get_FieldValue(const Name: WideString): OleVariant;
    procedure Set_FieldValue(const Name: WideString; Value: OleVariant);
    function Get_FieldCount: Integer;
    function Get_FieldName(Index: Integer): WideString;
    function Get_Filter: WideString;
    procedure Set_Filter(const Value: WideString);
    function Get_Filtered: WordBool;
    procedure Set_Filtered(Value: WordBool);
    function Get_DATA: OleVariant;
    procedure Set_DATA(Value: OleVariant);
    function Get_Eof: WordBool;
    function Get_Bof: WordBool;
    function Get_IndexFieldNames: WideString;
    procedure Set_IndexFieldNames(const Value: WideString);
  public
    property DefaultInterface: IDataSet read GetDefaultInterface;
  published
    property CurrentRecord: Integer read Get_CurrentRecord write Set_CurrentRecord;
    property Filter: WideString read Get_Filter write Set_Filter;
    property Filtered: WordBool read Get_Filtered write Set_Filtered;
    property IndexFieldNames: WideString read Get_IndexFieldNames write Set_IndexFieldNames;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoSimpleAPI provides a Create and CreateRemote method to          
// create instances of the default interface ISimpleAPI exposed by              
// the CoClass SimpleAPI. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSimpleAPI = class
    class function Create: ISimpleAPI;
    class function CreateRemote(const MachineName: string): ISimpleAPI;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TSimpleAPI
// Help String      : 
// Default Interface: ISimpleAPI
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (0)
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TSimpleAPIProperties= class;
{$ENDIF}
  TSimpleAPI = class(TOleServer)
  private
    FIntf: ISimpleAPI;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TSimpleAPIProperties;
    function GetServerProperties: TSimpleAPIProperties;
{$ENDIF}
    function GetDefaultInterface: ISimpleAPI;
  protected
    procedure InitServerData; override;
    function Get_AsyncTask: IAsyncTask;
    function Get_DBName: WideString;
    function Get_Checkout: WideString;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: ISimpleAPI);
    procedure Disconnect; override;
    function RunMethod(const stMethod: WideString; vaParams: OleVariant): OleVariant;
    function GetDataSet(const stMethod: WideString; vaParams: OleVariant): IDispatch;
    property DefaultInterface: ISimpleAPI read GetDefaultInterface;
    property AsyncTask: IAsyncTask read Get_AsyncTask;
    property DBName: WideString read Get_DBName;
    property Checkout: WideString read Get_Checkout;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TSimpleAPIProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TSimpleAPI
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TSimpleAPIProperties = class(TPersistent)
  private
    FServer:    TSimpleAPI;
    function    GetDefaultInterface: ISimpleAPI;
    constructor Create(AServer: TSimpleAPI);
  protected
    function Get_AsyncTask: IAsyncTask;
    function Get_DBName: WideString;
    function Get_Checkout: WideString;
  public
    property DefaultInterface: ISimpleAPI read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoCoAsyncTask provides a Create and CreateRemote method to          
// create instances of the default interface IAsyncTask exposed by              
// the CoClass CoAsyncTask. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCoAsyncTask = class
    class function Create: IAsyncTask;
    class function CreateRemote(const MachineName: string): IAsyncTask;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TCoAsyncTask
// Help String      : 
// Default Interface: IAsyncTask
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TCoAsyncTaskProperties= class;
{$ENDIF}
  TCoAsyncTask = class(TOleServer)
  private
    FIntf: IAsyncTask;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TCoAsyncTaskProperties;
    function GetServerProperties: TCoAsyncTaskProperties;
{$ENDIF}
    function GetDefaultInterface: IAsyncTask;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IAsyncTask);
    procedure Disconnect; override;
    function Run(const MethodName: WideString; Params: OleVariant; 
                 const CallBackIntf: IPluginCallBack; Tag: Integer): Integer;
    procedure Cancel(TaskID: Integer);
    procedure CancelAll;
    property DefaultInterface: IAsyncTask read GetDefaultInterface;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TCoAsyncTaskProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TCoAsyncTask
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TCoAsyncTaskProperties = class(TPersistent)
  private
    FServer:    TCoAsyncTask;
    function    GetDefaultInterface: IAsyncTask;
    constructor Create(AServer: TCoAsyncTask);
  protected
  public
    property DefaultInterface: IAsyncTask read GetDefaultInterface;
  published
  end;
{$ENDIF}


procedure Register;

resourcestring
  dtlServerPage = 'Servers';

  dtlOcxPage = 'ActiveX';

implementation

uses ComObj;

class function CoLoodsmanAPI8.Create: ILoodsmanAPI8;
begin
  Result := CreateComObject(CLASS_LoodsmanAPI8) as ILoodsmanAPI8;
end;

class function CoLoodsmanAPI8.CreateRemote(const MachineName: string): ILoodsmanAPI8;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_LoodsmanAPI8) as ILoodsmanAPI8;
end;

procedure TLoodsmanAPI8.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{7E5D7823-6208-4B55-8066-CC99CF3D5461}';
    IntfIID:   '{F8057A8A-73E3-4EE3-90D7-08C873C83A72}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TLoodsmanAPI8.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as ILoodsmanAPI8;
  end;
end;

procedure TLoodsmanAPI8.ConnectTo(svrIntf: ILoodsmanAPI8);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TLoodsmanAPI8.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TLoodsmanAPI8.GetDefaultInterface: ILoodsmanAPI8;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TLoodsmanAPI8.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TLoodsmanAPI8Properties.Create(Self);
{$ENDIF}
end;

destructor TLoodsmanAPI8.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TLoodsmanAPI8.GetServerProperties: TLoodsmanAPI8Properties;
begin
  Result := FProps;
end;
{$ENDIF}

function TLoodsmanAPI8.Get_Connected: WordBool;
begin
    Result := DefaultInterface.Connected;
end;

procedure TLoodsmanAPI8.Set_Connected(Value: WordBool);
begin
  DefaultInterface.Set_Connected(Value);
end;

function TLoodsmanAPI8.Get_UseDebugger: Integer;
begin
    Result := DefaultInterface.UseDebugger;
end;

procedure TLoodsmanAPI8.Set_UseDebugger(Value: Integer);
begin
  DefaultInterface.Set_UseDebugger(Value);
end;

function TLoodsmanAPI8.Get_MapWorkingDirectory: Integer;
begin
    Result := DefaultInterface.MapWorkingDirectory;
end;

procedure TLoodsmanAPI8.Set_MapWorkingDirectory(Value: Integer);
begin
  DefaultInterface.Set_MapWorkingDirectory(Value);
end;

function TLoodsmanAPI8.Get_AsyncTask: IAsyncTask;
begin
    Result := DefaultInterface.AsyncTask;
end;

function TLoodsmanAPI8.Get_DBName: WideString;
begin
    Result := DefaultInterface.DBName;
end;

function TLoodsmanAPI8.Get_Checkout: WideString;
begin
    Result := DefaultInterface.Checkout;
end;

function TLoodsmanAPI8.Get_ConnectionString: WideString;
begin
    Result := DefaultInterface.ConnectionString;
end;

function TLoodsmanAPI8.Get_ConnectAttemptSuccess: WordBool;
begin
    Result := DefaultInterface.ConnectAttemptSuccess;
end;

function TLoodsmanAPI8.Get_SilentConnect: WordBool;
begin
    Result := DefaultInterface.SilentConnect;
end;

procedure TLoodsmanAPI8.Set_SilentConnect(Value: WordBool);
begin
  DefaultInterface.Set_SilentConnect(Value);
end;

procedure TLoodsmanAPI8.ConnectToApp(const stServers: WideString);
begin
  DefaultInterface.ConnectToApp(stServers);
end;

function TLoodsmanAPI8.RunMethod(const stMethod: WideString; vaParams: OleVariant): OleVariant;
begin
  Result := DefaultInterface.RunMethod(stMethod, vaParams);
end;

function TLoodsmanAPI8.GetDataSet(const stMethod: WideString; vaParams: OleVariant): IDispatch;
begin
  Result := DefaultInterface.GetDataSet(stMethod, vaParams);
end;

function TLoodsmanAPI8.UniConnect(const stDBName: WideString; const stCheckout: WideString): Integer;
begin
  Result := DefaultInterface.UniConnect(stDBName, stCheckout);
end;

function TLoodsmanAPI8.ShowDBConnectionDialog(const stDBName: WideString): Integer;
begin
  Result := DefaultInterface.ShowDBConnectionDialog(stDBName);
end;

procedure TLoodsmanAPI8.Clone(const Dolly: ILoodsmanAPI8);
begin
  DefaultInterface.Clone(Dolly);
end;

function TLoodsmanAPI8.GetSimpleAPI: ISimpleAPI;
begin
  Result := DefaultInterface.GetSimpleAPI;
end;

function TLoodsmanAPI8.ShowDBConnectionDialog2(const stDBName: WideString): Integer;
begin
  Result := DefaultInterface.ShowDBConnectionDialog2(stDBName);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TLoodsmanAPI8Properties.Create(AServer: TLoodsmanAPI8);
begin
  inherited Create;
  FServer := AServer;
end;

function TLoodsmanAPI8Properties.GetDefaultInterface: ILoodsmanAPI8;
begin
  Result := FServer.DefaultInterface;
end;

function TLoodsmanAPI8Properties.Get_Connected: WordBool;
begin
    Result := DefaultInterface.Connected;
end;

procedure TLoodsmanAPI8Properties.Set_Connected(Value: WordBool);
begin
  DefaultInterface.Set_Connected(Value);
end;

function TLoodsmanAPI8Properties.Get_UseDebugger: Integer;
begin
    Result := DefaultInterface.UseDebugger;
end;

procedure TLoodsmanAPI8Properties.Set_UseDebugger(Value: Integer);
begin
  DefaultInterface.Set_UseDebugger(Value);
end;

function TLoodsmanAPI8Properties.Get_MapWorkingDirectory: Integer;
begin
    Result := DefaultInterface.MapWorkingDirectory;
end;

procedure TLoodsmanAPI8Properties.Set_MapWorkingDirectory(Value: Integer);
begin
  DefaultInterface.Set_MapWorkingDirectory(Value);
end;

function TLoodsmanAPI8Properties.Get_AsyncTask: IAsyncTask;
begin
    Result := DefaultInterface.AsyncTask;
end;

function TLoodsmanAPI8Properties.Get_DBName: WideString;
begin
    Result := DefaultInterface.DBName;
end;

function TLoodsmanAPI8Properties.Get_Checkout: WideString;
begin
    Result := DefaultInterface.Checkout;
end;

function TLoodsmanAPI8Properties.Get_ConnectionString: WideString;
begin
    Result := DefaultInterface.ConnectionString;
end;

function TLoodsmanAPI8Properties.Get_ConnectAttemptSuccess: WordBool;
begin
    Result := DefaultInterface.ConnectAttemptSuccess;
end;

function TLoodsmanAPI8Properties.Get_SilentConnect: WordBool;
begin
    Result := DefaultInterface.SilentConnect;
end;

procedure TLoodsmanAPI8Properties.Set_SilentConnect(Value: WordBool);
begin
  DefaultInterface.Set_SilentConnect(Value);
end;

{$ENDIF}

class function CoLoodsmanConnection.Create: ILoodsmanConnection;
begin
  Result := CreateComObject(CLASS_LoodsmanConnection) as ILoodsmanConnection;
end;

class function CoLoodsmanConnection.CreateRemote(const MachineName: string): ILoodsmanConnection;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_LoodsmanConnection) as ILoodsmanConnection;
end;

procedure TLoodsmanConnection.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{044259A0-FEAE-4B55-B6FE-E9B024FCCD4B}';
    IntfIID:   '{087027DC-A928-4FFD-8027-B259D7687B1F}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TLoodsmanConnection.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as ILoodsmanConnection;
  end;
end;

procedure TLoodsmanConnection.ConnectTo(svrIntf: ILoodsmanConnection);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TLoodsmanConnection.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TLoodsmanConnection.GetDefaultInterface: ILoodsmanConnection;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TLoodsmanConnection.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TLoodsmanConnectionProperties.Create(Self);
{$ENDIF}
end;

destructor TLoodsmanConnection.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TLoodsmanConnection.GetServerProperties: TLoodsmanConnectionProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TLoodsmanConnection.Get_API8: ILoodsmanAPI8;
begin
    Result := DefaultInterface.API8;
end;

function TLoodsmanConnection.Get_Connected: WordBool;
begin
    Result := DefaultInterface.Connected;
end;

procedure TLoodsmanConnection.Set_Connected(Value: WordBool);
begin
  DefaultInterface.Set_Connected(Value);
end;

function TLoodsmanConnection.Get_UseDebugger: Integer;
begin
    Result := DefaultInterface.UseDebugger;
end;

procedure TLoodsmanConnection.Set_UseDebugger(Value: Integer);
begin
  DefaultInterface.Set_UseDebugger(Value);
end;

procedure TLoodsmanConnection.SetConnectionString(const stServers: WideString);
begin
  DefaultInterface.SetConnectionString(stServers);
end;

procedure TLoodsmanConnection.ShowAppSrvDialog;
begin
  DefaultInterface.ShowAppSrvDialog;
end;

function TLoodsmanConnection.Clone: ILoodsmanConnection;
begin
  Result := DefaultInterface.Clone;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TLoodsmanConnectionProperties.Create(AServer: TLoodsmanConnection);
begin
  inherited Create;
  FServer := AServer;
end;

function TLoodsmanConnectionProperties.GetDefaultInterface: ILoodsmanConnection;
begin
  Result := FServer.DefaultInterface;
end;

function TLoodsmanConnectionProperties.Get_API8: ILoodsmanAPI8;
begin
    Result := DefaultInterface.API8;
end;

function TLoodsmanConnectionProperties.Get_Connected: WordBool;
begin
    Result := DefaultInterface.Connected;
end;

procedure TLoodsmanConnectionProperties.Set_Connected(Value: WordBool);
begin
  DefaultInterface.Set_Connected(Value);
end;

function TLoodsmanConnectionProperties.Get_UseDebugger: Integer;
begin
    Result := DefaultInterface.UseDebugger;
end;

procedure TLoodsmanConnectionProperties.Set_UseDebugger(Value: Integer);
begin
  DefaultInterface.Set_UseDebugger(Value);
end;

{$ENDIF}

class function CoDataSet.Create: IDataSet;
begin
  Result := CreateComObject(CLASS_DataSet) as IDataSet;
end;

class function CoDataSet.CreateRemote(const MachineName: string): IDataSet;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_DataSet) as IDataSet;
end;

procedure TDataSet.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{45358808-2037-48A1-B646-692EA4251E6D}';
    IntfIID:   '{AAE5A095-1616-4AA6-A14D-D2C973191E79}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TDataSet.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IDataSet;
  end;
end;

procedure TDataSet.ConnectTo(svrIntf: IDataSet);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TDataSet.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TDataSet.GetDefaultInterface: IDataSet;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TDataSet.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TDataSetProperties.Create(Self);
{$ENDIF}
end;

destructor TDataSet.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TDataSet.GetServerProperties: TDataSetProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TDataSet.Get_CurrentRecord: Integer;
begin
    Result := DefaultInterface.CurrentRecord;
end;

procedure TDataSet.Set_CurrentRecord(Value: Integer);
begin
  DefaultInterface.Set_CurrentRecord(Value);
end;

function TDataSet.Get_RecordCount: Integer;
begin
    Result := DefaultInterface.RecordCount;
end;

function TDataSet.Get_FieldValue(const Name: WideString): OleVariant;
var
  InterfaceVariant : OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  Result := InterfaceVariant.FieldValue[Name];
end;

procedure TDataSet.Set_FieldValue(const Name: WideString; Value: OleVariant);
begin
  DefaultInterface.FieldValue[Name] := Value;
end;

function TDataSet.Get_FieldCount: Integer;
begin
    Result := DefaultInterface.FieldCount;
end;

function TDataSet.Get_FieldName(Index: Integer): WideString;
begin
    Result := DefaultInterface.FieldName[Index];
end;

function TDataSet.Get_Filter: WideString;
begin
    Result := DefaultInterface.Filter;
end;

procedure TDataSet.Set_Filter(const Value: WideString);
  { Warning: The property Filter has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Filter := Value;
end;

function TDataSet.Get_Filtered: WordBool;
begin
    Result := DefaultInterface.Filtered;
end;

procedure TDataSet.Set_Filtered(Value: WordBool);
begin
  DefaultInterface.Set_Filtered(Value);
end;

function TDataSet.Get_DATA: OleVariant;
var
  InterfaceVariant : OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  Result := InterfaceVariant.DATA;
end;

procedure TDataSet.Set_DATA(Value: OleVariant);
begin
  DefaultInterface.Set_DATA(Value);
end;

function TDataSet.Get_Eof: WordBool;
begin
    Result := DefaultInterface.Eof;
end;

function TDataSet.Get_Bof: WordBool;
begin
    Result := DefaultInterface.Bof;
end;

function TDataSet.Get_IndexFieldNames: WideString;
begin
    Result := DefaultInterface.IndexFieldNames;
end;

procedure TDataSet.Set_IndexFieldNames(const Value: WideString);
  { Warning: The property IndexFieldNames has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.IndexFieldNames := Value;
end;

procedure TDataSet.First;
begin
  DefaultInterface.First;
end;

procedure TDataSet.Last;
begin
  DefaultInterface.Last;
end;

procedure TDataSet.Next;
begin
  DefaultInterface.Next;
end;

procedure TDataSet.Prior;
begin
  DefaultInterface.Prior;
end;

procedure TDataSet.Append;
begin
  DefaultInterface.Append;
end;

procedure TDataSet.Delete;
begin
  DefaultInterface.Delete;
end;

procedure TDataSet.Edit;
begin
  DefaultInterface.Edit;
end;

procedure TDataSet.Post;
begin
  DefaultInterface.Post;
end;

procedure TDataSet.Cancel;
begin
  DefaultInterface.Cancel;
end;

procedure TDataSet.Insert;
begin
  DefaultInterface.Insert;
end;

function TDataSet.MoveBy(Distance: Integer): Integer;
begin
  Result := DefaultInterface.MoveBy(Distance);
end;

function TDataSet.IsEmpty: WordBool;
begin
  Result := DefaultInterface.IsEmpty;
end;

function TDataSet.Locate(const KeyFields: WideString; KeyValues: OleVariant; 
                         CaseSensitive: WordBool; PartialKey: WordBool): WordBool;
begin
  Result := DefaultInterface.Locate(KeyFields, KeyValues, CaseSensitive, PartialKey);
end;

procedure TDataSet.Clear;
begin
  DefaultInterface.Clear;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TDataSetProperties.Create(AServer: TDataSet);
begin
  inherited Create;
  FServer := AServer;
end;

function TDataSetProperties.GetDefaultInterface: IDataSet;
begin
  Result := FServer.DefaultInterface;
end;

function TDataSetProperties.Get_CurrentRecord: Integer;
begin
    Result := DefaultInterface.CurrentRecord;
end;

procedure TDataSetProperties.Set_CurrentRecord(Value: Integer);
begin
  DefaultInterface.Set_CurrentRecord(Value);
end;

function TDataSetProperties.Get_RecordCount: Integer;
begin
    Result := DefaultInterface.RecordCount;
end;

function TDataSetProperties.Get_FieldValue(const Name: WideString): OleVariant;
var
  InterfaceVariant : OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  Result := InterfaceVariant.FieldValue[Name];
end;

procedure TDataSetProperties.Set_FieldValue(const Name: WideString; Value: OleVariant);
begin
  DefaultInterface.FieldValue[Name] := Value;
end;

function TDataSetProperties.Get_FieldCount: Integer;
begin
    Result := DefaultInterface.FieldCount;
end;

function TDataSetProperties.Get_FieldName(Index: Integer): WideString;
begin
    Result := DefaultInterface.FieldName[Index];
end;

function TDataSetProperties.Get_Filter: WideString;
begin
    Result := DefaultInterface.Filter;
end;

procedure TDataSetProperties.Set_Filter(const Value: WideString);
  { Warning: The property Filter has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Filter := Value;
end;

function TDataSetProperties.Get_Filtered: WordBool;
begin
    Result := DefaultInterface.Filtered;
end;

procedure TDataSetProperties.Set_Filtered(Value: WordBool);
begin
  DefaultInterface.Set_Filtered(Value);
end;

function TDataSetProperties.Get_DATA: OleVariant;
var
  InterfaceVariant : OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  Result := InterfaceVariant.DATA;
end;

procedure TDataSetProperties.Set_DATA(Value: OleVariant);
begin
  DefaultInterface.Set_DATA(Value);
end;

function TDataSetProperties.Get_Eof: WordBool;
begin
    Result := DefaultInterface.Eof;
end;

function TDataSetProperties.Get_Bof: WordBool;
begin
    Result := DefaultInterface.Bof;
end;

function TDataSetProperties.Get_IndexFieldNames: WideString;
begin
    Result := DefaultInterface.IndexFieldNames;
end;

procedure TDataSetProperties.Set_IndexFieldNames(const Value: WideString);
  { Warning: The property IndexFieldNames has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.IndexFieldNames := Value;
end;

{$ENDIF}

class function CoSimpleAPI.Create: ISimpleAPI;
begin
  Result := CreateComObject(CLASS_SimpleAPI) as ISimpleAPI;
end;

class function CoSimpleAPI.CreateRemote(const MachineName: string): ISimpleAPI;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_SimpleAPI) as ISimpleAPI;
end;

procedure TSimpleAPI.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{97D93D7B-39BB-4871-BFBF-444DAEFB1ED2}';
    IntfIID:   '{838FDA67-F5CE-4949-93B5-DED6E073BB35}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TSimpleAPI.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as ISimpleAPI;
  end;
end;

procedure TSimpleAPI.ConnectTo(svrIntf: ISimpleAPI);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TSimpleAPI.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TSimpleAPI.GetDefaultInterface: ISimpleAPI;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TSimpleAPI.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TSimpleAPIProperties.Create(Self);
{$ENDIF}
end;

destructor TSimpleAPI.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TSimpleAPI.GetServerProperties: TSimpleAPIProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TSimpleAPI.Get_AsyncTask: IAsyncTask;
begin
    Result := DefaultInterface.AsyncTask;
end;

function TSimpleAPI.Get_DBName: WideString;
begin
    Result := DefaultInterface.DBName;
end;

function TSimpleAPI.Get_Checkout: WideString;
begin
    Result := DefaultInterface.Checkout;
end;

function TSimpleAPI.RunMethod(const stMethod: WideString; vaParams: OleVariant): OleVariant;
begin
  Result := DefaultInterface.RunMethod(stMethod, vaParams);
end;

function TSimpleAPI.GetDataSet(const stMethod: WideString; vaParams: OleVariant): IDispatch;
begin
  Result := DefaultInterface.GetDataSet(stMethod, vaParams);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TSimpleAPIProperties.Create(AServer: TSimpleAPI);
begin
  inherited Create;
  FServer := AServer;
end;

function TSimpleAPIProperties.GetDefaultInterface: ISimpleAPI;
begin
  Result := FServer.DefaultInterface;
end;

function TSimpleAPIProperties.Get_AsyncTask: IAsyncTask;
begin
    Result := DefaultInterface.AsyncTask;
end;

function TSimpleAPIProperties.Get_DBName: WideString;
begin
    Result := DefaultInterface.DBName;
end;

function TSimpleAPIProperties.Get_Checkout: WideString;
begin
    Result := DefaultInterface.Checkout;
end;

{$ENDIF}

class function CoCoAsyncTask.Create: IAsyncTask;
begin
  Result := CreateComObject(CLASS_CoAsyncTask) as IAsyncTask;
end;

class function CoCoAsyncTask.CreateRemote(const MachineName: string): IAsyncTask;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CoAsyncTask) as IAsyncTask;
end;

procedure TCoAsyncTask.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{B8C3DC46-EA8E-4700-963F-3CEDA6B28DE3}';
    IntfIID:   '{9526C798-5E18-4D9E-ADFC-DC0769050561}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TCoAsyncTask.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IAsyncTask;
  end;
end;

procedure TCoAsyncTask.ConnectTo(svrIntf: IAsyncTask);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TCoAsyncTask.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TCoAsyncTask.GetDefaultInterface: IAsyncTask;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TCoAsyncTask.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TCoAsyncTaskProperties.Create(Self);
{$ENDIF}
end;

destructor TCoAsyncTask.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TCoAsyncTask.GetServerProperties: TCoAsyncTaskProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TCoAsyncTask.Run(const MethodName: WideString; Params: OleVariant; 
                          const CallBackIntf: IPluginCallBack; Tag: Integer): Integer;
begin
  Result := DefaultInterface.Run(MethodName, Params, CallBackIntf, Tag);
end;

procedure TCoAsyncTask.Cancel(TaskID: Integer);
begin
  DefaultInterface.Cancel(TaskID);
end;

procedure TCoAsyncTask.CancelAll;
begin
  DefaultInterface.CancelAll;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TCoAsyncTaskProperties.Create(AServer: TCoAsyncTask);
begin
  inherited Create;
  FServer := AServer;
end;

function TCoAsyncTaskProperties.GetDefaultInterface: IAsyncTask;
begin
  Result := FServer.DefaultInterface;
end;

{$ENDIF}

procedure Register;
begin
  RegisterComponents(dtlServerPage, [TLoodsmanAPI8, TLoodsmanConnection, TDataSet, TSimpleAPI, 
    TCoAsyncTask]);
end;

end.
