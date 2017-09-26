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

// $Rev: 17244 $
// File generated on 26.09.2017 13:55:58 from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\Program Files\ASCON\Loodsman\Client\Loodsman.exe (1)
// LIBID: {7CC86059-0262-44D5-9AA3-033DB38F11EF}
// LCID: 0
// Helpfile: 
// HelpString: Loodsman Client Library
// DepndLst: 
//   (1) v2.0 stdole, (C:\WINDOWS\system32\STDOLE2.TLB)
//   (2) v1.0 BOSimple, (C:\Program Files\Common Files\ASCON Shared\BOSimple.dll)
//   (3) v1.0 PDMObjects, (C:\Program Files\ASCON\Loodsman\Client\PDMObjects.dll)
//   (4) v1.0 Ask, (C:\Program Files\Common Files\ASCON Shared\LOODSMAN\Ask.dll)
//   (5) v1.0 DataProvider, (C:\Program Files\Common Files\ASCON Shared\LOODSMAN\DataProvider.dll)
//   (6) v1.0 LoodsmanObjects, (C:\Program Files\Common Files\ASCON Shared\LOODSMAN\LoodsmanObjects.dll)
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
{$ALIGN 4}
interface

uses Windows, ActiveX, Ask_TLB, BOSimple_TLB, Classes, Graphics, OleCtrls, OleServer, DataProvider_TLB, LoodsmanObjects_TLB, PDMObjects_TLB, Variants;
  

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
  IID_IObjectDialogFrame: TGUID = '{E12DC3E0-DF63-4066-901E-25D06771818F}';
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
  CLASS_CoApplicationMenu: TGUID = '{5D67AC53-E593-4A97-BE13-68BFD7643DD3}';
  IID_IObjectDialog: TGUID = '{ACFF77A4-A545-4247-9DAA-3E5DC43E19A0}';
  CLASS_CoObjectDialog: TGUID = '{CC740106-3602-4D8B-B25D-9342151EB112}';
  IID_ILoodsmanClientUtils: TGUID = '{7B1ADD83-D2B5-4A79-93D0-69D54071EE7F}';
  IID_IPDMClipboard: TGUID = '{CDE4952D-AAC4-47A3-94D4-355F1AEBB8B1}';
  IID_IVersionHintParams: TGUID = '{825E6E48-9CF4-4B0D-ADD6-90FB99490EC7}';
  CLASS_CoLCImageList: TGUID = '{0DEB0B26-9D46-427D-A72C-A4333C066319}';

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

// Constants for enum MetaEntity
type
  MetaEntity = TOleEnum;
const
  tmeTypes = $00000000;
  tmeStates = $00000001;
  tmeLinks = $00000002;
  tmeInverseLinks = $00000003;
  tmeAttrs = $00000004;

// Constants for enum VersionHintFields
type
  VersionHintFields = TOleEnum;
const
  hfType = $00000000;
  hfVersion = $00000001;
  hfSource = $00000002;
  hfState = $00000003;
  hfAccess = $00000004;
  hfLock = $00000005;
  hfCreated = $00000006;
  hfModified = $00000007;
  hfChanged = $00000008;
  hfSecLabel = $00000009;

type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  ILoodsman8 = interface;
  ILoodsman8Disp = dispinterface;
  IConnectSP = interface;
  IConnectSPDisp = dispinterface;
  ISocketConnect = interface;
  ISocketConnectDisp = dispinterface;
  IWebConnect = interface;
  IWebConnectDisp = dispinterface;
  ISQLAutorization = interface;
  ISQLAutorizationDisp = dispinterface;
  IConnectDB = interface;
  IConnectDBDisp = dispinterface;
  IMetodsWorkObject = interface;
  IMetodsWorkObjectDisp = dispinterface;
  IOutlookBar = interface;
  IOutlookBarDisp = dispinterface;
  IConnectDBActive = interface;
  IConnectDBActiveDisp = dispinterface;
  ISaveDocument = interface;
  ISaveDocumentDisp = dispinterface;
  IRunMetods = interface;
  IRunMetodsDisp = dispinterface;
  IPluginCall = interface;
  IPluginCallDisp = dispinterface;
  IDocumentViewer = interface;
  IDocumentViewerDisp = dispinterface;
  IDataBase = interface;
  IDataBaseDisp = dispinterface;
  IDBWindow = interface;
  IDBWindowDisp = dispinterface;
  IDBContext = interface;
  IDBContextDisp = dispinterface;
  ILoodsmanApplication = interface;
  ILoodsmanApplicationDisp = dispinterface;
  IActions = interface;
  IActionsDisp = dispinterface;
  ILoodsmanPlugin = interface;
  ILoodsmanPluginDisp = dispinterface;
  IFrameInfo = interface;
  IFrameInfoDisp = dispinterface;
  ILoodsmanFrame = interface;
  ILoodsmanFrameDisp = dispinterface;
  IObjectDialogFrame = interface;
  IObjectDialogFrameDisp = dispinterface;
  IFrameContainer = interface;
  IFrameContainerDisp = dispinterface;
  IContent = interface;
  IContentDisp = dispinterface;
  IOptions = interface;
  IOptionsDisp = dispinterface;
  IActionHandler = interface;
  IActionHandlerDisp = dispinterface;
  IApplicationMenu = interface;
  IApplicationMenuDisp = dispinterface;
  INotification = interface;
  INotificationDisp = dispinterface;
  INotificationHandler = interface;
  INotificationHandlerDisp = dispinterface;
  IMenuBar = interface;
  IMenuBarDisp = dispinterface;
  IMenuItem = interface;
  IMenuItemDisp = dispinterface;
  ILoodsmanService = interface;
  ILoodsmanServiceDisp = dispinterface;
  IServiceInfo = interface;
  IServiceInfoDisp = dispinterface;
  IObjectDialog = interface;
  IObjectDialogDisp = dispinterface;
  ILoodsmanClientUtils = interface;
  ILoodsmanClientUtilsDisp = dispinterface;
  IPDMClipboard = interface;
  IPDMClipboardDisp = dispinterface;
  IVersionHintParams = interface;
  IVersionHintParamsDisp = dispinterface;

  IDataSet = DataProvider_TLB.IDataSet;

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
  CoSimpleAPI = ISimpleAPI2;
  CoDataSet = IDataSet;
  CoClientAsyncTask = IDispatch;
  CoOptions = IOptions;
  CoDBContext = IDBContext;
  CoFrameContainer = IFrameContainer;
  CoNotification = INotification;
  CoMenuBar = IMenuBar;
  CoMenuItem = IMenuItem;
  CoActions = IActions;
  LooApplication = ILoodsmanApplication;
  CoApplicationMenu = IApplicationMenu;
  CoObjectDialog = IObjectDialog;
  CoLCImageList = IImageList;


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
// DispIntf:  ILoodsman8Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {88222733-C7AD-4152-B0D8-CFC48EF25344}
// *********************************************************************//
  ILoodsman8Disp = dispinterface
    ['{88222733-C7AD-4152-B0D8-CFC48EF25344}']
    procedure sResult; dispid 7;
    procedure lnDialogSelectSP(AppHandle: SYSINT); dispid 11;
    property lnGetConnectSP[inTypeConnect: Integer; out inReturnCode: OleVariant; 
                            out stErrorMessage: OleVariant]: IConnectSP readonly dispid 10;
    property lnGetConnectDB[inTypeConnect: Integer; out inReturnCode: OleVariant; 
                            out stErrorMessage: OleVariant]: IConnectDB readonly dispid 13;
    property lnGetConnectDBActive[out inReturnCode: OleVariant; out stErrorMessage: OleVariant]: IConnectDBActive readonly dispid 2;
    property lnGetIOutlookBar: IOutlookBar readonly dispid 6;
    property lnSetFormat[out inReturnCode: OleVariant; out stErrorMessage: OleVariant]: Integer dispid 5;
    procedure Quit; dispid 4;
    property lnStatusOfExhibit: Integer dispid 3;
    property lnMetodsWorkObject: IMetodsWorkObject readonly dispid 1;
    procedure lnCheckConnectLN; dispid 8;
    procedure lnWait(const stNameMetod: WideString); dispid 9;
    property lnRunMetods: IRunMetods readonly dispid 12;
    property lnMessageDlg[const stMessage: WideString; inTypeMessage: SYSINT]: Integer readonly dispid 14;
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
// DispIntf:  IConnectSPDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {74AA1156-3A12-4021-954E-32DC1BF4D76F}
// *********************************************************************//
  IConnectSPDisp = dispinterface
    ['{74AA1156-3A12-4021-954E-32DC1BF4D76F}']
    property vConnectionType: Integer writeonly dispid 2;
    property vDCOMConnect: WideString writeonly dispid 3;
    property mGetSocketConnect: ISocketConnect readonly dispid 8;
    property mGetWebConnect: IWebConnect readonly dispid 9;
    property Update: Integer readonly dispid 1;
    property lnTestConnect[var stValue: WideString]: SYSINT readonly dispid 6;
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
// DispIntf:  ISocketConnectDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0B5E03EE-9FAA-48F2-BCFA-DC6567E3424F}
// *********************************************************************//
  ISocketConnectDisp = dispinterface
    ['{0B5E03EE-9FAA-48F2-BCFA-DC6567E3424F}']
    property scServerAlias: WideString writeonly dispid 1;
    property scAddress: WideString writeonly dispid 2;
    property scPort: WideString writeonly dispid 3;
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
// DispIntf:  IWebConnectDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A805C729-0233-4D9B-A5BE-A0F80158D182}
// *********************************************************************//
  IWebConnectDisp = dispinterface
    ['{A805C729-0233-4D9B-A5BE-A0F80158D182}']
    property scServerAlias: WideString writeonly dispid 1;
    property wcURL: WideString writeonly dispid 2;
    property wcUser: WideString writeonly dispid 3;
    property wcPasswords: WideString writeonly dispid 4;
    property wcUseCheckProxy: Integer writeonly dispid 5;
    property wcProxy: WideString writeonly dispid 6;
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
// DispIntf:  ISQLAutorizationDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {5DC7E3F8-57E4-4991-B3FA-C0CD0613D7E4}
// *********************************************************************//
  ISQLAutorizationDisp = dispinterface
    ['{5DC7E3F8-57E4-4991-B3FA-C0CD0613D7E4}']
    property sqlaUserName: WideString writeonly dispid 1;
    property sqlaPasswords: WideString writeonly dispid 2;
    property sqlaSavePasswords: Integer writeonly dispid 3;
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
// DispIntf:  IConnectDBDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {25BDC8B8-72DA-4DCD-9B86-4DC812FA3D64}
// *********************************************************************//
  IConnectDBDisp = dispinterface
    ['{25BDC8B8-72DA-4DCD-9B86-4DC812FA3D64}']
    property NameBaseConnect: WideString writeonly dispid 1;
    property TypeAutorization: Integer writeonly dispid 2;
    property mGetSQLAutorization: ISQLAutorization readonly dispid 3;
    property Update[inStateDB: Integer]: Integer readonly dispid 5;
    property lnMetodsWorkObject: IMetodsWorkObject readonly dispid 12;
    procedure lnGetDBProperties(out inReturnCode: OleVariant; out stErrorMessage: OleVariant; 
                                const stNameDB: WideString; inSetFormat: Integer; 
                                out DATA: OleVariant; out inRecsOut: SYSINT); dispid 4;
    property lnRunMetods: IRunMetods readonly dispid 6;
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
    procedure lnImportFileByObject(out inReturnCode: OleVariant; out stErrorMessage: OleVariant; 
                                   const stFilter: WideString; Flags: Integer; Extract: WordBool; 
                                   const Hint: WideString; out DATA: OleVariant); safecall;
    property lnSaveDocument: ISaveDocument read Get_lnSaveDocument;
  end;

// *********************************************************************//
// DispIntf:  IMetodsWorkObjectDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {3310D9AB-FC52-4404-A56A-2DE38B11D47E}
// *********************************************************************//
  IMetodsWorkObjectDisp = dispinterface
    ['{3310D9AB-FC52-4404-A56A-2DE38B11D47E}']
    procedure lnGetInfoAboutVersion(var inReturnCode: OleVariant; var stErrorMessage: OleVariant; 
                                    const stType: WideString; const stProduct: WideString; 
                                    const stVersion: WideString; inIdVersion: SYSINT; 
                                    inMode: Integer; inSetFormat: Integer; var DATA: OleVariant; 
                                    var inRecsOut: SYSINT); dispid 1;
    procedure lnGetLinkedObjectsEx(var inReturnCode: OleVariant; var stErrorMessage: OleVariant; 
                                   const stTypeName: WideString; const stProductName: WideString; 
                                   const stVersionNumber: WideString; const stLinkType: WideString; 
                                   boInverse: Integer; boFullLink: Integer; 
                                   boGroupByProduct: Integer; boForTree: Integer; 
                                   inSetFormat: Integer; var DATA: OleVariant; var inRecsOut: SYSINT); dispid 2;
    procedure lnGetLinkedFast(var inReturnCode: OleVariant; var stErrorMessage: OleVariant; 
                              inIdVersion: SYSINT; const stLinkType: WideString; 
                              inSetFormat: Integer; var DATA: OleVariant; var inRecsOut: SYSINT); dispid 4;
    procedure lnGetLinkedObjectsAndFiles(out inReturnCode: OleVariant; 
                                         out stErrorMessage: OleVariant; 
                                         const stTypeName: WideString; 
                                         const stProductName: WideString; 
                                         const stVersionNumber: WideString; 
                                         const stLinkType: WideString; boFullLink: Integer; 
                                         boViewOnlyDocuments: Integer; inSetFormat: Integer; 
                                         out DATA: OleVariant; out inRecsOut: SYSINT); dispid 3;
    procedure lnGetInfoAboutFile(out inReturnCode: OleVariant; out stErrorMessage: OleVariant; 
                                 stFileName: Integer; stFullFilePath: Integer; 
                                 inSetFormat: Integer; out DATA: OleVariant; out inRecsOut: SYSINT); dispid 6;
    procedure lnGetInfoAboutType(out inReturnCode: OleVariant; out stErrorMessage: OleVariant; 
                                 const stType: WideString; inMode: Integer; inSetFormat: Integer; 
                                 out DATA: OleVariant; out inRecsOut: SYSINT); dispid 10;
    procedure lnGotoObject(out inReturnCode: OleVariant; out stErrorMessage: OleVariant; 
                           const stNameDB: WideString; const stNameCheck: WideString; 
                           const stType: WideString; const stProduct: WideString; 
                           const stVersion: WideString; inIdVersion: SYSINT); dispid 5;
    procedure lnSelectObject(out inReturnCode: OleVariant; out stErrorMessage: OleVariant; 
                             inSetFormat: Integer; out DATA: OleVariant; out inRecsOut: SYSINT); dispid 7;
    procedure lnImportObjectWithFile(out inReturnCode: OleVariant; out stErrorMessage: OleVariant; 
                                     inSetFormat: Integer; out DATA: OleVariant; 
                                     out inRecsOut: SYSINT); dispid 11;
    procedure lnImportFileWithFile(out inReturnCode: OleVariant; out stErrorMessage: OleVariant; 
                                   const stFilter: WideString; inTypeOpenFile: Integer; 
                                   inSetFormat: Integer; inLockMultiExtract: Integer; 
                                   out DATA: OleVariant; out inRecsOut: SYSINT); dispid 13;
    procedure lnOpenDocument(out inReturnCode: OleVariant; out stErrorMessage: OleVariant; 
                             const stFilter: WideString; inSetFormat: Integer; 
                             out inCheckOut: Integer; out DATA: OleVariant; out inRecsOut: SYSINT); dispid 8;
    procedure lnExtractDocument(out inReturnCode: OleVariant; out stErrorMessage: OleVariant; 
                                const stFilter: WideString; inSetFormat: Integer; 
                                out inCheckOut: Integer; out DATA: OleVariant; 
                                out inRecsOut: SYSINT; const stHintMessage: WideString; 
                                inLockMultiExtract: Integer); dispid 12;
    property lnSaveDocument: ISaveDocument readonly dispid 15;
    procedure lnExtractDocumentFormShow(out inReturnCode: OleVariant; 
                                        out stErrorMessage: OleVariant; const stFilter: WideString; 
                                        inSetFormat: Integer; out inCheckOut: Integer; 
                                        out DATA: OleVariant; out inRecsOut: SYSINT; 
                                        const stHintMessage: WideString; 
                                        inLockMultiExtract: Integer; 
                                        const stCaptionMessage: WideString); dispid 9;
    procedure lnImportFileByObject(out inReturnCode: OleVariant; out stErrorMessage: OleVariant; 
                                   const stFilter: WideString; Flags: Integer; Extract: WordBool; 
                                   const Hint: WideString; out DATA: OleVariant); dispid 160;
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
// DispIntf:  IOutlookBarDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {6D3C83A2-C709-4A10-8F16-912CEE24D5B2}
// *********************************************************************//
  IOutlookBarDisp = dispinterface
    ['{6D3C83A2-C709-4A10-8F16-912CEE24D5B2}']
    procedure lnGetDesktop(out inReturnCode: OleVariant; out stErrorMessage: OleVariant; 
                           inSetFormat: Integer; out DATA: OleVariant; out inRecsOut: SYSINT); dispid 1;
    procedure lnGetDataBases(out inReturnCode: OleVariant; out stErrorMessage: OleVariant; 
                             inSetFormat: Integer; out DATA: OleVariant; out inRecsOut: SYSINT); dispid 2;
    procedure lnGetUserSets(out inReturnCode: OleVariant; out stErrorMessage: OleVariant; 
                            inSetFormat: Integer; out DATA: OleVariant; out inRecsOut: SYSINT); dispid 4;
    procedure lnGetFavorites(out inReturnCode: OleVariant; out stErrorMessage: OleVariant; 
                             inSetFormat: Integer; out DATA: OleVariant; out inRecsOut: SYSINT); dispid 5;
    property lnOpenObjDesktop[inOpenOutlookList: SYSINT; const stCheckName: WideString; 
                              const stNameDB: WideString]: IConnectDBActive readonly dispid 9;
    property lnOpenDataBase[inOpenOutlookList: SYSINT; const stNameDB: WideString]: IConnectDBActive readonly dispid 10;
    property lnOpenObjUserSets[inOpenOutlookList: SYSINT; const stUserSet: WideString; 
                               const stNameDB: WideString]: IConnectDBActive readonly dispid 11;
    property lnOpenObjFavorites[inOpenOutlookList: SYSINT; const stName: WideString; 
                                const stNameDB: WideString; inIdVersion: SYSINT]: IConnectDBActive readonly dispid 12;
    property lnGetConnectBDActive: IConnectDBActive readonly dispid 6;
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
// DispIntf:  IConnectDBActiveDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9BFF6226-1C52-4EBA-B00B-087558397C50}
// *********************************************************************//
  IConnectDBActiveDisp = dispinterface
    ['{9BFF6226-1C52-4EBA-B00B-087558397C50}']
    property lnMetodsWorkObject: IMetodsWorkObject readonly dispid 12;
    procedure lnGetDBProperties(out inReturnCode: OleVariant; out stErrorMessage: OleVariant; 
                                inSetFormat: Integer; out DATA: OleVariant; out inRecsOut: SYSINT); dispid 1;
    property lnRunMetods: IRunMetods readonly dispid 3;
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
// DispIntf:  ISaveDocumentDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {5A417D0C-4ACA-42A0-AEE1-32D56BA5CE1D}
// *********************************************************************//
  ISaveDocumentDisp = dispinterface
    ['{5A417D0C-4ACA-42A0-AEE1-32D56BA5CE1D}']
    procedure lnSaveDocument(out inReturnCode: OleVariant; out stErrorMessage: OleVariant; 
                             inSetFormat: Integer; DATA: OleVariant; inRecsIn: SYSINT; 
                             out DATAOut: OleVariant; out inRecsOut: SYSINT); dispid 13;
    procedure lnUpData(out inReturnCode: OleVariant; out stErrorMessage: OleVariant; 
                       inCheck: Integer; lnRunTime: Integer; lnWaitTime: Integer); dispid 1;
    procedure lnSaveDocumentFree; dispid 2;
    procedure lnSaveDocumentEx(out inReturnCode: OleVariant; out stErrorMessage: OleVariant; 
                               inSetFormat: Integer; DATA: OleVariant; inRecsIn: SYSINT; 
                               out DATAOut: OleVariant; out inRecsOut: SYSINT; Flags: Integer); dispid 201;
    function lnGetSaveStatus: Integer; dispid 202;
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
// DispIntf:  IRunMetodsDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {A274EEB2-800E-498F-9156-F3F6662B7359}
// *********************************************************************//
  IRunMetodsDisp = dispinterface
    ['{A274EEB2-800E-498F-9156-F3F6662B7359}']
    procedure lnCreate(out inReturnCode: OleVariant; out stErrorMessage: OleVariant); dispid 1;
    procedure lnRunMetod(out inReturnCode: OleVariant; out stErrorMessage: OleVariant; 
                         const stNameDB: WideString; const stNameCheck: WideString; 
                         const stMetodName: WideString; vParams: OleVariant; out DATA: OleVariant; 
                         out inRecsOut: SYSINT; inSetFormat: Integer); dispid 2;
    procedure lnFree; dispid 3;
    function lnRunMethod(const stMethod: WideString; vaParams: OleVariant): OleVariant; dispid 4;
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
// DispIntf:  IPluginCallDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {7779A0A3-1BF6-45C8-A536-21AD4B97E46D}
// *********************************************************************//
  IPluginCallDisp = dispinterface
    ['{7779A0A3-1BF6-45C8-A536-21AD4B97E46D}']
    function RunMethod(const stMetod: WideString; vaParams: OleVariant): OleVariant; dispid 1;
    function GetDataSet(const stMetod: WideString; vaParams: OleVariant): IDispatch; dispid 2;
    property DBName: WideString readonly dispid 3;
    property CheckOut: Integer readonly dispid 4;
    property AppHandle: OLE_HANDLE readonly dispid 5;
    property ClientHandle: OLE_HANDLE readonly dispid 6;
    property IdVersion: Integer readonly dispid 7;
    property stType: WideString readonly dispid 8;
    property stProduct: WideString readonly dispid 9;
    property stVersion: WideString readonly dispid 10;
    property IdParent: Integer readonly dispid 11;
    property stParentType: WideString readonly dispid 12;
    property stParentProduct: WideString readonly dispid 13;
    property stParentVersion: WideString readonly dispid 14;
    property IdLink: Integer readonly dispid 15;
    property SelectedParent: WordBool readonly dispid 16;
    property Selected: IPDMObject readonly dispid 201;
    property WFSelected: IWFObject readonly dispid 202;
    property AsyncTask: IDispatch readonly dispid 203;
    property MainHandle: OLE_HANDLE readonly dispid 204;
    property ServerName: WideString readonly dispid 205;
    property ParentObject: IPDMObject readonly dispid 206;
    property LinkName: WideString readonly dispid 207;
    property Content: IContent readonly dispid 208;
    property WBSSystem: IDispatch readonly dispid 209;
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
// DispIntf:  IDocumentViewerDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {27B59D50-87FA-4017-B8C1-5F02D90EF1E7}
// *********************************************************************//
  IDocumentViewerDisp = dispinterface
    ['{27B59D50-87FA-4017-B8C1-5F02D90EF1E7}']
    procedure Init(const DBWindow: IDBWindow); dispid 201;
    procedure Finalize; dispid 202;
    procedure Clear; dispid 203;
    procedure Refresh(const PDMDocument: IPDMDocument); dispid 204;
    procedure Command(DocumentCommand: DocumentViewerCommands; MainWindow: OLE_HANDLE); dispid 205;
    property Document: IPDMDocument readonly dispid 206;
    property Features: Integer readonly dispid 207;
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
    procedure RefreshCheckouts; safecall;
    procedure RefreshUserSets; safecall;
    function Get_UserAdmin: WordBool; safecall;
    property Name: WideString read Get_Name;
    property CurrentUser: ILoodsmanUser read Get_CurrentUser;
    property MaxLabel: Integer read Get_MaxLabel;
    property ReadOnlyDB: WordBool read Get_ReadOnlyDB;
    property UserAdmin: WordBool read Get_UserAdmin;
  end;

// *********************************************************************//
// DispIntf:  IDataBaseDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {84555B43-9101-41CA-AAB3-0F176A0AF30C}
// *********************************************************************//
  IDataBaseDisp = dispinterface
    ['{84555B43-9101-41CA-AAB3-0F176A0AF30C}']
    property Name: WideString readonly dispid 201;
    property CurrentUser: ILoodsmanUser readonly dispid 202;
    property MaxLabel: Integer readonly dispid 203;
    function CheckoutObjects(IDs: OleVariant; const ACheckOut: WideString; AAddToRoot: WordBool): WideString; dispid 204;
    property ReadOnlyDB: WordBool readonly dispid 205;
    procedure RefreshCheckouts; dispid 206;
    procedure RefreshUserSets; dispid 207;
    property UserAdmin: WordBool readonly dispid 208;
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
    function Locate(const Location: WideString): Integer; safecall;
    property DataBase: IDataBase read Get_DataBase;
    property CheckOutMode: WordBool read Get_CheckOutMode;
    property WindowHandle: OLE_HANDLE read Get_WindowHandle;
    property Context: IDBContext read Get_Context;
    property Content: IContent read Get_Content;
  end;

// *********************************************************************//
// DispIntf:  IDBWindowDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8A2DF0A5-19C6-4B21-AD73-7F8718CA37EE}
// *********************************************************************//
  IDBWindowDisp = dispinterface
    ['{8A2DF0A5-19C6-4B21-AD73-7F8718CA37EE}']
    property DataBase: IDataBase readonly dispid 201;
    property CheckOutMode: WordBool readonly dispid 202;
    property WindowHandle: OLE_HANDLE readonly dispid 203;
    procedure Close; dispid 204;
    property Context: IDBContext readonly dispid 205;
    procedure Activate; dispid 206;
    property Content: IContent readonly dispid 207;
    function Locate(const Location: WideString): Integer; dispid 208;
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
// DispIntf:  IDBContextDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {58BAB84A-4E14-4D67-A29E-6FF764FD9FFA}
// *********************************************************************//
  IDBContextDisp = dispinterface
    ['{58BAB84A-4E14-4D67-A29E-6FF764FD9FFA}']
    property ContextType: Integer readonly dispid 201;
    function GetContextValue(const AValueName: WideString): OleVariant; dispid 202;
    property Connection: IDispatch readonly dispid 203;
    property WBSSystem: IDispatch readonly dispid 204;
    procedure SetContextValue(const AValueName: WideString; AValue: OleVariant); dispid 205;
    property ValueCount: Integer readonly dispid 206;
    function GetValueName(AIndex: Integer): WideString; dispid 207;
    function IsEqual(const AContext: IDBContext): WordBool; dispid 208;
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
    function GetAppMenu: IApplicationMenu; safecall;
    function Get_MainImageList: IImageList; safecall;
    function GetLogger(const Name: WideString): ILoodsmanLogger; safecall;
    function GetCheckOutConnection(const Name: WideString): ISimpleAPI2; safecall;
    function Get_PDMModel: IPDMEntityManager; safecall;
    function Get_CurrentSPName: WideString; safecall;
    function Get_LoodsmanClientUtils: ILoodsmanClientUtils; safecall;
    function MsgBox(const AText: WideString; AFlags: Integer): Integer; safecall;
    function GetClipboard(ObjectCode: Integer): IDispatch; safecall;
    function GetIniFile(ALocal: WordBool): WideString; safecall;
    function GetClientEdition: Integer; safecall;
    function GetFeature(FeatureID: Integer): Integer; safecall;
    function FindServiceByStrGuid(const AIntfID: WideString; BindedOnly: WordBool): IDispatch; safecall;
    function FindServiceByName(const AName: WideString; BindedOnly: WordBool): IDispatch; safecall;
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
    property MainImageList: IImageList read Get_MainImageList;
    property PDMModel: IPDMEntityManager read Get_PDMModel;
    property CurrentSPName: WideString read Get_CurrentSPName;
    property LoodsmanClientUtils: ILoodsmanClientUtils read Get_LoodsmanClientUtils;
  end;

// *********************************************************************//
// DispIntf:  ILoodsmanApplicationDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {C50527B3-98D4-4C81-BE85-8D9B04A625FC}
// *********************************************************************//
  ILoodsmanApplicationDisp = dispinterface
    ['{C50527B3-98D4-4C81-BE85-8D9B04A625FC}']
    procedure SetVisible(Value: WordBool); dispid 201;
    function GetVisible: WordBool; dispid 202;
    procedure Quit; dispid 203;
    procedure Activate; dispid 205;
    procedure Minimize; dispid 206;
    procedure Maximize; dispid 207;
    procedure Restore; dispid 208;
    function GetPlugin(Index: Integer): ILoodsmanPlugin; dispid 210;
    function GetPluginByName(const Name: WideString): ILoodsmanPlugin; dispid 211;
    procedure NotifyUser(const Header: WideString; const Text: WideString; NotifyKind: Integer; 
                         Reserved: Integer); dispid 212;
    procedure TileWindows(ATileMode: Integer); dispid 213;
    procedure CascadeWindows; dispid 214;
    property ActiveWindow: IDBWindow readonly dispid 215;
    property MainHandle: OLE_HANDLE readonly dispid 204;
    property PluginCount: Integer readonly dispid 209;
    property WindowCount: Integer readonly dispid 216;
    function GetWindow(Index: Integer): IDBWindow; dispid 217;
    property AppHandle: OLE_HANDLE readonly dispid 218;
    function CreateWindow(const ACaption: WideString; const AContext: IDBContext; 
                          const ACLSID: WideString; AFlags: Integer): IDBWindow; dispid 219;
    function CreateContext(AContextType: Integer; const ACheckOut: WideString; AData: Integer): IDBContext; dispid 220;
    function FindWindow(const AContext: IDBContext; const ACLSID: WideString; AFlags: Integer): IDBWindow; dispid 221;
    property DataBase: IDataBase readonly dispid 222;
    function OpenDatabase(const DBName: WideString; Params: OleVariant): WordBool; dispid 223;
    procedure CloseDatabase; dispid 224;
    procedure SendNotification(const Source: WideString; NotifyType: Integer; 
                               const NotifyCategory: WideString; DataType: Integer; 
                               DATA: OleVariant; const CheckOut: WideString); dispid 225;
    procedure AddNotificationHandler(const NotificationIntf: INotificationHandler; 
                                     NotifyType: Integer; const NotifyCategory: WideString; 
                                     DataType: Integer); dispid 226;
    procedure RemoveNotificationHandler(const NotificationIntf: INotificationHandler; 
                                        NotifyType: Integer; const NotifyCategory: WideString; 
                                        DataType: Integer); dispid 227;
    property Title: WideString readonly dispid 228;
    property Actions: IActions readonly dispid 232;
    function FindService(AIntfID: {??TGUID}OleVariant; BindedOnly: WordBool): IDispatch; dispid 233;
    function ShowWindow(const ACaption: WideString; const AContext: IDBContext; 
                        const ACLSID: WideString; AFlags: Integer): IDBWindow; dispid 234;
    function OpenURL(const URLString: WideString; Flags: Integer): Integer; dispid 235;
    property FilePath: WideString readonly dispid 236;
    procedure AddActionHandler(const ActionHandler: IActionHandler; ActionCommand: Integer; 
                               Priority: Integer; DataDependent: WordBool); dispid 229;
    procedure RemoveActionHandler(const ActionHandler: IActionHandler; ActionCommand: Integer); dispid 230;
    property HelpPath: WideString readonly dispid 231;
    property SessionSecurityLabel: Integer readonly dispid 237;
    property TypeIconsOffset: Integer readonly dispid 238;
    function GetTypeIconIndex(ATypeID: Integer): Integer; dispid 239;
    function OpenCheckout(const ACheckOut: WideString): IDBWindow; dispid 240;
    function GetAppMenu: IApplicationMenu; dispid 241;
    property MainImageList: IImageList readonly dispid 242;
    function GetLogger(const Name: WideString): ILoodsmanLogger; dispid 243;
    function GetCheckOutConnection(const Name: WideString): ISimpleAPI2; dispid 244;
    property PDMModel: IPDMEntityManager readonly dispid 245;
    property CurrentSPName: WideString readonly dispid 246;
    property LoodsmanClientUtils: ILoodsmanClientUtils readonly dispid 247;
    function MsgBox(const AText: WideString; AFlags: Integer): Integer; dispid 248;
    function GetClipboard(ObjectCode: Integer): IDispatch; dispid 249;
    function GetIniFile(ALocal: WordBool): WideString; dispid 250;
    function GetClientEdition: Integer; dispid 251;
    function GetFeature(FeatureID: Integer): Integer; dispid 252;
    function FindServiceByStrGuid(const AIntfID: WideString; BindedOnly: WordBool): IDispatch; dispid 253;
    function FindServiceByName(const AName: WideString; BindedOnly: WordBool): IDispatch; dispid 255;
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
    procedure SetActionCaption(ActionCommand: Integer; const NewCaption: WideString); safecall;
  end;

// *********************************************************************//
// DispIntf:  IActionsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {22C267CC-D48E-43F0-94B9-AF03C949D103}
// *********************************************************************//
  IActionsDisp = dispinterface
    ['{22C267CC-D48E-43F0-94B9-AF03C949D103}']
    procedure SetActionEnabled(ActionCommand: Integer; ActionEnabled: WordBool); dispid 201;
    function IsActionEnabled(ActionCommand: Integer): WordBool; dispid 202;
    function ExecuteAction(ActionCommand: Integer; ActionData: OleVariant; 
                           var ActionResultData: OleVariant): ActionResults; dispid 203;
    function CreateAction(const ActionCaption: WideString; const ActionHint: WideString; 
                          const ActionShortcut: WideString; ActionIconIndex: Integer; 
                          ActionIcon: OleVariant): Integer; dispid 204;
    procedure SetActionVisible(ActionCommand: Integer; ActionVisible: WordBool); dispid 205;
    function IsActionVisible(ActionCommand: Integer): WordBool; dispid 206;
    procedure SetActionCaption(ActionCommand: Integer; const NewCaption: WideString); dispid 207;
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
// DispIntf:  ILoodsmanPluginDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8A0AD8A6-791D-4211-B6B0-A8C25FA33209}
// *********************************************************************//
  ILoodsmanPluginDisp = dispinterface
    ['{8A0AD8A6-791D-4211-B6B0-A8C25FA33209}']
    function GetName: WideString; dispid 201;
    function GetPath: WideString; dispid 202;
    function GetCommandCount: Integer; dispid 203;
    function GetCommandCaption(Index: Integer): WideString; dispid 204;
    function GetCommandName(Index: Integer): WideString; dispid 205;
    function ExecCommand(const ACommandName: WideString): OleVariant; dispid 206;
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
// DispIntf:  IFrameInfoDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {3002A3EA-E245-441E-BE6F-4E9878EDE382}
// *********************************************************************//
  IFrameInfoDisp = dispinterface
    ['{3002A3EA-E245-441E-BE6F-4E9878EDE382}']
    function GetInTypes: WideString; dispid 201;
    function GetOutType: Integer; dispid 202;
    function GetFrameName: WideString; dispid 203;
    function GetFrameDescription: WideString; dispid 204;
    function IsRootFrame: WordBool; dispid 205;
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
// DispIntf:  ILoodsmanFrameDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {43151655-95CC-40B4-9D92-A95E8DF52043}
// *********************************************************************//
  ILoodsmanFrameDisp = dispinterface
    ['{43151655-95CC-40B4-9D92-A95E8DF52043}']
    procedure OnFrameCreate(const Context: IDBContext; const Container: IFrameContainer; 
                            const OwnerApplication: IDispatch); dispid 203;
    procedure OnFrameDestroy; dispid 204;
    procedure OnFrameActivate; dispid 205;
    procedure OnFrameDeactivate; dispid 206;
    procedure OnStartRefresh; dispid 207;
    procedure OnFrameClear; dispid 208;
    function OnCustomEvent(EventCode: Integer; EventData: OleVariant): OleVariant; dispid 209;
    procedure OnLoadOptions(const AFrameOptions: IOptions); dispid 210;
    procedure OnSaveOptions(const AFrameOptions: IOptions); dispid 211;
  end;

// *********************************************************************//
// Interface: IObjectDialogFrame
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {E12DC3E0-DF63-4066-901E-25D06771818F}
// *********************************************************************//
  IObjectDialogFrame = interface(IDispatch)
    ['{E12DC3E0-DF63-4066-901E-25D06771818F}']
    procedure OnDialogFrameCreate(const Connection: IDispatch; const OwnerApplication: IDispatch; 
                                  const ObjectDialog: IObjectDialog); safecall;
    procedure OnDialogFrameDestroy; safecall;
    procedure OnDialogShow(const DialogAttributes: IPDMObjectAttributeCollection; 
                           const DialogObject: IPDMObject; const DialogLink: IPDMLink; 
                           const DialogObjParent: IPDMObject; DialogMode: Integer; 
                           DialogTab: Integer); safecall;
    procedure OnDialogClose; safecall;
    procedure OnDialogParamsChanged(TypeID: Integer; StateID: Integer; LinkID: Integer; 
                                    const TypeName: WideString; const StateName: WideString; 
                                    const LinkName: WideString); safecall;
    procedure OnProductChanged(const Product: WideString); safecall;
    procedure OnChangeObjAccess(NewAccess: Integer); safecall;
    procedure OnActivateView(const View: WideString); safecall;
    procedure OnDeactivateView(const View: WideString); safecall;
    function OnGetViews(DialogMode: Integer; DialogTab: Integer): WideString; safecall;
    procedure OnDialogFrameRefresh; safecall;
    function OnBeforeSaveChanges(var DialogObject: IPDMObject; var DialogLink: IPDMLink; 
                                 NewObject: WordBool; DialogTab: Integer): Integer; safecall;
    function OnAfterSaveChanges(const DialogObject: IPDMObject; const DialogLink: IPDMLink; 
                                NewObject: WordBool; DialogTab: Integer): Integer; safecall;
  end;

// *********************************************************************//
// DispIntf:  IObjectDialogFrameDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {E12DC3E0-DF63-4066-901E-25D06771818F}
// *********************************************************************//
  IObjectDialogFrameDisp = dispinterface
    ['{E12DC3E0-DF63-4066-901E-25D06771818F}']
    procedure OnDialogFrameCreate(const Connection: IDispatch; const OwnerApplication: IDispatch; 
                                  const ObjectDialog: IObjectDialog); dispid 203;
    procedure OnDialogFrameDestroy; dispid 204;
    procedure OnDialogShow(const DialogAttributes: IPDMObjectAttributeCollection; 
                           const DialogObject: IPDMObject; const DialogLink: IPDMLink; 
                           const DialogObjParent: IPDMObject; DialogMode: Integer; 
                           DialogTab: Integer); dispid 205;
    procedure OnDialogClose; dispid 206;
    procedure OnDialogParamsChanged(TypeID: Integer; StateID: Integer; LinkID: Integer; 
                                    const TypeName: WideString; const StateName: WideString; 
                                    const LinkName: WideString); dispid 207;
    procedure OnProductChanged(const Product: WideString); dispid 208;
    procedure OnChangeObjAccess(NewAccess: Integer); dispid 209;
    procedure OnActivateView(const View: WideString); dispid 210;
    procedure OnDeactivateView(const View: WideString); dispid 211;
    function OnGetViews(DialogMode: Integer; DialogTab: Integer): WideString; dispid 212;
    procedure OnDialogFrameRefresh; dispid 213;
    function OnBeforeSaveChanges(var DialogObject: IPDMObject; var DialogLink: IPDMLink; 
                                 NewObject: WordBool; DialogTab: Integer): Integer; dispid 214;
    function OnAfterSaveChanges(const DialogObject: IPDMObject; const DialogLink: IPDMLink; 
                                NewObject: WordBool; DialogTab: Integer): Integer; dispid 215;
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
    function Get_MainForm: IDBWindow; safecall;
    procedure CheckActions; safecall;
    property ParentFrame: IFrameContainer read Get_ParentFrame;
    property IsRoot: WordBool read Get_IsRoot;
    property Content: IContent read Get_Content;
    property Level: Integer read Get_Level;
    property FrameKey: WideString read Get_FrameKey;
    property Editing: WordBool read Get_Editing;
    property LayoutName: WideString read Get_LayoutName;
    property MainForm: IDBWindow read Get_MainForm;
  end;

// *********************************************************************//
// DispIntf:  IFrameContainerDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {540CAE0E-987D-4429-837D-1A4A9A28192F}
// *********************************************************************//
  IFrameContainerDisp = dispinterface
    ['{540CAE0E-987D-4429-837D-1A4A9A28192F}']
    property ParentFrame: IFrameContainer readonly dispid 202;
    procedure StartRefresh(AChildrenOnly: WordBool); dispid 203;
    property IsRoot: WordBool readonly dispid 204;
    property Content: IContent readonly dispid 205;
    procedure ChangeContent(DefaultTimeout: WordBool; Timeout: SYSUINT); dispid 201;
    property Level: Integer readonly dispid 207;
    property FrameKey: WideString readonly dispid 206;
    property Editing: WordBool readonly dispid 208;
    property LayoutName: WideString readonly dispid 209;
    procedure Validate(AValid: WordBool); dispid 210;
    property MainForm: IDBWindow readonly dispid 211;
    procedure CheckActions; dispid 212;
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
// DispIntf:  IContentDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {3F471E54-37F4-43C6-BA40-28FFCB2892DB}
// *********************************************************************//
  IContentDisp = dispinterface
    ['{3F471E54-37F4-43C6-BA40-28FFCB2892DB}']
    property Selected: OleVariant readonly dispid 201;
    property Focused: OleVariant readonly dispid 202;
    property SelectedCount: Integer readonly dispid 203;
    function SelectedByIndex(AIndex: Integer): OleVariant; dispid 204;
    property ContentType: Integer readonly dispid 205;
    property ItemCount: Integer readonly dispid 206;
    function ItemByIndex(AIndex: Integer): OleVariant; dispid 207;
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
// DispIntf:  IOptionsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F64CF2A2-E862-4365-B20F-19E9A5BE0038}
// *********************************************************************//
  IOptionsDisp = dispinterface
    ['{F64CF2A2-E862-4365-B20F-19E9A5BE0038}']
    procedure SetValue(const ASectionName: WideString; const AValueName: WideString; 
                       AValue: OleVariant); dispid 201;
    function GetValue(const ASectionName: WideString; const AValueName: WideString; 
                      ADefaultValue: OleVariant): OleVariant; dispid 202;
    procedure DeleteSection(const ASectionName: WideString); dispid 203;
    procedure DeleteValue(const ASectionName: WideString; const AValueName: WideString; 
                          ADeleteEmptySection: WordBool); dispid 204;
    function SectionExists(const ASectionName: WideString): WordBool; dispid 205;
    function ValueExists(const ASectionName: WideString; const AValueName: WideString): WordBool; dispid 206;
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
// DispIntf:  IActionHandlerDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9827725B-F4DE-4EDA-B37D-2C09710722B5}
// *********************************************************************//
  IActionHandlerDisp = dispinterface
    ['{9827725B-F4DE-4EDA-B37D-2C09710722B5}']
    procedure OnActionExecute(ActionCommand: Integer; ActionData: OleVariant; 
                              var ActionResultData: OleVariant; out ActionResult: ActionResults); dispid 201;
    procedure OnCheckActions(const Actions: IActions); dispid 202;
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
    procedure SetAlertStatus(const AItemText: WideString; Level: Integer; const Hint: WideString); safecall;
    procedure SetNewItemCount(const AItemText: WideString; Count: Integer; const Hint: WideString); safecall;
    function GetItemByPath(const APath: WideString; ABarType: Integer): IMenuItem; safecall;
    function GenerateItemID: WideString; safecall;
  end;

// *********************************************************************//
// DispIntf:  IApplicationMenuDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9758DAA9-74D9-4A13-95EB-356F3FE66073}
// *********************************************************************//
  IApplicationMenuDisp = dispinterface
    ['{9758DAA9-74D9-4A13-95EB-356F3FE66073}']
    function GetMenuBar(AIndex: Integer; ABarType: Integer): IMenuBar; dispid 202;
    function GetMenuBarByText(const AText: WideString; ABarType: Integer; ACreate: WordBool): IMenuBar; dispid 203;
    function CreateMenuItem(const MenuItemID: WideString; const MenuCaption: WideString; 
                            MenuItemType: MenuItemTypes; const Description: WideString; 
                            ActionCommand: Integer): Integer; dispid 204;
    function MenuItemExists(const MenuItemID: WideString): WordBool; dispid 205;
    function GetMenuBarCount(ABarType: Integer): Integer; dispid 201;
    function GetItemByText(const AText: WideString): IMenuItem; dispid 206;
    procedure SetAlertStatus(const AItemText: WideString; Level: Integer; const Hint: WideString); dispid 207;
    procedure SetNewItemCount(const AItemText: WideString; Count: Integer; const Hint: WideString); dispid 208;
    function GetItemByPath(const APath: WideString; ABarType: Integer): IMenuItem; dispid 209;
    function GenerateItemID: WideString; dispid 210;
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
// DispIntf:  INotificationDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {753BE7FF-88BB-446A-92C0-BE79EFA7400C}
// *********************************************************************//
  INotificationDisp = dispinterface
    ['{753BE7FF-88BB-446A-92C0-BE79EFA7400C}']
    property NotifyType: Integer readonly dispid 201;
    property NotifyCategory: WideString readonly dispid 202;
    property DataType: Integer readonly dispid 204;
    property DATA: OleVariant readonly dispid 205;
    property CheckOut: WideString readonly dispid 206;
    property Source: WideString readonly dispid 208;
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
// DispIntf:  INotificationHandlerDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {52A780D4-B5CA-4A30-9CBE-739D98F9D528}
// *********************************************************************//
  INotificationHandlerDisp = dispinterface
    ['{52A780D4-B5CA-4A30-9CBE-739D98F9D528}']
    procedure OnNotify(const Notification: INotification); dispid 201;
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
// DispIntf:  IMenuBarDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {6FC203EF-B841-47E1-962B-E7B0DCA1EA4D}
// *********************************************************************//
  IMenuBarDisp = dispinterface
    ['{6FC203EF-B841-47E1-962B-E7B0DCA1EA4D}']
    property Caption: WideString readonly dispid 201;
    property Visible: WordBool dispid 202;
    property MenuItemCount: Integer readonly dispid 203;
    function GetMenuItem(AIndex: Integer): IMenuItem; dispid 204;
    function AddMenuItem(const MenuItemID: WideString; Index: Integer; BeginGroup: WordBool): IMenuItem; dispid 205;
    function GetItemByText(const AText: WideString): IMenuItem; dispid 206;
    function CreateMenuItem(const MenuItemID: WideString; const MenuCaption: WideString; 
                            MenuItemType: MenuItemTypes; const Description: WideString; 
                            ActionCommand: Integer; Index: Integer; BeginGroup: WordBool): IMenuItem; dispid 207;
    procedure ClearMenuItems; dispid 208;
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
    procedure SetItemAlertStatus(Level: Integer; const Hint: WideString); safecall;
    procedure SetItemNewItemCount(Count: Integer; const Hint: WideString); safecall;
    function Get_ImageIndex: Integer; safecall;
    procedure Set_ImageIndex(Value: Integer); safecall;
    function Get_AvailableMenuItemCount: Integer; safecall;
    function GetAvailableMenuItem(AIndex: Integer): IMenuItem; safecall;
    function Get_ScriptName: WideString; safecall;
    procedure Set_ScriptName(const Value: WideString); safecall;
    function Get_ScriptFunctionName: WideString; safecall;
    procedure Set_ScriptFunctionName(const Value: WideString); safecall;
    function AddMenuItem2(const MenuItem: IMenuItem; Index: Integer; BeginGroup: WordBool): IMenuItem; safecall;
    function CreateMenuItem2(const MenuCaption: WideString; const Description: WideString; 
                             const MenuItemID: WideString; ActionCommand: Integer; 
                             const ScriptName: WideString; const ScriptFunction: WideString; 
                             CreateOnly: WordBool; Index: Integer; BeginGroup: WordBool; 
                             ATag: Integer): IMenuItem; safecall;
    procedure Set_Caption(const Value: WideString); safecall;
    procedure Set_Action(Value: Integer); safecall;
    function Get_Tag: Integer; safecall;
    procedure Set_Tag(Value: Integer); safecall;
    property Caption: WideString read Get_Caption;
    property Action: Integer read Get_Action;
    property Enabled: WordBool read Get_Enabled write Set_Enabled;
    property MenuItemCount: Integer read Get_MenuItemCount;
    property Icon: Integer read Get_Icon write Set_Icon;
    property BeginGroup: WordBool read Get_BeginGroup write Set_BeginGroup;
    property Visible: WordBool read Get_Visible write Set_Visible;
    property ItemType: MenuItemTypes read Get_ItemType;
    property MenuItemID: WideString read Get_MenuItemID;
    property ImageIndex: Integer read Get_ImageIndex write Set_ImageIndex;
    property AvailableMenuItemCount: Integer read Get_AvailableMenuItemCount;
    property ScriptName: WideString read Get_ScriptName write Set_ScriptName;
    property ScriptFunctionName: WideString read Get_ScriptFunctionName write Set_ScriptFunctionName;
    property Tag: Integer read Get_Tag write Set_Tag;
  end;

// *********************************************************************//
// DispIntf:  IMenuItemDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {E778343E-D2DF-4698-B57F-C5377B6E1845}
// *********************************************************************//
  IMenuItemDisp = dispinterface
    ['{E778343E-D2DF-4698-B57F-C5377B6E1845}']
    property Caption: WideString readonly dispid 201;
    property Action: Integer readonly dispid 202;
    property Enabled: WordBool dispid 203;
    property MenuItemCount: Integer readonly dispid 204;
    function GetMenuItem(AIndex: Integer): IMenuItem; dispid 205;
    property Icon: Integer dispid 207;
    property BeginGroup: WordBool dispid 208;
    property Visible: WordBool dispid 209;
    property ItemType: MenuItemTypes readonly dispid 206;
    property MenuItemID: WideString readonly dispid 210;
    function AddMenuItem(const MenuItemID: WideString; Index: Integer; BeginGroup: WordBool): IMenuItem; dispid 211;
    function GetItemByText(const AText: WideString): IMenuItem; dispid 212;
    function CreateMenuItem(const MenuItemID: WideString; const MenuCaption: WideString; 
                            MenuItemType: MenuItemTypes; const Description: WideString; 
                            ActionCommand: Integer; Index: Integer; BeginGroup: WordBool): IMenuItem; dispid 213;
    procedure ClearMenuItems; dispid 214;
    procedure SetItemAlertStatus(Level: Integer; const Hint: WideString); dispid 215;
    procedure SetItemNewItemCount(Count: Integer; const Hint: WideString); dispid 216;
    property ImageIndex: Integer dispid 217;
    property AvailableMenuItemCount: Integer readonly dispid 218;
    function GetAvailableMenuItem(AIndex: Integer): IMenuItem; dispid 219;
    property ScriptName: WideString dispid 220;
    property ScriptFunctionName: WideString dispid 221;
    function AddMenuItem2(const MenuItem: IMenuItem; Index: Integer; BeginGroup: WordBool): IMenuItem; dispid 222;
    function CreateMenuItem2(const MenuCaption: WideString; const Description: WideString; 
                             const MenuItemID: WideString; ActionCommand: Integer; 
                             const ScriptName: WideString; const ScriptFunction: WideString; 
                             CreateOnly: WordBool; Index: Integer; BeginGroup: WordBool; 
                             ATag: Integer): IMenuItem; dispid 223;
    procedure Set_Caption(const Value: WideString); dispid 224;
    procedure Set_Action(Value: Integer); dispid 225;
    property Tag: Integer dispid 226;
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
// DispIntf:  ILoodsmanServiceDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {67927DBE-4A12-4785-9D36-F72E7299884B}
// *********************************************************************//
  ILoodsmanServiceDisp = dispinterface
    ['{67927DBE-4A12-4785-9D36-F72E7299884B}']
    procedure OnBindService(const OwnerApplication: IDispatch); dispid 203;
    procedure OnUnbindService; dispid 204;
    procedure OnOpenDatabase(const Connection: IDispatch; const WBSSystem: IDispatch; 
                             const DataBase: IDataBase); dispid 205;
    procedure OnCloseDatabase(const DataBase: IDataBase); dispid 206;
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

// *********************************************************************//
// DispIntf:  IServiceInfoDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8409E9CD-B499-4C91-B06F-95741911B226}
// *********************************************************************//
  IServiceInfoDisp = dispinterface
    ['{8409E9CD-B499-4C91-B06F-95741911B226}']
    function GetServiceName: WideString; dispid 201;
    function GetServiceDescription: WideString; dispid 202;
  end;

// *********************************************************************//
// Interface: IObjectDialog
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {ACFF77A4-A545-4247-9DAA-3E5DC43E19A0}
// *********************************************************************//
  IObjectDialog = interface(IDispatch)
    ['{ACFF77A4-A545-4247-9DAA-3E5DC43E19A0}']
    function Get_DialogMode: Integer; safecall;
    function Get_ObjType: WideString; safecall;
    procedure Set_ObjType(const Value: WideString); safecall;
    function Get_ObjName: WideString; safecall;
    procedure Set_ObjName(const Value: WideString); safecall;
    function Get_ObjState: WideString; safecall;
    procedure Set_ObjState(const Value: WideString); safecall;
    function Get_ObjLink: WideString; safecall;
    procedure Set_ObjLink(const Value: WideString); safecall;
    function CreateFileByIntegrator(UseCase: Integer; const FullFileName: WideString): WordBool; safecall;
    procedure ToggleTabFrame; safecall;
    property DialogMode: Integer read Get_DialogMode;
    property ObjType: WideString read Get_ObjType write Set_ObjType;
    property ObjName: WideString read Get_ObjName write Set_ObjName;
    property ObjState: WideString read Get_ObjState write Set_ObjState;
    property ObjLink: WideString read Get_ObjLink write Set_ObjLink;
  end;

// *********************************************************************//
// DispIntf:  IObjectDialogDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {ACFF77A4-A545-4247-9DAA-3E5DC43E19A0}
// *********************************************************************//
  IObjectDialogDisp = dispinterface
    ['{ACFF77A4-A545-4247-9DAA-3E5DC43E19A0}']
    property DialogMode: Integer readonly dispid 203;
    property ObjType: WideString dispid 204;
    property ObjName: WideString dispid 205;
    property ObjState: WideString dispid 206;
    property ObjLink: WideString dispid 207;
    function CreateFileByIntegrator(UseCase: Integer; const FullFileName: WideString): WordBool; dispid 208;
    procedure ToggleTabFrame; dispid 209;
  end;

// *********************************************************************//
// Interface: ILoodsmanClientUtils
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {7B1ADD83-D2B5-4A79-93D0-69D54071EE7F}
// *********************************************************************//
  ILoodsmanClientUtils = interface(IDispatch)
    ['{7B1ADD83-D2B5-4A79-93D0-69D54071EE7F}']
    function ShowObjectPropertiesDialog(ForObjects: OleVariant; const NotiSrc: WideString): WordBool; safecall;
    function ShowCreateObjectDialog(const AParent: IPDMData; const ALinks: WideString; 
                                    AInverse: WordBool; const NotiSrc: WideString): Integer; safecall;
    function ShowCreateProjectDialog(const NotiSrc: WideString): Integer; safecall;
    function ShowCreateVersionDialog(const Source: IPDMData; const NotiSrc: WideString): Integer; safecall;
    function ShowCreateCopyDialog(const Source: IPDMData; const NotiSrc: WideString): Integer; safecall;
    function ShowCreateRouteDialog(const ForObject: IPDMData; const NotiSrc: WideString): WordBool; safecall;
    function ShowCreateTaskDialog(const ForObject: IPDMData; const NotiSrc: WideString): WordBool; safecall;
    function OpenObjects(Objects: OleVariant): WordBool; safecall;
    function CutObjects(Objects: OleVariant; const NotiSrc: WideString): WordBool; safecall;
    function CopyObjects(Objects: OleVariant): WordBool; safecall;
    function UnlockObject(const Obj: IPDMData; const NotiSrc: WideString): WordBool; safecall;
    function CheckoutObjects(Objects: OleVariant; const NotiSrc: WideString): WordBool; safecall;
    function DeleteObjects(Objects: OleVariant; const NotiSrc: WideString): WordBool; safecall;
    function GetHyperLink(Objects: OleVariant; ToClipboard: WordBool): WideString; safecall;
    function GetContextMenu(ObjectCode: Integer): IMenuItem; safecall;
    function GetEnabledActions(Objects: OleVariant; const LinkName: WideString; Inverse: WordBool): WideString; safecall;
    function GetEnabledActionsForNoSelected: WideString; safecall;
    function GetFileName(const stFileName: WideString; const stStartPath: WideString): WideString; safecall;
    function CreateFileByTemplate: WideString; safecall;
    function ProxyUseCaseExists(const FileName: WideString; const ChildType: WideString; 
                                const ParentType: WideString): WordBool; safecall;
    procedure OpenFileWithTool(const AFileName: WideString; const AFilePath: WideString; 
                               const ADocument: IDispatch; const ALink: IDispatch); safecall;
    procedure GetFileInfo(const AFileName: WideString; const AFilePath: WideString; 
                          const ALink: IDispatch; const NotiSrc: WideString); safecall;
    function ChangeObjectsType(Objects: OleVariant; const NotiSrc: WideString): WordBool; safecall;
    function ChangeObjectsState(Objects: OleVariant; const NotiSrc: WideString): WordBool; safecall;
    function ChangeQuantity(const Link: IPDMData; const NotiSrc: WideString): WordBool; safecall;
    function GetVersionHintParams: IVersionHintParams; safecall;
    function ShowSubscriptionDialog(AObjectID: Integer): WordBool; safecall;
  end;

// *********************************************************************//
// DispIntf:  ILoodsmanClientUtilsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {7B1ADD83-D2B5-4A79-93D0-69D54071EE7F}
// *********************************************************************//
  ILoodsmanClientUtilsDisp = dispinterface
    ['{7B1ADD83-D2B5-4A79-93D0-69D54071EE7F}']
    function ShowObjectPropertiesDialog(ForObjects: OleVariant; const NotiSrc: WideString): WordBool; dispid 201;
    function ShowCreateObjectDialog(const AParent: IPDMData; const ALinks: WideString; 
                                    AInverse: WordBool; const NotiSrc: WideString): Integer; dispid 202;
    function ShowCreateProjectDialog(const NotiSrc: WideString): Integer; dispid 203;
    function ShowCreateVersionDialog(const Source: IPDMData; const NotiSrc: WideString): Integer; dispid 204;
    function ShowCreateCopyDialog(const Source: IPDMData; const NotiSrc: WideString): Integer; dispid 205;
    function ShowCreateRouteDialog(const ForObject: IPDMData; const NotiSrc: WideString): WordBool; dispid 206;
    function ShowCreateTaskDialog(const ForObject: IPDMData; const NotiSrc: WideString): WordBool; dispid 207;
    function OpenObjects(Objects: OleVariant): WordBool; dispid 208;
    function CutObjects(Objects: OleVariant; const NotiSrc: WideString): WordBool; dispid 209;
    function CopyObjects(Objects: OleVariant): WordBool; dispid 210;
    function UnlockObject(const Obj: IPDMData; const NotiSrc: WideString): WordBool; dispid 211;
    function CheckoutObjects(Objects: OleVariant; const NotiSrc: WideString): WordBool; dispid 212;
    function DeleteObjects(Objects: OleVariant; const NotiSrc: WideString): WordBool; dispid 213;
    function GetHyperLink(Objects: OleVariant; ToClipboard: WordBool): WideString; dispid 214;
    function GetContextMenu(ObjectCode: Integer): IMenuItem; dispid 215;
    function GetEnabledActions(Objects: OleVariant; const LinkName: WideString; Inverse: WordBool): WideString; dispid 216;
    function GetEnabledActionsForNoSelected: WideString; dispid 217;
    function GetFileName(const stFileName: WideString; const stStartPath: WideString): WideString; dispid 218;
    function CreateFileByTemplate: WideString; dispid 219;
    function ProxyUseCaseExists(const FileName: WideString; const ChildType: WideString; 
                                const ParentType: WideString): WordBool; dispid 220;
    procedure OpenFileWithTool(const AFileName: WideString; const AFilePath: WideString; 
                               const ADocument: IDispatch; const ALink: IDispatch); dispid 221;
    procedure GetFileInfo(const AFileName: WideString; const AFilePath: WideString; 
                          const ALink: IDispatch; const NotiSrc: WideString); dispid 222;
    function ChangeObjectsType(Objects: OleVariant; const NotiSrc: WideString): WordBool; dispid 223;
    function ChangeObjectsState(Objects: OleVariant; const NotiSrc: WideString): WordBool; dispid 240;
    function ChangeQuantity(const Link: IPDMData; const NotiSrc: WideString): WordBool; dispid 241;
    function GetVersionHintParams: IVersionHintParams; dispid 242;
    function ShowSubscriptionDialog(AObjectID: Integer): WordBool; dispid 243;
  end;

// *********************************************************************//
// Interface: IPDMClipboard
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {CDE4952D-AAC4-47A3-94D4-355F1AEBB8B1}
// *********************************************************************//
  IPDMClipboard = interface(IDispatch)
    ['{CDE4952D-AAC4-47A3-94D4-355F1AEBB8B1}']
    procedure AddObject(const PDMObject: IPDMObject); safecall;
    procedure AddObjectByID(ID: Integer); safecall;
    procedure Clear; safecall;
    function HasObjects: WordBool; safecall;
    procedure ToClipboard; safecall;
    function FromClipboard: WordBool; safecall;
    function Get_ObjectCount: Integer; safecall;
    function Get_ObjectID(Index: Integer): Integer; safecall;
    function Get_DBName: WideString; safecall;
    procedure Set_DBName(const Value: WideString); safecall;
    property ObjectCount: Integer read Get_ObjectCount;
    property ObjectID[Index: Integer]: Integer read Get_ObjectID;
    property DBName: WideString read Get_DBName write Set_DBName;
  end;

// *********************************************************************//
// DispIntf:  IPDMClipboardDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {CDE4952D-AAC4-47A3-94D4-355F1AEBB8B1}
// *********************************************************************//
  IPDMClipboardDisp = dispinterface
    ['{CDE4952D-AAC4-47A3-94D4-355F1AEBB8B1}']
    procedure AddObject(const PDMObject: IPDMObject); dispid 201;
    procedure AddObjectByID(ID: Integer); dispid 202;
    procedure Clear; dispid 203;
    function HasObjects: WordBool; dispid 204;
    procedure ToClipboard; dispid 205;
    function FromClipboard: WordBool; dispid 206;
    property ObjectCount: Integer readonly dispid 207;
    property ObjectID[Index: Integer]: Integer readonly dispid 208;
    property DBName: WideString dispid 209;
  end;

// *********************************************************************//
// Interface: IVersionHintParams
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {825E6E48-9CF4-4B0D-ADD6-90FB99490EC7}
// *********************************************************************//
  IVersionHintParams = interface(IDispatch)
    ['{825E6E48-9CF4-4B0D-ADD6-90FB99490EC7}']
    function GetValue(AField: VersionHintFields): WordBool; safecall;
    procedure SetValue(AField: VersionHintFields; Value: WordBool); safecall;
    function ParamCount: Integer; safecall;
  end;

// *********************************************************************//
// DispIntf:  IVersionHintParamsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {825E6E48-9CF4-4B0D-ADD6-90FB99490EC7}
// *********************************************************************//
  IVersionHintParamsDisp = dispinterface
    ['{825E6E48-9CF4-4B0D-ADD6-90FB99490EC7}']
    function GetValue(AField: VersionHintFields): WordBool; dispid 201;
    procedure SetValue(AField: VersionHintFields; Value: WordBool); dispid 202;
    function ParamCount: Integer; dispid 203;
  end;

implementation

end.
