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

// $Rev: 17244 $
// File generated on 26.09.2017 13:55:58 from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\Program Files\Common Files\ASCON Shared\LOODSMAN\DataProvider.dll (2)
// LIBID: {76AA08AD-DEDA-40CB-962B-24440A3E96AD}
// LCID: 0
// Helpfile: 
// HelpString: DataProvider Library
// DepndLst: 
//   (1) v2.0 stdole, (C:\WINDOWS\system32\STDOLE2.TLB)
// Parent TypeLibrary:
//   (0) v1.0 Loodsman, (C:\Program Files\ASCON\Loodsman\Client\Loodsman.exe)
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
  IID_ISimpleAPI: TGUID = '{838FDA67-F5CE-4949-93B5-DED6E073BB35}';
  IID_ISimpleAPI2: TGUID = '{8B76E97B-F9C7-4E54-9E91-8AC93DF6DF9E}';
  CLASS_SimpleAPI: TGUID = '{97D93D7B-39BB-4871-BFBF-444DAEFB1ED2}';
  IID_IAsyncTask: TGUID = '{9526C798-5E18-4D9E-ADFC-DC0769050561}';
  IID_IPluginCallBack: TGUID = '{5FCE0015-3B06-40E7-9DA5-2C2E5D4AAABC}';
  CLASS_CoAsyncTask: TGUID = '{B8C3DC46-EA8E-4700-963F-3CEDA6B28DE3}';
  IID_IImageList: TGUID = '{1829F2DC-5932-4D10-A070-555E0576C708}';
  CLASS_CoDPImageList: TGUID = '{B2451D4E-7FFC-4201-A497-A719477CBE29}';
  IID_IEntityList: TGUID = '{7121485F-E430-4F36-B18F-C90BEBEADA74}';
  IID_IDataCache: TGUID = '{A0744B43-672B-4BA6-89B0-DFE349510CB7}';
  IID_IDBParams: TGUID = '{607E165B-7E07-4963-9EDA-8832C8C71B64}';
  IID_IConnectionBuilder: TGUID = '{8AB2820A-FEC2-4CE3-BE04-3F22F558F736}';
  CLASS_ConnectionBuilder: TGUID = '{A72A27E4-096C-4E02-ABDA-EB666D96FE31}';
  IID_ILoodsmanLogger: TGUID = '{D423640C-B573-42DC-B87C-1C340D8567BB}';
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
  ISimpleAPI2 = interface;
  ISimpleAPI2Disp = dispinterface;
  IAsyncTask = interface;
  IAsyncTaskDisp = dispinterface;
  IPluginCallBack = interface;
  IPluginCallBackDisp = dispinterface;
  IImageList = interface;
  IImageListDisp = dispinterface;
  IEntityList = interface;
  IEntityListDisp = dispinterface;
  IDataCache = interface;
  IDataCacheDisp = dispinterface;
  IDBParams = interface;
  IDBParamsDisp = dispinterface;
  IConnectionBuilder = interface;
  IConnectionBuilderDisp = dispinterface;
  ILoodsmanLogger = interface;
  ILoodsmanLoggerDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  LoodsmanAPI8 = ILoodsmanAPI8;
  LoodsmanConnection = ILoodsmanConnection;
  DataSet = IDataSet;
  SimpleAPI = ISimpleAPI;
  CoAsyncTask = IAsyncTask;
  CoDPImageList = IImageList;
  ConnectionBuilder = IConnectionBuilder;


// *********************************************************************//
// Declaration of structures, unions and aliases.                         
// *********************************************************************//
  NameIDEntity = record
    Id: Integer;
    Name: WideString;
  end;

  DBConnectInfo = record
    DBName: WideString;
    UserName: WideString;
    Password: WideString;
    SavePassword: WordBool;
    AuthType: Integer;
  end;


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
    function Locate2(const KeyFields: WideString; KeyValues: OleVariant; CaseSensitive: WordBool; 
                     PartialKey: WordBool): WordBool; safecall;
    function Lookup(const KeyFields: WideString; KeyValues: OleVariant; 
                    const ResultFields: WideString): OleVariant; safecall;
    procedure LoadFromFile(const FileName: WideString); safecall;
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
    function Locate2(const KeyFields: WideString; KeyValues: OleVariant; CaseSensitive: WordBool; 
                     PartialKey: WordBool): WordBool; dispid 202;
    function Lookup(const KeyFields: WideString; KeyValues: OleVariant; 
                    const ResultFields: WideString): OleVariant; dispid 203;
    procedure LoadFromFile(const FileName: WideString); dispid 204;
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
// Interface: ISimpleAPI2
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8B76E97B-F9C7-4E54-9E91-8AC93DF6DF9E}
// *********************************************************************//
  ISimpleAPI2 = interface(ISimpleAPI)
    ['{8B76E97B-F9C7-4E54-9E91-8AC93DF6DF9E}']
    function Get_Cache: IDataCache; safecall;
    function Get_DBParams: IDBParams; safecall;
    function GetCheckOutConnection(const Name: WideString): ISimpleAPI2; safecall;
    property Cache: IDataCache read Get_Cache;
    property DBParams: IDBParams read Get_DBParams;
  end;

// *********************************************************************//
// DispIntf:  ISimpleAPI2Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8B76E97B-F9C7-4E54-9E91-8AC93DF6DF9E}
// *********************************************************************//
  ISimpleAPI2Disp = dispinterface
    ['{8B76E97B-F9C7-4E54-9E91-8AC93DF6DF9E}']
    property Cache: IDataCache readonly dispid 238;
    property DBParams: IDBParams readonly dispid 239;
    function GetCheckOutConnection(const Name: WideString): ISimpleAPI2; dispid 240;
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
// Interface: IImageList
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {1829F2DC-5932-4D10-A070-555E0576C708}
// *********************************************************************//
  IImageList = interface(IDispatch)
    ['{1829F2DC-5932-4D10-A070-555E0576C708}']
    function Add(ABitmap: OleVariant; AMask: OleVariant): Integer; safecall;
    function AddNamed(const AName: WideString; ABitmap: OleVariant; AMask: OleVariant): Integer; safecall;
    function AddMasked(ABitmap: OleVariant; AMaskColor: Integer): Integer; safecall;
    function AddNamedMasked(const AName: WideString; ABitmap: OleVariant; AMaskColor: Integer): Integer; safecall;
    function AddFromDS(ADSData: OleVariant; RecNo: Integer; const FieldName: WideString): Integer; safecall;
    procedure Delete(AIndex: Integer); safecall;
    procedure Clear; safecall;
    function GetBitmap(AIndex: Integer): OleVariant; safecall;
    function IndexOfName(const AName: WideString): Integer; safecall;
    procedure AddImages(ASourceImages: OleVariant); safecall;
    function Get_Height: Integer; safecall;
    function Get_Width: Integer; safecall;
    function Get_Count: Integer; safecall;
    function Get_AllImages: OleVariant; safecall;
    procedure Set_AllImages(Value: OleVariant); safecall;
    function Get_Handle: OLE_HANDLE; safecall;
    property Height: Integer read Get_Height;
    property Width: Integer read Get_Width;
    property Count: Integer read Get_Count;
    property AllImages: OleVariant read Get_AllImages write Set_AllImages;
    property Handle: OLE_HANDLE read Get_Handle;
  end;

// *********************************************************************//
// DispIntf:  IImageListDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {1829F2DC-5932-4D10-A070-555E0576C708}
// *********************************************************************//
  IImageListDisp = dispinterface
    ['{1829F2DC-5932-4D10-A070-555E0576C708}']
    function Add(ABitmap: OleVariant; AMask: OleVariant): Integer; dispid 208;
    function AddNamed(const AName: WideString; ABitmap: OleVariant; AMask: OleVariant): Integer; dispid 209;
    function AddMasked(ABitmap: OleVariant; AMaskColor: Integer): Integer; dispid 210;
    function AddNamedMasked(const AName: WideString; ABitmap: OleVariant; AMaskColor: Integer): Integer; dispid 211;
    function AddFromDS(ADSData: OleVariant; RecNo: Integer; const FieldName: WideString): Integer; dispid 212;
    procedure Delete(AIndex: Integer); dispid 213;
    procedure Clear; dispid 214;
    function GetBitmap(AIndex: Integer): OleVariant; dispid 215;
    function IndexOfName(const AName: WideString): Integer; dispid 216;
    procedure AddImages(ASourceImages: OleVariant); dispid 217;
    property Height: Integer readonly dispid 218;
    property Width: Integer readonly dispid 219;
    property Count: Integer readonly dispid 220;
    property AllImages: OleVariant dispid 221;
    property Handle: OLE_HANDLE readonly dispid 222;
  end;

// *********************************************************************//
// Interface: IEntityList
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {7121485F-E430-4F36-B18F-C90BEBEADA74}
// *********************************************************************//
  IEntityList = interface(IDispatch)
    ['{7121485F-E430-4F36-B18F-C90BEBEADA74}']
    function Get_Loaded: WordBool; safecall;
    function Get_DSData: OleVariant; safecall;
    function Get_DS: IDataSet; safecall;
    function Get_Item(Index: Integer): NameIDEntity; safecall;
    function Get_Count: Integer; safecall;
    procedure Clear; safecall;
    procedure Load; safecall;
    procedure Refresh; safecall;
    procedure Sort; safecall;
    function GetName(Id: Integer): WideString; safecall;
    function GetId(const Name: WideString): Integer; safecall;
    function GetNameIndex(const Name: WideString): Integer; safecall;
    function GetIdIndex(Id: Integer): Integer; safecall;
    function Get_ImageList: IImageList; safecall;
    property Loaded: WordBool read Get_Loaded;
    property DSData: OleVariant read Get_DSData;
    property DS: IDataSet read Get_DS;
    property Item[Index: Integer]: NameIDEntity read Get_Item;
    property Count: Integer read Get_Count;
    property ImageList: IImageList read Get_ImageList;
  end;

// *********************************************************************//
// DispIntf:  IEntityListDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {7121485F-E430-4F36-B18F-C90BEBEADA74}
// *********************************************************************//
  IEntityListDisp = dispinterface
    ['{7121485F-E430-4F36-B18F-C90BEBEADA74}']
    property Loaded: WordBool readonly dispid 201;
    property DSData: OleVariant readonly dispid 202;
    property DS: IDataSet readonly dispid 203;
    property Item[Index: Integer]: {??NameIDEntity}OleVariant readonly dispid 204;
    property Count: Integer readonly dispid 205;
    procedure Clear; dispid 208;
    procedure Load; dispid 209;
    procedure Refresh; dispid 210;
    procedure Sort; dispid 211;
    function GetName(Id: Integer): WideString; dispid 212;
    function GetId(const Name: WideString): Integer; dispid 213;
    function GetNameIndex(const Name: WideString): Integer; dispid 214;
    function GetIdIndex(Id: Integer): Integer; dispid 215;
    property ImageList: IImageList readonly dispid 216;
  end;

// *********************************************************************//
// Interface: IDataCache
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A0744B43-672B-4BA6-89B0-DFE349510CB7}
// *********************************************************************//
  IDataCache = interface(IDispatch)
    ['{A0744B43-672B-4BA6-89B0-DFE349510CB7}']
    procedure FlushAll; safecall;
    procedure RefreshCheckouts; safecall;
    function Get_CheckoutCount: Integer; safecall;
    function Get_Types: IEntityList; safecall;
    function Get_States: IEntityList; safecall;
    function Get_Links: IEntityList; safecall;
    function Get_InverseLinks: IEntityList; safecall;
    function Get_Attrs: IEntityList; safecall;
    function Get_UserDir: WideString; safecall;
    function Get_FileDir: WideString; safecall;
    property CheckoutCount: Integer read Get_CheckoutCount;
    property Types: IEntityList read Get_Types;
    property States: IEntityList read Get_States;
    property Links: IEntityList read Get_Links;
    property InverseLinks: IEntityList read Get_InverseLinks;
    property Attrs: IEntityList read Get_Attrs;
    property UserDir: WideString read Get_UserDir;
    property FileDir: WideString read Get_FileDir;
  end;

// *********************************************************************//
// DispIntf:  IDataCacheDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A0744B43-672B-4BA6-89B0-DFE349510CB7}
// *********************************************************************//
  IDataCacheDisp = dispinterface
    ['{A0744B43-672B-4BA6-89B0-DFE349510CB7}']
    procedure FlushAll; dispid 205;
    procedure RefreshCheckouts; dispid 206;
    property CheckoutCount: Integer readonly dispid 207;
    property Types: IEntityList readonly dispid 208;
    property States: IEntityList readonly dispid 209;
    property Links: IEntityList readonly dispid 210;
    property InverseLinks: IEntityList readonly dispid 211;
    property Attrs: IEntityList readonly dispid 212;
    property UserDir: WideString readonly dispid 213;
    property FileDir: WideString readonly dispid 214;
  end;

// *********************************************************************//
// Interface: IDBParams
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {607E165B-7E07-4963-9EDA-8832C8C71B64}
// *********************************************************************//
  IDBParams = interface(IDispatch)
    ['{607E165B-7E07-4963-9EDA-8832C8C71B64}']
    function Get_DBName: WideString; safecall;
    function Get_DefaultDir: WideString; safecall;
    function Get_VersionGroupQuantity: Integer; safecall;
    function Get_MaxImageSize: Integer; safecall;
    function Get_MaxTextSize: Integer; safecall;
    function Get_DriveLetter: WideString; safecall;
    function Get_UserName: WideString; safecall;
    function Get_FullUserName: WideString; safecall;
    function Get_UserMail: WideString; safecall;
    function Get_UserDir: WideString; safecall;
    property DBName: WideString read Get_DBName;
    property DefaultDir: WideString read Get_DefaultDir;
    property VersionGroupQuantity: Integer read Get_VersionGroupQuantity;
    property MaxImageSize: Integer read Get_MaxImageSize;
    property MaxTextSize: Integer read Get_MaxTextSize;
    property DriveLetter: WideString read Get_DriveLetter;
    property UserName: WideString read Get_UserName;
    property FullUserName: WideString read Get_FullUserName;
    property UserMail: WideString read Get_UserMail;
    property UserDir: WideString read Get_UserDir;
  end;

// *********************************************************************//
// DispIntf:  IDBParamsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {607E165B-7E07-4963-9EDA-8832C8C71B64}
// *********************************************************************//
  IDBParamsDisp = dispinterface
    ['{607E165B-7E07-4963-9EDA-8832C8C71B64}']
    property DBName: WideString readonly dispid 201;
    property DefaultDir: WideString readonly dispid 202;
    property VersionGroupQuantity: Integer readonly dispid 203;
    property MaxImageSize: Integer readonly dispid 204;
    property MaxTextSize: Integer readonly dispid 205;
    property DriveLetter: WideString readonly dispid 206;
    property UserName: WideString readonly dispid 207;
    property FullUserName: WideString readonly dispid 208;
    property UserMail: WideString readonly dispid 209;
    property UserDir: WideString readonly dispid 210;
  end;

// *********************************************************************//
// Interface: IConnectionBuilder
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8AB2820A-FEC2-4CE3-BE04-3F22F558F736}
// *********************************************************************//
  IConnectionBuilder = interface(IDispatch)
    ['{8AB2820A-FEC2-4CE3-BE04-3F22F558F736}']
    function Get_ConnectionString: WideString; safecall;
    procedure Set_ConnectionString(const stServers: WideString); safecall;
    procedure ShowSelectAppSrvDialog; safecall;
    function DBConnectionDialog(OwnerHandle: OLE_HANDLE; const DBName: WideString; 
                                SelectMode: WordBool; ShowCreateShotcutButton: WordBool; 
                                const HelpFile: WideString; DBSelectHelpIndex: Integer; 
                                DBEditHelpIndex: Integer): DBConnectInfo; safecall;
    function Get_MapWorkingDirectory: Integer; safecall;
    procedure Set_MapWorkingDirectory(Value: Integer); safecall;
    function Get_UseDebugger: Integer; safecall;
    procedure Set_UseDebugger(Value: Integer); safecall;
    function GetSimpleAPI(const DBName: WideString; CheckoutID: Integer; 
                          const UserName: WideString; const Password: WideString; 
                          AllowReconnect: WordBool; var ErrCode: OleVariant; var ErrMsg: OleVariant): ISimpleAPI2; safecall;
    function GetSimpleAPIByDBList(const DBName: WideString; CheckoutID: Integer; 
                                  AllowReconnect: WordBool; var ErrCode: OleVariant; 
                                  var ErrMsg: OleVariant): ISimpleAPI2; safecall;
    procedure SaveAuthToDBList(ConnectInfo: DBConnectInfo; SaveToReg: WordBool); safecall;
    function Get_AppHandle: OLE_HANDLE; safecall;
    procedure Set_AppHandle(Value: OLE_HANDLE); safecall;
    property ConnectionString: WideString read Get_ConnectionString write Set_ConnectionString;
    property MapWorkingDirectory: Integer read Get_MapWorkingDirectory write Set_MapWorkingDirectory;
    property UseDebugger: Integer read Get_UseDebugger write Set_UseDebugger;
    property AppHandle: OLE_HANDLE read Get_AppHandle write Set_AppHandle;
  end;

// *********************************************************************//
// DispIntf:  IConnectionBuilderDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8AB2820A-FEC2-4CE3-BE04-3F22F558F736}
// *********************************************************************//
  IConnectionBuilderDisp = dispinterface
    ['{8AB2820A-FEC2-4CE3-BE04-3F22F558F736}']
    property ConnectionString: WideString dispid 201;
    procedure ShowSelectAppSrvDialog; dispid 202;
    function DBConnectionDialog(OwnerHandle: OLE_HANDLE; const DBName: WideString; 
                                SelectMode: WordBool; ShowCreateShotcutButton: WordBool; 
                                const HelpFile: WideString; DBSelectHelpIndex: Integer; 
                                DBEditHelpIndex: Integer): {??DBConnectInfo}OleVariant; dispid 203;
    property MapWorkingDirectory: Integer dispid 204;
    property UseDebugger: Integer dispid 205;
    function GetSimpleAPI(const DBName: WideString; CheckoutID: Integer; 
                          const UserName: WideString; const Password: WideString; 
                          AllowReconnect: WordBool; var ErrCode: OleVariant; var ErrMsg: OleVariant): ISimpleAPI2; dispid 206;
    function GetSimpleAPIByDBList(const DBName: WideString; CheckoutID: Integer; 
                                  AllowReconnect: WordBool; var ErrCode: OleVariant; 
                                  var ErrMsg: OleVariant): ISimpleAPI2; dispid 207;
    procedure SaveAuthToDBList(ConnectInfo: {??DBConnectInfo}OleVariant; SaveToReg: WordBool); dispid 208;
    property AppHandle: OLE_HANDLE dispid 209;
  end;

// *********************************************************************//
// Interface: ILoodsmanLogger
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D423640C-B573-42DC-B87C-1C340D8567BB}
// *********************************************************************//
  ILoodsmanLogger = interface(IDispatch)
    ['{D423640C-B573-42DC-B87C-1C340D8567BB}']
    procedure WriteToLog(const EventName: WideString; Level: Integer; const Msg: WideString; 
                         const Err: WideString); safecall;
    procedure LogDebug(const EventName: WideString; const Msg: WideString; const Err: WideString); safecall;
    procedure LogInfo(const EventName: WideString; const Msg: WideString; const Err: WideString); safecall;
    procedure LogWarning(const EventName: WideString; const Msg: WideString; const Err: WideString); safecall;
    procedure LogError(const EventName: WideString; const Msg: WideString; const Err: WideString); safecall;
    procedure LogFatal(const EventName: WideString; const Msg: WideString; const Err: WideString); safecall;
    function Get_LoggerName: WideString; safecall;
    function Get_LoggerFlags: Integer; safecall;
    function IsDisabledLogLevel(const EventName: WideString; LogLevel: Integer): WordBool; safecall;
    function Get_Enabled: WordBool; safecall;
    property LoggerName: WideString read Get_LoggerName;
    property LoggerFlags: Integer read Get_LoggerFlags;
    property Enabled: WordBool read Get_Enabled;
  end;

// *********************************************************************//
// DispIntf:  ILoodsmanLoggerDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D423640C-B573-42DC-B87C-1C340D8567BB}
// *********************************************************************//
  ILoodsmanLoggerDisp = dispinterface
    ['{D423640C-B573-42DC-B87C-1C340D8567BB}']
    procedure WriteToLog(const EventName: WideString; Level: Integer; const Msg: WideString; 
                         const Err: WideString); dispid 201;
    procedure LogDebug(const EventName: WideString; const Msg: WideString; const Err: WideString); dispid 202;
    procedure LogInfo(const EventName: WideString; const Msg: WideString; const Err: WideString); dispid 203;
    procedure LogWarning(const EventName: WideString; const Msg: WideString; const Err: WideString); dispid 204;
    procedure LogError(const EventName: WideString; const Msg: WideString; const Err: WideString); dispid 205;
    procedure LogFatal(const EventName: WideString; const Msg: WideString; const Err: WideString); dispid 206;
    property LoggerName: WideString readonly dispid 207;
    property LoggerFlags: Integer readonly dispid 208;
    function IsDisabledLogLevel(const EventName: WideString; LogLevel: Integer): WordBool; dispid 209;
    property Enabled: WordBool readonly dispid 210;
  end;

implementation

end.
