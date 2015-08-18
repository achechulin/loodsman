unit Loodsman_TLB;

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
// File generated on 22.04.2014 13:07:11 from Type Library described below.

// ************************************************************************  //
// Type Lib: Loodsman.tlb (1)
// LIBID: {7CC86059-0262-44D5-9AA3-033DB38F11EF}
// LCID: 0
// Helpfile:
// HelpString: Loodsman Client Library
// DepndLst:
//   (1) v2.0 stdole, (C:\Windows\system32\stdole2.tlb)
//   (2) v1.0 BOSimple, (C:\Program Files (x86)\Common Files\ASCON Shared\BOSimple64.dll)
//   (3) v1.0 PDMObjects, (C:\Program Files (x86)\ASCON\Loodsman\Client\PDMObjects.dll)
//   (4) v1.0 Ask, (C:\Program Files (x86)\Common Files\ASCON Shared\Loodsman\Ask.dll)
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
{$ALIGN 4}
interface

uses Windows, ActiveX, Ask_TLB, BOSimple_TLB, PDMObjects_TLB, DataProvider_TLB, Variants;
  

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  LoodsmanMajorVersion = 1;
  LoodsmanMinorVersion = 0;

  LIBID_Loodsman: TGUID = '{7CC86059-0262-44D5-9AA3-033DB38F11EF}';

  CLASS_BOLoodsmanSimpleProvider: TGUID = '{8EC1A149-8D6A-48C6-A540-B76A118A5361}';
  CLASS_BOAttribute: TGUID = '{17B4A182-40DC-41FE-87EF-F69454458747}';
  CLASS_BOAttributeCollection: TGUID = '{B43E73FB-F6FA-4EDD-BFB9-8D27E80E525D}';
  CLASS_BOItem: TGUID = '{AA7EE9F2-94CB-4812-93A3-4695835FE0AC}';
  CLASS_BOItemCollection: TGUID = '{AFFA1F08-7D04-4E36-8E9D-6B00DF3F718F}';
  CLASS_BOKernel: TGUID = '{6B49617E-2D8B-4420-8526-913ACB6AD62D}';
  CLASS_BOObject: TGUID = '{2993241D-63A9-4C99-880B-AF5F48C5966F}';
  CLASS_BOObjectCollection: TGUID = '{83BC139E-EC24-4961-86D9-81C3F2DBB0D3}';
  CLASS_BORequest: TGUID = '{28AE9671-2F13-4CCD-9FC9-67C13C1BEA5E}';
  CLASS_BOResponse: TGUID = '{8770DB1E-00B8-43B4-A53B-5C9CE97357E7}';
  IID_ILoodsman8: TGUID = '{88222733-C7AD-4152-B0D8-CFC48EF25344}';
  CLASS_LoodsmanObject: TGUID = '{6E2D863C-136D-4EDA-8291-28B0CE2BD066}';
  IID_IConnectSP: TGUID = '{74AA1156-3A12-4021-954E-32DC1BF4D76F}';
  CLASS_ConnectSP: TGUID = '{5D700A95-8D9D-4597-B69D-2898B32B7EF8}';
  IID_ISocketConnect: TGUID = '{0B5E03EE-9FAA-48F2-BCFA-DC6567E3424F}';
  CLASS_SocketConnect: TGUID = '{754E8972-484E-499F-9DAC-805226FB19AF}';
  IID_IWebConnect: TGUID = '{A805C729-0233-4D9B-A5BE-A0F80158D182}';
  CLASS_WebConnect: TGUID = '{FF952B8B-DB0A-4B7B-B555-B6BF738E889F}';
  IID_ISQLAutorization: TGUID = '{5DC7E3F8-57E4-4991-B3FA-C0CD0613D7E4}';
  CLASS_SQLAutorization: TGUID = '{11D1F695-4DC4-4216-B83D-31B26F9D8BDB}';
  IID_IConnectDB: TGUID = '{25BDC8B8-72DA-4DCD-9B86-4DC812FA3D64}';
  CLASS_ConnectDB: TGUID = '{35EF10E7-5074-4704-94B9-C43160A9504A}';
  IID_IMetodsWorkObject: TGUID = '{3310D9AB-FC52-4404-A56A-2DE38B11D47E}';
  CLASS_MetodsWorkObject: TGUID = '{EFD145AC-B241-4FA6-A6D0-07CA687C0FA8}';
  IID_IOutlookBar: TGUID = '{6D3C83A2-C709-4A10-8F16-912CEE24D5B2}';
  CLASS_OutlookBar: TGUID = '{FAD1E603-77D8-4F8B-ADFF-E38774B30719}';
  IID_IConnectDBActive: TGUID = '{9BFF6226-1C52-4EBA-B00B-087558397C50}';
  CLASS_ConnectDBActive: TGUID = '{BF152433-8096-40DB-9D25-295112DCFC7E}';
  IID_ISaveDocument: TGUID = '{5A417D0C-4ACA-42A0-AEE1-32D56BA5CE1D}';
  CLASS_SaveDocument: TGUID = '{97735444-15EB-4A19-ABCB-5C05EA1025DD}';
  IID_IRunMetods: TGUID = '{A274EEB2-800E-498F-9156-F3F6662B7359}';
  CLASS_RunMetods: TGUID = '{47600028-7CF0-4A46-83AA-71824DFEB090}';
  IID_IPluginCall: TGUID = '{7779A0A3-1BF6-45C8-A536-21AD4B97E46D}';
  CLASS_PluginCall: TGUID = '{E4D4AE7B-7EB9-4057-B229-967E02B90054}';
  CLASS_URL: TGUID = '{975FD36D-CAE8-4690-A28F-830CE1141EEB}';
  IID_IDocumentViewer: TGUID = '{27B59D50-87FA-4017-B8C1-5F02D90EF1E7}';
  IID_IDataBase: TGUID = '{84555B43-9101-41CA-AAB3-0F176A0AF30C}';
  CLASS_CDataBase: TGUID = '{593972B0-7702-4932-A46C-9446555821DB}';
  IID_IDBWindow: TGUID = '{8A2DF0A5-19C6-4B21-AD73-7F8718CA37EE}';
  IID_IDBContext: TGUID = '{58BAB84A-4E14-4D67-A29E-6FF764FD9FFA}';
  IID_ILoodsmanApplication: TGUID = '{C50527B3-98D4-4C81-BE85-8D9B04A625FC}';
  IID_IActions: TGUID = '{22C267CC-D48E-43F0-94B9-AF03C949D103}';
  IID_ILoodsmanPlugin: TGUID = '{8A0AD8A6-791D-4211-B6B0-A8C25FA33209}';
  CLASS_CoLooPlugin: TGUID = '{905FB351-0656-43DD-BE9B-6F3A8CD2A82E}';
  IID_IFrameInfo: TGUID = '{3002A3EA-E245-441E-BE6F-4E9878EDE382}';
  IID_ILoodsmanFrame: TGUID = '{43151655-95CC-40B4-9D92-A95E8DF52043}';
  IID_IFrameContainer: TGUID = '{540CAE0E-987D-4429-837D-1A4A9A28192F}';
  IID_IContent: TGUID = '{3F471E54-37F4-43C6-BA40-28FFCB2892DB}';
  CLASS_CDBWindow: TGUID = '{9718B914-E357-436F-8D57-99216039534F}';
  CLASS_CoSimpleAPI: TGUID = '{5CC4A40D-CF2B-45AA-86EF-A3E95B27C2CD}';
  CLASS_CoDataSet: TGUID = '{A00EC6F8-5E3A-4569-8A2C-F26DAF5FFF8D}';
  CLASS_CoClientAsyncTask: TGUID = '{D73AEEFC-A43E-4C76-B019-2047C12FE376}';
  IID_IOptions: TGUID = '{F64CF2A2-E862-4365-B20F-19E9A5BE0038}';
  CLASS_CoOptions: TGUID = '{34BD230F-01AF-4275-82C4-9AC03BAC8AD9}';
  CLASS_CoDBContext: TGUID = '{1AA364E5-B3A5-4AB4-9A2B-D0E48841FF83}';
  CLASS_CoFrameContainer: TGUID = '{7DC478B3-9941-4FE4-AE62-459BC8A41B1B}';
  IID_IActionHandler: TGUID = '{9827725B-F4DE-4EDA-B37D-2C09710722B5}';
  IID_IApplicationMenu: TGUID = '{9758DAA9-74D9-4A13-95EB-356F3FE66073}';
  IID_INotification: TGUID = '{753BE7FF-88BB-446A-92C0-BE79EFA7400C}';
  IID_INotificationHandler: TGUID = '{52A780D4-B5CA-4A30-9CBE-739D98F9D528}';
  CLASS_CoNotification: TGUID = '{D8E82FDA-A104-4ECE-B155-7BBB75A41279}';
  IID_IMenuBar: TGUID = '{6FC203EF-B841-47E1-962B-E7B0DCA1EA4D}';
  CLASS_CoMenuBar: TGUID = '{54C62FF2-A971-4C79-95C2-08FF9F091879}';
  IID_IMenuItem: TGUID = '{E778343E-D2DF-4698-B57F-C5377B6E1845}';
  CLASS_CoMenuItem: TGUID = '{DB0D3991-A053-42ED-A6B6-97ECD1A1F187}';
  IID_ILoodsmanService: TGUID = '{67927DBE-4A12-4785-9D36-F72E7299884B}';
  IID_IServiceInfo: TGUID = '{8409E9CD-B499-4C91-B06F-95741911B226}';
  CLASS_CoActions: TGUID = '{CA2C05F3-9875-4906-9FAF-849C3739210F}';
  CLASS_LooApplication: TGUID = '{AAAE7194-C4AB-4056-9045-FBCE7DB25B48}';

// *********************************************************************//
// Declaration of Enumerations defined in Type Library                    
// *********************************************************************//
// Constants for enum DocumentViewerCommands
type
  DocumentViewerCommands = TOleEnum;
const
  cmAnnotate = $00000000;
  cmCustomize = $00000001;
  cmAbout = $00000002;
  cmDeleteView = $00000003;
  cmHelp = $00000004;

// Constants for enum DocumentViewerFeatures
type
  DocumentViewerFeatures = TOleEnum;
const
  COMMAND_NONE = $00000000;
  COMMAND_ANNOTATE = $00000001;
  COMMAND_CUSTOMIZE = $00000002;
  COMMAND_ABOUT = $00000004;
  COMMAND_DELETE = $00000008;
  COMMAND_HELP = $00000010;

// Constants for enum ActionResults
type
  ActionResults = TOleEnum;
const
  arDone = $00000000;
  arContinue = $00000001;
  arError = $00000002;

// Constants for enum MenuItemTypes
type
  MenuItemTypes = TOleEnum;
const
  mitUnknown = $00000000;
  mitSubItem = $00000001;
  mitButton = $00000002;

// Constants for enum URLProcessingFlags
type
  URLProcessingFlags = TOleEnum;
const
  URL_FLAG_NONE = $00000000;
  URL_FLAG_FLASH = $00000001;
  URL_FLAG_FORCE_OPEN = $00000002;

// Constants for enum MenuBarTypes
type
  MenuBarTypes = TOleEnum;
const
  BAR_TYPE_MENU = $00000000;
  BAR_TYPE_NAVIGATOR_GROUPED = $00000001;

// Constants for enum FrameValidateStatus
type
  FrameValidateStatus = TOleEnum;
const
  fvNotValid = $00000000;
  fvValid = $00000001;
  fvWaitData = $00000002;

type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  ILoodsman8 = interface;
  IConnectSP = interface;
  ISocketConnect = interface;
  IWebConnect = interface;
  ISQLAutorization = interface;
  IConnectDB = interface;
  IMetodsWorkObject = interface;
  IOutlookBar = interface;
  IConnectDBActive = interface;
  ISaveDocument = interface;
  IRunMetods = interface;
  IPluginCall = interface;
  IDocumentViewer = interface;
  IDataBase = interface;
  IDBWindow = interface;
  IDBContext = interface;
  ILoodsmanApplication = interface;
  IActions = interface;
  ILoodsmanPlugin = interface;
  IFrameInfo = interface;
  ILoodsmanFrame = interface;
  IFrameContainer = interface;
  IContent = interface;
  IOptions = interface;
  IActionHandler = interface;
  IApplicationMenu = interface;
  INotification = interface;
  INotificationHandler = interface;
  IMenuBar = interface;
  IMenuItem = interface;
  ILoodsmanService = interface;
  IServiceInfo = interface;

  {$ifdef UseV11DataSet}
  IDataSet = DataProvider_TLB.IDataSetV11;
  {$else}
  IDataSet = DataProvider_TLB.IDataSetV13;
  {$endif}

  {$ifdef UseV13PDMData}
  IPDMData = PDMObjects_TLB.IPDMDataV13;
  IProtectedPDMData = PDMObjects_TLB.IProtectedPDMDataV13;
  IPDMObject = PDMObjects_TLB.IPDMObjectV13;
  IPDMDocument = PDMObjects_TLB.IPDMDocumentV13;
  IPDMFile = PDMObjects_TLB.IPDMFileV13;
  IPDMCollection = PDMObjects_TLB.IPDMCollectionV13;
  IWFObject = PDMObjects_TLB.IWFObjectV13;
  IWFRoute = PDMObjects_TLB.IWFRouteV13;
  IWFTask = PDMObjects_TLB.IWFTaskV13;
  IPDMLink = PDMObjects_TLB.IPDMLinkV13;
  IWFMail = PDMObjects_TLB.IWFMailV13;
  IObjectBuilder = PDMObjects_TLB.IObjectBuilderV13;
  {$else}
  IPDMData = PDMObjects_TLB.IPDMDataV14;
  IProtectedPDMData = PDMObjects_TLB.IProtectedPDMDataV14;
  IPDMObject = PDMObjects_TLB.IPDMObjectV14;
  IPDMDocument = PDMObjects_TLB.IPDMDocumentV14;
  IPDMFile = PDMObjects_TLB.IPDMFileV14;
  IPDMCollection = PDMObjects_TLB.IPDMCollectionV14;
  IWFObject = PDMObjects_TLB.IWFObjectV14;
  IWFRoute = PDMObjects_TLB.IWFRouteV14;
  IWFTask = PDMObjects_TLB.IWFTaskV14;
  IPDMLink = PDMObjects_TLB.IPDMLinkV14;
  IWFMail = PDMObjects_TLB.IWFMailV14;
  IObjectBuilder = PDMObjects_TLB.IObjectBuilderV14;
  {$endif}

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  BOLoodsmanSimpleProvider = IBOSimpleProvider;
  BOAttribute = IBOAttribute;
  BOAttributeCollection = IBOAttributeCollection;
  BOItem = IBOItem;
  BOItemCollection = IBOItemCollection;
  BOKernel = IBOKernel;
  BOObject = IBOObject;
  BOObjectCollection = IBOObjectCollection;
  BORequest = IBORequest;
  BOResponse = IBOResponse;
  LoodsmanObject = ILoodsman8;
  ConnectSP = IConnectSP;
  SocketConnect = ISocketConnect;
  WebConnect = IWebConnect;
  SQLAutorization = ISQLAutorization;
  ConnectDB = IConnectDB;
  MetodsWorkObject = IMetodsWorkObject;
  OutlookBar = IOutlookBar;
  ConnectDBActive = IConnectDBActive;
  SaveDocument = ISaveDocument;
  RunMetods = IRunMetods;
  PluginCall = IPluginCall;
  URL = ICommand;
  CDataBase = IDataBase;
  CoLooPlugin = ILoodsmanPlugin;
  CDBWindow = IDBWindow;
  CoSimpleAPI = IDispatch;
  CoDataSet = IDispatch;
  CoClientAsyncTask = IDispatch;
  CoOptions = IOptions;
  CoDBContext = IDBContext;
  CoFrameContainer = IFrameContainer;
  CoNotification = INotification;
  CoMenuBar = IMenuBar;
  CoMenuItem = IMenuItem;
  CoActions = IActions;
  LooApplication = ILoodsmanApplication;


// *********************************************************************//
// Interface: ILoodsman8
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {88222733-C7AD-4152-B0D8-CFC48EF25344}
// *********************************************************************//
  ILoodsman8 = interface(IDispatch)
    ['{88222733-C7AD-4152-B0D8-CFC48EF25344}']
    procedure sResult; safecall;
    procedure lnDialogSelectSP(AppHandle: SYSINT); safecall;
    function Get_lnGetConnectSP(inTypeConnect: Integer; out inReturnCode: OleVariant; 
                                out stErrorMessage: OleVariant): IConnectSP; safecall;
    function Get_lnGetConnectDB(inTypeConnect: Integer; out inReturnCode: OleVariant; 
                                out stErrorMessage: OleVariant): IConnectDB; safecall;
    function Get_lnGetConnectDBActive(out inReturnCode: OleVariant; out stErrorMessage: OleVariant): IConnectDBActive; safecall;
    function Get_lnGetIOutlookBar: IOutlookBar; safecall;
    function Get_lnSetFormat(out inReturnCode: OleVariant; out stErrorMessage: OleVariant): Integer; safecall;
    procedure Set_lnSetFormat(out inReturnCode: OleVariant; out stErrorMessage: OleVariant; 
                              Value: Integer); safecall;
    procedure Quit; safecall;
    function Get_lnStatusOfExhibit: Integer; safecall;
    procedure Set_lnStatusOfExhibit(inStatusOfExhibit: Integer); safecall;
    function Get_lnMetodsWorkObject: IMetodsWorkObject; safecall;
    procedure lnCheckConnectLN; safecall;
    procedure lnWait(const stNameMetod: WideString); safecall;
    function Get_lnRunMetods: IRunMetods; safecall;
    function Get_lnMessageDlg(const stMessage: WideString; inTypeMessage: SYSINT): Integer; safecall;
    property lnGetConnectSP[inTypeConnect: Integer; out inReturnCode: OleVariant; 
                            out stErrorMessage: OleVariant]: IConnectSP read Get_lnGetConnectSP;
    property lnGetConnectDB[inTypeConnect: Integer; out inReturnCode: OleVariant; 
                            out stErrorMessage: OleVariant]: IConnectDB read Get_lnGetConnectDB;
    property lnGetConnectDBActive[out inReturnCode: OleVariant; out stErrorMessage: OleVariant]: IConnectDBActive read Get_lnGetConnectDBActive;
    property lnGetIOutlookBar: IOutlookBar read Get_lnGetIOutlookBar;
    property lnSetFormat[out inReturnCode: OleVariant; out stErrorMessage: OleVariant]: Integer read Get_lnSetFormat write Set_lnSetFormat;
    property lnStatusOfExhibit: Integer read Get_lnStatusOfExhibit write Set_lnStatusOfExhibit;
    property lnMetodsWorkObject: IMetodsWorkObject read Get_lnMetodsWorkObject;
    property lnRunMetods: IRunMetods read Get_lnRunMetods;
    property lnMessageDlg[const stMessage: WideString; inTypeMessage: SYSINT]: Integer read Get_lnMessageDlg;
  end;

// *********************************************************************//
// Interface: IConnectSP
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {74AA1156-3A12-4021-954E-32DC1BF4D76F}
// *********************************************************************//
  IConnectSP = interface(IDispatch)
    ['{74AA1156-3A12-4021-954E-32DC1BF4D76F}']
    procedure Set_vConnectionType(Param1: Integer); safecall;
    procedure Set_vDCOMConnect(const Param1: WideString); safecall;
    function Get_mGetSocketConnect: ISocketConnect; safecall;
    function Get_mGetWebConnect: IWebConnect; safecall;
    function Get_Update: Integer; safecall;
    function Get_lnTestConnect(var stValue: WideString): SYSINT; safecall;
    property vConnectionType: Integer write Set_vConnectionType;
    property vDCOMConnect: WideString write Set_vDCOMConnect;
    property mGetSocketConnect: ISocketConnect read Get_mGetSocketConnect;
    property mGetWebConnect: IWebConnect read Get_mGetWebConnect;
    property Update: Integer read Get_Update;
    property lnTestConnect[var stValue: WideString]: SYSINT read Get_lnTestConnect;
  end;

// *********************************************************************//
// Interface: ISocketConnect
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0B5E03EE-9FAA-48F2-BCFA-DC6567E3424F}
// *********************************************************************//
  ISocketConnect = interface(IDispatch)
    ['{0B5E03EE-9FAA-48F2-BCFA-DC6567E3424F}']
    procedure Set_scServerAlias(const Param1: WideString); safecall;
    procedure Set_scAddress(const Param1: WideString); safecall;
    procedure Set_scPort(const Param1: WideString); safecall;
    property scServerAlias: WideString write Set_scServerAlias;
    property scAddress: WideString write Set_scAddress;
    property scPort: WideString write Set_scPort;
  end;

// *********************************************************************//
// Interface: IWebConnect
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A805C729-0233-4D9B-A5BE-A0F80158D182}
// *********************************************************************//
  IWebConnect = interface(IDispatch)
    ['{A805C729-0233-4D9B-A5BE-A0F80158D182}']
    procedure Set_scServerAlias(const Param1: WideString); safecall;
    procedure Set_wcURL(const Param1: WideString); safecall;
    procedure Set_wcUser(const Param1: WideString); safecall;
    procedure Set_wcPasswords(const Param1: WideString); safecall;
    procedure Set_wcUseCheckProxy(Param1: Integer); safecall;
    procedure Set_wcProxy(const Param1: WideString); safecall;
    property scServerAlias: WideString write Set_scServerAlias;
    property wcURL: WideString write Set_wcURL;
    property wcUser: WideString write Set_wcUser;
    property wcPasswords: WideString write Set_wcPasswords;
    property wcUseCheckProxy: Integer write Set_wcUseCheckProxy;
    property wcProxy: WideString write Set_wcProxy;
  end;

// *********************************************************************//
// Interface: ISQLAutorization
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {5DC7E3F8-57E4-4991-B3FA-C0CD0613D7E4}
// *********************************************************************//
  ISQLAutorization = interface(IDispatch)
    ['{5DC7E3F8-57E4-4991-B3FA-C0CD0613D7E4}']
    procedure Set_sqlaUserName(const Param1: WideString); safecall;
    procedure Set_sqlaPasswords(const Param1: WideString); safecall;
    procedure Set_sqlaSavePasswords(Param1: Integer); safecall;
    property sqlaUserName: WideString write Set_sqlaUserName;
    property sqlaPasswords: WideString write Set_sqlaPasswords;
    property sqlaSavePasswords: Integer write Set_sqlaSavePasswords;
  end;

// *********************************************************************//
// Interface: IConnectDB
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {25BDC8B8-72DA-4DCD-9B86-4DC812FA3D64}
// *********************************************************************//
  IConnectDB = interface(IDispatch)
    ['{25BDC8B8-72DA-4DCD-9B86-4DC812FA3D64}']
    procedure Set_NameBaseConnect(const Param1: WideString); safecall;
    procedure Set_TypeAutorization(Param1: Integer); safecall;
    function Get_mGetSQLAutorization: ISQLAutorization; safecall;
    function Get_Update(inStateDB: Integer): Integer; safecall;
    function Get_lnMetodsWorkObject: IMetodsWorkObject; safecall;
    procedure lnGetDBProperties(out inReturnCode: OleVariant; out stErrorMessage: OleVariant; 
                                const stNameDB: WideString; inSetFormat: Integer; 
                                out DATA: OleVariant; out inRecsOut: SYSINT); safecall;
    function Get_lnRunMetods: IRunMetods; safecall;
    property NameBaseConnect: WideString write Set_NameBaseConnect;
    property TypeAutorization: Integer write Set_TypeAutorization;
    property mGetSQLAutorization: ISQLAutorization read Get_mGetSQLAutorization;
    property Update[inStateDB: Integer]: Integer read Get_Update;
    property lnMetodsWorkObject: IMetodsWorkObject read Get_lnMetodsWorkObject;
    property lnRunMetods: IRunMetods read Get_lnRunMetods;
  end;

// *********************************************************************//
// Interface: IMetodsWorkObject
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {3310D9AB-FC52-4404-A56A-2DE38B11D47E}
// *********************************************************************//
  IMetodsWorkObject = interface(IDispatch)
    ['{3310D9AB-FC52-4404-A56A-2DE38B11D47E}']
    procedure lnGetInfoAboutVersion(var inReturnCode: OleVariant; var stErrorMessage: OleVariant; 
                                    const stType: WideString; const stProduct: WideString; 
                                    const stVersion: WideString; inIdVersion: SYSINT; 
                                    inMode: Integer; inSetFormat: Integer; var DATA: OleVariant; 
                                    var inRecsOut: SYSINT); safecall;
    procedure lnGetLinkedObjectsEx(var inReturnCode: OleVariant; var stErrorMessage: OleVariant; 
                                   const stTypeName: WideString; const stProductName: WideString; 
                                   const stVersionNumber: WideString; const stLinkType: WideString; 
                                   boInverse: Integer; boFullLink: Integer; 
                                   boGroupByProduct: Integer; boForTree: Integer; 
                                   inSetFormat: Integer; var DATA: OleVariant; var inRecsOut: SYSINT); safecall;
    procedure lnGetLinkedFast(var inReturnCode: OleVariant; var stErrorMessage: OleVariant; 
                              inIdVersion: SYSINT; const stLinkType: WideString; 
                              inSetFormat: Integer; var DATA: OleVariant; var inRecsOut: SYSINT); safecall;
    procedure lnGetLinkedObjectsAndFiles(out inReturnCode: OleVariant; 
                                         out stErrorMessage: OleVariant; 
                                         const stTypeName: WideString; 
                                         const stProductName: WideString; 
                                         const stVersionNumber: WideString; 
                                         const stLinkType: WideString; boFullLink: Integer; 
                                         boViewOnlyDocuments: Integer; inSetFormat: Integer; 
                                         out DATA: OleVariant; out inRecsOut: SYSINT); safecall;
    procedure lnGetInfoAboutFile(out inReturnCode: OleVariant; out stErrorMessage: OleVariant; 
                                 stFileName: Integer; stFullFilePath: Integer; 
                                 inSetFormat: Integer; out DATA: OleVariant; out inRecsOut: SYSINT); safecall;
    procedure lnGetInfoAboutType(out inReturnCode: OleVariant; out stErrorMessage: OleVariant; 
                                 const stType: WideString; inMode: Integer; inSetFormat: Integer; 
                                 out DATA: OleVariant; out inRecsOut: SYSINT); safecall;
    procedure lnGotoObject(out inReturnCode: OleVariant; out stErrorMessage: OleVariant; 
                           const stNameDB: WideString; const stNameCheck: WideString; 
                           const stType: WideString; const stProduct: WideString; 
                           const stVersion: WideString; inIdVersion: SYSINT); safecall;
    procedure lnSelectObject(out inReturnCode: OleVariant; out stErrorMessage: OleVariant; 
                             inSetFormat: Integer; out DATA: OleVariant; out inRecsOut: SYSINT); safecall;
    procedure lnImportObjectWithFile(out inReturnCode: OleVariant; out stErrorMessage: OleVariant; 
                                     inSetFormat: Integer; out DATA: OleVariant; 
                                     out inRecsOut: SYSINT); safecall;
    procedure lnImportFileWithFile(out inReturnCode: OleVariant; out stErrorMessage: OleVariant; 
                                   const stFilter: WideString; inTypeOpenFile: Integer; 
                                   inSetFormat: Integer; inLockMultiExtract: Integer; 
                                   out DATA: OleVariant; out inRecsOut: SYSINT); safecall;
    procedure lnOpenDocument(out inReturnCode: OleVariant; out stErrorMessage: OleVariant; 
                             const stFilter: WideString; inSetFormat: Integer; 
                             out inCheckOut: Integer; out DATA: OleVariant; out inRecsOut: SYSINT); safecall;
    procedure lnExtractDocument(out inReturnCode: OleVariant; out stErrorMessage: OleVariant; 
                                const stFilter: WideString; inSetFormat: Integer; 
                                out inCheckOut: Integer; out DATA: OleVariant; 
                                out inRecsOut: SYSINT; const stHintMessage: WideString; 
                                inLockMultiExtract: Integer); safecall;
    function Get_lnSaveDocument: ISaveDocument; safecall;
    procedure lnExtractDocumentFormShow(out inReturnCode: OleVariant; 
                                        out stErrorMessage: OleVariant; const stFilter: WideString; 
                                        inSetFormat: Integer; out inCheckOut: Integer; 
                                        out DATA: OleVariant; out inRecsOut: SYSINT; 
                                        const stHintMessage: WideString; 
                                        inLockMultiExtract: Integer; 
                                        const stCaptionMessage: WideString); safecall;
    property lnSaveDocument: ISaveDocument read Get_lnSaveDocument;
  end;

// *********************************************************************//
// Interface: IOutlookBar
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {6D3C83A2-C709-4A10-8F16-912CEE24D5B2}
// *********************************************************************//
  IOutlookBar = interface(IDispatch)
    ['{6D3C83A2-C709-4A10-8F16-912CEE24D5B2}']
    procedure lnGetDesktop(out inReturnCode: OleVariant; out stErrorMessage: OleVariant; 
                           inSetFormat: Integer; out DATA: OleVariant; out inRecsOut: SYSINT); safecall;
    procedure lnGetDataBases(out inReturnCode: OleVariant; out stErrorMessage: OleVariant; 
                             inSetFormat: Integer; out DATA: OleVariant; out inRecsOut: SYSINT); safecall;
    procedure lnGetUserSets(out inReturnCode: OleVariant; out stErrorMessage: OleVariant; 
                            inSetFormat: Integer; out DATA: OleVariant; out inRecsOut: SYSINT); safecall;
    procedure lnGetFavorites(out inReturnCode: OleVariant; out stErrorMessage: OleVariant; 
                             inSetFormat: Integer; out DATA: OleVariant; out inRecsOut: SYSINT); safecall;
    function Get_lnOpenObjDesktop(inOpenOutlookList: SYSINT; const stCheckName: WideString; 
                                  const stNameDB: WideString): IConnectDBActive; safecall;
    function Get_lnOpenDataBase(inOpenOutlookList: SYSINT; const stNameDB: WideString): IConnectDBActive; safecall;
    function Get_lnOpenObjUserSets(inOpenOutlookList: SYSINT; const stUserSet: WideString; 
                                   const stNameDB: WideString): IConnectDBActive; safecall;
    function Get_lnOpenObjFavorites(inOpenOutlookList: SYSINT; const stName: WideString; 
                                    const stNameDB: WideString; inIdVersion: SYSINT): IConnectDBActive; safecall;
    function Get_lnGetConnectBDActive: IConnectDBActive; safecall;
    property lnOpenObjDesktop[inOpenOutlookList: SYSINT; const stCheckName: WideString; 
                              const stNameDB: WideString]: IConnectDBActive read Get_lnOpenObjDesktop;
    property lnOpenDataBase[inOpenOutlookList: SYSINT; const stNameDB: WideString]: IConnectDBActive read Get_lnOpenDataBase;
    property lnOpenObjUserSets[inOpenOutlookList: SYSINT; const stUserSet: WideString; 
                               const stNameDB: WideString]: IConnectDBActive read Get_lnOpenObjUserSets;
    property lnOpenObjFavorites[inOpenOutlookList: SYSINT; const stName: WideString; 
                                const stNameDB: WideString; inIdVersion: SYSINT]: IConnectDBActive read Get_lnOpenObjFavorites;
    property lnGetConnectBDActive: IConnectDBActive read Get_lnGetConnectBDActive;
  end;

// *********************************************************************//
// Interface: IConnectDBActive
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9BFF6226-1C52-4EBA-B00B-087558397C50}
// *********************************************************************//
  IConnectDBActive = interface(IDispatch)
    ['{9BFF6226-1C52-4EBA-B00B-087558397C50}']
    function Get_lnMetodsWorkObject: IMetodsWorkObject; safecall;
    procedure lnGetDBProperties(out inReturnCode: OleVariant; out stErrorMessage: OleVariant; 
                                inSetFormat: Integer; out DATA: OleVariant; out inRecsOut: SYSINT); safecall;
    function Get_lnRunMetods: IRunMetods; safecall;
    property lnMetodsWorkObject: IMetodsWorkObject read Get_lnMetodsWorkObject;
    property lnRunMetods: IRunMetods read Get_lnRunMetods;
  end;

// *********************************************************************//
// Interface: ISaveDocument
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {5A417D0C-4ACA-42A0-AEE1-32D56BA5CE1D}
// *********************************************************************//
  ISaveDocument = interface(IDispatch)
    ['{5A417D0C-4ACA-42A0-AEE1-32D56BA5CE1D}']
    procedure lnSaveDocument(out inReturnCode: OleVariant; out stErrorMessage: OleVariant; 
                             inSetFormat: Integer; DATA: OleVariant; inRecsIn: SYSINT; 
                             out DATAOut: OleVariant; out inRecsOut: SYSINT); safecall;
    procedure lnUpData(out inReturnCode: OleVariant; out stErrorMessage: OleVariant; 
                       inCheck: Integer; lnRunTime: Integer; lnWaitTime: Integer); safecall;
    procedure lnSaveDocumentFree; safecall;
    procedure lnSaveDocumentEx(out inReturnCode: OleVariant; out stErrorMessage: OleVariant; 
                               inSetFormat: Integer; DATA: OleVariant; inRecsIn: SYSINT; 
                               out DATAOut: OleVariant; out inRecsOut: SYSINT; Flags: Integer); safecall;
    function lnGetSaveStatus: Integer; safecall;
  end;

// *********************************************************************//
// Interface: IRunMetods
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {A274EEB2-800E-498F-9156-F3F6662B7359}
// *********************************************************************//
  IRunMetods = interface(IDispatch)
    ['{A274EEB2-800E-498F-9156-F3F6662B7359}']
    procedure lnCreate(out inReturnCode: OleVariant; out stErrorMessage: OleVariant); safecall;
    procedure lnRunMetod(out inReturnCode: OleVariant; out stErrorMessage: OleVariant; 
                         const stNameDB: WideString; const stNameCheck: WideString; 
                         const stMetodName: WideString; vParams: OleVariant; out DATA: OleVariant; 
                         out inRecsOut: SYSINT; inSetFormat: Integer); safecall;
    procedure lnFree; safecall;
    function lnRunMethod(const stMethod: WideString; vaParams: OleVariant): OleVariant; safecall;
  end;

// *********************************************************************//
// Interface: IPluginCall
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {7779A0A3-1BF6-45C8-A536-21AD4B97E46D}
// *********************************************************************//
  IPluginCall = interface(IDispatch)
    ['{7779A0A3-1BF6-45C8-A536-21AD4B97E46D}']
    function RunMethod(const stMetod: WideString; vaParams: OleVariant): OleVariant; safecall;
    function GetDataSet(const stMetod: WideString; vaParams: OleVariant): IDataSet; safecall;
    function Get_DBName: WideString; safecall;
    function Get_CheckOut: Integer; safecall;
    function Get_AppHandle: OLE_HANDLE; safecall;
    function Get_ClientHandle: OLE_HANDLE; safecall;
    function Get_IdVersion: Integer; safecall;
    function Get_stType: WideString; safecall;
    function Get_stProduct: WideString; safecall;
    function Get_stVersion: WideString; safecall;
    function Get_IdParent: Integer; safecall;
    function Get_stParentType: WideString; safecall;
    function Get_stParentProduct: WideString; safecall;
    function Get_stParentVersion: WideString; safecall;
    function Get_IdLink: Integer; safecall;
    function Get_SelectedParent: WordBool; safecall;
    function Get_Selected: IPDMObject; safecall;
    function Get_WFSelected: IWFObject; safecall;
    function Get_AsyncTask: IDispatch; safecall;
    function Get_MainHandle: OLE_HANDLE; safecall;
    function Get_ServerName: WideString; safecall;
    function Get_ParentObject: IPDMObject; safecall;
    function Get_LinkName: WideString; safecall;
    function Get_Content: IContent; safecall;
    function Get_WBSSystem: IDispatch; safecall;
    property DBName: WideString read Get_DBName;
    property CheckOut: Integer read Get_CheckOut;
    property AppHandle: OLE_HANDLE read Get_AppHandle;
    property ClientHandle: OLE_HANDLE read Get_ClientHandle;
    property IdVersion: Integer read Get_IdVersion;
    property stType: WideString read Get_stType;
    property stProduct: WideString read Get_stProduct;
    property stVersion: WideString read Get_stVersion;
    property IdParent: Integer read Get_IdParent;
    property stParentType: WideString read Get_stParentType;
    property stParentProduct: WideString read Get_stParentProduct;
    property stParentVersion: WideString read Get_stParentVersion;
    property IdLink: Integer read Get_IdLink;
    property SelectedParent: WordBool read Get_SelectedParent;
    property Selected: IPDMObject read Get_Selected;
    property WFSelected: IWFObject read Get_WFSelected;
    property AsyncTask: IDispatch read Get_AsyncTask;
    property MainHandle: OLE_HANDLE read Get_MainHandle;
    property ServerName: WideString read Get_ServerName;
    property ParentObject: IPDMObject read Get_ParentObject;
    property LinkName: WideString read Get_LinkName;
    property Content: IContent read Get_Content;
    property WBSSystem: IDispatch read Get_WBSSystem;
  end;

// *********************************************************************//
// Interface: IDocumentViewer
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {27B59D50-87FA-4017-B8C1-5F02D90EF1E7}
// *********************************************************************//
  IDocumentViewer = interface(IDispatch)
    ['{27B59D50-87FA-4017-B8C1-5F02D90EF1E7}']
    procedure Init(const DBWindow: IDBWindow); safecall;
    procedure Finalize; safecall;
    procedure Clear; safecall;
    procedure Refresh(const PDMDocument: IPDMDocument); safecall;
    procedure Command(DocumentCommand: DocumentViewerCommands; MainWindow: OLE_HANDLE); safecall;
    function Get_Document: IPDMDocument; safecall;
    function Get_Features: Integer; safecall;
    property Document: IPDMDocument read Get_Document;
    property Features: Integer read Get_Features;
  end;

// *********************************************************************//
// Interface: IDataBase
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {84555B43-9101-41CA-AAB3-0F176A0AF30C}
// *********************************************************************//
  IDataBase = interface(IDispatch)
    ['{84555B43-9101-41CA-AAB3-0F176A0AF30C}']
    function Get_Name: WideString; safecall;
    function Get_CurrentUser: ILoodsmanUser; safecall;
    function Get_MaxLabel: Integer; safecall;
    function CheckoutObjects(IDs: OleVariant; const ACheckOut: WideString; AAddToRoot: WordBool): WideString; safecall;
    function Get_ReadOnlyDB: WordBool; safecall;
    property Name: WideString read Get_Name;
    property CurrentUser: ILoodsmanUser read Get_CurrentUser;
    property MaxLabel: Integer read Get_MaxLabel;
    property ReadOnlyDB: WordBool read Get_ReadOnlyDB;
  end;

// *********************************************************************//
// Interface: IDBWindow
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8A2DF0A5-19C6-4B21-AD73-7F8718CA37EE}
// *********************************************************************//
  IDBWindow = interface(IDispatch)
    ['{8A2DF0A5-19C6-4B21-AD73-7F8718CA37EE}']
    function Get_DataBase: IDataBase; safecall;
    function Get_CheckOutMode: WordBool; safecall;
    function Get_WindowHandle: OLE_HANDLE; safecall;
    procedure Close; safecall;
    function Get_Context: IDBContext; safecall;
    procedure Activate; safecall;
    function Get_Content: IContent; safecall;
    property DataBase: IDataBase read Get_DataBase;
    property CheckOutMode: WordBool read Get_CheckOutMode;
    property WindowHandle: OLE_HANDLE read Get_WindowHandle;
    property Context: IDBContext read Get_Context;
    property Content: IContent read Get_Content;
  end;

// *********************************************************************//
// Interface: IDBContext
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {58BAB84A-4E14-4D67-A29E-6FF764FD9FFA}
// *********************************************************************//
  IDBContext = interface(IDispatch)
    ['{58BAB84A-4E14-4D67-A29E-6FF764FD9FFA}']
    function Get_ContextType: Integer; safecall;
    function GetContextValue(const AValueName: WideString): OleVariant; safecall;
    function Get_Connection: IDispatch; safecall;
    function Get_WBSSystem: IDispatch; safecall;
    procedure SetContextValue(const AValueName: WideString; AValue: OleVariant); safecall;
    function Get_ValueCount: Integer; safecall;
    function GetValueName(AIndex: Integer): WideString; safecall;
    function IsEqual(const AContext: IDBContext): WordBool; safecall;
    property ContextType: Integer read Get_ContextType;
    property Connection: IDispatch read Get_Connection;
    property WBSSystem: IDispatch read Get_WBSSystem;
    property ValueCount: Integer read Get_ValueCount;
  end;

// *********************************************************************//
// Interface: ILoodsmanApplication
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {C50527B3-98D4-4C81-BE85-8D9B04A625FC}
// *********************************************************************//
  ILoodsmanApplication = interface(IDispatch)
    ['{C50527B3-98D4-4C81-BE85-8D9B04A625FC}']
    procedure SetVisible(Value: WordBool); safecall;
    function GetVisible: WordBool; safecall;
    procedure Quit; safecall;
    procedure Activate; safecall;
    procedure Minimize; safecall;
    procedure Maximize; safecall;
    procedure Restore; safecall;
    function GetPlugin(Index: Integer): ILoodsmanPlugin; safecall;
    function GetPluginByName(const Name: WideString): ILoodsmanPlugin; safecall;
    procedure NotifyUser(const Header: WideString; const Text: WideString; NotifyKind: Integer; 
                         Reserved: Integer); safecall;
    procedure TileWindows(ATileMode: Integer); safecall;
    procedure CascadeWindows; safecall;
    function Get_ActiveWindow: IDBWindow; safecall;
    function Get_MainHandle: OLE_HANDLE; safecall;
    function Get_PluginCount: Integer; safecall;
    function Get_WindowCount: Integer; safecall;
    function GetWindow(Index: Integer): IDBWindow; safecall;
    function Get_AppHandle: OLE_HANDLE; safecall;
    function CreateWindow(const ACaption: WideString; const AContext: IDBContext; 
                          const ACLSID: WideString; AFlags: Integer): IDBWindow; safecall;
    function CreateContext(AContextType: Integer; const ACheckOut: WideString; AData: Integer): IDBContext; safecall;
    function FindWindow(const AContext: IDBContext; const ACLSID: WideString; AFlags: Integer): IDBWindow; safecall;
    function Get_DataBase: IDataBase; safecall;
    function OpenDatabase(const DBName: WideString; Params: OleVariant): WordBool; safecall;
    procedure CloseDatabase; safecall;
    procedure SendNotification(const Source: WideString; NotifyType: Integer; 
                               const NotifyCategory: WideString; DataType: Integer; 
                               DATA: OleVariant; const CheckOut: WideString); safecall;
    procedure AddNotificationHandler(const NotificationIntf: INotificationHandler; 
                                     NotifyType: Integer; const NotifyCategory: WideString; 
                                     DataType: Integer); safecall;
    procedure RemoveNotificationHandler(const NotificationIntf: INotificationHandler; 
                                        NotifyType: Integer; const NotifyCategory: WideString; 
                                        DataType: Integer); safecall;
    function Get_Title: WideString; safecall;
    function Get_Actions: IActions; safecall;
    function FindService(AIntfID: TGUID; BindedOnly: WordBool): IDispatch; safecall;
    function ShowWindow(const ACaption: WideString; const AContext: IDBContext; 
                        const ACLSID: WideString; AFlags: Integer): IDBWindow; safecall;
    function OpenURL(const URLString: WideString; Flags: Integer): Integer; safecall;
    function Get_FilePath: WideString; safecall;
    procedure AddActionHandler(const ActionHandler: IActionHandler; ActionCommand: Integer; 
                               Priority: Integer; DataDependent: WordBool); safecall;
    procedure RemoveActionHandler(const ActionHandler: IActionHandler; ActionCommand: Integer); safecall;
    function Get_HelpPath: WideString; safecall;
    function Get_SessionSecurityLabel: Integer; safecall;
    function Get_TypeIconsOffset: Integer; safecall;
    function GetTypeIconIndex(ATypeID: Integer): Integer; safecall;
    function OpenCheckout(const ACheckOut: WideString): IDBWindow; safecall;
    property ActiveWindow: IDBWindow read Get_ActiveWindow;
    property MainHandle: OLE_HANDLE read Get_MainHandle;
    property PluginCount: Integer read Get_PluginCount;
    property WindowCount: Integer read Get_WindowCount;
    property AppHandle: OLE_HANDLE read Get_AppHandle;
    property DataBase: IDataBase read Get_DataBase;
    property Title: WideString read Get_Title;
    property Actions: IActions read Get_Actions;
    property FilePath: WideString read Get_FilePath;
    property HelpPath: WideString read Get_HelpPath;
    property SessionSecurityLabel: Integer read Get_SessionSecurityLabel;
    property TypeIconsOffset: Integer read Get_TypeIconsOffset;
  end;

// *********************************************************************//
// Interface: IActions
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {22C267CC-D48E-43F0-94B9-AF03C949D103}
// *********************************************************************//
  IActions = interface(IDispatch)
    ['{22C267CC-D48E-43F0-94B9-AF03C949D103}']
    procedure SetActionEnabled(ActionCommand: Integer; ActionEnabled: WordBool); safecall;
    function IsActionEnabled(ActionCommand: Integer): WordBool; safecall;
    function ExecuteAction(ActionCommand: Integer; ActionData: OleVariant; 
                           var ActionResultData: OleVariant): ActionResults; safecall;
    function CreateAction(const ActionCaption: WideString; const ActionHint: WideString; 
                          const ActionShortcut: WideString; ActionIconIndex: Integer; 
                          ActionIcon: OleVariant): Integer; safecall;
    procedure SetActionVisible(ActionCommand: Integer; ActionVisible: WordBool); safecall;
    function IsActionVisible(ActionCommand: Integer): WordBool; safecall;
  end;

// *********************************************************************//
// Interface: ILoodsmanPlugin
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8A0AD8A6-791D-4211-B6B0-A8C25FA33209}
// *********************************************************************//
  ILoodsmanPlugin = interface(IDispatch)
    ['{8A0AD8A6-791D-4211-B6B0-A8C25FA33209}']
    function GetName: WideString; safecall;
    function GetPath: WideString; safecall;
    function GetCommandCount: Integer; safecall;
    function GetCommandCaption(Index: Integer): WideString; safecall;
    function GetCommandName(Index: Integer): WideString; safecall;
    function ExecCommand(const ACommandName: WideString): OleVariant; safecall;
  end;

// *********************************************************************//
// Interface: IFrameInfo
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {3002A3EA-E245-441E-BE6F-4E9878EDE382}
// *********************************************************************//
  IFrameInfo = interface(IDispatch)
    ['{3002A3EA-E245-441E-BE6F-4E9878EDE382}']
    function GetInTypes: WideString; safecall;
    function GetOutType: Integer; safecall;
    function GetFrameName: WideString; safecall;
    function GetFrameDescription: WideString; safecall;
    function IsRootFrame: WordBool; safecall;
  end;

// *********************************************************************//
// Interface: ILoodsmanFrame
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {43151655-95CC-40B4-9D92-A95E8DF52043}
// *********************************************************************//
  ILoodsmanFrame = interface(IDispatch)
    ['{43151655-95CC-40B4-9D92-A95E8DF52043}']
    procedure OnFrameCreate(const Context: IDBContext; const Container: IFrameContainer; 
                            const OwnerApplication: IDispatch); safecall;
    procedure OnFrameDestroy; safecall;
    procedure OnFrameActivate; safecall;
    procedure OnFrameDeactivate; safecall;
    procedure OnStartRefresh; safecall;
    procedure OnFrameClear; safecall;
    function OnCustomEvent(EventCode: Integer; EventData: OleVariant): OleVariant; safecall;
    procedure OnLoadOptions(const AFrameOptions: IOptions); safecall;
    procedure OnSaveOptions(const AFrameOptions: IOptions); safecall;
  end;

// *********************************************************************//
// Interface: IFrameContainer
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {540CAE0E-987D-4429-837D-1A4A9A28192F}
// *********************************************************************//
  IFrameContainer = interface(IDispatch)
    ['{540CAE0E-987D-4429-837D-1A4A9A28192F}']
    function Get_ParentFrame: IFrameContainer; safecall;
    procedure StartRefresh(AChildrenOnly: WordBool); safecall;
    function Get_IsRoot: WordBool; safecall;
    function Get_Content: IContent; safecall;
    procedure ChangeContent(DefaultTimeout: WordBool; Timeout: SYSUINT); safecall;
    function Get_Level: Integer; safecall;
    function Get_FrameKey: WideString; safecall;
    function Get_Editing: WordBool; safecall;
    function Get_LayoutName: WideString; safecall;
    procedure Validate(AValid: WordBool); safecall;
    property ParentFrame: IFrameContainer read Get_ParentFrame;
    property IsRoot: WordBool read Get_IsRoot;
    property Content: IContent read Get_Content;
    property Level: Integer read Get_Level;
    property FrameKey: WideString read Get_FrameKey;
    property Editing: WordBool read Get_Editing;
    property LayoutName: WideString read Get_LayoutName;
  end;

// *********************************************************************//
// Interface: IContent
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {3F471E54-37F4-43C6-BA40-28FFCB2892DB}
// *********************************************************************//
  IContent = interface(IDispatch)
    ['{3F471E54-37F4-43C6-BA40-28FFCB2892DB}']
    function Get_Selected: OleVariant; safecall;
    function Get_Focused: OleVariant; safecall;
    function Get_SelectedCount: Integer; safecall;
    function SelectedByIndex(AIndex: Integer): OleVariant; safecall;
    function Get_ContentType: Integer; safecall;
    function Get_ItemCount: Integer; safecall;
    function ItemByIndex(AIndex: Integer): OleVariant; safecall;
    property Selected: OleVariant read Get_Selected;
    property Focused: OleVariant read Get_Focused;
    property SelectedCount: Integer read Get_SelectedCount;
    property ContentType: Integer read Get_ContentType;
    property ItemCount: Integer read Get_ItemCount;
  end;

// *********************************************************************//
// Interface: IOptions
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F64CF2A2-E862-4365-B20F-19E9A5BE0038}
// *********************************************************************//
  IOptions = interface(IDispatch)
    ['{F64CF2A2-E862-4365-B20F-19E9A5BE0038}']
    procedure SetValue(const ASectionName: WideString; const AValueName: WideString; 
                       AValue: OleVariant); safecall;
    function GetValue(const ASectionName: WideString; const AValueName: WideString; 
                      ADefaultValue: OleVariant): OleVariant; safecall;
    procedure DeleteSection(const ASectionName: WideString); safecall;
    procedure DeleteValue(const ASectionName: WideString; const AValueName: WideString; 
                          ADeleteEmptySection: WordBool); safecall;
    function SectionExists(const ASectionName: WideString): WordBool; safecall;
    function ValueExists(const ASectionName: WideString; const AValueName: WideString): WordBool; safecall;
  end;

// *********************************************************************//
// Interface: IActionHandler
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9827725B-F4DE-4EDA-B37D-2C09710722B5}
// *********************************************************************//
  IActionHandler = interface(IDispatch)
    ['{9827725B-F4DE-4EDA-B37D-2C09710722B5}']
    procedure OnActionExecute(ActionCommand: Integer; ActionData: OleVariant; 
                              var ActionResultData: OleVariant; out ActionResult: ActionResults); safecall;
    procedure OnCheckActions(const Actions: IActions); safecall;
  end;

// *********************************************************************//
// Interface: IApplicationMenu
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9758DAA9-74D9-4A13-95EB-356F3FE66073}
// *********************************************************************//
  IApplicationMenu = interface(IDispatch)
    ['{9758DAA9-74D9-4A13-95EB-356F3FE66073}']
    function GetMenuBar(AIndex: Integer; ABarType: Integer): IMenuBar; safecall;
    function GetMenuBarByText(const AText: WideString; ABarType: Integer; ACreate: WordBool): IMenuBar; safecall;
    function CreateMenuItem(const MenuItemID: WideString; const MenuCaption: WideString; 
                            MenuItemType: MenuItemTypes; const Description: WideString; 
                            ActionCommand: Integer): Integer; safecall;
    function MenuItemExists(const MenuItemID: WideString): WordBool; safecall;
    function GetMenuBarCount(ABarType: Integer): Integer; safecall;
    function GetItemByText(const AText: WideString): IMenuItem; safecall;
  end;

// *********************************************************************//
// Interface: INotification
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {753BE7FF-88BB-446A-92C0-BE79EFA7400C}
// *********************************************************************//
  INotification = interface(IDispatch)
    ['{753BE7FF-88BB-446A-92C0-BE79EFA7400C}']
    function Get_NotifyType: Integer; safecall;
    function Get_NotifyCategory: WideString; safecall;
    function Get_DataType: Integer; safecall;
    function Get_DATA: OleVariant; safecall;
    function Get_CheckOut: WideString; safecall;
    function Get_Source: WideString; safecall;
    property NotifyType: Integer read Get_NotifyType;
    property NotifyCategory: WideString read Get_NotifyCategory;
    property DataType: Integer read Get_DataType;
    property DATA: OleVariant read Get_DATA;
    property CheckOut: WideString read Get_CheckOut;
    property Source: WideString read Get_Source;
  end;

// *********************************************************************//
// Interface: INotificationHandler
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {52A780D4-B5CA-4A30-9CBE-739D98F9D528}
// *********************************************************************//
  INotificationHandler = interface(IDispatch)
    ['{52A780D4-B5CA-4A30-9CBE-739D98F9D528}']
    procedure OnNotify(const Notification: INotification); safecall;
  end;

// *********************************************************************//
// Interface: IMenuBar
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {6FC203EF-B841-47E1-962B-E7B0DCA1EA4D}
// *********************************************************************//
  IMenuBar = interface(IDispatch)
    ['{6FC203EF-B841-47E1-962B-E7B0DCA1EA4D}']
    function Get_Caption: WideString; safecall;
    function Get_Visible: WordBool; safecall;
    procedure Set_Visible(Value: WordBool); safecall;
    function Get_MenuItemCount: Integer; safecall;
    function GetMenuItem(AIndex: Integer): IMenuItem; safecall;
    function AddMenuItem(const MenuItemID: WideString; Index: Integer; BeginGroup: WordBool): IMenuItem; safecall;
    function GetItemByText(const AText: WideString): IMenuItem; safecall;
    function CreateMenuItem(const MenuItemID: WideString; const MenuCaption: WideString; 
                            MenuItemType: MenuItemTypes; const Description: WideString; 
                            ActionCommand: Integer; Index: Integer; BeginGroup: WordBool): IMenuItem; safecall;
    procedure ClearMenuItems; safecall;
    property Caption: WideString read Get_Caption;
    property Visible: WordBool read Get_Visible write Set_Visible;
    property MenuItemCount: Integer read Get_MenuItemCount;
  end;

// *********************************************************************//
// Interface: IMenuItem
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {E778343E-D2DF-4698-B57F-C5377B6E1845}
// *********************************************************************//
  IMenuItem = interface(IDispatch)
    ['{E778343E-D2DF-4698-B57F-C5377B6E1845}']
    function Get_Caption: WideString; safecall;
    function Get_Action: Integer; safecall;
    function Get_Enabled: WordBool; safecall;
    procedure Set_Enabled(Value: WordBool); safecall;
    function Get_MenuItemCount: Integer; safecall;
    function GetMenuItem(AIndex: Integer): IMenuItem; safecall;
    function Get_Icon: Integer; safecall;
    procedure Set_Icon(Value: Integer); safecall;
    function Get_BeginGroup: WordBool; safecall;
    procedure Set_BeginGroup(Value: WordBool); safecall;
    function Get_Visible: WordBool; safecall;
    procedure Set_Visible(Value: WordBool); safecall;
    function Get_ItemType: MenuItemTypes; safecall;
    function Get_MenuItemID: WideString; safecall;
    function AddMenuItem(const MenuItemID: WideString; Index: Integer; BeginGroup: WordBool): IMenuItem; safecall;
    function GetItemByText(const AText: WideString): IMenuItem; safecall;
    function CreateMenuItem(const MenuItemID: WideString; const MenuCaption: WideString; 
                            MenuItemType: MenuItemTypes; const Description: WideString; 
                            ActionCommand: Integer; Index: Integer; BeginGroup: WordBool): IMenuItem; safecall;
    procedure ClearMenuItems; safecall;
    property Caption: WideString read Get_Caption;
    property Action: Integer read Get_Action;
    property Enabled: WordBool read Get_Enabled write Set_Enabled;
    property MenuItemCount: Integer read Get_MenuItemCount;
    property Icon: Integer read Get_Icon write Set_Icon;
    property BeginGroup: WordBool read Get_BeginGroup write Set_BeginGroup;
    property Visible: WordBool read Get_Visible write Set_Visible;
    property ItemType: MenuItemTypes read Get_ItemType;
    property MenuItemID: WideString read Get_MenuItemID;
  end;

// *********************************************************************//
// Interface: ILoodsmanService
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {67927DBE-4A12-4785-9D36-F72E7299884B}
// *********************************************************************//
  ILoodsmanService = interface(IDispatch)
    ['{67927DBE-4A12-4785-9D36-F72E7299884B}']
    procedure OnBindService(const OwnerApplication: IDispatch); safecall;
    procedure OnUnbindService; safecall;
    procedure OnOpenDatabase(const Connection: IDispatch; const WBSSystem: IDispatch; 
                             const DataBase: IDataBase); safecall;
    procedure OnCloseDatabase(const DataBase: IDataBase); safecall;
  end;

// *********************************************************************//
// Interface: IServiceInfo
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8409E9CD-B499-4C91-B06F-95741911B226}
// *********************************************************************//
  IServiceInfo = interface(IDispatch)
    ['{8409E9CD-B499-4C91-B06F-95741911B226}']
    function GetServiceName: WideString; safecall;
    function GetServiceDescription: WideString; safecall;
  end;

implementation

end.
