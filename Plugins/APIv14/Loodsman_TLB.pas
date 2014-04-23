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
// Type Lib: Loodsman14.tlb (1)
// LIBID: {7CC86059-0262-44D5-9AA3-033DB38F11EF}
// LCID: 0
// Helpfile: 
// HelpString: Loodsman Client Library
// DepndLst: 
//   (1) v2.0 stdole, (C:\Windows\system32\stdole2.tlb)
//   (2) v1.0 BOSimple, (C:\Program Files (x86)\Common Files\ASCON Shared\BOSimple64.dll)
//   (3) v1.0 PDMObjects, (C:\Program Files (x86)\ASCON\Loodsman\Client\PDMObjects.dll)
//   (4) v1.0 Ask, (C:\Program Files (x86)\Common Files\ASCON Shared\Loodsman\Ask.dll)
// Errors:
//   Error creating palette bitmap of (TConnectSP) : Registry key CLSID\{5D700A95-8D9D-4597-B69D-2898B32B7EF8}\ToolboxBitmap32 not found
//   Error creating palette bitmap of (TSocketConnect) : Registry key CLSID\{754E8972-484E-499F-9DAC-805226FB19AF}\ToolboxBitmap32 not found
//   Error creating palette bitmap of (TSQLAutorization) : Registry key CLSID\{11D1F695-4DC4-4216-B83D-31B26F9D8BDB}\ToolboxBitmap32 not found
//   Error creating palette bitmap of (TConnectDB) : Registry key CLSID\{35EF10E7-5074-4704-94B9-C43160A9504A}\ToolboxBitmap32 not found
//   Error creating palette bitmap of (TMetodsWorkObject) : Registry key CLSID\{EFD145AC-B241-4FA6-A6D0-07CA687C0FA8}\ToolboxBitmap32 not found
//   Error creating palette bitmap of (TConnectDBActive) : Registry key CLSID\{BF152433-8096-40DB-9D25-295112DCFC7E}\ToolboxBitmap32 not found
//   Error creating palette bitmap of (TSaveDocument) : Registry key CLSID\{97735444-15EB-4A19-ABCB-5C05EA1025DD}\ToolboxBitmap32 not found
// Cmdline:
//   "\\C-1177\c$\Program Files (x86)\Embarcadero\RAD Studio\8.0\bin\tlibimp.exe"  -P Loodsman14.tlb
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

uses Windows, ActiveX, Ask_TLB, BOSimple_TLB, Classes, Graphics, OleCtrls, OleServer, 
PDMObjects_TLB, StdVCL, Variants;
  

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
    function GetDataSet(const stMetod: WideString; vaParams: OleVariant): IDispatch; safecall;
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
    property Name: WideString read Get_Name;
    property CurrentUser: ILoodsmanUser read Get_CurrentUser;
    property MaxLabel: Integer read Get_MaxLabel;
    property ReadOnlyDB: WordBool read Get_ReadOnlyDB;
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
// The Class CoBOLoodsmanSimpleProvider provides a Create and CreateRemote method to          
// create instances of the default interface IBOSimpleProvider exposed by              
// the CoClass BOLoodsmanSimpleProvider. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoBOLoodsmanSimpleProvider = class
    class function Create: IBOSimpleProvider;
    class function CreateRemote(const MachineName: string): IBOSimpleProvider;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TBOLoodsmanSimpleProvider
// Help String      : BOSimpleProvider Object
// Default Interface: IBOSimpleProvider
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TBOLoodsmanSimpleProviderProperties= class;
{$ENDIF}
  TBOLoodsmanSimpleProvider = class(TOleServer)
  private
    FIntf: IBOSimpleProvider;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TBOLoodsmanSimpleProviderProperties;
    function GetServerProperties: TBOLoodsmanSimpleProviderProperties;
{$ENDIF}
    function GetDefaultInterface: IBOSimpleProvider;
  protected
    procedure InitServerData; override;
    function Get_Request: IBORequest;
    function Get_SourceID: WideString;
    function Get_Response: IBOResponse;
    function Get_ClientID: Integer;
    function Get_Status: Integer;
    function Get_NewQuery: IBOQuery;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IBOSimpleProvider);
    procedure Disconnect; override;
    procedure Refresh;
    procedure ExecuteRequest;
    function GetObject(const ClassID: WideString; const ObjectID: WideString; Options: Integer): IBOObject;
    function GetObjects(const ClassID: WideString; Options: Integer): IBOObjectCollection;
    function Select(Modal: WordBool; var Location: WideString; ClientWindow: Integer): WordBool;
    procedure GetObjectInfo(const Location: WideString; var ClassID: WideString; 
                            var ObjectID: WideString);
    procedure RegisterClient(const aName: WideString);
    procedure UnRegisterClient;
    procedure ExecuteQuery(const AQuery: IBOQuery; out AErrorCode: Integer; 
                           out AErrorMessage: WideString);
    function Select2(Modal: WordBool; ClientWindow: Integer; const InLocation: WideString; 
                     out OutLocation: WideString): WordBool;
    procedure GetObjectInfo2(const Location: WideString; out ClassID: WideString; 
                             out ObjectID: WideString);
    function GetObject2(const ClassID: WideString; const ObjectID: WideString; Options: Integer): IBOObject;
    function GetObjects2(const ClassID: WideString; Options: Integer): IBOObjectCollection;
    property DefaultInterface: IBOSimpleProvider read GetDefaultInterface;
    property Request: IBORequest read Get_Request;
    property SourceID: WideString read Get_SourceID;
    property Response: IBOResponse read Get_Response;
    property ClientID: Integer read Get_ClientID;
    property Status: Integer read Get_Status;
    property NewQuery: IBOQuery read Get_NewQuery;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TBOLoodsmanSimpleProviderProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TBOLoodsmanSimpleProvider
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TBOLoodsmanSimpleProviderProperties = class(TPersistent)
  private
    FServer:    TBOLoodsmanSimpleProvider;
    function    GetDefaultInterface: IBOSimpleProvider;
    constructor Create(AServer: TBOLoodsmanSimpleProvider);
  protected
    function Get_Request: IBORequest;
    function Get_SourceID: WideString;
    function Get_Response: IBOResponse;
    function Get_ClientID: Integer;
    function Get_Status: Integer;
    function Get_NewQuery: IBOQuery;
  public
    property DefaultInterface: IBOSimpleProvider read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoBOAttribute provides a Create and CreateRemote method to          
// create instances of the default interface IBOAttribute exposed by              
// the CoClass BOAttribute. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoBOAttribute = class
    class function Create: IBOAttribute;
    class function CreateRemote(const MachineName: string): IBOAttribute;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TBOAttribute
// Help String      : 
// Default Interface: IBOAttribute
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TBOAttributeProperties= class;
{$ENDIF}
  TBOAttribute = class(TOleServer)
  private
    FIntf: IBOAttribute;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TBOAttributeProperties;
    function GetServerProperties: TBOAttributeProperties;
{$ENDIF}
    function GetDefaultInterface: IBOAttribute;
  protected
    procedure InitServerData; override;
    function Get_XML: WideString;
    function Get_Name: WideString;
    function Get_Value: WideString;
    procedure Set_Value(const Value: WideString);
    function Get_AsString: WideString;
    procedure Set_AsString(const Value: WideString);
    function Get_AsFloat: Double;
    procedure Set_AsFloat(Value: Double);
    function Get_AsInteger: Integer;
    procedure Set_AsInteger(Value: Integer);
    function Get_AsBoolean: WordBool;
    procedure Set_AsBoolean(Value: WordBool);
    function Get_Attributes: IBOAttributeCollection;
    function Get_Attribute(const aName: WideString): IBOAttribute;
    function Get_Parent: IDispatch;
    procedure Set_Parent(const Value: IDispatch);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IBOAttribute);
    procedure Disconnect; override;
    property DefaultInterface: IBOAttribute read GetDefaultInterface;
    property XML: WideString read Get_XML;
    property Name: WideString read Get_Name;
    property Attributes: IBOAttributeCollection read Get_Attributes;
    property Attribute[const aName: WideString]: IBOAttribute read Get_Attribute;
    property Parent: IDispatch read Get_Parent write Set_Parent;
    property Value: WideString read Get_Value write Set_Value;
    property AsString: WideString read Get_AsString write Set_AsString;
    property AsFloat: Double read Get_AsFloat write Set_AsFloat;
    property AsInteger: Integer read Get_AsInteger write Set_AsInteger;
    property AsBoolean: WordBool read Get_AsBoolean write Set_AsBoolean;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TBOAttributeProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TBOAttribute
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TBOAttributeProperties = class(TPersistent)
  private
    FServer:    TBOAttribute;
    function    GetDefaultInterface: IBOAttribute;
    constructor Create(AServer: TBOAttribute);
  protected
    function Get_XML: WideString;
    function Get_Name: WideString;
    function Get_Value: WideString;
    procedure Set_Value(const Value: WideString);
    function Get_AsString: WideString;
    procedure Set_AsString(const Value: WideString);
    function Get_AsFloat: Double;
    procedure Set_AsFloat(Value: Double);
    function Get_AsInteger: Integer;
    procedure Set_AsInteger(Value: Integer);
    function Get_AsBoolean: WordBool;
    procedure Set_AsBoolean(Value: WordBool);
    function Get_Attributes: IBOAttributeCollection;
    function Get_Attribute(const aName: WideString): IBOAttribute;
    function Get_Parent: IDispatch;
    procedure Set_Parent(const Value: IDispatch);
  public
    property DefaultInterface: IBOAttribute read GetDefaultInterface;
  published
    property Value: WideString read Get_Value write Set_Value;
    property AsString: WideString read Get_AsString write Set_AsString;
    property AsFloat: Double read Get_AsFloat write Set_AsFloat;
    property AsInteger: Integer read Get_AsInteger write Set_AsInteger;
    property AsBoolean: WordBool read Get_AsBoolean write Set_AsBoolean;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoBOAttributeCollection provides a Create and CreateRemote method to          
// create instances of the default interface IBOAttributeCollection exposed by              
// the CoClass BOAttributeCollection. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoBOAttributeCollection = class
    class function Create: IBOAttributeCollection;
    class function CreateRemote(const MachineName: string): IBOAttributeCollection;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TBOAttributeCollection
// Help String      : 
// Default Interface: IBOAttributeCollection
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TBOAttributeCollectionProperties= class;
{$ENDIF}
  TBOAttributeCollection = class(TOleServer)
  private
    FIntf: IBOAttributeCollection;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TBOAttributeCollectionProperties;
    function GetServerProperties: TBOAttributeCollectionProperties;
{$ENDIF}
    function GetDefaultInterface: IBOAttributeCollection;
  protected
    procedure InitServerData; override;
    function Get_Count: Integer;
    function Get_XML: WideString;
    function Get_Item(Index: Integer): IBOAttribute;
    function Get_Attribute(const aName: WideString): IBOAttribute;
    function Get_Value(const aName: WideString): WideString;
    procedure Set_Value(const aName: WideString; const Value: WideString);
    function Get_AutoAppend: WordBool;
    procedure Set_AutoAppend(Value: WordBool);
    function Get_Duplicates: WordBool;
    procedure Set_Duplicates(Value: WordBool);
    function Get_Parent: IDispatch;
    procedure Set_Parent(const Value: IDispatch);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IBOAttributeCollection);
    procedure Disconnect; override;
    procedure Clear;
    procedure Delete(Index: Integer);
    function Add(const aName: WideString; const aValue: WideString): IBOAttribute;
    procedure DeleteAttribute(const AAttribute: IBOAttribute);
    function AttributeExists(const aName: WideString): WordBool;
    property DefaultInterface: IBOAttributeCollection read GetDefaultInterface;
    property Count: Integer read Get_Count;
    property XML: WideString read Get_XML;
    property Item[Index: Integer]: IBOAttribute read Get_Item;
    property Attribute[const aName: WideString]: IBOAttribute read Get_Attribute;
    property Value[const aName: WideString]: WideString read Get_Value write Set_Value;
    property Parent: IDispatch read Get_Parent write Set_Parent;
    property AutoAppend: WordBool read Get_AutoAppend write Set_AutoAppend;
    property Duplicates: WordBool read Get_Duplicates write Set_Duplicates;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TBOAttributeCollectionProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TBOAttributeCollection
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TBOAttributeCollectionProperties = class(TPersistent)
  private
    FServer:    TBOAttributeCollection;
    function    GetDefaultInterface: IBOAttributeCollection;
    constructor Create(AServer: TBOAttributeCollection);
  protected
    function Get_Count: Integer;
    function Get_XML: WideString;
    function Get_Item(Index: Integer): IBOAttribute;
    function Get_Attribute(const aName: WideString): IBOAttribute;
    function Get_Value(const aName: WideString): WideString;
    procedure Set_Value(const aName: WideString; const Value: WideString);
    function Get_AutoAppend: WordBool;
    procedure Set_AutoAppend(Value: WordBool);
    function Get_Duplicates: WordBool;
    procedure Set_Duplicates(Value: WordBool);
    function Get_Parent: IDispatch;
    procedure Set_Parent(const Value: IDispatch);
  public
    property DefaultInterface: IBOAttributeCollection read GetDefaultInterface;
  published
    property AutoAppend: WordBool read Get_AutoAppend write Set_AutoAppend;
    property Duplicates: WordBool read Get_Duplicates write Set_Duplicates;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoBOItem provides a Create and CreateRemote method to          
// create instances of the default interface IBOItem exposed by              
// the CoClass BOItem. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoBOItem = class
    class function Create: IBOItem;
    class function CreateRemote(const MachineName: string): IBOItem;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TBOItem
// Help String      : 
// Default Interface: IBOItem
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TBOItemProperties= class;
{$ENDIF}
  TBOItem = class(TOleServer)
  private
    FIntf: IBOItem;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TBOItemProperties;
    function GetServerProperties: TBOItemProperties;
{$ENDIF}
    function GetDefaultInterface: IBOItem;
  protected
    procedure InitServerData; override;
    function Get_XML: WideString;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IBOItem);
    procedure Disconnect; override;
    property DefaultInterface: IBOItem read GetDefaultInterface;
    property XML: WideString read Get_XML;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TBOItemProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TBOItem
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TBOItemProperties = class(TPersistent)
  private
    FServer:    TBOItem;
    function    GetDefaultInterface: IBOItem;
    constructor Create(AServer: TBOItem);
  protected
    function Get_XML: WideString;
  public
    property DefaultInterface: IBOItem read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoBOItemCollection provides a Create and CreateRemote method to          
// create instances of the default interface IBOItemCollection exposed by              
// the CoClass BOItemCollection. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoBOItemCollection = class
    class function Create: IBOItemCollection;
    class function CreateRemote(const MachineName: string): IBOItemCollection;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TBOItemCollection
// Help String      : 
// Default Interface: IBOItemCollection
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TBOItemCollectionProperties= class;
{$ENDIF}
  TBOItemCollection = class(TOleServer)
  private
    FIntf: IBOItemCollection;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TBOItemCollectionProperties;
    function GetServerProperties: TBOItemCollectionProperties;
{$ENDIF}
    function GetDefaultInterface: IBOItemCollection;
  protected
    procedure InitServerData; override;
    function Get_Count: Integer;
    function Get_XML: WideString;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IBOItemCollection);
    procedure Disconnect; override;
    procedure Clear;
    procedure Delete(Index: Integer);
    property DefaultInterface: IBOItemCollection read GetDefaultInterface;
    property Count: Integer read Get_Count;
    property XML: WideString read Get_XML;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TBOItemCollectionProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TBOItemCollection
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TBOItemCollectionProperties = class(TPersistent)
  private
    FServer:    TBOItemCollection;
    function    GetDefaultInterface: IBOItemCollection;
    constructor Create(AServer: TBOItemCollection);
  protected
    function Get_Count: Integer;
    function Get_XML: WideString;
  public
    property DefaultInterface: IBOItemCollection read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoBOKernel provides a Create and CreateRemote method to          
// create instances of the default interface IBOKernel exposed by              
// the CoClass BOKernel. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoBOKernel = class
    class function Create: IBOKernel;
    class function CreateRemote(const MachineName: string): IBOKernel;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TBOKernel
// Help String      : 
// Default Interface: IBOKernel
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TBOKernelProperties= class;
{$ENDIF}
  TBOKernel = class(TOleServer)
  private
    FIntf: IBOKernel;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TBOKernelProperties;
    function GetServerProperties: TBOKernelProperties;
{$ENDIF}
    function GetDefaultInterface: IBOKernel;
  protected
    procedure InitServerData; override;
    function Get_Count: Integer;
    procedure Set_Count(Value: Integer);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IBOKernel);
    procedure Disconnect; override;
    procedure Refresh;
    function ExternalResponse(const SourceID: WideString; Engine: Integer; 
                              const Request: IBORequest; const Response: IBOResponse): WordBool;
    property DefaultInterface: IBOKernel read GetDefaultInterface;
    property Count: Integer read Get_Count write Set_Count;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TBOKernelProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TBOKernel
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TBOKernelProperties = class(TPersistent)
  private
    FServer:    TBOKernel;
    function    GetDefaultInterface: IBOKernel;
    constructor Create(AServer: TBOKernel);
  protected
    function Get_Count: Integer;
    procedure Set_Count(Value: Integer);
  public
    property DefaultInterface: IBOKernel read GetDefaultInterface;
  published
    property Count: Integer read Get_Count write Set_Count;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoBOObject provides a Create and CreateRemote method to          
// create instances of the default interface IBOObject exposed by              
// the CoClass BOObject. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoBOObject = class
    class function Create: IBOObject;
    class function CreateRemote(const MachineName: string): IBOObject;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TBOObject
// Help String      : 
// Default Interface: IBOObject
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TBOObjectProperties= class;
{$ENDIF}
  TBOObject = class(TOleServer)
  private
    FIntf: IBOObject;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TBOObjectProperties;
    function GetServerProperties: TBOObjectProperties;
{$ENDIF}
    function GetDefaultInterface: IBOObject;
  protected
    procedure InitServerData; override;
    function Get_XML: WideString;
    function Get_Attributes: IBOAttributeCollection;
    function Get_Attribute(const aName: WideString): IBOAttribute;
    function Get_Objects: IBOObjectCollection;
    function Get_ObjectID: WideString;
    procedure Set_ObjectID(const Value: WideString);
    function Get_ClassID: WideString;
    procedure Set_ClassID(const Value: WideString);
    function Get_DisplayName: WideString;
    function Get_Parent: IDispatch;
    procedure Set_Parent(const Value: IDispatch);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IBOObject);
    procedure Disconnect; override;
    property DefaultInterface: IBOObject read GetDefaultInterface;
    property XML: WideString read Get_XML;
    property Attributes: IBOAttributeCollection read Get_Attributes;
    property Attribute[const aName: WideString]: IBOAttribute read Get_Attribute;
    property Objects: IBOObjectCollection read Get_Objects;
    property DisplayName: WideString read Get_DisplayName;
    property Parent: IDispatch read Get_Parent write Set_Parent;
    property ObjectID: WideString read Get_ObjectID write Set_ObjectID;
    property ClassID: WideString read Get_ClassID write Set_ClassID;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TBOObjectProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TBOObject
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TBOObjectProperties = class(TPersistent)
  private
    FServer:    TBOObject;
    function    GetDefaultInterface: IBOObject;
    constructor Create(AServer: TBOObject);
  protected
    function Get_XML: WideString;
    function Get_Attributes: IBOAttributeCollection;
    function Get_Attribute(const aName: WideString): IBOAttribute;
    function Get_Objects: IBOObjectCollection;
    function Get_ObjectID: WideString;
    procedure Set_ObjectID(const Value: WideString);
    function Get_ClassID: WideString;
    procedure Set_ClassID(const Value: WideString);
    function Get_DisplayName: WideString;
    function Get_Parent: IDispatch;
    procedure Set_Parent(const Value: IDispatch);
  public
    property DefaultInterface: IBOObject read GetDefaultInterface;
  published
    property ObjectID: WideString read Get_ObjectID write Set_ObjectID;
    property ClassID: WideString read Get_ClassID write Set_ClassID;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoBOObjectCollection provides a Create and CreateRemote method to          
// create instances of the default interface IBOObjectCollection exposed by              
// the CoClass BOObjectCollection. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoBOObjectCollection = class
    class function Create: IBOObjectCollection;
    class function CreateRemote(const MachineName: string): IBOObjectCollection;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TBOObjectCollection
// Help String      : 
// Default Interface: IBOObjectCollection
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TBOObjectCollectionProperties= class;
{$ENDIF}
  TBOObjectCollection = class(TOleServer)
  private
    FIntf: IBOObjectCollection;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TBOObjectCollectionProperties;
    function GetServerProperties: TBOObjectCollectionProperties;
{$ENDIF}
    function GetDefaultInterface: IBOObjectCollection;
  protected
    procedure InitServerData; override;
    function Get_Count: Integer;
    function Get_XML: WideString;
    function Get_Item(Index: Integer): IBOObject;
    function Get_Parent: IDispatch;
    procedure Set_Parent(const Value: IDispatch);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IBOObjectCollection);
    procedure Disconnect; override;
    procedure Clear;
    procedure Delete(Index: Integer);
    function Add(const aClassID: WideString; const aObjectID: WideString; 
                 const aDisplayName: WideString): IBOObject;
    property DefaultInterface: IBOObjectCollection read GetDefaultInterface;
    property Count: Integer read Get_Count;
    property XML: WideString read Get_XML;
    property Item[Index: Integer]: IBOObject read Get_Item;
    property Parent: IDispatch read Get_Parent write Set_Parent;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TBOObjectCollectionProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TBOObjectCollection
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TBOObjectCollectionProperties = class(TPersistent)
  private
    FServer:    TBOObjectCollection;
    function    GetDefaultInterface: IBOObjectCollection;
    constructor Create(AServer: TBOObjectCollection);
  protected
    function Get_Count: Integer;
    function Get_XML: WideString;
    function Get_Item(Index: Integer): IBOObject;
    function Get_Parent: IDispatch;
    procedure Set_Parent(const Value: IDispatch);
  public
    property DefaultInterface: IBOObjectCollection read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoBORequest provides a Create and CreateRemote method to          
// create instances of the default interface IBORequest exposed by              
// the CoClass BORequest. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoBORequest = class
    class function Create: IBORequest;
    class function CreateRemote(const MachineName: string): IBORequest;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TBORequest
// Help String      : 
// Default Interface: IBORequest
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TBORequestProperties= class;
{$ENDIF}
  TBORequest = class(TOleServer)
  private
    FIntf: IBORequest;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TBORequestProperties;
    function GetServerProperties: TBORequestProperties;
{$ENDIF}
    function GetDefaultInterface: IBORequest;
  protected
    procedure InitServerData; override;
    function Get_Attributes: IBOAttributeCollection;
    function Get_Topic: WideString;
    procedure Set_Topic(const Value: WideString);
    function Get_Attribute(const aName: WideString): IBOAttribute;
    function Get_XML: WideString;
    function Get_Objects: IBOObjectCollection;
    function Get_Parent: IDispatch;
    procedure Set_Parent(const Value: IDispatch);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IBORequest);
    procedure Disconnect; override;
    property DefaultInterface: IBORequest read GetDefaultInterface;
    property Attributes: IBOAttributeCollection read Get_Attributes;
    property Attribute[const aName: WideString]: IBOAttribute read Get_Attribute;
    property XML: WideString read Get_XML;
    property Objects: IBOObjectCollection read Get_Objects;
    property Parent: IDispatch read Get_Parent write Set_Parent;
    property Topic: WideString read Get_Topic write Set_Topic;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TBORequestProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TBORequest
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TBORequestProperties = class(TPersistent)
  private
    FServer:    TBORequest;
    function    GetDefaultInterface: IBORequest;
    constructor Create(AServer: TBORequest);
  protected
    function Get_Attributes: IBOAttributeCollection;
    function Get_Topic: WideString;
    procedure Set_Topic(const Value: WideString);
    function Get_Attribute(const aName: WideString): IBOAttribute;
    function Get_XML: WideString;
    function Get_Objects: IBOObjectCollection;
    function Get_Parent: IDispatch;
    procedure Set_Parent(const Value: IDispatch);
  public
    property DefaultInterface: IBORequest read GetDefaultInterface;
  published
    property Topic: WideString read Get_Topic write Set_Topic;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoBOResponse provides a Create and CreateRemote method to          
// create instances of the default interface IBOResponse exposed by              
// the CoClass BOResponse. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoBOResponse = class
    class function Create: IBOResponse;
    class function CreateRemote(const MachineName: string): IBOResponse;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TBOResponse
// Help String      : 
// Default Interface: IBOResponse
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TBOResponseProperties= class;
{$ENDIF}
  TBOResponse = class(TOleServer)
  private
    FIntf: IBOResponse;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TBOResponseProperties;
    function GetServerProperties: TBOResponseProperties;
{$ENDIF}
    function GetDefaultInterface: IBOResponse;
  protected
    procedure InitServerData; override;
    function Get_Count: Integer;
    function Get_XML: WideString;
    function Get_Item(Index: Integer): IBOObject;
    function Get_Attributes: IBOAttributeCollection;
    function Get_Objects: IBOObjectCollection;
    function Get_Parent: IDispatch;
    procedure Set_Parent(const Value: IDispatch);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IBOResponse);
    procedure Disconnect; override;
    procedure Clear;
    procedure Delete(Index: Integer);
    function Add(const aClassID: WideString; const aObjectID: WideString; 
                 const aDisplayName: WideString): IBOObject;
    procedure SetError(ACode: Integer; const AMsg: WideString);
    property DefaultInterface: IBOResponse read GetDefaultInterface;
    property Count: Integer read Get_Count;
    property XML: WideString read Get_XML;
    property Item[Index: Integer]: IBOObject read Get_Item;
    property Attributes: IBOAttributeCollection read Get_Attributes;
    property Objects: IBOObjectCollection read Get_Objects;
    property Parent: IDispatch read Get_Parent write Set_Parent;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TBOResponseProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TBOResponse
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TBOResponseProperties = class(TPersistent)
  private
    FServer:    TBOResponse;
    function    GetDefaultInterface: IBOResponse;
    constructor Create(AServer: TBOResponse);
  protected
    function Get_Count: Integer;
    function Get_XML: WideString;
    function Get_Item(Index: Integer): IBOObject;
    function Get_Attributes: IBOAttributeCollection;
    function Get_Objects: IBOObjectCollection;
    function Get_Parent: IDispatch;
    procedure Set_Parent(const Value: IDispatch);
  public
    property DefaultInterface: IBOResponse read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoLoodsmanObject provides a Create and CreateRemote method to          
// create instances of the default interface ILoodsman8 exposed by              
// the CoClass LoodsmanObject. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoLoodsmanObject = class
    class function Create: ILoodsman8;
    class function CreateRemote(const MachineName: string): ILoodsman8;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TLoodsmanObject
// Help String      : LoodsmanObject
// Default Interface: ILoodsman8
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TLoodsmanObjectProperties= class;
{$ENDIF}
  TLoodsmanObject = class(TOleServer)
  private
    FAutoQuit: Boolean;
    FIntf: ILoodsman8;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TLoodsmanObjectProperties;
    function GetServerProperties: TLoodsmanObjectProperties;
{$ENDIF}
    function GetDefaultInterface: ILoodsman8;
  protected
    procedure InitServerData; override;
    function Get_lnGetConnectSP(inTypeConnect: Integer; out inReturnCode: OleVariant; 
                                out stErrorMessage: OleVariant): IConnectSP;
    function Get_lnGetConnectDB(inTypeConnect: Integer; out inReturnCode: OleVariant; 
                                out stErrorMessage: OleVariant): IConnectDB;
    function Get_lnGetConnectDBActive(out inReturnCode: OleVariant; out stErrorMessage: OleVariant): IConnectDBActive;
    function Get_lnGetIOutlookBar: IOutlookBar;
    function Get_lnSetFormat(out inReturnCode: OleVariant; out stErrorMessage: OleVariant): Integer;
    procedure Set_lnSetFormat(out inReturnCode: OleVariant; out stErrorMessage: OleVariant; 
                              Value: Integer);
    function Get_lnStatusOfExhibit: Integer;
    procedure Set_lnStatusOfExhibit(inStatusOfExhibit: Integer);
    function Get_lnMetodsWorkObject: IMetodsWorkObject;
    function Get_lnRunMetods: IRunMetods;
    function Get_lnMessageDlg(const stMessage: WideString; inTypeMessage: SYSINT): Integer;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: ILoodsman8);
    procedure Disconnect; override;
    procedure sResult;
    procedure lnDialogSelectSP(AppHandle: SYSINT);
    procedure Quit;
    procedure lnCheckConnectLN;
    procedure lnWait(const stNameMetod: WideString);
    property DefaultInterface: ILoodsman8 read GetDefaultInterface;
    property lnGetConnectSP[inTypeConnect: Integer; out inReturnCode: OleVariant; 
                            out stErrorMessage: OleVariant]: IConnectSP read Get_lnGetConnectSP;
    property lnGetConnectDB[inTypeConnect: Integer; out inReturnCode: OleVariant; 
                            out stErrorMessage: OleVariant]: IConnectDB read Get_lnGetConnectDB;
    property lnGetConnectDBActive[out inReturnCode: OleVariant; out stErrorMessage: OleVariant]: IConnectDBActive read Get_lnGetConnectDBActive;
    property lnGetIOutlookBar: IOutlookBar read Get_lnGetIOutlookBar;
    property lnSetFormat[out inReturnCode: OleVariant; out stErrorMessage: OleVariant]: Integer read Get_lnSetFormat write Set_lnSetFormat;
    property lnMetodsWorkObject: IMetodsWorkObject read Get_lnMetodsWorkObject;
    property lnRunMetods: IRunMetods read Get_lnRunMetods;
    property lnMessageDlg[const stMessage: WideString; inTypeMessage: SYSINT]: Integer read Get_lnMessageDlg;
    property lnStatusOfExhibit: Integer read Get_lnStatusOfExhibit write Set_lnStatusOfExhibit;
  published
    property AutoQuit: Boolean read FAutoQuit write FAutoQuit; 
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TLoodsmanObjectProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TLoodsmanObject
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TLoodsmanObjectProperties = class(TPersistent)
  private
    FServer:    TLoodsmanObject;
    function    GetDefaultInterface: ILoodsman8;
    constructor Create(AServer: TLoodsmanObject);
  protected
    function Get_lnGetConnectSP(inTypeConnect: Integer; out inReturnCode: OleVariant; 
                                out stErrorMessage: OleVariant): IConnectSP;
    function Get_lnGetConnectDB(inTypeConnect: Integer; out inReturnCode: OleVariant; 
                                out stErrorMessage: OleVariant): IConnectDB;
    function Get_lnGetConnectDBActive(out inReturnCode: OleVariant; out stErrorMessage: OleVariant): IConnectDBActive;
    function Get_lnGetIOutlookBar: IOutlookBar;
    function Get_lnSetFormat(out inReturnCode: OleVariant; out stErrorMessage: OleVariant): Integer;
    procedure Set_lnSetFormat(out inReturnCode: OleVariant; out stErrorMessage: OleVariant; 
                              Value: Integer);
    function Get_lnStatusOfExhibit: Integer;
    procedure Set_lnStatusOfExhibit(inStatusOfExhibit: Integer);
    function Get_lnMetodsWorkObject: IMetodsWorkObject;
    function Get_lnRunMetods: IRunMetods;
    function Get_lnMessageDlg(const stMessage: WideString; inTypeMessage: SYSINT): Integer;
  public
    property DefaultInterface: ILoodsman8 read GetDefaultInterface;
  published
    property lnStatusOfExhibit: Integer read Get_lnStatusOfExhibit write Set_lnStatusOfExhibit;
  end;
{$ENDIF}


(* *****************************************************************
 * WARNING: The following control wrapper was generated for a class 
 * for which the CAN_CREATE flag was not detected. This may imply   
 * that the control requires windowless control activation.  Delphi     
 * does not support Windowless Control activation at this time. ****)

// *********************************************************************//
// OLE Control Proxy class declaration
// Control Name     : TConnectSP
// Help String      : 
// Default Interface: IConnectSP
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (32) Control
// *********************************************************************//
  TConnectSP = class(TOleControl)
  private
    FIntf: IConnectSP;
    function  GetControlInterface: IConnectSP;
  protected
    procedure CreateControl;
    procedure InitControlData; override;
    function Get_mGetSocketConnect: ISocketConnect;
    function Get_mGetWebConnect: IWebConnect;
    function Get_lnTestConnect(var stValue: WideString): SYSINT;
  public
    property  ControlInterface: IConnectSP read GetControlInterface;
    property  DefaultInterface: IConnectSP read GetControlInterface;
    property vConnectionType: Integer index 2 write SetIntegerProp;
    property vDCOMConnect: WideString index 3 write SetWideStringProp;
    property mGetSocketConnect: ISocketConnect read Get_mGetSocketConnect;
    property mGetWebConnect: IWebConnect read Get_mGetWebConnect;
    property Update: Integer index 1 read GetIntegerProp;
    property lnTestConnect[var stValue: WideString]: SYSINT read Get_lnTestConnect;
  published
    property Anchors;
  end;

(* *****************************************************************
 * WARNING: The following control wrapper was generated for a class 
 * for which the CAN_CREATE flag was not detected. This may imply   
 * that the control requires windowless control activation.  Delphi     
 * does not support Windowless Control activation at this time. ****)

// *********************************************************************//
// OLE Control Proxy class declaration
// Control Name     : TSocketConnect
// Help String      : 
// Default Interface: ISocketConnect
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (32) Control
// *********************************************************************//
  TSocketConnect = class(TOleControl)
  private
    FIntf: ISocketConnect;
    function  GetControlInterface: ISocketConnect;
  protected
    procedure CreateControl;
    procedure InitControlData; override;
  public
    property  ControlInterface: ISocketConnect read GetControlInterface;
    property  DefaultInterface: ISocketConnect read GetControlInterface;
    property scServerAlias: WideString index 1 write SetWideStringProp;
    property scAddress: WideString index 2 write SetWideStringProp;
    property scPort: WideString index 3 write SetWideStringProp;
  published
    property Anchors;
  end;

(* *****************************************************************
 * WARNING: The following control wrapper was generated for a class 
 * for which the CAN_CREATE flag was not detected. This may imply   
 * that the control requires windowless control activation.  Delphi     
 * does not support Windowless Control activation at this time. ****)

// *********************************************************************//
// OLE Control Proxy class declaration
// Control Name     : TWebConnect
// Help String      : 
// Default Interface: IWebConnect
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (32) Control
// *********************************************************************//
  TWebConnect = class(TOleControl)
  private
    FIntf: IWebConnect;
    function  GetControlInterface: IWebConnect;
  protected
    procedure CreateControl;
    procedure InitControlData; override;
  public
    property  ControlInterface: IWebConnect read GetControlInterface;
    property  DefaultInterface: IWebConnect read GetControlInterface;
    property scServerAlias: WideString index 1 write SetWideStringProp;
    property wcURL: WideString index 2 write SetWideStringProp;
    property wcUser: WideString index 3 write SetWideStringProp;
    property wcPasswords: WideString index 4 write SetWideStringProp;
    property wcUseCheckProxy: Integer index 5 write SetIntegerProp;
    property wcProxy: WideString index 6 write SetWideStringProp;
  published
    property Anchors;
  end;

(* *****************************************************************
 * WARNING: The following control wrapper was generated for a class 
 * for which the CAN_CREATE flag was not detected. This may imply   
 * that the control requires windowless control activation.  Delphi     
 * does not support Windowless Control activation at this time. ****)

// *********************************************************************//
// OLE Control Proxy class declaration
// Control Name     : TSQLAutorization
// Help String      : 
// Default Interface: ISQLAutorization
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (32) Control
// *********************************************************************//
  TSQLAutorization = class(TOleControl)
  private
    FIntf: ISQLAutorization;
    function  GetControlInterface: ISQLAutorization;
  protected
    procedure CreateControl;
    procedure InitControlData; override;
  public
    property  ControlInterface: ISQLAutorization read GetControlInterface;
    property  DefaultInterface: ISQLAutorization read GetControlInterface;
    property sqlaUserName: WideString index 1 write SetWideStringProp;
    property sqlaPasswords: WideString index 2 write SetWideStringProp;
    property sqlaSavePasswords: Integer index 3 write SetIntegerProp;
  published
    property Anchors;
  end;

(* *****************************************************************
 * WARNING: The following control wrapper was generated for a class 
 * for which the CAN_CREATE flag was not detected. This may imply   
 * that the control requires windowless control activation.  Delphi     
 * does not support Windowless Control activation at this time. ****)

// *********************************************************************//
// OLE Control Proxy class declaration
// Control Name     : TConnectDB
// Help String      : 
// Default Interface: IConnectDB
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (32) Control
// *********************************************************************//
  TConnectDB = class(TOleControl)
  private
    FIntf: IConnectDB;
    function  GetControlInterface: IConnectDB;
  protected
    procedure CreateControl;
    procedure InitControlData; override;
    function Get_mGetSQLAutorization: ISQLAutorization;
    function Get_Update(inStateDB: Integer): Integer;
    function Get_lnMetodsWorkObject: IMetodsWorkObject;
    function Get_lnRunMetods: IRunMetods;
  public
    procedure lnGetDBProperties(out inReturnCode: OleVariant; out stErrorMessage: OleVariant; 
                                const stNameDB: WideString; inSetFormat: Integer; 
                                out DATA: OleVariant; out inRecsOut: SYSINT);
    property  ControlInterface: IConnectDB read GetControlInterface;
    property  DefaultInterface: IConnectDB read GetControlInterface;
    property NameBaseConnect: WideString index 1 write SetWideStringProp;
    property TypeAutorization: Integer index 2 write SetIntegerProp;
    property mGetSQLAutorization: ISQLAutorization read Get_mGetSQLAutorization;
    property Update[inStateDB: Integer]: Integer read Get_Update;
    property lnMetodsWorkObject: IMetodsWorkObject read Get_lnMetodsWorkObject;
    property lnRunMetods: IRunMetods read Get_lnRunMetods;
  published
    property Anchors;
  end;

(* *****************************************************************
 * WARNING: The following control wrapper was generated for a class 
 * for which the CAN_CREATE flag was not detected. This may imply   
 * that the control requires windowless control activation.  Delphi     
 * does not support Windowless Control activation at this time. ****)

// *********************************************************************//
// OLE Control Proxy class declaration
// Control Name     : TMetodsWorkObject
// Help String      : 
// Default Interface: IMetodsWorkObject
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (32) Control
// *********************************************************************//
  TMetodsWorkObject = class(TOleControl)
  private
    FIntf: IMetodsWorkObject;
    function  GetControlInterface: IMetodsWorkObject;
  protected
    procedure CreateControl;
    procedure InitControlData; override;
    function Get_lnSaveDocument: ISaveDocument;
  public
    procedure lnGetInfoAboutVersion(var inReturnCode: OleVariant; var stErrorMessage: OleVariant; 
                                    const stType: WideString; const stProduct: WideString; 
                                    const stVersion: WideString; inIdVersion: SYSINT; 
                                    inMode: Integer; inSetFormat: Integer; var DATA: OleVariant; 
                                    var inRecsOut: SYSINT);
    procedure lnGetLinkedObjectsEx(var inReturnCode: OleVariant; var stErrorMessage: OleVariant; 
                                   const stTypeName: WideString; const stProductName: WideString; 
                                   const stVersionNumber: WideString; const stLinkType: WideString; 
                                   boInverse: Integer; boFullLink: Integer; 
                                   boGroupByProduct: Integer; boForTree: Integer; 
                                   inSetFormat: Integer; var DATA: OleVariant; var inRecsOut: SYSINT);
    procedure lnGetLinkedFast(var inReturnCode: OleVariant; var stErrorMessage: OleVariant; 
                              inIdVersion: SYSINT; const stLinkType: WideString; 
                              inSetFormat: Integer; var DATA: OleVariant; var inRecsOut: SYSINT);
    procedure lnGetLinkedObjectsAndFiles(out inReturnCode: OleVariant; 
                                         out stErrorMessage: OleVariant; 
                                         const stTypeName: WideString; 
                                         const stProductName: WideString; 
                                         const stVersionNumber: WideString; 
                                         const stLinkType: WideString; boFullLink: Integer; 
                                         boViewOnlyDocuments: Integer; inSetFormat: Integer; 
                                         out DATA: OleVariant; out inRecsOut: SYSINT);
    procedure lnGetInfoAboutFile(out inReturnCode: OleVariant; out stErrorMessage: OleVariant; 
                                 stFileName: Integer; stFullFilePath: Integer; 
                                 inSetFormat: Integer; out DATA: OleVariant; out inRecsOut: SYSINT);
    procedure lnGetInfoAboutType(out inReturnCode: OleVariant; out stErrorMessage: OleVariant; 
                                 const stType: WideString; inMode: Integer; inSetFormat: Integer; 
                                 out DATA: OleVariant; out inRecsOut: SYSINT);
    procedure lnGotoObject(out inReturnCode: OleVariant; out stErrorMessage: OleVariant; 
                           const stNameDB: WideString; const stNameCheck: WideString; 
                           const stType: WideString; const stProduct: WideString; 
                           const stVersion: WideString; inIdVersion: SYSINT);
    procedure lnSelectObject(out inReturnCode: OleVariant; out stErrorMessage: OleVariant; 
                             inSetFormat: Integer; out DATA: OleVariant; out inRecsOut: SYSINT);
    procedure lnImportObjectWithFile(out inReturnCode: OleVariant; out stErrorMessage: OleVariant; 
                                     inSetFormat: Integer; out DATA: OleVariant; 
                                     out inRecsOut: SYSINT);
    procedure lnImportFileWithFile(out inReturnCode: OleVariant; out stErrorMessage: OleVariant; 
                                   const stFilter: WideString; inTypeOpenFile: Integer; 
                                   inSetFormat: Integer; inLockMultiExtract: Integer; 
                                   out DATA: OleVariant; out inRecsOut: SYSINT);
    procedure lnOpenDocument(out inReturnCode: OleVariant; out stErrorMessage: OleVariant; 
                             const stFilter: WideString; inSetFormat: Integer; 
                             out inCheckOut: Integer; out DATA: OleVariant; out inRecsOut: SYSINT);
    procedure lnExtractDocument(out inReturnCode: OleVariant; out stErrorMessage: OleVariant; 
                                const stFilter: WideString; inSetFormat: Integer; 
                                out inCheckOut: Integer; out DATA: OleVariant; 
                                out inRecsOut: SYSINT; const stHintMessage: WideString; 
                                inLockMultiExtract: Integer);
    procedure lnExtractDocumentFormShow(out inReturnCode: OleVariant; 
                                        out stErrorMessage: OleVariant; const stFilter: WideString; 
                                        inSetFormat: Integer; out inCheckOut: Integer; 
                                        out DATA: OleVariant; out inRecsOut: SYSINT; 
                                        const stHintMessage: WideString; 
                                        inLockMultiExtract: Integer; 
                                        const stCaptionMessage: WideString);
    property  ControlInterface: IMetodsWorkObject read GetControlInterface;
    property  DefaultInterface: IMetodsWorkObject read GetControlInterface;
    property lnSaveDocument: ISaveDocument read Get_lnSaveDocument;
  published
    property Anchors;
  end;

(* *****************************************************************
 * WARNING: The following control wrapper was generated for a class 
 * for which the CAN_CREATE flag was not detected. This may imply   
 * that the control requires windowless control activation.  Delphi     
 * does not support Windowless Control activation at this time. ****)

// *********************************************************************//
// OLE Control Proxy class declaration
// Control Name     : TConnectDBActive
// Help String      : 
// Default Interface: IConnectDBActive
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (32) Control
// *********************************************************************//
  TConnectDBActive = class(TOleControl)
  private
    FIntf: IConnectDBActive;
    function  GetControlInterface: IConnectDBActive;
  protected
    procedure CreateControl;
    procedure InitControlData; override;
    function Get_lnMetodsWorkObject: IMetodsWorkObject;
    function Get_lnRunMetods: IRunMetods;
  public
    procedure lnGetDBProperties(out inReturnCode: OleVariant; out stErrorMessage: OleVariant; 
                                inSetFormat: Integer; out DATA: OleVariant; out inRecsOut: SYSINT);
    property  ControlInterface: IConnectDBActive read GetControlInterface;
    property  DefaultInterface: IConnectDBActive read GetControlInterface;
    property lnMetodsWorkObject: IMetodsWorkObject read Get_lnMetodsWorkObject;
    property lnRunMetods: IRunMetods read Get_lnRunMetods;
  published
    property Anchors;
  end;

(* *****************************************************************
 * WARNING: The following control wrapper was generated for a class 
 * for which the CAN_CREATE flag was not detected. This may imply   
 * that the control requires windowless control activation.  Delphi     
 * does not support Windowless Control activation at this time. ****)

// *********************************************************************//
// OLE Control Proxy class declaration
// Control Name     : TSaveDocument
// Help String      : 
// Default Interface: ISaveDocument
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (32) Control
// *********************************************************************//
  TSaveDocument = class(TOleControl)
  private
    FIntf: ISaveDocument;
    function  GetControlInterface: ISaveDocument;
  protected
    procedure CreateControl;
    procedure InitControlData; override;
  public
    procedure lnSaveDocument(out inReturnCode: OleVariant; out stErrorMessage: OleVariant; 
                             inSetFormat: Integer; DATA: OleVariant; inRecsIn: SYSINT; 
                             out DATAOut: OleVariant; out inRecsOut: SYSINT);
    procedure lnUpData(out inReturnCode: OleVariant; out stErrorMessage: OleVariant; 
                       inCheck: Integer; lnRunTime: Integer; lnWaitTime: Integer);
    procedure lnSaveDocumentFree;
    procedure lnSaveDocumentEx(out inReturnCode: OleVariant; out stErrorMessage: OleVariant; 
                               inSetFormat: Integer; DATA: OleVariant; inRecsIn: SYSINT; 
                               out DATAOut: OleVariant; out inRecsOut: SYSINT; Flags: Integer);
    function lnGetSaveStatus: Integer;
    property  ControlInterface: ISaveDocument read GetControlInterface;
    property  DefaultInterface: ISaveDocument read GetControlInterface;
  published
    property Anchors;
  end;

// *********************************************************************//
// The Class CoPluginCall provides a Create and CreateRemote method to          
// create instances of the default interface IPluginCall exposed by              
// the CoClass PluginCall. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoPluginCall = class
    class function Create: IPluginCall;
    class function CreateRemote(const MachineName: string): IPluginCall;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TPluginCall
// Help String      : 
// Default Interface: IPluginCall
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (0)
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TPluginCallProperties= class;
{$ENDIF}
  TPluginCall = class(TOleServer)
  private
    FIntf: IPluginCall;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TPluginCallProperties;
    function GetServerProperties: TPluginCallProperties;
{$ENDIF}
    function GetDefaultInterface: IPluginCall;
  protected
    procedure InitServerData; override;
    function Get_DBName: WideString;
    function Get_CheckOut: Integer;
    function Get_AppHandle: OLE_HANDLE;
    function Get_ClientHandle: OLE_HANDLE;
    function Get_IdVersion: Integer;
    function Get_stType: WideString;
    function Get_stProduct: WideString;
    function Get_stVersion: WideString;
    function Get_IdParent: Integer;
    function Get_stParentType: WideString;
    function Get_stParentProduct: WideString;
    function Get_stParentVersion: WideString;
    function Get_IdLink: Integer;
    function Get_SelectedParent: WordBool;
    function Get_Selected: IPDMObject;
    function Get_WFSelected: IWFObject;
    function Get_AsyncTask: IDispatch;
    function Get_MainHandle: OLE_HANDLE;
    function Get_ServerName: WideString;
    function Get_ParentObject: IPDMObject;
    function Get_LinkName: WideString;
    function Get_Content: IContent;
    function Get_WBSSystem: IDispatch;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IPluginCall);
    procedure Disconnect; override;
    function RunMethod(const stMetod: WideString; vaParams: OleVariant): OleVariant;
    function GetDataSet(const stMetod: WideString; vaParams: OleVariant): IDispatch;
    property DefaultInterface: IPluginCall read GetDefaultInterface;
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
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TPluginCallProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TPluginCall
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TPluginCallProperties = class(TPersistent)
  private
    FServer:    TPluginCall;
    function    GetDefaultInterface: IPluginCall;
    constructor Create(AServer: TPluginCall);
  protected
    function Get_DBName: WideString;
    function Get_CheckOut: Integer;
    function Get_AppHandle: OLE_HANDLE;
    function Get_ClientHandle: OLE_HANDLE;
    function Get_IdVersion: Integer;
    function Get_stType: WideString;
    function Get_stProduct: WideString;
    function Get_stVersion: WideString;
    function Get_IdParent: Integer;
    function Get_stParentType: WideString;
    function Get_stParentProduct: WideString;
    function Get_stParentVersion: WideString;
    function Get_IdLink: Integer;
    function Get_SelectedParent: WordBool;
    function Get_Selected: IPDMObject;
    function Get_WFSelected: IWFObject;
    function Get_AsyncTask: IDispatch;
    function Get_MainHandle: OLE_HANDLE;
    function Get_ServerName: WideString;
    function Get_ParentObject: IPDMObject;
    function Get_LinkName: WideString;
    function Get_Content: IContent;
    function Get_WBSSystem: IDispatch;
  public
    property DefaultInterface: IPluginCall read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoURL provides a Create and CreateRemote method to          
// create instances of the default interface ICommand exposed by              
// the CoClass URL. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoURL = class
    class function Create: ICommand;
    class function CreateRemote(const MachineName: string): ICommand;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TURL
// Help String      : URL
// Default Interface: ICommand
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TURLProperties= class;
{$ENDIF}
  TURL = class(TOleServer)
  private
    FIntf: ICommand;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TURLProperties;
    function GetServerProperties: TURLProperties;
{$ENDIF}
    function GetDefaultInterface: ICommand;
  protected
    procedure InitServerData; override;
    function Get_WindowHandle: Integer;
    function Get_InstanceHandle: Integer;
    function Get_CommandLine: WideString;
    function Get_DummyParameter: Integer;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: ICommand);
    procedure Disconnect; override;
    procedure Execute(hWnd: Integer; hInstance: Integer; const stCmdLine: WideString; dummy: Integer);
    property DefaultInterface: ICommand read GetDefaultInterface;
    property WindowHandle: Integer read Get_WindowHandle;
    property InstanceHandle: Integer read Get_InstanceHandle;
    property CommandLine: WideString read Get_CommandLine;
    property DummyParameter: Integer read Get_DummyParameter;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TURLProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TURL
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TURLProperties = class(TPersistent)
  private
    FServer:    TURL;
    function    GetDefaultInterface: ICommand;
    constructor Create(AServer: TURL);
  protected
    function Get_WindowHandle: Integer;
    function Get_InstanceHandle: Integer;
    function Get_CommandLine: WideString;
    function Get_DummyParameter: Integer;
  public
    property DefaultInterface: ICommand read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoCDataBase provides a Create and CreateRemote method to          
// create instances of the default interface IDataBase exposed by              
// the CoClass CDataBase. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCDataBase = class
    class function Create: IDataBase;
    class function CreateRemote(const MachineName: string): IDataBase;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TCDataBase
// Help String      : 
// Default Interface: IDataBase
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TCDataBaseProperties= class;
{$ENDIF}
  TCDataBase = class(TOleServer)
  private
    FIntf: IDataBase;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TCDataBaseProperties;
    function GetServerProperties: TCDataBaseProperties;
{$ENDIF}
    function GetDefaultInterface: IDataBase;
  protected
    procedure InitServerData; override;
    function Get_Name: WideString;
    function Get_CurrentUser: ILoodsmanUser;
    function Get_MaxLabel: Integer;
    function Get_ReadOnlyDB: WordBool;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IDataBase);
    procedure Disconnect; override;
    function CheckoutObjects(IDs: OleVariant; const ACheckOut: WideString; AAddToRoot: WordBool): WideString;
    property DefaultInterface: IDataBase read GetDefaultInterface;
    property Name: WideString read Get_Name;
    property CurrentUser: ILoodsmanUser read Get_CurrentUser;
    property MaxLabel: Integer read Get_MaxLabel;
    property ReadOnlyDB: WordBool read Get_ReadOnlyDB;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TCDataBaseProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TCDataBase
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TCDataBaseProperties = class(TPersistent)
  private
    FServer:    TCDataBase;
    function    GetDefaultInterface: IDataBase;
    constructor Create(AServer: TCDataBase);
  protected
    function Get_Name: WideString;
    function Get_CurrentUser: ILoodsmanUser;
    function Get_MaxLabel: Integer;
    function Get_ReadOnlyDB: WordBool;
  public
    property DefaultInterface: IDataBase read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoCoLooPlugin provides a Create and CreateRemote method to          
// create instances of the default interface ILoodsmanPlugin exposed by              
// the CoClass CoLooPlugin. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCoLooPlugin = class
    class function Create: ILoodsmanPlugin;
    class function CreateRemote(const MachineName: string): ILoodsmanPlugin;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TCoLooPlugin
// Help String      : 
// Default Interface: ILoodsmanPlugin
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TCoLooPluginProperties= class;
{$ENDIF}
  TCoLooPlugin = class(TOleServer)
  private
    FIntf: ILoodsmanPlugin;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TCoLooPluginProperties;
    function GetServerProperties: TCoLooPluginProperties;
{$ENDIF}
    function GetDefaultInterface: ILoodsmanPlugin;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: ILoodsmanPlugin);
    procedure Disconnect; override;
    function GetName: WideString;
    function GetPath: WideString;
    function GetCommandCount: Integer;
    function GetCommandCaption(Index: Integer): WideString;
    function GetCommandName(Index: Integer): WideString;
    function ExecCommand(const ACommandName: WideString): OleVariant;
    property DefaultInterface: ILoodsmanPlugin read GetDefaultInterface;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TCoLooPluginProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TCoLooPlugin
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TCoLooPluginProperties = class(TPersistent)
  private
    FServer:    TCoLooPlugin;
    function    GetDefaultInterface: ILoodsmanPlugin;
    constructor Create(AServer: TCoLooPlugin);
  protected
  public
    property DefaultInterface: ILoodsmanPlugin read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoCDBWindow provides a Create and CreateRemote method to          
// create instances of the default interface IDBWindow exposed by              
// the CoClass CDBWindow. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCDBWindow = class
    class function Create: IDBWindow;
    class function CreateRemote(const MachineName: string): IDBWindow;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TCDBWindow
// Help String      : 
// Default Interface: IDBWindow
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TCDBWindowProperties= class;
{$ENDIF}
  TCDBWindow = class(TOleServer)
  private
    FIntf: IDBWindow;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TCDBWindowProperties;
    function GetServerProperties: TCDBWindowProperties;
{$ENDIF}
    function GetDefaultInterface: IDBWindow;
  protected
    procedure InitServerData; override;
    function Get_DataBase: IDataBase;
    function Get_CheckOutMode: WordBool;
    function Get_WindowHandle: OLE_HANDLE;
    function Get_Context: IDBContext;
    function Get_Content: IContent;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IDBWindow);
    procedure Disconnect; override;
    procedure Close;
    procedure Activate;
    property DefaultInterface: IDBWindow read GetDefaultInterface;
    property DataBase: IDataBase read Get_DataBase;
    property CheckOutMode: WordBool read Get_CheckOutMode;
    property WindowHandle: OLE_HANDLE read Get_WindowHandle;
    property Context: IDBContext read Get_Context;
    property Content: IContent read Get_Content;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TCDBWindowProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TCDBWindow
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TCDBWindowProperties = class(TPersistent)
  private
    FServer:    TCDBWindow;
    function    GetDefaultInterface: IDBWindow;
    constructor Create(AServer: TCDBWindow);
  protected
    function Get_DataBase: IDataBase;
    function Get_CheckOutMode: WordBool;
    function Get_WindowHandle: OLE_HANDLE;
    function Get_Context: IDBContext;
    function Get_Content: IContent;
  public
    property DefaultInterface: IDBWindow read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoCoSimpleAPI provides a Create and CreateRemote method to          
// create instances of the default interface IDispatch exposed by              
// the CoClass CoSimpleAPI. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCoSimpleAPI = class
    class function Create: IDispatch;
    class function CreateRemote(const MachineName: string): IDispatch;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TCoSimpleAPI
// Help String      : 
// Default Interface: IDispatch
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TCoSimpleAPIProperties= class;
{$ENDIF}
  TCoSimpleAPI = class(TOleServer)
  private
    FIntf: IDispatch;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TCoSimpleAPIProperties;
    function GetServerProperties: TCoSimpleAPIProperties;
{$ENDIF}
    function GetDefaultInterface: IDispatch;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IDispatch);
    procedure Disconnect; override;
    property DefaultInterface: IDispatch read GetDefaultInterface;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TCoSimpleAPIProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TCoSimpleAPI
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TCoSimpleAPIProperties = class(TPersistent)
  private
    FServer:    TCoSimpleAPI;
    function    GetDefaultInterface: IDispatch;
    constructor Create(AServer: TCoSimpleAPI);
  protected
  public
    property DefaultInterface: IDispatch read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoCoDataSet provides a Create and CreateRemote method to          
// create instances of the default interface IDispatch exposed by              
// the CoClass CoDataSet. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCoDataSet = class
    class function Create: IDispatch;
    class function CreateRemote(const MachineName: string): IDispatch;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TCoDataSet
// Help String      : 
// Default Interface: IDispatch
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TCoDataSetProperties= class;
{$ENDIF}
  TCoDataSet = class(TOleServer)
  private
    FIntf: IDispatch;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TCoDataSetProperties;
    function GetServerProperties: TCoDataSetProperties;
{$ENDIF}
    function GetDefaultInterface: IDispatch;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IDispatch);
    procedure Disconnect; override;
    property DefaultInterface: IDispatch read GetDefaultInterface;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TCoDataSetProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TCoDataSet
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TCoDataSetProperties = class(TPersistent)
  private
    FServer:    TCoDataSet;
    function    GetDefaultInterface: IDispatch;
    constructor Create(AServer: TCoDataSet);
  protected
  public
    property DefaultInterface: IDispatch read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoCoClientAsyncTask provides a Create and CreateRemote method to          
// create instances of the default interface IDispatch exposed by              
// the CoClass CoClientAsyncTask. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCoClientAsyncTask = class
    class function Create: IDispatch;
    class function CreateRemote(const MachineName: string): IDispatch;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TCoClientAsyncTask
// Help String      : 
// Default Interface: IDispatch
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TCoClientAsyncTaskProperties= class;
{$ENDIF}
  TCoClientAsyncTask = class(TOleServer)
  private
    FIntf: IDispatch;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TCoClientAsyncTaskProperties;
    function GetServerProperties: TCoClientAsyncTaskProperties;
{$ENDIF}
    function GetDefaultInterface: IDispatch;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IDispatch);
    procedure Disconnect; override;
    property DefaultInterface: IDispatch read GetDefaultInterface;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TCoClientAsyncTaskProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TCoClientAsyncTask
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TCoClientAsyncTaskProperties = class(TPersistent)
  private
    FServer:    TCoClientAsyncTask;
    function    GetDefaultInterface: IDispatch;
    constructor Create(AServer: TCoClientAsyncTask);
  protected
  public
    property DefaultInterface: IDispatch read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoCoOptions provides a Create and CreateRemote method to          
// create instances of the default interface IOptions exposed by              
// the CoClass CoOptions. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCoOptions = class
    class function Create: IOptions;
    class function CreateRemote(const MachineName: string): IOptions;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TCoOptions
// Help String      : 
// Default Interface: IOptions
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TCoOptionsProperties= class;
{$ENDIF}
  TCoOptions = class(TOleServer)
  private
    FIntf: IOptions;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TCoOptionsProperties;
    function GetServerProperties: TCoOptionsProperties;
{$ENDIF}
    function GetDefaultInterface: IOptions;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IOptions);
    procedure Disconnect; override;
    procedure SetValue(const ASectionName: WideString; const AValueName: WideString; 
                       AValue: OleVariant);
    function GetValue(const ASectionName: WideString; const AValueName: WideString; 
                      ADefaultValue: OleVariant): OleVariant;
    procedure DeleteSection(const ASectionName: WideString);
    procedure DeleteValue(const ASectionName: WideString; const AValueName: WideString; 
                          ADeleteEmptySection: WordBool);
    function SectionExists(const ASectionName: WideString): WordBool;
    function ValueExists(const ASectionName: WideString; const AValueName: WideString): WordBool;
    property DefaultInterface: IOptions read GetDefaultInterface;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TCoOptionsProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TCoOptions
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TCoOptionsProperties = class(TPersistent)
  private
    FServer:    TCoOptions;
    function    GetDefaultInterface: IOptions;
    constructor Create(AServer: TCoOptions);
  protected
  public
    property DefaultInterface: IOptions read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoCoDBContext provides a Create and CreateRemote method to          
// create instances of the default interface IDBContext exposed by              
// the CoClass CoDBContext. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCoDBContext = class
    class function Create: IDBContext;
    class function CreateRemote(const MachineName: string): IDBContext;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TCoDBContext
// Help String      : 
// Default Interface: IDBContext
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TCoDBContextProperties= class;
{$ENDIF}
  TCoDBContext = class(TOleServer)
  private
    FIntf: IDBContext;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TCoDBContextProperties;
    function GetServerProperties: TCoDBContextProperties;
{$ENDIF}
    function GetDefaultInterface: IDBContext;
  protected
    procedure InitServerData; override;
    function Get_ContextType: Integer;
    function Get_Connection: IDispatch;
    function Get_WBSSystem: IDispatch;
    function Get_ValueCount: Integer;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IDBContext);
    procedure Disconnect; override;
    function GetContextValue(const AValueName: WideString): OleVariant;
    procedure SetContextValue(const AValueName: WideString; AValue: OleVariant);
    function GetValueName(AIndex: Integer): WideString;
    function IsEqual(const AContext: IDBContext): WordBool;
    property DefaultInterface: IDBContext read GetDefaultInterface;
    property ContextType: Integer read Get_ContextType;
    property Connection: IDispatch read Get_Connection;
    property WBSSystem: IDispatch read Get_WBSSystem;
    property ValueCount: Integer read Get_ValueCount;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TCoDBContextProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TCoDBContext
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TCoDBContextProperties = class(TPersistent)
  private
    FServer:    TCoDBContext;
    function    GetDefaultInterface: IDBContext;
    constructor Create(AServer: TCoDBContext);
  protected
    function Get_ContextType: Integer;
    function Get_Connection: IDispatch;
    function Get_WBSSystem: IDispatch;
    function Get_ValueCount: Integer;
  public
    property DefaultInterface: IDBContext read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoCoFrameContainer provides a Create and CreateRemote method to          
// create instances of the default interface IFrameContainer exposed by              
// the CoClass CoFrameContainer. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCoFrameContainer = class
    class function Create: IFrameContainer;
    class function CreateRemote(const MachineName: string): IFrameContainer;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TCoFrameContainer
// Help String      : 
// Default Interface: IFrameContainer
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TCoFrameContainerProperties= class;
{$ENDIF}
  TCoFrameContainer = class(TOleServer)
  private
    FIntf: IFrameContainer;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TCoFrameContainerProperties;
    function GetServerProperties: TCoFrameContainerProperties;
{$ENDIF}
    function GetDefaultInterface: IFrameContainer;
  protected
    procedure InitServerData; override;
    function Get_ParentFrame: IFrameContainer;
    function Get_IsRoot: WordBool;
    function Get_Content: IContent;
    function Get_Level: Integer;
    function Get_FrameKey: WideString;
    function Get_Editing: WordBool;
    function Get_LayoutName: WideString;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IFrameContainer);
    procedure Disconnect; override;
    procedure StartRefresh(AChildrenOnly: WordBool);
    procedure ChangeContent(DefaultTimeout: WordBool; Timeout: SYSUINT);
    procedure Validate(AValid: WordBool);
    property DefaultInterface: IFrameContainer read GetDefaultInterface;
    property ParentFrame: IFrameContainer read Get_ParentFrame;
    property IsRoot: WordBool read Get_IsRoot;
    property Content: IContent read Get_Content;
    property Level: Integer read Get_Level;
    property FrameKey: WideString read Get_FrameKey;
    property Editing: WordBool read Get_Editing;
    property LayoutName: WideString read Get_LayoutName;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TCoFrameContainerProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TCoFrameContainer
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TCoFrameContainerProperties = class(TPersistent)
  private
    FServer:    TCoFrameContainer;
    function    GetDefaultInterface: IFrameContainer;
    constructor Create(AServer: TCoFrameContainer);
  protected
    function Get_ParentFrame: IFrameContainer;
    function Get_IsRoot: WordBool;
    function Get_Content: IContent;
    function Get_Level: Integer;
    function Get_FrameKey: WideString;
    function Get_Editing: WordBool;
    function Get_LayoutName: WideString;
  public
    property DefaultInterface: IFrameContainer read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoCoNotification provides a Create and CreateRemote method to          
// create instances of the default interface INotification exposed by              
// the CoClass CoNotification. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCoNotification = class
    class function Create: INotification;
    class function CreateRemote(const MachineName: string): INotification;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TCoNotification
// Help String      : 
// Default Interface: INotification
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TCoNotificationProperties= class;
{$ENDIF}
  TCoNotification = class(TOleServer)
  private
    FIntf: INotification;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TCoNotificationProperties;
    function GetServerProperties: TCoNotificationProperties;
{$ENDIF}
    function GetDefaultInterface: INotification;
  protected
    procedure InitServerData; override;
    function Get_NotifyType: Integer;
    function Get_NotifyCategory: WideString;
    function Get_DataType: Integer;
    function Get_DATA: OleVariant;
    function Get_CheckOut: WideString;
    function Get_Source: WideString;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: INotification);
    procedure Disconnect; override;
    property DefaultInterface: INotification read GetDefaultInterface;
    property NotifyType: Integer read Get_NotifyType;
    property NotifyCategory: WideString read Get_NotifyCategory;
    property DataType: Integer read Get_DataType;
    property DATA: OleVariant read Get_DATA;
    property CheckOut: WideString read Get_CheckOut;
    property Source: WideString read Get_Source;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TCoNotificationProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TCoNotification
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TCoNotificationProperties = class(TPersistent)
  private
    FServer:    TCoNotification;
    function    GetDefaultInterface: INotification;
    constructor Create(AServer: TCoNotification);
  protected
    function Get_NotifyType: Integer;
    function Get_NotifyCategory: WideString;
    function Get_DataType: Integer;
    function Get_DATA: OleVariant;
    function Get_CheckOut: WideString;
    function Get_Source: WideString;
  public
    property DefaultInterface: INotification read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoCoMenuBar provides a Create and CreateRemote method to          
// create instances of the default interface IMenuBar exposed by              
// the CoClass CoMenuBar. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCoMenuBar = class
    class function Create: IMenuBar;
    class function CreateRemote(const MachineName: string): IMenuBar;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TCoMenuBar
// Help String      : 
// Default Interface: IMenuBar
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TCoMenuBarProperties= class;
{$ENDIF}
  TCoMenuBar = class(TOleServer)
  private
    FIntf: IMenuBar;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TCoMenuBarProperties;
    function GetServerProperties: TCoMenuBarProperties;
{$ENDIF}
    function GetDefaultInterface: IMenuBar;
  protected
    procedure InitServerData; override;
    function Get_Caption: WideString;
    function Get_Visible: WordBool;
    procedure Set_Visible(Value: WordBool);
    function Get_MenuItemCount: Integer;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IMenuBar);
    procedure Disconnect; override;
    function GetMenuItem(AIndex: Integer): IMenuItem;
    function AddMenuItem(const MenuItemID: WideString; Index: Integer; BeginGroup: WordBool): IMenuItem;
    function GetItemByText(const AText: WideString): IMenuItem;
    function CreateMenuItem(const MenuItemID: WideString; const MenuCaption: WideString; 
                            MenuItemType: MenuItemTypes; const Description: WideString; 
                            ActionCommand: Integer; Index: Integer; BeginGroup: WordBool): IMenuItem;
    procedure ClearMenuItems;
    property DefaultInterface: IMenuBar read GetDefaultInterface;
    property Caption: WideString read Get_Caption;
    property MenuItemCount: Integer read Get_MenuItemCount;
    property Visible: WordBool read Get_Visible write Set_Visible;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TCoMenuBarProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TCoMenuBar
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TCoMenuBarProperties = class(TPersistent)
  private
    FServer:    TCoMenuBar;
    function    GetDefaultInterface: IMenuBar;
    constructor Create(AServer: TCoMenuBar);
  protected
    function Get_Caption: WideString;
    function Get_Visible: WordBool;
    procedure Set_Visible(Value: WordBool);
    function Get_MenuItemCount: Integer;
  public
    property DefaultInterface: IMenuBar read GetDefaultInterface;
  published
    property Visible: WordBool read Get_Visible write Set_Visible;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoCoMenuItem provides a Create and CreateRemote method to          
// create instances of the default interface IMenuItem exposed by              
// the CoClass CoMenuItem. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCoMenuItem = class
    class function Create: IMenuItem;
    class function CreateRemote(const MachineName: string): IMenuItem;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TCoMenuItem
// Help String      : 
// Default Interface: IMenuItem
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TCoMenuItemProperties= class;
{$ENDIF}
  TCoMenuItem = class(TOleServer)
  private
    FIntf: IMenuItem;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TCoMenuItemProperties;
    function GetServerProperties: TCoMenuItemProperties;
{$ENDIF}
    function GetDefaultInterface: IMenuItem;
  protected
    procedure InitServerData; override;
    function Get_Caption: WideString;
    function Get_Action: Integer;
    function Get_Enabled: WordBool;
    procedure Set_Enabled(Value: WordBool);
    function Get_MenuItemCount: Integer;
    function Get_Icon: Integer;
    procedure Set_Icon(Value: Integer);
    function Get_BeginGroup: WordBool;
    procedure Set_BeginGroup(Value: WordBool);
    function Get_Visible: WordBool;
    procedure Set_Visible(Value: WordBool);
    function Get_ItemType: MenuItemTypes;
    function Get_MenuItemID: WideString;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IMenuItem);
    procedure Disconnect; override;
    function GetMenuItem(AIndex: Integer): IMenuItem;
    function AddMenuItem(const MenuItemID: WideString; Index: Integer; BeginGroup: WordBool): IMenuItem;
    function GetItemByText(const AText: WideString): IMenuItem;
    function CreateMenuItem(const MenuItemID: WideString; const MenuCaption: WideString; 
                            MenuItemType: MenuItemTypes; const Description: WideString; 
                            ActionCommand: Integer; Index: Integer; BeginGroup: WordBool): IMenuItem;
    procedure ClearMenuItems;
    property DefaultInterface: IMenuItem read GetDefaultInterface;
    property Caption: WideString read Get_Caption;
    property Action: Integer read Get_Action;
    property MenuItemCount: Integer read Get_MenuItemCount;
    property ItemType: MenuItemTypes read Get_ItemType;
    property MenuItemID: WideString read Get_MenuItemID;
    property Enabled: WordBool read Get_Enabled write Set_Enabled;
    property Icon: Integer read Get_Icon write Set_Icon;
    property BeginGroup: WordBool read Get_BeginGroup write Set_BeginGroup;
    property Visible: WordBool read Get_Visible write Set_Visible;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TCoMenuItemProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TCoMenuItem
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TCoMenuItemProperties = class(TPersistent)
  private
    FServer:    TCoMenuItem;
    function    GetDefaultInterface: IMenuItem;
    constructor Create(AServer: TCoMenuItem);
  protected
    function Get_Caption: WideString;
    function Get_Action: Integer;
    function Get_Enabled: WordBool;
    procedure Set_Enabled(Value: WordBool);
    function Get_MenuItemCount: Integer;
    function Get_Icon: Integer;
    procedure Set_Icon(Value: Integer);
    function Get_BeginGroup: WordBool;
    procedure Set_BeginGroup(Value: WordBool);
    function Get_Visible: WordBool;
    procedure Set_Visible(Value: WordBool);
    function Get_ItemType: MenuItemTypes;
    function Get_MenuItemID: WideString;
  public
    property DefaultInterface: IMenuItem read GetDefaultInterface;
  published
    property Enabled: WordBool read Get_Enabled write Set_Enabled;
    property Icon: Integer read Get_Icon write Set_Icon;
    property BeginGroup: WordBool read Get_BeginGroup write Set_BeginGroup;
    property Visible: WordBool read Get_Visible write Set_Visible;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoCoActions provides a Create and CreateRemote method to          
// create instances of the default interface IActions exposed by              
// the CoClass CoActions. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCoActions = class
    class function Create: IActions;
    class function CreateRemote(const MachineName: string): IActions;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TCoActions
// Help String      : 
// Default Interface: IActions
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TCoActionsProperties= class;
{$ENDIF}
  TCoActions = class(TOleServer)
  private
    FIntf: IActions;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TCoActionsProperties;
    function GetServerProperties: TCoActionsProperties;
{$ENDIF}
    function GetDefaultInterface: IActions;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IActions);
    procedure Disconnect; override;
    procedure SetActionEnabled(ActionCommand: Integer; ActionEnabled: WordBool);
    function IsActionEnabled(ActionCommand: Integer): WordBool;
    function ExecuteAction(ActionCommand: Integer; ActionData: OleVariant; 
                           var ActionResultData: OleVariant): ActionResults;
    function CreateAction(const ActionCaption: WideString; const ActionHint: WideString; 
                          const ActionShortcut: WideString; ActionIconIndex: Integer; 
                          ActionIcon: OleVariant): Integer;
    procedure SetActionVisible(ActionCommand: Integer; ActionVisible: WordBool);
    function IsActionVisible(ActionCommand: Integer): WordBool;
    property DefaultInterface: IActions read GetDefaultInterface;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TCoActionsProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TCoActions
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TCoActionsProperties = class(TPersistent)
  private
    FServer:    TCoActions;
    function    GetDefaultInterface: IActions;
    constructor Create(AServer: TCoActions);
  protected
  public
    property DefaultInterface: IActions read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoLooApplication provides a Create and CreateRemote method to          
// create instances of the default interface ILoodsmanApplication exposed by              
// the CoClass LooApplication. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoLooApplication = class
    class function Create: ILoodsmanApplication;
    class function CreateRemote(const MachineName: string): ILoodsmanApplication;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TLooApplication
// Help String      : 
// Default Interface: ILoodsmanApplication
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TLooApplicationProperties= class;
{$ENDIF}
  TLooApplication = class(TOleServer)
  private
    FAutoQuit: Boolean;
    FIntf: ILoodsmanApplication;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TLooApplicationProperties;
    function GetServerProperties: TLooApplicationProperties;
{$ENDIF}
    function GetDefaultInterface: ILoodsmanApplication;
  protected
    procedure InitServerData; override;
    function Get_ActiveWindow: IDBWindow;
    function Get_MainHandle: OLE_HANDLE;
    function Get_PluginCount: Integer;
    function Get_WindowCount: Integer;
    function Get_AppHandle: OLE_HANDLE;
    function Get_DataBase: IDataBase;
    function Get_Title: WideString;
    function Get_Actions: IActions;
    function Get_FilePath: WideString;
    function Get_HelpPath: WideString;
    function Get_SessionSecurityLabel: Integer;
    function Get_TypeIconsOffset: Integer;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: ILoodsmanApplication);
    procedure Disconnect; override;
    procedure SetVisible(Value: WordBool);
    function GetVisible: WordBool;
    procedure Quit;
    procedure Activate;
    procedure Minimize;
    procedure Maximize;
    procedure Restore;
    function GetPlugin(Index: Integer): ILoodsmanPlugin;
    function GetPluginByName(const Name: WideString): ILoodsmanPlugin;
    procedure NotifyUser(const Header: WideString; const Text: WideString; NotifyKind: Integer; 
                         Reserved: Integer);
    procedure TileWindows(ATileMode: Integer);
    procedure CascadeWindows;
    function GetWindow(Index: Integer): IDBWindow;
    function CreateWindow(const ACaption: WideString; const AContext: IDBContext; 
                          const ACLSID: WideString; AFlags: Integer): IDBWindow;
    function CreateContext(AContextType: Integer; const ACheckOut: WideString; AData: Integer): IDBContext;
    function FindWindow(const AContext: IDBContext; const ACLSID: WideString; AFlags: Integer): IDBWindow;
    function OpenDatabase(const DBName: WideString; Params: OleVariant): WordBool;
    procedure CloseDatabase;
    procedure SendNotification(const Source: WideString; NotifyType: Integer; 
                               const NotifyCategory: WideString; DataType: Integer; 
                               DATA: OleVariant; const CheckOut: WideString);
    procedure AddNotificationHandler(const NotificationIntf: INotificationHandler; 
                                     NotifyType: Integer; const NotifyCategory: WideString; 
                                     DataType: Integer);
    procedure RemoveNotificationHandler(const NotificationIntf: INotificationHandler; 
                                        NotifyType: Integer; const NotifyCategory: WideString; 
                                        DataType: Integer);
    function FindService(AIntfID: TGUID; BindedOnly: WordBool): IDispatch;
    function ShowWindow(const ACaption: WideString; const AContext: IDBContext; 
                        const ACLSID: WideString; AFlags: Integer): IDBWindow;
    function OpenURL(const URLString: WideString; Flags: Integer): Integer;
    procedure AddActionHandler(const ActionHandler: IActionHandler; ActionCommand: Integer; 
                               Priority: Integer; DataDependent: WordBool);
    procedure RemoveActionHandler(const ActionHandler: IActionHandler; ActionCommand: Integer);
    function GetTypeIconIndex(ATypeID: Integer): Integer;
    function OpenCheckout(const ACheckOut: WideString): IDBWindow;
    property DefaultInterface: ILoodsmanApplication read GetDefaultInterface;
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
  published
    property AutoQuit: Boolean read FAutoQuit write FAutoQuit; 
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TLooApplicationProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TLooApplication
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TLooApplicationProperties = class(TPersistent)
  private
    FServer:    TLooApplication;
    function    GetDefaultInterface: ILoodsmanApplication;
    constructor Create(AServer: TLooApplication);
  protected
    function Get_ActiveWindow: IDBWindow;
    function Get_MainHandle: OLE_HANDLE;
    function Get_PluginCount: Integer;
    function Get_WindowCount: Integer;
    function Get_AppHandle: OLE_HANDLE;
    function Get_DataBase: IDataBase;
    function Get_Title: WideString;
    function Get_Actions: IActions;
    function Get_FilePath: WideString;
    function Get_HelpPath: WideString;
    function Get_SessionSecurityLabel: Integer;
    function Get_TypeIconsOffset: Integer;
  public
    property DefaultInterface: ILoodsmanApplication read GetDefaultInterface;
  published
  end;
{$ENDIF}


procedure Register;

resourcestring
  dtlServerPage = 'Servers';

  dtlOcxPage = 'ActiveX';

implementation

uses ComObj;

class function CoBOLoodsmanSimpleProvider.Create: IBOSimpleProvider;
begin
  Result := CreateComObject(CLASS_BOLoodsmanSimpleProvider) as IBOSimpleProvider;
end;

class function CoBOLoodsmanSimpleProvider.CreateRemote(const MachineName: string): IBOSimpleProvider;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_BOLoodsmanSimpleProvider) as IBOSimpleProvider;
end;

procedure TBOLoodsmanSimpleProvider.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{8EC1A149-8D6A-48C6-A540-B76A118A5361}';
    IntfIID:   '{B57C3F55-8C78-437F-AEFD-911FC1A3617A}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TBOLoodsmanSimpleProvider.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IBOSimpleProvider;
  end;
end;

procedure TBOLoodsmanSimpleProvider.ConnectTo(svrIntf: IBOSimpleProvider);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TBOLoodsmanSimpleProvider.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TBOLoodsmanSimpleProvider.GetDefaultInterface: IBOSimpleProvider;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TBOLoodsmanSimpleProvider.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TBOLoodsmanSimpleProviderProperties.Create(Self);
{$ENDIF}
end;

destructor TBOLoodsmanSimpleProvider.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TBOLoodsmanSimpleProvider.GetServerProperties: TBOLoodsmanSimpleProviderProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TBOLoodsmanSimpleProvider.Get_Request: IBORequest;
begin
    Result := DefaultInterface.Request;
end;

function TBOLoodsmanSimpleProvider.Get_SourceID: WideString;
begin
    Result := DefaultInterface.SourceID;
end;

function TBOLoodsmanSimpleProvider.Get_Response: IBOResponse;
begin
    Result := DefaultInterface.Response;
end;

function TBOLoodsmanSimpleProvider.Get_ClientID: Integer;
begin
    Result := DefaultInterface.ClientID;
end;

function TBOLoodsmanSimpleProvider.Get_Status: Integer;
begin
    Result := DefaultInterface.Status;
end;

function TBOLoodsmanSimpleProvider.Get_NewQuery: IBOQuery;
begin
    Result := DefaultInterface.NewQuery;
end;

procedure TBOLoodsmanSimpleProvider.Refresh;
begin
  DefaultInterface.Refresh;
end;

procedure TBOLoodsmanSimpleProvider.ExecuteRequest;
begin
  DefaultInterface.ExecuteRequest;
end;

function TBOLoodsmanSimpleProvider.GetObject(const ClassID: WideString; const ObjectID: WideString; 
                                             Options: Integer): IBOObject;
begin
  Result := DefaultInterface.GetObject(ClassID, ObjectID, Options);
end;

function TBOLoodsmanSimpleProvider.GetObjects(const ClassID: WideString; Options: Integer): IBOObjectCollection;
begin
  Result := DefaultInterface.GetObjects(ClassID, Options);
end;

function TBOLoodsmanSimpleProvider.Select(Modal: WordBool; var Location: WideString; 
                                          ClientWindow: Integer): WordBool;
begin
  Result := DefaultInterface.Select(Modal, Location, ClientWindow);
end;

procedure TBOLoodsmanSimpleProvider.GetObjectInfo(const Location: WideString; 
                                                  var ClassID: WideString; var ObjectID: WideString);
begin
  DefaultInterface.GetObjectInfo(Location, ClassID, ObjectID);
end;

procedure TBOLoodsmanSimpleProvider.RegisterClient(const aName: WideString);
begin
  DefaultInterface.RegisterClient(aName);
end;

procedure TBOLoodsmanSimpleProvider.UnRegisterClient;
begin
  DefaultInterface.UnRegisterClient;
end;

procedure TBOLoodsmanSimpleProvider.ExecuteQuery(const AQuery: IBOQuery; out AErrorCode: Integer; 
                                                 out AErrorMessage: WideString);
begin
  DefaultInterface.ExecuteQuery(AQuery, AErrorCode, AErrorMessage);
end;

function TBOLoodsmanSimpleProvider.Select2(Modal: WordBool; ClientWindow: Integer; 
                                           const InLocation: WideString; out OutLocation: WideString): WordBool;
begin
  Result := DefaultInterface.Select2(Modal, ClientWindow, InLocation, OutLocation);
end;

procedure TBOLoodsmanSimpleProvider.GetObjectInfo2(const Location: WideString; 
                                                   out ClassID: WideString; out ObjectID: WideString);
begin
  DefaultInterface.GetObjectInfo2(Location, ClassID, ObjectID);
end;

function TBOLoodsmanSimpleProvider.GetObject2(const ClassID: WideString; 
                                              const ObjectID: WideString; Options: Integer): IBOObject;
begin
  Result := DefaultInterface.GetObject2(ClassID, ObjectID, Options);
end;

function TBOLoodsmanSimpleProvider.GetObjects2(const ClassID: WideString; Options: Integer): IBOObjectCollection;
begin
  Result := DefaultInterface.GetObjects2(ClassID, Options);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TBOLoodsmanSimpleProviderProperties.Create(AServer: TBOLoodsmanSimpleProvider);
begin
  inherited Create;
  FServer := AServer;
end;

function TBOLoodsmanSimpleProviderProperties.GetDefaultInterface: IBOSimpleProvider;
begin
  Result := FServer.DefaultInterface;
end;

function TBOLoodsmanSimpleProviderProperties.Get_Request: IBORequest;
begin
    Result := DefaultInterface.Request;
end;

function TBOLoodsmanSimpleProviderProperties.Get_SourceID: WideString;
begin
    Result := DefaultInterface.SourceID;
end;

function TBOLoodsmanSimpleProviderProperties.Get_Response: IBOResponse;
begin
    Result := DefaultInterface.Response;
end;

function TBOLoodsmanSimpleProviderProperties.Get_ClientID: Integer;
begin
    Result := DefaultInterface.ClientID;
end;

function TBOLoodsmanSimpleProviderProperties.Get_Status: Integer;
begin
    Result := DefaultInterface.Status;
end;

function TBOLoodsmanSimpleProviderProperties.Get_NewQuery: IBOQuery;
begin
    Result := DefaultInterface.NewQuery;
end;

{$ENDIF}

class function CoBOAttribute.Create: IBOAttribute;
begin
  Result := CreateComObject(CLASS_BOAttribute) as IBOAttribute;
end;

class function CoBOAttribute.CreateRemote(const MachineName: string): IBOAttribute;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_BOAttribute) as IBOAttribute;
end;

procedure TBOAttribute.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{17B4A182-40DC-41FE-87EF-F69454458747}';
    IntfIID:   '{F262BEE6-DAA8-4EAB-958F-589253F8D3B3}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TBOAttribute.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IBOAttribute;
  end;
end;

procedure TBOAttribute.ConnectTo(svrIntf: IBOAttribute);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TBOAttribute.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TBOAttribute.GetDefaultInterface: IBOAttribute;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TBOAttribute.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TBOAttributeProperties.Create(Self);
{$ENDIF}
end;

destructor TBOAttribute.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TBOAttribute.GetServerProperties: TBOAttributeProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TBOAttribute.Get_XML: WideString;
begin
    Result := DefaultInterface.XML;
end;

function TBOAttribute.Get_Name: WideString;
begin
    Result := DefaultInterface.Name;
end;

function TBOAttribute.Get_Value: WideString;
begin
    Result := DefaultInterface.Value;
end;

procedure TBOAttribute.Set_Value(const Value: WideString);
  { Warning: The property Value has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Value := Value;
end;

function TBOAttribute.Get_AsString: WideString;
begin
    Result := DefaultInterface.AsString;
end;

procedure TBOAttribute.Set_AsString(const Value: WideString);
  { Warning: The property AsString has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.AsString := Value;
end;

function TBOAttribute.Get_AsFloat: Double;
begin
    Result := DefaultInterface.AsFloat;
end;

procedure TBOAttribute.Set_AsFloat(Value: Double);
begin
  DefaultInterface.Set_AsFloat(Value);
end;

function TBOAttribute.Get_AsInteger: Integer;
begin
    Result := DefaultInterface.AsInteger;
end;

procedure TBOAttribute.Set_AsInteger(Value: Integer);
begin
  DefaultInterface.Set_AsInteger(Value);
end;

function TBOAttribute.Get_AsBoolean: WordBool;
begin
    Result := DefaultInterface.AsBoolean;
end;

procedure TBOAttribute.Set_AsBoolean(Value: WordBool);
begin
  DefaultInterface.Set_AsBoolean(Value);
end;

function TBOAttribute.Get_Attributes: IBOAttributeCollection;
begin
    Result := DefaultInterface.Attributes;
end;

function TBOAttribute.Get_Attribute(const aName: WideString): IBOAttribute;
begin
    Result := DefaultInterface.Attribute[aName];
end;

function TBOAttribute.Get_Parent: IDispatch;
begin
    Result := DefaultInterface.Parent;
end;

procedure TBOAttribute.Set_Parent(const Value: IDispatch);
begin
  DefaultInterface.Set_Parent(Value);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TBOAttributeProperties.Create(AServer: TBOAttribute);
begin
  inherited Create;
  FServer := AServer;
end;

function TBOAttributeProperties.GetDefaultInterface: IBOAttribute;
begin
  Result := FServer.DefaultInterface;
end;

function TBOAttributeProperties.Get_XML: WideString;
begin
    Result := DefaultInterface.XML;
end;

function TBOAttributeProperties.Get_Name: WideString;
begin
    Result := DefaultInterface.Name;
end;

function TBOAttributeProperties.Get_Value: WideString;
begin
    Result := DefaultInterface.Value;
end;

procedure TBOAttributeProperties.Set_Value(const Value: WideString);
  { Warning: The property Value has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Value := Value;
end;

function TBOAttributeProperties.Get_AsString: WideString;
begin
    Result := DefaultInterface.AsString;
end;

procedure TBOAttributeProperties.Set_AsString(const Value: WideString);
  { Warning: The property AsString has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.AsString := Value;
end;

function TBOAttributeProperties.Get_AsFloat: Double;
begin
    Result := DefaultInterface.AsFloat;
end;

procedure TBOAttributeProperties.Set_AsFloat(Value: Double);
begin
  DefaultInterface.Set_AsFloat(Value);
end;

function TBOAttributeProperties.Get_AsInteger: Integer;
begin
    Result := DefaultInterface.AsInteger;
end;

procedure TBOAttributeProperties.Set_AsInteger(Value: Integer);
begin
  DefaultInterface.Set_AsInteger(Value);
end;

function TBOAttributeProperties.Get_AsBoolean: WordBool;
begin
    Result := DefaultInterface.AsBoolean;
end;

procedure TBOAttributeProperties.Set_AsBoolean(Value: WordBool);
begin
  DefaultInterface.Set_AsBoolean(Value);
end;

function TBOAttributeProperties.Get_Attributes: IBOAttributeCollection;
begin
    Result := DefaultInterface.Attributes;
end;

function TBOAttributeProperties.Get_Attribute(const aName: WideString): IBOAttribute;
begin
    Result := DefaultInterface.Attribute[aName];
end;

function TBOAttributeProperties.Get_Parent: IDispatch;
begin
    Result := DefaultInterface.Parent;
end;

procedure TBOAttributeProperties.Set_Parent(const Value: IDispatch);
begin
  DefaultInterface.Set_Parent(Value);
end;

{$ENDIF}

class function CoBOAttributeCollection.Create: IBOAttributeCollection;
begin
  Result := CreateComObject(CLASS_BOAttributeCollection) as IBOAttributeCollection;
end;

class function CoBOAttributeCollection.CreateRemote(const MachineName: string): IBOAttributeCollection;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_BOAttributeCollection) as IBOAttributeCollection;
end;

procedure TBOAttributeCollection.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{B43E73FB-F6FA-4EDD-BFB9-8D27E80E525D}';
    IntfIID:   '{FE05BB59-5F48-435D-8B21-705CA58C0EE3}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TBOAttributeCollection.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IBOAttributeCollection;
  end;
end;

procedure TBOAttributeCollection.ConnectTo(svrIntf: IBOAttributeCollection);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TBOAttributeCollection.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TBOAttributeCollection.GetDefaultInterface: IBOAttributeCollection;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TBOAttributeCollection.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TBOAttributeCollectionProperties.Create(Self);
{$ENDIF}
end;

destructor TBOAttributeCollection.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TBOAttributeCollection.GetServerProperties: TBOAttributeCollectionProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TBOAttributeCollection.Get_Count: Integer;
begin
    Result := DefaultInterface.Count;
end;

function TBOAttributeCollection.Get_XML: WideString;
begin
    Result := DefaultInterface.XML;
end;

function TBOAttributeCollection.Get_Item(Index: Integer): IBOAttribute;
begin
    Result := DefaultInterface.Item[Index];
end;

function TBOAttributeCollection.Get_Attribute(const aName: WideString): IBOAttribute;
begin
    Result := DefaultInterface.Attribute[aName];
end;

function TBOAttributeCollection.Get_Value(const aName: WideString): WideString;
begin
    Result := DefaultInterface.Value[aName];
end;

procedure TBOAttributeCollection.Set_Value(const aName: WideString; const Value: WideString);
  { Warning: The property Value has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Value := Value;
end;

function TBOAttributeCollection.Get_AutoAppend: WordBool;
begin
    Result := DefaultInterface.AutoAppend;
end;

procedure TBOAttributeCollection.Set_AutoAppend(Value: WordBool);
begin
  DefaultInterface.Set_AutoAppend(Value);
end;

function TBOAttributeCollection.Get_Duplicates: WordBool;
begin
    Result := DefaultInterface.Duplicates;
end;

procedure TBOAttributeCollection.Set_Duplicates(Value: WordBool);
begin
  DefaultInterface.Set_Duplicates(Value);
end;

function TBOAttributeCollection.Get_Parent: IDispatch;
begin
    Result := DefaultInterface.Parent;
end;

procedure TBOAttributeCollection.Set_Parent(const Value: IDispatch);
begin
  DefaultInterface.Set_Parent(Value);
end;

procedure TBOAttributeCollection.Clear;
begin
  DefaultInterface.Clear;
end;

procedure TBOAttributeCollection.Delete(Index: Integer);
begin
  DefaultInterface.Delete(Index);
end;

function TBOAttributeCollection.Add(const aName: WideString; const aValue: WideString): IBOAttribute;
begin
  Result := DefaultInterface.Add(aName, aValue);
end;

procedure TBOAttributeCollection.DeleteAttribute(const AAttribute: IBOAttribute);
begin
  DefaultInterface.DeleteAttribute(AAttribute);
end;

function TBOAttributeCollection.AttributeExists(const aName: WideString): WordBool;
begin
  Result := DefaultInterface.AttributeExists(aName);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TBOAttributeCollectionProperties.Create(AServer: TBOAttributeCollection);
begin
  inherited Create;
  FServer := AServer;
end;

function TBOAttributeCollectionProperties.GetDefaultInterface: IBOAttributeCollection;
begin
  Result := FServer.DefaultInterface;
end;

function TBOAttributeCollectionProperties.Get_Count: Integer;
begin
    Result := DefaultInterface.Count;
end;

function TBOAttributeCollectionProperties.Get_XML: WideString;
begin
    Result := DefaultInterface.XML;
end;

function TBOAttributeCollectionProperties.Get_Item(Index: Integer): IBOAttribute;
begin
    Result := DefaultInterface.Item[Index];
end;

function TBOAttributeCollectionProperties.Get_Attribute(const aName: WideString): IBOAttribute;
begin
    Result := DefaultInterface.Attribute[aName];
end;

function TBOAttributeCollectionProperties.Get_Value(const aName: WideString): WideString;
begin
    Result := DefaultInterface.Value[aName];
end;

procedure TBOAttributeCollectionProperties.Set_Value(const aName: WideString; 
                                                     const Value: WideString);
  { Warning: The property Value has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Value := Value;
end;

function TBOAttributeCollectionProperties.Get_AutoAppend: WordBool;
begin
    Result := DefaultInterface.AutoAppend;
end;

procedure TBOAttributeCollectionProperties.Set_AutoAppend(Value: WordBool);
begin
  DefaultInterface.Set_AutoAppend(Value);
end;

function TBOAttributeCollectionProperties.Get_Duplicates: WordBool;
begin
    Result := DefaultInterface.Duplicates;
end;

procedure TBOAttributeCollectionProperties.Set_Duplicates(Value: WordBool);
begin
  DefaultInterface.Set_Duplicates(Value);
end;

function TBOAttributeCollectionProperties.Get_Parent: IDispatch;
begin
    Result := DefaultInterface.Parent;
end;

procedure TBOAttributeCollectionProperties.Set_Parent(const Value: IDispatch);
begin
  DefaultInterface.Set_Parent(Value);
end;

{$ENDIF}

class function CoBOItem.Create: IBOItem;
begin
  Result := CreateComObject(CLASS_BOItem) as IBOItem;
end;

class function CoBOItem.CreateRemote(const MachineName: string): IBOItem;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_BOItem) as IBOItem;
end;

procedure TBOItem.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{AA7EE9F2-94CB-4812-93A3-4695835FE0AC}';
    IntfIID:   '{16D42597-F51E-46F8-A9D1-98D040DA5ED3}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TBOItem.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IBOItem;
  end;
end;

procedure TBOItem.ConnectTo(svrIntf: IBOItem);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TBOItem.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TBOItem.GetDefaultInterface: IBOItem;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TBOItem.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TBOItemProperties.Create(Self);
{$ENDIF}
end;

destructor TBOItem.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TBOItem.GetServerProperties: TBOItemProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TBOItem.Get_XML: WideString;
begin
    Result := DefaultInterface.XML;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TBOItemProperties.Create(AServer: TBOItem);
begin
  inherited Create;
  FServer := AServer;
end;

function TBOItemProperties.GetDefaultInterface: IBOItem;
begin
  Result := FServer.DefaultInterface;
end;

function TBOItemProperties.Get_XML: WideString;
begin
    Result := DefaultInterface.XML;
end;

{$ENDIF}

class function CoBOItemCollection.Create: IBOItemCollection;
begin
  Result := CreateComObject(CLASS_BOItemCollection) as IBOItemCollection;
end;

class function CoBOItemCollection.CreateRemote(const MachineName: string): IBOItemCollection;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_BOItemCollection) as IBOItemCollection;
end;

procedure TBOItemCollection.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{AFFA1F08-7D04-4E36-8E9D-6B00DF3F718F}';
    IntfIID:   '{231BE669-E7A5-4194-81B1-12F439570297}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TBOItemCollection.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IBOItemCollection;
  end;
end;

procedure TBOItemCollection.ConnectTo(svrIntf: IBOItemCollection);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TBOItemCollection.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TBOItemCollection.GetDefaultInterface: IBOItemCollection;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TBOItemCollection.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TBOItemCollectionProperties.Create(Self);
{$ENDIF}
end;

destructor TBOItemCollection.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TBOItemCollection.GetServerProperties: TBOItemCollectionProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TBOItemCollection.Get_Count: Integer;
begin
    Result := DefaultInterface.Count;
end;

function TBOItemCollection.Get_XML: WideString;
begin
    Result := DefaultInterface.XML;
end;

procedure TBOItemCollection.Clear;
begin
  DefaultInterface.Clear;
end;

procedure TBOItemCollection.Delete(Index: Integer);
begin
  DefaultInterface.Delete(Index);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TBOItemCollectionProperties.Create(AServer: TBOItemCollection);
begin
  inherited Create;
  FServer := AServer;
end;

function TBOItemCollectionProperties.GetDefaultInterface: IBOItemCollection;
begin
  Result := FServer.DefaultInterface;
end;

function TBOItemCollectionProperties.Get_Count: Integer;
begin
    Result := DefaultInterface.Count;
end;

function TBOItemCollectionProperties.Get_XML: WideString;
begin
    Result := DefaultInterface.XML;
end;

{$ENDIF}

class function CoBOKernel.Create: IBOKernel;
begin
  Result := CreateComObject(CLASS_BOKernel) as IBOKernel;
end;

class function CoBOKernel.CreateRemote(const MachineName: string): IBOKernel;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_BOKernel) as IBOKernel;
end;

procedure TBOKernel.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{6B49617E-2D8B-4420-8526-913ACB6AD62D}';
    IntfIID:   '{03F6492D-5155-4CF2-A372-65DD1403458B}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TBOKernel.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IBOKernel;
  end;
end;

procedure TBOKernel.ConnectTo(svrIntf: IBOKernel);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TBOKernel.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TBOKernel.GetDefaultInterface: IBOKernel;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TBOKernel.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TBOKernelProperties.Create(Self);
{$ENDIF}
end;

destructor TBOKernel.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TBOKernel.GetServerProperties: TBOKernelProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TBOKernel.Get_Count: Integer;
begin
    Result := DefaultInterface.Count;
end;

procedure TBOKernel.Set_Count(Value: Integer);
begin
  DefaultInterface.Set_Count(Value);
end;

procedure TBOKernel.Refresh;
begin
  DefaultInterface.Refresh;
end;

function TBOKernel.ExternalResponse(const SourceID: WideString; Engine: Integer; 
                                    const Request: IBORequest; const Response: IBOResponse): WordBool;
begin
  Result := DefaultInterface.ExternalResponse(SourceID, Engine, Request, Response);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TBOKernelProperties.Create(AServer: TBOKernel);
begin
  inherited Create;
  FServer := AServer;
end;

function TBOKernelProperties.GetDefaultInterface: IBOKernel;
begin
  Result := FServer.DefaultInterface;
end;

function TBOKernelProperties.Get_Count: Integer;
begin
    Result := DefaultInterface.Count;
end;

procedure TBOKernelProperties.Set_Count(Value: Integer);
begin
  DefaultInterface.Set_Count(Value);
end;

{$ENDIF}

class function CoBOObject.Create: IBOObject;
begin
  Result := CreateComObject(CLASS_BOObject) as IBOObject;
end;

class function CoBOObject.CreateRemote(const MachineName: string): IBOObject;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_BOObject) as IBOObject;
end;

procedure TBOObject.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{2993241D-63A9-4C99-880B-AF5F48C5966F}';
    IntfIID:   '{85299E3F-6D6B-430B-9CBE-72F28E128D0E}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TBOObject.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IBOObject;
  end;
end;

procedure TBOObject.ConnectTo(svrIntf: IBOObject);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TBOObject.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TBOObject.GetDefaultInterface: IBOObject;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TBOObject.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TBOObjectProperties.Create(Self);
{$ENDIF}
end;

destructor TBOObject.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TBOObject.GetServerProperties: TBOObjectProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TBOObject.Get_XML: WideString;
begin
    Result := DefaultInterface.XML;
end;

function TBOObject.Get_Attributes: IBOAttributeCollection;
begin
    Result := DefaultInterface.Attributes;
end;

function TBOObject.Get_Attribute(const aName: WideString): IBOAttribute;
begin
    Result := DefaultInterface.Attribute[aName];
end;

function TBOObject.Get_Objects: IBOObjectCollection;
begin
    Result := DefaultInterface.Objects;
end;

function TBOObject.Get_ObjectID: WideString;
begin
    Result := DefaultInterface.ObjectID;
end;

procedure TBOObject.Set_ObjectID(const Value: WideString);
  { Warning: The property ObjectID has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ObjectID := Value;
end;

function TBOObject.Get_ClassID: WideString;
begin
    Result := DefaultInterface.ClassID;
end;

procedure TBOObject.Set_ClassID(const Value: WideString);
  { Warning: The property ClassID has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ClassID := Value;
end;

function TBOObject.Get_DisplayName: WideString;
begin
    Result := DefaultInterface.DisplayName;
end;

function TBOObject.Get_Parent: IDispatch;
begin
    Result := DefaultInterface.Parent;
end;

procedure TBOObject.Set_Parent(const Value: IDispatch);
begin
  DefaultInterface.Set_Parent(Value);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TBOObjectProperties.Create(AServer: TBOObject);
begin
  inherited Create;
  FServer := AServer;
end;

function TBOObjectProperties.GetDefaultInterface: IBOObject;
begin
  Result := FServer.DefaultInterface;
end;

function TBOObjectProperties.Get_XML: WideString;
begin
    Result := DefaultInterface.XML;
end;

function TBOObjectProperties.Get_Attributes: IBOAttributeCollection;
begin
    Result := DefaultInterface.Attributes;
end;

function TBOObjectProperties.Get_Attribute(const aName: WideString): IBOAttribute;
begin
    Result := DefaultInterface.Attribute[aName];
end;

function TBOObjectProperties.Get_Objects: IBOObjectCollection;
begin
    Result := DefaultInterface.Objects;
end;

function TBOObjectProperties.Get_ObjectID: WideString;
begin
    Result := DefaultInterface.ObjectID;
end;

procedure TBOObjectProperties.Set_ObjectID(const Value: WideString);
  { Warning: The property ObjectID has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ObjectID := Value;
end;

function TBOObjectProperties.Get_ClassID: WideString;
begin
    Result := DefaultInterface.ClassID;
end;

procedure TBOObjectProperties.Set_ClassID(const Value: WideString);
  { Warning: The property ClassID has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ClassID := Value;
end;

function TBOObjectProperties.Get_DisplayName: WideString;
begin
    Result := DefaultInterface.DisplayName;
end;

function TBOObjectProperties.Get_Parent: IDispatch;
begin
    Result := DefaultInterface.Parent;
end;

procedure TBOObjectProperties.Set_Parent(const Value: IDispatch);
begin
  DefaultInterface.Set_Parent(Value);
end;

{$ENDIF}

class function CoBOObjectCollection.Create: IBOObjectCollection;
begin
  Result := CreateComObject(CLASS_BOObjectCollection) as IBOObjectCollection;
end;

class function CoBOObjectCollection.CreateRemote(const MachineName: string): IBOObjectCollection;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_BOObjectCollection) as IBOObjectCollection;
end;

procedure TBOObjectCollection.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{83BC139E-EC24-4961-86D9-81C3F2DBB0D3}';
    IntfIID:   '{3B531410-3836-4243-B3A2-9D60026BAFF3}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TBOObjectCollection.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IBOObjectCollection;
  end;
end;

procedure TBOObjectCollection.ConnectTo(svrIntf: IBOObjectCollection);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TBOObjectCollection.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TBOObjectCollection.GetDefaultInterface: IBOObjectCollection;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TBOObjectCollection.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TBOObjectCollectionProperties.Create(Self);
{$ENDIF}
end;

destructor TBOObjectCollection.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TBOObjectCollection.GetServerProperties: TBOObjectCollectionProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TBOObjectCollection.Get_Count: Integer;
begin
    Result := DefaultInterface.Count;
end;

function TBOObjectCollection.Get_XML: WideString;
begin
    Result := DefaultInterface.XML;
end;

function TBOObjectCollection.Get_Item(Index: Integer): IBOObject;
begin
    Result := DefaultInterface.Item[Index];
end;

function TBOObjectCollection.Get_Parent: IDispatch;
begin
    Result := DefaultInterface.Parent;
end;

procedure TBOObjectCollection.Set_Parent(const Value: IDispatch);
begin
  DefaultInterface.Set_Parent(Value);
end;

procedure TBOObjectCollection.Clear;
begin
  DefaultInterface.Clear;
end;

procedure TBOObjectCollection.Delete(Index: Integer);
begin
  DefaultInterface.Delete(Index);
end;

function TBOObjectCollection.Add(const aClassID: WideString; const aObjectID: WideString; 
                                 const aDisplayName: WideString): IBOObject;
begin
  Result := DefaultInterface.Add(aClassID, aObjectID, aDisplayName);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TBOObjectCollectionProperties.Create(AServer: TBOObjectCollection);
begin
  inherited Create;
  FServer := AServer;
end;

function TBOObjectCollectionProperties.GetDefaultInterface: IBOObjectCollection;
begin
  Result := FServer.DefaultInterface;
end;

function TBOObjectCollectionProperties.Get_Count: Integer;
begin
    Result := DefaultInterface.Count;
end;

function TBOObjectCollectionProperties.Get_XML: WideString;
begin
    Result := DefaultInterface.XML;
end;

function TBOObjectCollectionProperties.Get_Item(Index: Integer): IBOObject;
begin
    Result := DefaultInterface.Item[Index];
end;

function TBOObjectCollectionProperties.Get_Parent: IDispatch;
begin
    Result := DefaultInterface.Parent;
end;

procedure TBOObjectCollectionProperties.Set_Parent(const Value: IDispatch);
begin
  DefaultInterface.Set_Parent(Value);
end;

{$ENDIF}

class function CoBORequest.Create: IBORequest;
begin
  Result := CreateComObject(CLASS_BORequest) as IBORequest;
end;

class function CoBORequest.CreateRemote(const MachineName: string): IBORequest;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_BORequest) as IBORequest;
end;

procedure TBORequest.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{28AE9671-2F13-4CCD-9FC9-67C13C1BEA5E}';
    IntfIID:   '{8FA91A6F-C560-452D-AF37-F1EA3456E961}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TBORequest.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IBORequest;
  end;
end;

procedure TBORequest.ConnectTo(svrIntf: IBORequest);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TBORequest.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TBORequest.GetDefaultInterface: IBORequest;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TBORequest.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TBORequestProperties.Create(Self);
{$ENDIF}
end;

destructor TBORequest.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TBORequest.GetServerProperties: TBORequestProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TBORequest.Get_Attributes: IBOAttributeCollection;
begin
    Result := DefaultInterface.Attributes;
end;

function TBORequest.Get_Topic: WideString;
begin
    Result := DefaultInterface.Topic;
end;

procedure TBORequest.Set_Topic(const Value: WideString);
  { Warning: The property Topic has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Topic := Value;
end;

function TBORequest.Get_Attribute(const aName: WideString): IBOAttribute;
begin
    Result := DefaultInterface.Attribute[aName];
end;

function TBORequest.Get_XML: WideString;
begin
    Result := DefaultInterface.XML;
end;

function TBORequest.Get_Objects: IBOObjectCollection;
begin
    Result := DefaultInterface.Objects;
end;

function TBORequest.Get_Parent: IDispatch;
begin
    Result := DefaultInterface.Parent;
end;

procedure TBORequest.Set_Parent(const Value: IDispatch);
begin
  DefaultInterface.Set_Parent(Value);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TBORequestProperties.Create(AServer: TBORequest);
begin
  inherited Create;
  FServer := AServer;
end;

function TBORequestProperties.GetDefaultInterface: IBORequest;
begin
  Result := FServer.DefaultInterface;
end;

function TBORequestProperties.Get_Attributes: IBOAttributeCollection;
begin
    Result := DefaultInterface.Attributes;
end;

function TBORequestProperties.Get_Topic: WideString;
begin
    Result := DefaultInterface.Topic;
end;

procedure TBORequestProperties.Set_Topic(const Value: WideString);
  { Warning: The property Topic has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Topic := Value;
end;

function TBORequestProperties.Get_Attribute(const aName: WideString): IBOAttribute;
begin
    Result := DefaultInterface.Attribute[aName];
end;

function TBORequestProperties.Get_XML: WideString;
begin
    Result := DefaultInterface.XML;
end;

function TBORequestProperties.Get_Objects: IBOObjectCollection;
begin
    Result := DefaultInterface.Objects;
end;

function TBORequestProperties.Get_Parent: IDispatch;
begin
    Result := DefaultInterface.Parent;
end;

procedure TBORequestProperties.Set_Parent(const Value: IDispatch);
begin
  DefaultInterface.Set_Parent(Value);
end;

{$ENDIF}

class function CoBOResponse.Create: IBOResponse;
begin
  Result := CreateComObject(CLASS_BOResponse) as IBOResponse;
end;

class function CoBOResponse.CreateRemote(const MachineName: string): IBOResponse;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_BOResponse) as IBOResponse;
end;

procedure TBOResponse.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{8770DB1E-00B8-43B4-A53B-5C9CE97357E7}';
    IntfIID:   '{97AF12CB-8FF5-4DAF-94D0-2D9A65F64DE3}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TBOResponse.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IBOResponse;
  end;
end;

procedure TBOResponse.ConnectTo(svrIntf: IBOResponse);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TBOResponse.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TBOResponse.GetDefaultInterface: IBOResponse;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TBOResponse.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TBOResponseProperties.Create(Self);
{$ENDIF}
end;

destructor TBOResponse.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TBOResponse.GetServerProperties: TBOResponseProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TBOResponse.Get_Count: Integer;
begin
    Result := DefaultInterface.Count;
end;

function TBOResponse.Get_XML: WideString;
begin
    Result := DefaultInterface.XML;
end;

function TBOResponse.Get_Item(Index: Integer): IBOObject;
begin
    Result := DefaultInterface.Item[Index];
end;

function TBOResponse.Get_Attributes: IBOAttributeCollection;
begin
    Result := DefaultInterface.Attributes;
end;

function TBOResponse.Get_Objects: IBOObjectCollection;
begin
    Result := DefaultInterface.Objects;
end;

function TBOResponse.Get_Parent: IDispatch;
begin
    Result := DefaultInterface.Parent;
end;

procedure TBOResponse.Set_Parent(const Value: IDispatch);
begin
  DefaultInterface.Set_Parent(Value);
end;

procedure TBOResponse.Clear;
begin
  DefaultInterface.Clear;
end;

procedure TBOResponse.Delete(Index: Integer);
begin
  DefaultInterface.Delete(Index);
end;

function TBOResponse.Add(const aClassID: WideString; const aObjectID: WideString; 
                         const aDisplayName: WideString): IBOObject;
begin
  Result := DefaultInterface.Add(aClassID, aObjectID, aDisplayName);
end;

procedure TBOResponse.SetError(ACode: Integer; const AMsg: WideString);
begin
  DefaultInterface.SetError(ACode, AMsg);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TBOResponseProperties.Create(AServer: TBOResponse);
begin
  inherited Create;
  FServer := AServer;
end;

function TBOResponseProperties.GetDefaultInterface: IBOResponse;
begin
  Result := FServer.DefaultInterface;
end;

function TBOResponseProperties.Get_Count: Integer;
begin
    Result := DefaultInterface.Count;
end;

function TBOResponseProperties.Get_XML: WideString;
begin
    Result := DefaultInterface.XML;
end;

function TBOResponseProperties.Get_Item(Index: Integer): IBOObject;
begin
    Result := DefaultInterface.Item[Index];
end;

function TBOResponseProperties.Get_Attributes: IBOAttributeCollection;
begin
    Result := DefaultInterface.Attributes;
end;

function TBOResponseProperties.Get_Objects: IBOObjectCollection;
begin
    Result := DefaultInterface.Objects;
end;

function TBOResponseProperties.Get_Parent: IDispatch;
begin
    Result := DefaultInterface.Parent;
end;

procedure TBOResponseProperties.Set_Parent(const Value: IDispatch);
begin
  DefaultInterface.Set_Parent(Value);
end;

{$ENDIF}

class function CoLoodsmanObject.Create: ILoodsman8;
begin
  Result := CreateComObject(CLASS_LoodsmanObject) as ILoodsman8;
end;

class function CoLoodsmanObject.CreateRemote(const MachineName: string): ILoodsman8;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_LoodsmanObject) as ILoodsman8;
end;

procedure TLoodsmanObject.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{6E2D863C-136D-4EDA-8291-28B0CE2BD066}';
    IntfIID:   '{88222733-C7AD-4152-B0D8-CFC48EF25344}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TLoodsmanObject.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as ILoodsman8;
  end;
end;

procedure TLoodsmanObject.ConnectTo(svrIntf: ILoodsman8);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TLoodsmanObject.DisConnect;
begin
  if Fintf <> nil then
  begin
    if FAutoQuit then
      Quit();
    FIntf := nil;
  end;
end;

function TLoodsmanObject.GetDefaultInterface: ILoodsman8;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TLoodsmanObject.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TLoodsmanObjectProperties.Create(Self);
{$ENDIF}
end;

destructor TLoodsmanObject.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TLoodsmanObject.GetServerProperties: TLoodsmanObjectProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TLoodsmanObject.Get_lnGetConnectSP(inTypeConnect: Integer; out inReturnCode: OleVariant; 
                                            out stErrorMessage: OleVariant): IConnectSP;
begin
    Result := DefaultInterface.lnGetConnectSP[inTypeConnect, inReturnCode, stErrorMessage];
end;

function TLoodsmanObject.Get_lnGetConnectDB(inTypeConnect: Integer; out inReturnCode: OleVariant; 
                                            out stErrorMessage: OleVariant): IConnectDB;
begin
    Result := DefaultInterface.lnGetConnectDB[inTypeConnect, inReturnCode, stErrorMessage];
end;

function TLoodsmanObject.Get_lnGetConnectDBActive(out inReturnCode: OleVariant; 
                                                  out stErrorMessage: OleVariant): IConnectDBActive;
begin
    Result := DefaultInterface.lnGetConnectDBActive[inReturnCode, stErrorMessage];
end;

function TLoodsmanObject.Get_lnGetIOutlookBar: IOutlookBar;
begin
    Result := DefaultInterface.lnGetIOutlookBar;
end;

function TLoodsmanObject.Get_lnSetFormat(out inReturnCode: OleVariant; 
                                         out stErrorMessage: OleVariant): Integer;
begin
    Result := DefaultInterface.lnSetFormat[inReturnCode, stErrorMessage];
end;

procedure TLoodsmanObject.Set_lnSetFormat(out inReturnCode: OleVariant; 
                                          out stErrorMessage: OleVariant; Value: Integer);
begin
  DefaultInterface.lnSetFormat[inReturnCode, stErrorMessage] := Value;
end;

function TLoodsmanObject.Get_lnStatusOfExhibit: Integer;
begin
    Result := DefaultInterface.lnStatusOfExhibit;
end;

procedure TLoodsmanObject.Set_lnStatusOfExhibit(inStatusOfExhibit: Integer);
begin
  DefaultInterface.Set_lnStatusOfExhibit(inStatusOfExhibit);
end;

function TLoodsmanObject.Get_lnMetodsWorkObject: IMetodsWorkObject;
begin
    Result := DefaultInterface.lnMetodsWorkObject;
end;

function TLoodsmanObject.Get_lnRunMetods: IRunMetods;
begin
    Result := DefaultInterface.lnRunMetods;
end;

function TLoodsmanObject.Get_lnMessageDlg(const stMessage: WideString; inTypeMessage: SYSINT): Integer;
begin
    Result := DefaultInterface.lnMessageDlg[stMessage, inTypeMessage];
end;

procedure TLoodsmanObject.sResult;
begin
  DefaultInterface.sResult;
end;

procedure TLoodsmanObject.lnDialogSelectSP(AppHandle: SYSINT);
begin
  DefaultInterface.lnDialogSelectSP(AppHandle);
end;

procedure TLoodsmanObject.Quit;
begin
  DefaultInterface.Quit;
end;

procedure TLoodsmanObject.lnCheckConnectLN;
begin
  DefaultInterface.lnCheckConnectLN;
end;

procedure TLoodsmanObject.lnWait(const stNameMetod: WideString);
begin
  DefaultInterface.lnWait(stNameMetod);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TLoodsmanObjectProperties.Create(AServer: TLoodsmanObject);
begin
  inherited Create;
  FServer := AServer;
end;

function TLoodsmanObjectProperties.GetDefaultInterface: ILoodsman8;
begin
  Result := FServer.DefaultInterface;
end;

function TLoodsmanObjectProperties.Get_lnGetConnectSP(inTypeConnect: Integer; 
                                                      out inReturnCode: OleVariant; 
                                                      out stErrorMessage: OleVariant): IConnectSP;
begin
    Result := DefaultInterface.lnGetConnectSP[inTypeConnect, inReturnCode, stErrorMessage];
end;

function TLoodsmanObjectProperties.Get_lnGetConnectDB(inTypeConnect: Integer; 
                                                      out inReturnCode: OleVariant; 
                                                      out stErrorMessage: OleVariant): IConnectDB;
begin
    Result := DefaultInterface.lnGetConnectDB[inTypeConnect, inReturnCode, stErrorMessage];
end;

function TLoodsmanObjectProperties.Get_lnGetConnectDBActive(out inReturnCode: OleVariant; 
                                                            out stErrorMessage: OleVariant): IConnectDBActive;
begin
    Result := DefaultInterface.lnGetConnectDBActive[inReturnCode, stErrorMessage];
end;

function TLoodsmanObjectProperties.Get_lnGetIOutlookBar: IOutlookBar;
begin
    Result := DefaultInterface.lnGetIOutlookBar;
end;

function TLoodsmanObjectProperties.Get_lnSetFormat(out inReturnCode: OleVariant; 
                                                   out stErrorMessage: OleVariant): Integer;
begin
    Result := DefaultInterface.lnSetFormat[inReturnCode, stErrorMessage];
end;

procedure TLoodsmanObjectProperties.Set_lnSetFormat(out inReturnCode: OleVariant; 
                                                    out stErrorMessage: OleVariant; Value: Integer);
begin
  DefaultInterface.lnSetFormat[inReturnCode, stErrorMessage] := Value;
end;

function TLoodsmanObjectProperties.Get_lnStatusOfExhibit: Integer;
begin
    Result := DefaultInterface.lnStatusOfExhibit;
end;

procedure TLoodsmanObjectProperties.Set_lnStatusOfExhibit(inStatusOfExhibit: Integer);
begin
  DefaultInterface.Set_lnStatusOfExhibit(inStatusOfExhibit);
end;

function TLoodsmanObjectProperties.Get_lnMetodsWorkObject: IMetodsWorkObject;
begin
    Result := DefaultInterface.lnMetodsWorkObject;
end;

function TLoodsmanObjectProperties.Get_lnRunMetods: IRunMetods;
begin
    Result := DefaultInterface.lnRunMetods;
end;

function TLoodsmanObjectProperties.Get_lnMessageDlg(const stMessage: WideString; 
                                                    inTypeMessage: SYSINT): Integer;
begin
    Result := DefaultInterface.lnMessageDlg[stMessage, inTypeMessage];
end;

{$ENDIF}

procedure TConnectSP.InitControlData;
const
  CControlData: TControlData2 = (
    ClassID: '{5D700A95-8D9D-4597-B69D-2898B32B7EF8}';
    EventIID: '';
    EventCount: 0;
    EventDispIDs: nil;
    LicenseKey: nil (*HR:$00000000*);
    Flags: $00000000;
    Version: 401);
begin
  ControlData := @CControlData;
end;

procedure TConnectSP.CreateControl;

  procedure DoCreate;
  begin
    FIntf := IUnknown(OleObject) as IConnectSP;
  end;

begin
  if FIntf = nil then DoCreate;
end;

function TConnectSP.GetControlInterface: IConnectSP;
begin
  CreateControl;
  Result := FIntf;
end;

function TConnectSP.Get_mGetSocketConnect: ISocketConnect;
begin
    Result := DefaultInterface.mGetSocketConnect;
end;

function TConnectSP.Get_mGetWebConnect: IWebConnect;
begin
    Result := DefaultInterface.mGetWebConnect;
end;

function TConnectSP.Get_lnTestConnect(var stValue: WideString): SYSINT;
begin
    Result := DefaultInterface.lnTestConnect[stValue];
end;

procedure TSocketConnect.InitControlData;
const
  CControlData: TControlData2 = (
    ClassID: '{754E8972-484E-499F-9DAC-805226FB19AF}';
    EventIID: '';
    EventCount: 0;
    EventDispIDs: nil;
    LicenseKey: nil (*HR:$00000000*);
    Flags: $00000000;
    Version: 401);
begin
  ControlData := @CControlData;
end;

procedure TSocketConnect.CreateControl;

  procedure DoCreate;
  begin
    FIntf := IUnknown(OleObject) as ISocketConnect;
  end;

begin
  if FIntf = nil then DoCreate;
end;

function TSocketConnect.GetControlInterface: ISocketConnect;
begin
  CreateControl;
  Result := FIntf;
end;

procedure TWebConnect.InitControlData;
const
  CControlData: TControlData2 = (
    ClassID: '{FF952B8B-DB0A-4B7B-B555-B6BF738E889F}';
    EventIID: '';
    EventCount: 0;
    EventDispIDs: nil;
    LicenseKey: nil (*HR:$80040154*);
    Flags: $00000000;
    Version: 401);
begin
  ControlData := @CControlData;
end;

procedure TWebConnect.CreateControl;

  procedure DoCreate;
  begin
    FIntf := IUnknown(OleObject) as IWebConnect;
  end;

begin
  if FIntf = nil then DoCreate;
end;

function TWebConnect.GetControlInterface: IWebConnect;
begin
  CreateControl;
  Result := FIntf;
end;

procedure TSQLAutorization.InitControlData;
const
  CControlData: TControlData2 = (
    ClassID: '{11D1F695-4DC4-4216-B83D-31B26F9D8BDB}';
    EventIID: '';
    EventCount: 0;
    EventDispIDs: nil;
    LicenseKey: nil (*HR:$00000000*);
    Flags: $00000000;
    Version: 401);
begin
  ControlData := @CControlData;
end;

procedure TSQLAutorization.CreateControl;

  procedure DoCreate;
  begin
    FIntf := IUnknown(OleObject) as ISQLAutorization;
  end;

begin
  if FIntf = nil then DoCreate;
end;

function TSQLAutorization.GetControlInterface: ISQLAutorization;
begin
  CreateControl;
  Result := FIntf;
end;

procedure TConnectDB.InitControlData;
const
  CControlData: TControlData2 = (
    ClassID: '{35EF10E7-5074-4704-94B9-C43160A9504A}';
    EventIID: '';
    EventCount: 0;
    EventDispIDs: nil;
    LicenseKey: nil (*HR:$00000000*);
    Flags: $00000000;
    Version: 401);
begin
  ControlData := @CControlData;
end;

procedure TConnectDB.CreateControl;

  procedure DoCreate;
  begin
    FIntf := IUnknown(OleObject) as IConnectDB;
  end;

begin
  if FIntf = nil then DoCreate;
end;

function TConnectDB.GetControlInterface: IConnectDB;
begin
  CreateControl;
  Result := FIntf;
end;

function TConnectDB.Get_mGetSQLAutorization: ISQLAutorization;
begin
    Result := DefaultInterface.mGetSQLAutorization;
end;

function TConnectDB.Get_Update(inStateDB: Integer): Integer;
begin
    Result := DefaultInterface.Update[inStateDB];
end;

function TConnectDB.Get_lnMetodsWorkObject: IMetodsWorkObject;
begin
    Result := DefaultInterface.lnMetodsWorkObject;
end;

function TConnectDB.Get_lnRunMetods: IRunMetods;
begin
    Result := DefaultInterface.lnRunMetods;
end;

procedure TConnectDB.lnGetDBProperties(out inReturnCode: OleVariant; 
                                       out stErrorMessage: OleVariant; const stNameDB: WideString; 
                                       inSetFormat: Integer; out DATA: OleVariant; 
                                       out inRecsOut: SYSINT);
begin
  DefaultInterface.lnGetDBProperties(inReturnCode, stErrorMessage, stNameDB, inSetFormat, DATA, 
                                     inRecsOut);
end;

procedure TMetodsWorkObject.InitControlData;
const
  CControlData: TControlData2 = (
    ClassID: '{EFD145AC-B241-4FA6-A6D0-07CA687C0FA8}';
    EventIID: '';
    EventCount: 0;
    EventDispIDs: nil;
    LicenseKey: nil (*HR:$00000000*);
    Flags: $00000000;
    Version: 401);
begin
  ControlData := @CControlData;
end;

procedure TMetodsWorkObject.CreateControl;

  procedure DoCreate;
  begin
    FIntf := IUnknown(OleObject) as IMetodsWorkObject;
  end;

begin
  if FIntf = nil then DoCreate;
end;

function TMetodsWorkObject.GetControlInterface: IMetodsWorkObject;
begin
  CreateControl;
  Result := FIntf;
end;

function TMetodsWorkObject.Get_lnSaveDocument: ISaveDocument;
begin
    Result := DefaultInterface.lnSaveDocument;
end;

procedure TMetodsWorkObject.lnGetInfoAboutVersion(var inReturnCode: OleVariant; 
                                                  var stErrorMessage: OleVariant; 
                                                  const stType: WideString; 
                                                  const stProduct: WideString; 
                                                  const stVersion: WideString; inIdVersion: SYSINT; 
                                                  inMode: Integer; inSetFormat: Integer; 
                                                  var DATA: OleVariant; var inRecsOut: SYSINT);
begin
  DefaultInterface.lnGetInfoAboutVersion(inReturnCode, stErrorMessage, stType, stProduct, 
                                         stVersion, inIdVersion, inMode, inSetFormat, DATA, 
                                         inRecsOut);
end;

procedure TMetodsWorkObject.lnGetLinkedObjectsEx(var inReturnCode: OleVariant; 
                                                 var stErrorMessage: OleVariant; 
                                                 const stTypeName: WideString; 
                                                 const stProductName: WideString; 
                                                 const stVersionNumber: WideString; 
                                                 const stLinkType: WideString; boInverse: Integer; 
                                                 boFullLink: Integer; boGroupByProduct: Integer; 
                                                 boForTree: Integer; inSetFormat: Integer; 
                                                 var DATA: OleVariant; var inRecsOut: SYSINT);
begin
  DefaultInterface.lnGetLinkedObjectsEx(inReturnCode, stErrorMessage, stTypeName, stProductName, 
                                        stVersionNumber, stLinkType, boInverse, boFullLink, 
                                        boGroupByProduct, boForTree, inSetFormat, DATA, inRecsOut);
end;

procedure TMetodsWorkObject.lnGetLinkedFast(var inReturnCode: OleVariant; 
                                            var stErrorMessage: OleVariant; inIdVersion: SYSINT; 
                                            const stLinkType: WideString; inSetFormat: Integer; 
                                            var DATA: OleVariant; var inRecsOut: SYSINT);
begin
  DefaultInterface.lnGetLinkedFast(inReturnCode, stErrorMessage, inIdVersion, stLinkType, 
                                   inSetFormat, DATA, inRecsOut);
end;

procedure TMetodsWorkObject.lnGetLinkedObjectsAndFiles(out inReturnCode: OleVariant; 
                                                       out stErrorMessage: OleVariant; 
                                                       const stTypeName: WideString; 
                                                       const stProductName: WideString; 
                                                       const stVersionNumber: WideString; 
                                                       const stLinkType: WideString; 
                                                       boFullLink: Integer; 
                                                       boViewOnlyDocuments: Integer; 
                                                       inSetFormat: Integer; out DATA: OleVariant; 
                                                       out inRecsOut: SYSINT);
begin
  DefaultInterface.lnGetLinkedObjectsAndFiles(inReturnCode, stErrorMessage, stTypeName, 
                                              stProductName, stVersionNumber, stLinkType, 
                                              boFullLink, boViewOnlyDocuments, inSetFormat, DATA, 
                                              inRecsOut);
end;

procedure TMetodsWorkObject.lnGetInfoAboutFile(out inReturnCode: OleVariant; 
                                               out stErrorMessage: OleVariant; stFileName: Integer; 
                                               stFullFilePath: Integer; inSetFormat: Integer; 
                                               out DATA: OleVariant; out inRecsOut: SYSINT);
begin
  DefaultInterface.lnGetInfoAboutFile(inReturnCode, stErrorMessage, stFileName, stFullFilePath, 
                                      inSetFormat, DATA, inRecsOut);
end;

procedure TMetodsWorkObject.lnGetInfoAboutType(out inReturnCode: OleVariant; 
                                               out stErrorMessage: OleVariant; 
                                               const stType: WideString; inMode: Integer; 
                                               inSetFormat: Integer; out DATA: OleVariant; 
                                               out inRecsOut: SYSINT);
begin
  DefaultInterface.lnGetInfoAboutType(inReturnCode, stErrorMessage, stType, inMode, inSetFormat, 
                                      DATA, inRecsOut);
end;

procedure TMetodsWorkObject.lnGotoObject(out inReturnCode: OleVariant; 
                                         out stErrorMessage: OleVariant; 
                                         const stNameDB: WideString; const stNameCheck: WideString; 
                                         const stType: WideString; const stProduct: WideString; 
                                         const stVersion: WideString; inIdVersion: SYSINT);
begin
  DefaultInterface.lnGotoObject(inReturnCode, stErrorMessage, stNameDB, stNameCheck, stType, 
                                stProduct, stVersion, inIdVersion);
end;

procedure TMetodsWorkObject.lnSelectObject(out inReturnCode: OleVariant; 
                                           out stErrorMessage: OleVariant; inSetFormat: Integer; 
                                           out DATA: OleVariant; out inRecsOut: SYSINT);
begin
  DefaultInterface.lnSelectObject(inReturnCode, stErrorMessage, inSetFormat, DATA, inRecsOut);
end;

procedure TMetodsWorkObject.lnImportObjectWithFile(out inReturnCode: OleVariant; 
                                                   out stErrorMessage: OleVariant; 
                                                   inSetFormat: Integer; out DATA: OleVariant; 
                                                   out inRecsOut: SYSINT);
begin
  DefaultInterface.lnImportObjectWithFile(inReturnCode, stErrorMessage, inSetFormat, DATA, inRecsOut);
end;

procedure TMetodsWorkObject.lnImportFileWithFile(out inReturnCode: OleVariant; 
                                                 out stErrorMessage: OleVariant; 
                                                 const stFilter: WideString; 
                                                 inTypeOpenFile: Integer; inSetFormat: Integer; 
                                                 inLockMultiExtract: Integer; out DATA: OleVariant; 
                                                 out inRecsOut: SYSINT);
begin
  DefaultInterface.lnImportFileWithFile(inReturnCode, stErrorMessage, stFilter, inTypeOpenFile, 
                                        inSetFormat, inLockMultiExtract, DATA, inRecsOut);
end;

procedure TMetodsWorkObject.lnOpenDocument(out inReturnCode: OleVariant; 
                                           out stErrorMessage: OleVariant; 
                                           const stFilter: WideString; inSetFormat: Integer; 
                                           out inCheckOut: Integer; out DATA: OleVariant; 
                                           out inRecsOut: SYSINT);
begin
  DefaultInterface.lnOpenDocument(inReturnCode, stErrorMessage, stFilter, inSetFormat, inCheckOut, 
                                  DATA, inRecsOut);
end;

procedure TMetodsWorkObject.lnExtractDocument(out inReturnCode: OleVariant; 
                                              out stErrorMessage: OleVariant; 
                                              const stFilter: WideString; inSetFormat: Integer; 
                                              out inCheckOut: Integer; out DATA: OleVariant; 
                                              out inRecsOut: SYSINT; 
                                              const stHintMessage: WideString; 
                                              inLockMultiExtract: Integer);
begin
  DefaultInterface.lnExtractDocument(inReturnCode, stErrorMessage, stFilter, inSetFormat, 
                                     inCheckOut, DATA, inRecsOut, stHintMessage, inLockMultiExtract);
end;

procedure TMetodsWorkObject.lnExtractDocumentFormShow(out inReturnCode: OleVariant; 
                                                      out stErrorMessage: OleVariant; 
                                                      const stFilter: WideString; 
                                                      inSetFormat: Integer; 
                                                      out inCheckOut: Integer; 
                                                      out DATA: OleVariant; out inRecsOut: SYSINT; 
                                                      const stHintMessage: WideString; 
                                                      inLockMultiExtract: Integer; 
                                                      const stCaptionMessage: WideString);
begin
  DefaultInterface.lnExtractDocumentFormShow(inReturnCode, stErrorMessage, stFilter, inSetFormat, 
                                             inCheckOut, DATA, inRecsOut, stHintMessage, 
                                             inLockMultiExtract, stCaptionMessage);
end;

procedure TConnectDBActive.InitControlData;
const
  CControlData: TControlData2 = (
    ClassID: '{BF152433-8096-40DB-9D25-295112DCFC7E}';
    EventIID: '';
    EventCount: 0;
    EventDispIDs: nil;
    LicenseKey: nil (*HR:$00000000*);
    Flags: $00000000;
    Version: 401);
begin
  ControlData := @CControlData;
end;

procedure TConnectDBActive.CreateControl;

  procedure DoCreate;
  begin
    FIntf := IUnknown(OleObject) as IConnectDBActive;
  end;

begin
  if FIntf = nil then DoCreate;
end;

function TConnectDBActive.GetControlInterface: IConnectDBActive;
begin
  CreateControl;
  Result := FIntf;
end;

function TConnectDBActive.Get_lnMetodsWorkObject: IMetodsWorkObject;
begin
    Result := DefaultInterface.lnMetodsWorkObject;
end;

function TConnectDBActive.Get_lnRunMetods: IRunMetods;
begin
    Result := DefaultInterface.lnRunMetods;
end;

procedure TConnectDBActive.lnGetDBProperties(out inReturnCode: OleVariant; 
                                             out stErrorMessage: OleVariant; inSetFormat: Integer; 
                                             out DATA: OleVariant; out inRecsOut: SYSINT);
begin
  DefaultInterface.lnGetDBProperties(inReturnCode, stErrorMessage, inSetFormat, DATA, inRecsOut);
end;

procedure TSaveDocument.InitControlData;
const
  CControlData: TControlData2 = (
    ClassID: '{97735444-15EB-4A19-ABCB-5C05EA1025DD}';
    EventIID: '';
    EventCount: 0;
    EventDispIDs: nil;
    LicenseKey: nil (*HR:$00000000*);
    Flags: $00000000;
    Version: 401);
begin
  ControlData := @CControlData;
end;

procedure TSaveDocument.CreateControl;

  procedure DoCreate;
  begin
    FIntf := IUnknown(OleObject) as ISaveDocument;
  end;

begin
  if FIntf = nil then DoCreate;
end;

function TSaveDocument.GetControlInterface: ISaveDocument;
begin
  CreateControl;
  Result := FIntf;
end;

procedure TSaveDocument.lnSaveDocument(out inReturnCode: OleVariant; 
                                       out stErrorMessage: OleVariant; inSetFormat: Integer; 
                                       DATA: OleVariant; inRecsIn: SYSINT; out DATAOut: OleVariant; 
                                       out inRecsOut: SYSINT);
begin
  DefaultInterface.lnSaveDocument(inReturnCode, stErrorMessage, inSetFormat, DATA, inRecsIn, 
                                  DATAOut, inRecsOut);
end;

procedure TSaveDocument.lnUpData(out inReturnCode: OleVariant; out stErrorMessage: OleVariant; 
                                 inCheck: Integer; lnRunTime: Integer; lnWaitTime: Integer);
begin
  DefaultInterface.lnUpData(inReturnCode, stErrorMessage, inCheck, lnRunTime, lnWaitTime);
end;

procedure TSaveDocument.lnSaveDocumentFree;
begin
  DefaultInterface.lnSaveDocumentFree;
end;

procedure TSaveDocument.lnSaveDocumentEx(out inReturnCode: OleVariant; 
                                         out stErrorMessage: OleVariant; inSetFormat: Integer; 
                                         DATA: OleVariant; inRecsIn: SYSINT; 
                                         out DATAOut: OleVariant; out inRecsOut: SYSINT; 
                                         Flags: Integer);
begin
  DefaultInterface.lnSaveDocumentEx(inReturnCode, stErrorMessage, inSetFormat, DATA, inRecsIn, 
                                    DATAOut, inRecsOut, Flags);
end;

function TSaveDocument.lnGetSaveStatus: Integer;
begin
  Result := DefaultInterface.lnGetSaveStatus;
end;

class function CoPluginCall.Create: IPluginCall;
begin
  Result := CreateComObject(CLASS_PluginCall) as IPluginCall;
end;

class function CoPluginCall.CreateRemote(const MachineName: string): IPluginCall;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_PluginCall) as IPluginCall;
end;

procedure TPluginCall.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{E4D4AE7B-7EB9-4057-B229-967E02B90054}';
    IntfIID:   '{7779A0A3-1BF6-45C8-A536-21AD4B97E46D}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TPluginCall.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IPluginCall;
  end;
end;

procedure TPluginCall.ConnectTo(svrIntf: IPluginCall);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TPluginCall.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TPluginCall.GetDefaultInterface: IPluginCall;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TPluginCall.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TPluginCallProperties.Create(Self);
{$ENDIF}
end;

destructor TPluginCall.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TPluginCall.GetServerProperties: TPluginCallProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TPluginCall.Get_DBName: WideString;
begin
    Result := DefaultInterface.DBName;
end;

function TPluginCall.Get_CheckOut: Integer;
begin
    Result := DefaultInterface.CheckOut;
end;

function TPluginCall.Get_AppHandle: OLE_HANDLE;
begin
    Result := DefaultInterface.AppHandle;
end;

function TPluginCall.Get_ClientHandle: OLE_HANDLE;
begin
    Result := DefaultInterface.ClientHandle;
end;

function TPluginCall.Get_IdVersion: Integer;
begin
    Result := DefaultInterface.IdVersion;
end;

function TPluginCall.Get_stType: WideString;
begin
    Result := DefaultInterface.stType;
end;

function TPluginCall.Get_stProduct: WideString;
begin
    Result := DefaultInterface.stProduct;
end;

function TPluginCall.Get_stVersion: WideString;
begin
    Result := DefaultInterface.stVersion;
end;

function TPluginCall.Get_IdParent: Integer;
begin
    Result := DefaultInterface.IdParent;
end;

function TPluginCall.Get_stParentType: WideString;
begin
    Result := DefaultInterface.stParentType;
end;

function TPluginCall.Get_stParentProduct: WideString;
begin
    Result := DefaultInterface.stParentProduct;
end;

function TPluginCall.Get_stParentVersion: WideString;
begin
    Result := DefaultInterface.stParentVersion;
end;

function TPluginCall.Get_IdLink: Integer;
begin
    Result := DefaultInterface.IdLink;
end;

function TPluginCall.Get_SelectedParent: WordBool;
begin
    Result := DefaultInterface.SelectedParent;
end;

function TPluginCall.Get_Selected: IPDMObject;
begin
    Result := DefaultInterface.Selected;
end;

function TPluginCall.Get_WFSelected: IWFObject;
begin
    Result := DefaultInterface.WFSelected;
end;

function TPluginCall.Get_AsyncTask: IDispatch;
begin
    Result := DefaultInterface.AsyncTask;
end;

function TPluginCall.Get_MainHandle: OLE_HANDLE;
begin
    Result := DefaultInterface.MainHandle;
end;

function TPluginCall.Get_ServerName: WideString;
begin
    Result := DefaultInterface.ServerName;
end;

function TPluginCall.Get_ParentObject: IPDMObject;
begin
    Result := DefaultInterface.ParentObject;
end;

function TPluginCall.Get_LinkName: WideString;
begin
    Result := DefaultInterface.LinkName;
end;

function TPluginCall.Get_Content: IContent;
begin
    Result := DefaultInterface.Content;
end;

function TPluginCall.Get_WBSSystem: IDispatch;
begin
    Result := DefaultInterface.WBSSystem;
end;

function TPluginCall.RunMethod(const stMetod: WideString; vaParams: OleVariant): OleVariant;
begin
  Result := DefaultInterface.RunMethod(stMetod, vaParams);
end;

function TPluginCall.GetDataSet(const stMetod: WideString; vaParams: OleVariant): IDispatch;
begin
  Result := DefaultInterface.GetDataSet(stMetod, vaParams);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TPluginCallProperties.Create(AServer: TPluginCall);
begin
  inherited Create;
  FServer := AServer;
end;

function TPluginCallProperties.GetDefaultInterface: IPluginCall;
begin
  Result := FServer.DefaultInterface;
end;

function TPluginCallProperties.Get_DBName: WideString;
begin
    Result := DefaultInterface.DBName;
end;

function TPluginCallProperties.Get_CheckOut: Integer;
begin
    Result := DefaultInterface.CheckOut;
end;

function TPluginCallProperties.Get_AppHandle: OLE_HANDLE;
begin
    Result := DefaultInterface.AppHandle;
end;

function TPluginCallProperties.Get_ClientHandle: OLE_HANDLE;
begin
    Result := DefaultInterface.ClientHandle;
end;

function TPluginCallProperties.Get_IdVersion: Integer;
begin
    Result := DefaultInterface.IdVersion;
end;

function TPluginCallProperties.Get_stType: WideString;
begin
    Result := DefaultInterface.stType;
end;

function TPluginCallProperties.Get_stProduct: WideString;
begin
    Result := DefaultInterface.stProduct;
end;

function TPluginCallProperties.Get_stVersion: WideString;
begin
    Result := DefaultInterface.stVersion;
end;

function TPluginCallProperties.Get_IdParent: Integer;
begin
    Result := DefaultInterface.IdParent;
end;

function TPluginCallProperties.Get_stParentType: WideString;
begin
    Result := DefaultInterface.stParentType;
end;

function TPluginCallProperties.Get_stParentProduct: WideString;
begin
    Result := DefaultInterface.stParentProduct;
end;

function TPluginCallProperties.Get_stParentVersion: WideString;
begin
    Result := DefaultInterface.stParentVersion;
end;

function TPluginCallProperties.Get_IdLink: Integer;
begin
    Result := DefaultInterface.IdLink;
end;

function TPluginCallProperties.Get_SelectedParent: WordBool;
begin
    Result := DefaultInterface.SelectedParent;
end;

function TPluginCallProperties.Get_Selected: IPDMObject;
begin
    Result := DefaultInterface.Selected;
end;

function TPluginCallProperties.Get_WFSelected: IWFObject;
begin
    Result := DefaultInterface.WFSelected;
end;

function TPluginCallProperties.Get_AsyncTask: IDispatch;
begin
    Result := DefaultInterface.AsyncTask;
end;

function TPluginCallProperties.Get_MainHandle: OLE_HANDLE;
begin
    Result := DefaultInterface.MainHandle;
end;

function TPluginCallProperties.Get_ServerName: WideString;
begin
    Result := DefaultInterface.ServerName;
end;

function TPluginCallProperties.Get_ParentObject: IPDMObject;
begin
    Result := DefaultInterface.ParentObject;
end;

function TPluginCallProperties.Get_LinkName: WideString;
begin
    Result := DefaultInterface.LinkName;
end;

function TPluginCallProperties.Get_Content: IContent;
begin
    Result := DefaultInterface.Content;
end;

function TPluginCallProperties.Get_WBSSystem: IDispatch;
begin
    Result := DefaultInterface.WBSSystem;
end;

{$ENDIF}

class function CoURL.Create: ICommand;
begin
  Result := CreateComObject(CLASS_URL) as ICommand;
end;

class function CoURL.CreateRemote(const MachineName: string): ICommand;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_URL) as ICommand;
end;

procedure TURL.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{975FD36D-CAE8-4690-A28F-830CE1141EEB}';
    IntfIID:   '{C63A105F-D389-4722-99C4-F636E30D915D}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TURL.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as ICommand;
  end;
end;

procedure TURL.ConnectTo(svrIntf: ICommand);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TURL.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TURL.GetDefaultInterface: ICommand;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TURL.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TURLProperties.Create(Self);
{$ENDIF}
end;

destructor TURL.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TURL.GetServerProperties: TURLProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TURL.Get_WindowHandle: Integer;
begin
    Result := DefaultInterface.WindowHandle;
end;

function TURL.Get_InstanceHandle: Integer;
begin
    Result := DefaultInterface.InstanceHandle;
end;

function TURL.Get_CommandLine: WideString;
begin
    Result := DefaultInterface.CommandLine;
end;

function TURL.Get_DummyParameter: Integer;
begin
    Result := DefaultInterface.DummyParameter;
end;

procedure TURL.Execute(hWnd: Integer; hInstance: Integer; const stCmdLine: WideString; 
                       dummy: Integer);
begin
  DefaultInterface.Execute(hWnd, hInstance, stCmdLine, dummy);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TURLProperties.Create(AServer: TURL);
begin
  inherited Create;
  FServer := AServer;
end;

function TURLProperties.GetDefaultInterface: ICommand;
begin
  Result := FServer.DefaultInterface;
end;

function TURLProperties.Get_WindowHandle: Integer;
begin
    Result := DefaultInterface.WindowHandle;
end;

function TURLProperties.Get_InstanceHandle: Integer;
begin
    Result := DefaultInterface.InstanceHandle;
end;

function TURLProperties.Get_CommandLine: WideString;
begin
    Result := DefaultInterface.CommandLine;
end;

function TURLProperties.Get_DummyParameter: Integer;
begin
    Result := DefaultInterface.DummyParameter;
end;

{$ENDIF}

class function CoCDataBase.Create: IDataBase;
begin
  Result := CreateComObject(CLASS_CDataBase) as IDataBase;
end;

class function CoCDataBase.CreateRemote(const MachineName: string): IDataBase;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CDataBase) as IDataBase;
end;

procedure TCDataBase.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{593972B0-7702-4932-A46C-9446555821DB}';
    IntfIID:   '{84555B43-9101-41CA-AAB3-0F176A0AF30C}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TCDataBase.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IDataBase;
  end;
end;

procedure TCDataBase.ConnectTo(svrIntf: IDataBase);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TCDataBase.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TCDataBase.GetDefaultInterface: IDataBase;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TCDataBase.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TCDataBaseProperties.Create(Self);
{$ENDIF}
end;

destructor TCDataBase.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TCDataBase.GetServerProperties: TCDataBaseProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TCDataBase.Get_Name: WideString;
begin
    Result := DefaultInterface.Name;
end;

function TCDataBase.Get_CurrentUser: ILoodsmanUser;
begin
    Result := DefaultInterface.CurrentUser;
end;

function TCDataBase.Get_MaxLabel: Integer;
begin
    Result := DefaultInterface.MaxLabel;
end;

function TCDataBase.Get_ReadOnlyDB: WordBool;
begin
    Result := DefaultInterface.ReadOnlyDB;
end;

function TCDataBase.CheckoutObjects(IDs: OleVariant; const ACheckOut: WideString; 
                                    AAddToRoot: WordBool): WideString;
begin
  Result := DefaultInterface.CheckoutObjects(IDs, ACheckOut, AAddToRoot);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TCDataBaseProperties.Create(AServer: TCDataBase);
begin
  inherited Create;
  FServer := AServer;
end;

function TCDataBaseProperties.GetDefaultInterface: IDataBase;
begin
  Result := FServer.DefaultInterface;
end;

function TCDataBaseProperties.Get_Name: WideString;
begin
    Result := DefaultInterface.Name;
end;

function TCDataBaseProperties.Get_CurrentUser: ILoodsmanUser;
begin
    Result := DefaultInterface.CurrentUser;
end;

function TCDataBaseProperties.Get_MaxLabel: Integer;
begin
    Result := DefaultInterface.MaxLabel;
end;

function TCDataBaseProperties.Get_ReadOnlyDB: WordBool;
begin
    Result := DefaultInterface.ReadOnlyDB;
end;

{$ENDIF}

class function CoCoLooPlugin.Create: ILoodsmanPlugin;
begin
  Result := CreateComObject(CLASS_CoLooPlugin) as ILoodsmanPlugin;
end;

class function CoCoLooPlugin.CreateRemote(const MachineName: string): ILoodsmanPlugin;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CoLooPlugin) as ILoodsmanPlugin;
end;

procedure TCoLooPlugin.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{905FB351-0656-43DD-BE9B-6F3A8CD2A82E}';
    IntfIID:   '{8A0AD8A6-791D-4211-B6B0-A8C25FA33209}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TCoLooPlugin.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as ILoodsmanPlugin;
  end;
end;

procedure TCoLooPlugin.ConnectTo(svrIntf: ILoodsmanPlugin);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TCoLooPlugin.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TCoLooPlugin.GetDefaultInterface: ILoodsmanPlugin;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TCoLooPlugin.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TCoLooPluginProperties.Create(Self);
{$ENDIF}
end;

destructor TCoLooPlugin.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TCoLooPlugin.GetServerProperties: TCoLooPluginProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TCoLooPlugin.GetName: WideString;
begin
  Result := DefaultInterface.GetName;
end;

function TCoLooPlugin.GetPath: WideString;
begin
  Result := DefaultInterface.GetPath;
end;

function TCoLooPlugin.GetCommandCount: Integer;
begin
  Result := DefaultInterface.GetCommandCount;
end;

function TCoLooPlugin.GetCommandCaption(Index: Integer): WideString;
begin
  Result := DefaultInterface.GetCommandCaption(Index);
end;

function TCoLooPlugin.GetCommandName(Index: Integer): WideString;
begin
  Result := DefaultInterface.GetCommandName(Index);
end;

function TCoLooPlugin.ExecCommand(const ACommandName: WideString): OleVariant;
begin
  Result := DefaultInterface.ExecCommand(ACommandName);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TCoLooPluginProperties.Create(AServer: TCoLooPlugin);
begin
  inherited Create;
  FServer := AServer;
end;

function TCoLooPluginProperties.GetDefaultInterface: ILoodsmanPlugin;
begin
  Result := FServer.DefaultInterface;
end;

{$ENDIF}

class function CoCDBWindow.Create: IDBWindow;
begin
  Result := CreateComObject(CLASS_CDBWindow) as IDBWindow;
end;

class function CoCDBWindow.CreateRemote(const MachineName: string): IDBWindow;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CDBWindow) as IDBWindow;
end;

procedure TCDBWindow.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{9718B914-E357-436F-8D57-99216039534F}';
    IntfIID:   '{8A2DF0A5-19C6-4B21-AD73-7F8718CA37EE}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TCDBWindow.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IDBWindow;
  end;
end;

procedure TCDBWindow.ConnectTo(svrIntf: IDBWindow);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TCDBWindow.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TCDBWindow.GetDefaultInterface: IDBWindow;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TCDBWindow.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TCDBWindowProperties.Create(Self);
{$ENDIF}
end;

destructor TCDBWindow.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TCDBWindow.GetServerProperties: TCDBWindowProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TCDBWindow.Get_DataBase: IDataBase;
begin
    Result := DefaultInterface.DataBase;
end;

function TCDBWindow.Get_CheckOutMode: WordBool;
begin
    Result := DefaultInterface.CheckOutMode;
end;

function TCDBWindow.Get_WindowHandle: OLE_HANDLE;
begin
    Result := DefaultInterface.WindowHandle;
end;

function TCDBWindow.Get_Context: IDBContext;
begin
    Result := DefaultInterface.Context;
end;

function TCDBWindow.Get_Content: IContent;
begin
    Result := DefaultInterface.Content;
end;

procedure TCDBWindow.Close;
begin
  DefaultInterface.Close;
end;

procedure TCDBWindow.Activate;
begin
  DefaultInterface.Activate;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TCDBWindowProperties.Create(AServer: TCDBWindow);
begin
  inherited Create;
  FServer := AServer;
end;

function TCDBWindowProperties.GetDefaultInterface: IDBWindow;
begin
  Result := FServer.DefaultInterface;
end;

function TCDBWindowProperties.Get_DataBase: IDataBase;
begin
    Result := DefaultInterface.DataBase;
end;

function TCDBWindowProperties.Get_CheckOutMode: WordBool;
begin
    Result := DefaultInterface.CheckOutMode;
end;

function TCDBWindowProperties.Get_WindowHandle: OLE_HANDLE;
begin
    Result := DefaultInterface.WindowHandle;
end;

function TCDBWindowProperties.Get_Context: IDBContext;
begin
    Result := DefaultInterface.Context;
end;

function TCDBWindowProperties.Get_Content: IContent;
begin
    Result := DefaultInterface.Content;
end;

{$ENDIF}

class function CoCoSimpleAPI.Create: IDispatch;
begin
  Result := CreateComObject(CLASS_CoSimpleAPI) as IDispatch;
end;

class function CoCoSimpleAPI.CreateRemote(const MachineName: string): IDispatch;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CoSimpleAPI) as IDispatch;
end;

procedure TCoSimpleAPI.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{5CC4A40D-CF2B-45AA-86EF-A3E95B27C2CD}';
    IntfIID:   '{00020400-0000-0000-C000-000000000046}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TCoSimpleAPI.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IDispatch;
  end;
end;

procedure TCoSimpleAPI.ConnectTo(svrIntf: IDispatch);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TCoSimpleAPI.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TCoSimpleAPI.GetDefaultInterface: IDispatch;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TCoSimpleAPI.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TCoSimpleAPIProperties.Create(Self);
{$ENDIF}
end;

destructor TCoSimpleAPI.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TCoSimpleAPI.GetServerProperties: TCoSimpleAPIProperties;
begin
  Result := FProps;
end;
{$ENDIF}

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TCoSimpleAPIProperties.Create(AServer: TCoSimpleAPI);
begin
  inherited Create;
  FServer := AServer;
end;

function TCoSimpleAPIProperties.GetDefaultInterface: IDispatch;
begin
  Result := FServer.DefaultInterface;
end;

{$ENDIF}

class function CoCoDataSet.Create: IDispatch;
begin
  Result := CreateComObject(CLASS_CoDataSet) as IDispatch;
end;

class function CoCoDataSet.CreateRemote(const MachineName: string): IDispatch;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CoDataSet) as IDispatch;
end;

procedure TCoDataSet.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{A00EC6F8-5E3A-4569-8A2C-F26DAF5FFF8D}';
    IntfIID:   '{00020400-0000-0000-C000-000000000046}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TCoDataSet.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IDispatch;
  end;
end;

procedure TCoDataSet.ConnectTo(svrIntf: IDispatch);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TCoDataSet.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TCoDataSet.GetDefaultInterface: IDispatch;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TCoDataSet.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TCoDataSetProperties.Create(Self);
{$ENDIF}
end;

destructor TCoDataSet.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TCoDataSet.GetServerProperties: TCoDataSetProperties;
begin
  Result := FProps;
end;
{$ENDIF}

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TCoDataSetProperties.Create(AServer: TCoDataSet);
begin
  inherited Create;
  FServer := AServer;
end;

function TCoDataSetProperties.GetDefaultInterface: IDispatch;
begin
  Result := FServer.DefaultInterface;
end;

{$ENDIF}

class function CoCoClientAsyncTask.Create: IDispatch;
begin
  Result := CreateComObject(CLASS_CoClientAsyncTask) as IDispatch;
end;

class function CoCoClientAsyncTask.CreateRemote(const MachineName: string): IDispatch;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CoClientAsyncTask) as IDispatch;
end;

procedure TCoClientAsyncTask.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{D73AEEFC-A43E-4C76-B019-2047C12FE376}';
    IntfIID:   '{00020400-0000-0000-C000-000000000046}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TCoClientAsyncTask.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IDispatch;
  end;
end;

procedure TCoClientAsyncTask.ConnectTo(svrIntf: IDispatch);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TCoClientAsyncTask.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TCoClientAsyncTask.GetDefaultInterface: IDispatch;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TCoClientAsyncTask.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TCoClientAsyncTaskProperties.Create(Self);
{$ENDIF}
end;

destructor TCoClientAsyncTask.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TCoClientAsyncTask.GetServerProperties: TCoClientAsyncTaskProperties;
begin
  Result := FProps;
end;
{$ENDIF}

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TCoClientAsyncTaskProperties.Create(AServer: TCoClientAsyncTask);
begin
  inherited Create;
  FServer := AServer;
end;

function TCoClientAsyncTaskProperties.GetDefaultInterface: IDispatch;
begin
  Result := FServer.DefaultInterface;
end;

{$ENDIF}

class function CoCoOptions.Create: IOptions;
begin
  Result := CreateComObject(CLASS_CoOptions) as IOptions;
end;

class function CoCoOptions.CreateRemote(const MachineName: string): IOptions;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CoOptions) as IOptions;
end;

procedure TCoOptions.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{34BD230F-01AF-4275-82C4-9AC03BAC8AD9}';
    IntfIID:   '{F64CF2A2-E862-4365-B20F-19E9A5BE0038}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TCoOptions.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IOptions;
  end;
end;

procedure TCoOptions.ConnectTo(svrIntf: IOptions);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TCoOptions.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TCoOptions.GetDefaultInterface: IOptions;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TCoOptions.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TCoOptionsProperties.Create(Self);
{$ENDIF}
end;

destructor TCoOptions.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TCoOptions.GetServerProperties: TCoOptionsProperties;
begin
  Result := FProps;
end;
{$ENDIF}

procedure TCoOptions.SetValue(const ASectionName: WideString; const AValueName: WideString; 
                              AValue: OleVariant);
begin
  DefaultInterface.SetValue(ASectionName, AValueName, AValue);
end;

function TCoOptions.GetValue(const ASectionName: WideString; const AValueName: WideString; 
                             ADefaultValue: OleVariant): OleVariant;
begin
  Result := DefaultInterface.GetValue(ASectionName, AValueName, ADefaultValue);
end;

procedure TCoOptions.DeleteSection(const ASectionName: WideString);
begin
  DefaultInterface.DeleteSection(ASectionName);
end;

procedure TCoOptions.DeleteValue(const ASectionName: WideString; const AValueName: WideString; 
                                 ADeleteEmptySection: WordBool);
begin
  DefaultInterface.DeleteValue(ASectionName, AValueName, ADeleteEmptySection);
end;

function TCoOptions.SectionExists(const ASectionName: WideString): WordBool;
begin
  Result := DefaultInterface.SectionExists(ASectionName);
end;

function TCoOptions.ValueExists(const ASectionName: WideString; const AValueName: WideString): WordBool;
begin
  Result := DefaultInterface.ValueExists(ASectionName, AValueName);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TCoOptionsProperties.Create(AServer: TCoOptions);
begin
  inherited Create;
  FServer := AServer;
end;

function TCoOptionsProperties.GetDefaultInterface: IOptions;
begin
  Result := FServer.DefaultInterface;
end;

{$ENDIF}

class function CoCoDBContext.Create: IDBContext;
begin
  Result := CreateComObject(CLASS_CoDBContext) as IDBContext;
end;

class function CoCoDBContext.CreateRemote(const MachineName: string): IDBContext;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CoDBContext) as IDBContext;
end;

procedure TCoDBContext.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{1AA364E5-B3A5-4AB4-9A2B-D0E48841FF83}';
    IntfIID:   '{58BAB84A-4E14-4D67-A29E-6FF764FD9FFA}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TCoDBContext.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IDBContext;
  end;
end;

procedure TCoDBContext.ConnectTo(svrIntf: IDBContext);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TCoDBContext.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TCoDBContext.GetDefaultInterface: IDBContext;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TCoDBContext.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TCoDBContextProperties.Create(Self);
{$ENDIF}
end;

destructor TCoDBContext.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TCoDBContext.GetServerProperties: TCoDBContextProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TCoDBContext.Get_ContextType: Integer;
begin
    Result := DefaultInterface.ContextType;
end;

function TCoDBContext.Get_Connection: IDispatch;
begin
    Result := DefaultInterface.Connection;
end;

function TCoDBContext.Get_WBSSystem: IDispatch;
begin
    Result := DefaultInterface.WBSSystem;
end;

function TCoDBContext.Get_ValueCount: Integer;
begin
    Result := DefaultInterface.ValueCount;
end;

function TCoDBContext.GetContextValue(const AValueName: WideString): OleVariant;
begin
  Result := DefaultInterface.GetContextValue(AValueName);
end;

procedure TCoDBContext.SetContextValue(const AValueName: WideString; AValue: OleVariant);
begin
  DefaultInterface.SetContextValue(AValueName, AValue);
end;

function TCoDBContext.GetValueName(AIndex: Integer): WideString;
begin
  Result := DefaultInterface.GetValueName(AIndex);
end;

function TCoDBContext.IsEqual(const AContext: IDBContext): WordBool;
begin
  Result := DefaultInterface.IsEqual(AContext);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TCoDBContextProperties.Create(AServer: TCoDBContext);
begin
  inherited Create;
  FServer := AServer;
end;

function TCoDBContextProperties.GetDefaultInterface: IDBContext;
begin
  Result := FServer.DefaultInterface;
end;

function TCoDBContextProperties.Get_ContextType: Integer;
begin
    Result := DefaultInterface.ContextType;
end;

function TCoDBContextProperties.Get_Connection: IDispatch;
begin
    Result := DefaultInterface.Connection;
end;

function TCoDBContextProperties.Get_WBSSystem: IDispatch;
begin
    Result := DefaultInterface.WBSSystem;
end;

function TCoDBContextProperties.Get_ValueCount: Integer;
begin
    Result := DefaultInterface.ValueCount;
end;

{$ENDIF}

class function CoCoFrameContainer.Create: IFrameContainer;
begin
  Result := CreateComObject(CLASS_CoFrameContainer) as IFrameContainer;
end;

class function CoCoFrameContainer.CreateRemote(const MachineName: string): IFrameContainer;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CoFrameContainer) as IFrameContainer;
end;

procedure TCoFrameContainer.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{7DC478B3-9941-4FE4-AE62-459BC8A41B1B}';
    IntfIID:   '{540CAE0E-987D-4429-837D-1A4A9A28192F}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TCoFrameContainer.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IFrameContainer;
  end;
end;

procedure TCoFrameContainer.ConnectTo(svrIntf: IFrameContainer);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TCoFrameContainer.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TCoFrameContainer.GetDefaultInterface: IFrameContainer;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TCoFrameContainer.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TCoFrameContainerProperties.Create(Self);
{$ENDIF}
end;

destructor TCoFrameContainer.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TCoFrameContainer.GetServerProperties: TCoFrameContainerProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TCoFrameContainer.Get_ParentFrame: IFrameContainer;
begin
    Result := DefaultInterface.ParentFrame;
end;

function TCoFrameContainer.Get_IsRoot: WordBool;
begin
    Result := DefaultInterface.IsRoot;
end;

function TCoFrameContainer.Get_Content: IContent;
begin
    Result := DefaultInterface.Content;
end;

function TCoFrameContainer.Get_Level: Integer;
begin
    Result := DefaultInterface.Level;
end;

function TCoFrameContainer.Get_FrameKey: WideString;
begin
    Result := DefaultInterface.FrameKey;
end;

function TCoFrameContainer.Get_Editing: WordBool;
begin
    Result := DefaultInterface.Editing;
end;

function TCoFrameContainer.Get_LayoutName: WideString;
begin
    Result := DefaultInterface.LayoutName;
end;

procedure TCoFrameContainer.StartRefresh(AChildrenOnly: WordBool);
begin
  DefaultInterface.StartRefresh(AChildrenOnly);
end;

procedure TCoFrameContainer.ChangeContent(DefaultTimeout: WordBool; Timeout: SYSUINT);
begin
  DefaultInterface.ChangeContent(DefaultTimeout, Timeout);
end;

procedure TCoFrameContainer.Validate(AValid: WordBool);
begin
  DefaultInterface.Validate(AValid);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TCoFrameContainerProperties.Create(AServer: TCoFrameContainer);
begin
  inherited Create;
  FServer := AServer;
end;

function TCoFrameContainerProperties.GetDefaultInterface: IFrameContainer;
begin
  Result := FServer.DefaultInterface;
end;

function TCoFrameContainerProperties.Get_ParentFrame: IFrameContainer;
begin
    Result := DefaultInterface.ParentFrame;
end;

function TCoFrameContainerProperties.Get_IsRoot: WordBool;
begin
    Result := DefaultInterface.IsRoot;
end;

function TCoFrameContainerProperties.Get_Content: IContent;
begin
    Result := DefaultInterface.Content;
end;

function TCoFrameContainerProperties.Get_Level: Integer;
begin
    Result := DefaultInterface.Level;
end;

function TCoFrameContainerProperties.Get_FrameKey: WideString;
begin
    Result := DefaultInterface.FrameKey;
end;

function TCoFrameContainerProperties.Get_Editing: WordBool;
begin
    Result := DefaultInterface.Editing;
end;

function TCoFrameContainerProperties.Get_LayoutName: WideString;
begin
    Result := DefaultInterface.LayoutName;
end;

{$ENDIF}

class function CoCoNotification.Create: INotification;
begin
  Result := CreateComObject(CLASS_CoNotification) as INotification;
end;

class function CoCoNotification.CreateRemote(const MachineName: string): INotification;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CoNotification) as INotification;
end;

procedure TCoNotification.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{D8E82FDA-A104-4ECE-B155-7BBB75A41279}';
    IntfIID:   '{753BE7FF-88BB-446A-92C0-BE79EFA7400C}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TCoNotification.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as INotification;
  end;
end;

procedure TCoNotification.ConnectTo(svrIntf: INotification);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TCoNotification.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TCoNotification.GetDefaultInterface: INotification;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TCoNotification.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TCoNotificationProperties.Create(Self);
{$ENDIF}
end;

destructor TCoNotification.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TCoNotification.GetServerProperties: TCoNotificationProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TCoNotification.Get_NotifyType: Integer;
begin
    Result := DefaultInterface.NotifyType;
end;

function TCoNotification.Get_NotifyCategory: WideString;
begin
    Result := DefaultInterface.NotifyCategory;
end;

function TCoNotification.Get_DataType: Integer;
begin
    Result := DefaultInterface.DataType;
end;

function TCoNotification.Get_DATA: OleVariant;
var
  InterfaceVariant : OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  Result := InterfaceVariant.DATA;
end;

function TCoNotification.Get_CheckOut: WideString;
begin
    Result := DefaultInterface.CheckOut;
end;

function TCoNotification.Get_Source: WideString;
begin
    Result := DefaultInterface.Source;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TCoNotificationProperties.Create(AServer: TCoNotification);
begin
  inherited Create;
  FServer := AServer;
end;

function TCoNotificationProperties.GetDefaultInterface: INotification;
begin
  Result := FServer.DefaultInterface;
end;

function TCoNotificationProperties.Get_NotifyType: Integer;
begin
    Result := DefaultInterface.NotifyType;
end;

function TCoNotificationProperties.Get_NotifyCategory: WideString;
begin
    Result := DefaultInterface.NotifyCategory;
end;

function TCoNotificationProperties.Get_DataType: Integer;
begin
    Result := DefaultInterface.DataType;
end;

function TCoNotificationProperties.Get_DATA: OleVariant;
var
  InterfaceVariant : OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  Result := InterfaceVariant.DATA;
end;

function TCoNotificationProperties.Get_CheckOut: WideString;
begin
    Result := DefaultInterface.CheckOut;
end;

function TCoNotificationProperties.Get_Source: WideString;
begin
    Result := DefaultInterface.Source;
end;

{$ENDIF}

class function CoCoMenuBar.Create: IMenuBar;
begin
  Result := CreateComObject(CLASS_CoMenuBar) as IMenuBar;
end;

class function CoCoMenuBar.CreateRemote(const MachineName: string): IMenuBar;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CoMenuBar) as IMenuBar;
end;

procedure TCoMenuBar.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{54C62FF2-A971-4C79-95C2-08FF9F091879}';
    IntfIID:   '{6FC203EF-B841-47E1-962B-E7B0DCA1EA4D}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TCoMenuBar.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IMenuBar;
  end;
end;

procedure TCoMenuBar.ConnectTo(svrIntf: IMenuBar);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TCoMenuBar.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TCoMenuBar.GetDefaultInterface: IMenuBar;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TCoMenuBar.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TCoMenuBarProperties.Create(Self);
{$ENDIF}
end;

destructor TCoMenuBar.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TCoMenuBar.GetServerProperties: TCoMenuBarProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TCoMenuBar.Get_Caption: WideString;
begin
    Result := DefaultInterface.Caption;
end;

function TCoMenuBar.Get_Visible: WordBool;
begin
    Result := DefaultInterface.Visible;
end;

procedure TCoMenuBar.Set_Visible(Value: WordBool);
begin
  DefaultInterface.Set_Visible(Value);
end;

function TCoMenuBar.Get_MenuItemCount: Integer;
begin
    Result := DefaultInterface.MenuItemCount;
end;

function TCoMenuBar.GetMenuItem(AIndex: Integer): IMenuItem;
begin
  Result := DefaultInterface.GetMenuItem(AIndex);
end;

function TCoMenuBar.AddMenuItem(const MenuItemID: WideString; Index: Integer; BeginGroup: WordBool): IMenuItem;
begin
  Result := DefaultInterface.AddMenuItem(MenuItemID, Index, BeginGroup);
end;

function TCoMenuBar.GetItemByText(const AText: WideString): IMenuItem;
begin
  Result := DefaultInterface.GetItemByText(AText);
end;

function TCoMenuBar.CreateMenuItem(const MenuItemID: WideString; const MenuCaption: WideString; 
                                   MenuItemType: MenuItemTypes; const Description: WideString; 
                                   ActionCommand: Integer; Index: Integer; BeginGroup: WordBool): IMenuItem;
begin
  Result := DefaultInterface.CreateMenuItem(MenuItemID, MenuCaption, MenuItemType, Description, 
                                            ActionCommand, Index, BeginGroup);
end;

procedure TCoMenuBar.ClearMenuItems;
begin
  DefaultInterface.ClearMenuItems;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TCoMenuBarProperties.Create(AServer: TCoMenuBar);
begin
  inherited Create;
  FServer := AServer;
end;

function TCoMenuBarProperties.GetDefaultInterface: IMenuBar;
begin
  Result := FServer.DefaultInterface;
end;

function TCoMenuBarProperties.Get_Caption: WideString;
begin
    Result := DefaultInterface.Caption;
end;

function TCoMenuBarProperties.Get_Visible: WordBool;
begin
    Result := DefaultInterface.Visible;
end;

procedure TCoMenuBarProperties.Set_Visible(Value: WordBool);
begin
  DefaultInterface.Set_Visible(Value);
end;

function TCoMenuBarProperties.Get_MenuItemCount: Integer;
begin
    Result := DefaultInterface.MenuItemCount;
end;

{$ENDIF}

class function CoCoMenuItem.Create: IMenuItem;
begin
  Result := CreateComObject(CLASS_CoMenuItem) as IMenuItem;
end;

class function CoCoMenuItem.CreateRemote(const MachineName: string): IMenuItem;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CoMenuItem) as IMenuItem;
end;

procedure TCoMenuItem.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{DB0D3991-A053-42ED-A6B6-97ECD1A1F187}';
    IntfIID:   '{E778343E-D2DF-4698-B57F-C5377B6E1845}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TCoMenuItem.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IMenuItem;
  end;
end;

procedure TCoMenuItem.ConnectTo(svrIntf: IMenuItem);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TCoMenuItem.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TCoMenuItem.GetDefaultInterface: IMenuItem;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TCoMenuItem.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TCoMenuItemProperties.Create(Self);
{$ENDIF}
end;

destructor TCoMenuItem.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TCoMenuItem.GetServerProperties: TCoMenuItemProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TCoMenuItem.Get_Caption: WideString;
begin
    Result := DefaultInterface.Caption;
end;

function TCoMenuItem.Get_Action: Integer;
begin
    Result := DefaultInterface.Action;
end;

function TCoMenuItem.Get_Enabled: WordBool;
begin
    Result := DefaultInterface.Enabled;
end;

procedure TCoMenuItem.Set_Enabled(Value: WordBool);
begin
  DefaultInterface.Set_Enabled(Value);
end;

function TCoMenuItem.Get_MenuItemCount: Integer;
begin
    Result := DefaultInterface.MenuItemCount;
end;

function TCoMenuItem.Get_Icon: Integer;
begin
    Result := DefaultInterface.Icon;
end;

procedure TCoMenuItem.Set_Icon(Value: Integer);
begin
  DefaultInterface.Set_Icon(Value);
end;

function TCoMenuItem.Get_BeginGroup: WordBool;
begin
    Result := DefaultInterface.BeginGroup;
end;

procedure TCoMenuItem.Set_BeginGroup(Value: WordBool);
begin
  DefaultInterface.Set_BeginGroup(Value);
end;

function TCoMenuItem.Get_Visible: WordBool;
begin
    Result := DefaultInterface.Visible;
end;

procedure TCoMenuItem.Set_Visible(Value: WordBool);
begin
  DefaultInterface.Set_Visible(Value);
end;

function TCoMenuItem.Get_ItemType: MenuItemTypes;
begin
    Result := DefaultInterface.ItemType;
end;

function TCoMenuItem.Get_MenuItemID: WideString;
begin
    Result := DefaultInterface.MenuItemID;
end;

function TCoMenuItem.GetMenuItem(AIndex: Integer): IMenuItem;
begin
  Result := DefaultInterface.GetMenuItem(AIndex);
end;

function TCoMenuItem.AddMenuItem(const MenuItemID: WideString; Index: Integer; BeginGroup: WordBool): IMenuItem;
begin
  Result := DefaultInterface.AddMenuItem(MenuItemID, Index, BeginGroup);
end;

function TCoMenuItem.GetItemByText(const AText: WideString): IMenuItem;
begin
  Result := DefaultInterface.GetItemByText(AText);
end;

function TCoMenuItem.CreateMenuItem(const MenuItemID: WideString; const MenuCaption: WideString; 
                                    MenuItemType: MenuItemTypes; const Description: WideString; 
                                    ActionCommand: Integer; Index: Integer; BeginGroup: WordBool): IMenuItem;
begin
  Result := DefaultInterface.CreateMenuItem(MenuItemID, MenuCaption, MenuItemType, Description, 
                                            ActionCommand, Index, BeginGroup);
end;

procedure TCoMenuItem.ClearMenuItems;
begin
  DefaultInterface.ClearMenuItems;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TCoMenuItemProperties.Create(AServer: TCoMenuItem);
begin
  inherited Create;
  FServer := AServer;
end;

function TCoMenuItemProperties.GetDefaultInterface: IMenuItem;
begin
  Result := FServer.DefaultInterface;
end;

function TCoMenuItemProperties.Get_Caption: WideString;
begin
    Result := DefaultInterface.Caption;
end;

function TCoMenuItemProperties.Get_Action: Integer;
begin
    Result := DefaultInterface.Action;
end;

function TCoMenuItemProperties.Get_Enabled: WordBool;
begin
    Result := DefaultInterface.Enabled;
end;

procedure TCoMenuItemProperties.Set_Enabled(Value: WordBool);
begin
  DefaultInterface.Set_Enabled(Value);
end;

function TCoMenuItemProperties.Get_MenuItemCount: Integer;
begin
    Result := DefaultInterface.MenuItemCount;
end;

function TCoMenuItemProperties.Get_Icon: Integer;
begin
    Result := DefaultInterface.Icon;
end;

procedure TCoMenuItemProperties.Set_Icon(Value: Integer);
begin
  DefaultInterface.Set_Icon(Value);
end;

function TCoMenuItemProperties.Get_BeginGroup: WordBool;
begin
    Result := DefaultInterface.BeginGroup;
end;

procedure TCoMenuItemProperties.Set_BeginGroup(Value: WordBool);
begin
  DefaultInterface.Set_BeginGroup(Value);
end;

function TCoMenuItemProperties.Get_Visible: WordBool;
begin
    Result := DefaultInterface.Visible;
end;

procedure TCoMenuItemProperties.Set_Visible(Value: WordBool);
begin
  DefaultInterface.Set_Visible(Value);
end;

function TCoMenuItemProperties.Get_ItemType: MenuItemTypes;
begin
    Result := DefaultInterface.ItemType;
end;

function TCoMenuItemProperties.Get_MenuItemID: WideString;
begin
    Result := DefaultInterface.MenuItemID;
end;

{$ENDIF}

class function CoCoActions.Create: IActions;
begin
  Result := CreateComObject(CLASS_CoActions) as IActions;
end;

class function CoCoActions.CreateRemote(const MachineName: string): IActions;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CoActions) as IActions;
end;

procedure TCoActions.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{CA2C05F3-9875-4906-9FAF-849C3739210F}';
    IntfIID:   '{22C267CC-D48E-43F0-94B9-AF03C949D103}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TCoActions.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IActions;
  end;
end;

procedure TCoActions.ConnectTo(svrIntf: IActions);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TCoActions.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TCoActions.GetDefaultInterface: IActions;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TCoActions.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TCoActionsProperties.Create(Self);
{$ENDIF}
end;

destructor TCoActions.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TCoActions.GetServerProperties: TCoActionsProperties;
begin
  Result := FProps;
end;
{$ENDIF}

procedure TCoActions.SetActionEnabled(ActionCommand: Integer; ActionEnabled: WordBool);
begin
  DefaultInterface.SetActionEnabled(ActionCommand, ActionEnabled);
end;

function TCoActions.IsActionEnabled(ActionCommand: Integer): WordBool;
begin
  Result := DefaultInterface.IsActionEnabled(ActionCommand);
end;

function TCoActions.ExecuteAction(ActionCommand: Integer; ActionData: OleVariant; 
                                  var ActionResultData: OleVariant): ActionResults;
begin
  Result := DefaultInterface.ExecuteAction(ActionCommand, ActionData, ActionResultData);
end;

function TCoActions.CreateAction(const ActionCaption: WideString; const ActionHint: WideString; 
                                 const ActionShortcut: WideString; ActionIconIndex: Integer; 
                                 ActionIcon: OleVariant): Integer;
begin
  Result := DefaultInterface.CreateAction(ActionCaption, ActionHint, ActionShortcut, 
                                          ActionIconIndex, ActionIcon);
end;

procedure TCoActions.SetActionVisible(ActionCommand: Integer; ActionVisible: WordBool);
begin
  DefaultInterface.SetActionVisible(ActionCommand, ActionVisible);
end;

function TCoActions.IsActionVisible(ActionCommand: Integer): WordBool;
begin
  Result := DefaultInterface.IsActionVisible(ActionCommand);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TCoActionsProperties.Create(AServer: TCoActions);
begin
  inherited Create;
  FServer := AServer;
end;

function TCoActionsProperties.GetDefaultInterface: IActions;
begin
  Result := FServer.DefaultInterface;
end;

{$ENDIF}

class function CoLooApplication.Create: ILoodsmanApplication;
begin
  Result := CreateComObject(CLASS_LooApplication) as ILoodsmanApplication;
end;

class function CoLooApplication.CreateRemote(const MachineName: string): ILoodsmanApplication;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_LooApplication) as ILoodsmanApplication;
end;

procedure TLooApplication.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{AAAE7194-C4AB-4056-9045-FBCE7DB25B48}';
    IntfIID:   '{C50527B3-98D4-4C81-BE85-8D9B04A625FC}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TLooApplication.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as ILoodsmanApplication;
  end;
end;

procedure TLooApplication.ConnectTo(svrIntf: ILoodsmanApplication);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TLooApplication.DisConnect;
begin
  if Fintf <> nil then
  begin
    if FAutoQuit then
      Quit();
    FIntf := nil;
  end;
end;

function TLooApplication.GetDefaultInterface: ILoodsmanApplication;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TLooApplication.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TLooApplicationProperties.Create(Self);
{$ENDIF}
end;

destructor TLooApplication.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TLooApplication.GetServerProperties: TLooApplicationProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TLooApplication.Get_ActiveWindow: IDBWindow;
begin
    Result := DefaultInterface.ActiveWindow;
end;

function TLooApplication.Get_MainHandle: OLE_HANDLE;
begin
    Result := DefaultInterface.MainHandle;
end;

function TLooApplication.Get_PluginCount: Integer;
begin
    Result := DefaultInterface.PluginCount;
end;

function TLooApplication.Get_WindowCount: Integer;
begin
    Result := DefaultInterface.WindowCount;
end;

function TLooApplication.Get_AppHandle: OLE_HANDLE;
begin
    Result := DefaultInterface.AppHandle;
end;

function TLooApplication.Get_DataBase: IDataBase;
begin
    Result := DefaultInterface.DataBase;
end;

function TLooApplication.Get_Title: WideString;
begin
    Result := DefaultInterface.Title;
end;

function TLooApplication.Get_Actions: IActions;
begin
    Result := DefaultInterface.Actions;
end;

function TLooApplication.Get_FilePath: WideString;
begin
    Result := DefaultInterface.FilePath;
end;

function TLooApplication.Get_HelpPath: WideString;
begin
    Result := DefaultInterface.HelpPath;
end;

function TLooApplication.Get_SessionSecurityLabel: Integer;
begin
    Result := DefaultInterface.SessionSecurityLabel;
end;

function TLooApplication.Get_TypeIconsOffset: Integer;
begin
    Result := DefaultInterface.TypeIconsOffset;
end;

procedure TLooApplication.SetVisible(Value: WordBool);
begin
  DefaultInterface.SetVisible(Value);
end;

function TLooApplication.GetVisible: WordBool;
begin
  Result := DefaultInterface.GetVisible;
end;

procedure TLooApplication.Quit;
begin
  DefaultInterface.Quit;
end;

procedure TLooApplication.Activate;
begin
  DefaultInterface.Activate;
end;

procedure TLooApplication.Minimize;
begin
  DefaultInterface.Minimize;
end;

procedure TLooApplication.Maximize;
begin
  DefaultInterface.Maximize;
end;

procedure TLooApplication.Restore;
begin
  DefaultInterface.Restore;
end;

function TLooApplication.GetPlugin(Index: Integer): ILoodsmanPlugin;
begin
  Result := DefaultInterface.GetPlugin(Index);
end;

function TLooApplication.GetPluginByName(const Name: WideString): ILoodsmanPlugin;
begin
  Result := DefaultInterface.GetPluginByName(Name);
end;

procedure TLooApplication.NotifyUser(const Header: WideString; const Text: WideString; 
                                     NotifyKind: Integer; Reserved: Integer);
begin
  DefaultInterface.NotifyUser(Header, Text, NotifyKind, Reserved);
end;

procedure TLooApplication.TileWindows(ATileMode: Integer);
begin
  DefaultInterface.TileWindows(ATileMode);
end;

procedure TLooApplication.CascadeWindows;
begin
  DefaultInterface.CascadeWindows;
end;

function TLooApplication.GetWindow(Index: Integer): IDBWindow;
begin
  Result := DefaultInterface.GetWindow(Index);
end;

function TLooApplication.CreateWindow(const ACaption: WideString; const AContext: IDBContext; 
                                      const ACLSID: WideString; AFlags: Integer): IDBWindow;
begin
  Result := DefaultInterface.CreateWindow(ACaption, AContext, ACLSID, AFlags);
end;

function TLooApplication.CreateContext(AContextType: Integer; const ACheckOut: WideString; 
                                       AData: Integer): IDBContext;
begin
  Result := DefaultInterface.CreateContext(AContextType, ACheckOut, AData);
end;

function TLooApplication.FindWindow(const AContext: IDBContext; const ACLSID: WideString; 
                                    AFlags: Integer): IDBWindow;
begin
  Result := DefaultInterface.FindWindow(AContext, ACLSID, AFlags);
end;

function TLooApplication.OpenDatabase(const DBName: WideString; Params: OleVariant): WordBool;
begin
  Result := DefaultInterface.OpenDatabase(DBName, Params);
end;

procedure TLooApplication.CloseDatabase;
begin
  DefaultInterface.CloseDatabase;
end;

procedure TLooApplication.SendNotification(const Source: WideString; NotifyType: Integer; 
                                           const NotifyCategory: WideString; DataType: Integer; 
                                           DATA: OleVariant; const CheckOut: WideString);
begin
  DefaultInterface.SendNotification(Source, NotifyType, NotifyCategory, DataType, DATA, CheckOut);
end;

procedure TLooApplication.AddNotificationHandler(const NotificationIntf: INotificationHandler; 
                                                 NotifyType: Integer; 
                                                 const NotifyCategory: WideString; DataType: Integer);
begin
  DefaultInterface.AddNotificationHandler(NotificationIntf, NotifyType, NotifyCategory, DataType);
end;

procedure TLooApplication.RemoveNotificationHandler(const NotificationIntf: INotificationHandler; 
                                                    NotifyType: Integer; 
                                                    const NotifyCategory: WideString; 
                                                    DataType: Integer);
begin
  DefaultInterface.RemoveNotificationHandler(NotificationIntf, NotifyType, NotifyCategory, DataType);
end;

function TLooApplication.FindService(AIntfID: TGUID; BindedOnly: WordBool): IDispatch;
begin
  Result := DefaultInterface.FindService(AIntfID, BindedOnly);
end;

function TLooApplication.ShowWindow(const ACaption: WideString; const AContext: IDBContext; 
                                    const ACLSID: WideString; AFlags: Integer): IDBWindow;
begin
  Result := DefaultInterface.ShowWindow(ACaption, AContext, ACLSID, AFlags);
end;

function TLooApplication.OpenURL(const URLString: WideString; Flags: Integer): Integer;
begin
  Result := DefaultInterface.OpenURL(URLString, Flags);
end;

procedure TLooApplication.AddActionHandler(const ActionHandler: IActionHandler; 
                                           ActionCommand: Integer; Priority: Integer; 
                                           DataDependent: WordBool);
begin
  DefaultInterface.AddActionHandler(ActionHandler, ActionCommand, Priority, DataDependent);
end;

procedure TLooApplication.RemoveActionHandler(const ActionHandler: IActionHandler; 
                                              ActionCommand: Integer);
begin
  DefaultInterface.RemoveActionHandler(ActionHandler, ActionCommand);
end;

function TLooApplication.GetTypeIconIndex(ATypeID: Integer): Integer;
begin
  Result := DefaultInterface.GetTypeIconIndex(ATypeID);
end;

function TLooApplication.OpenCheckout(const ACheckOut: WideString): IDBWindow;
begin
  Result := DefaultInterface.OpenCheckout(ACheckOut);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TLooApplicationProperties.Create(AServer: TLooApplication);
begin
  inherited Create;
  FServer := AServer;
end;

function TLooApplicationProperties.GetDefaultInterface: ILoodsmanApplication;
begin
  Result := FServer.DefaultInterface;
end;

function TLooApplicationProperties.Get_ActiveWindow: IDBWindow;
begin
    Result := DefaultInterface.ActiveWindow;
end;

function TLooApplicationProperties.Get_MainHandle: OLE_HANDLE;
begin
    Result := DefaultInterface.MainHandle;
end;

function TLooApplicationProperties.Get_PluginCount: Integer;
begin
    Result := DefaultInterface.PluginCount;
end;

function TLooApplicationProperties.Get_WindowCount: Integer;
begin
    Result := DefaultInterface.WindowCount;
end;

function TLooApplicationProperties.Get_AppHandle: OLE_HANDLE;
begin
    Result := DefaultInterface.AppHandle;
end;

function TLooApplicationProperties.Get_DataBase: IDataBase;
begin
    Result := DefaultInterface.DataBase;
end;

function TLooApplicationProperties.Get_Title: WideString;
begin
    Result := DefaultInterface.Title;
end;

function TLooApplicationProperties.Get_Actions: IActions;
begin
    Result := DefaultInterface.Actions;
end;

function TLooApplicationProperties.Get_FilePath: WideString;
begin
    Result := DefaultInterface.FilePath;
end;

function TLooApplicationProperties.Get_HelpPath: WideString;
begin
    Result := DefaultInterface.HelpPath;
end;

function TLooApplicationProperties.Get_SessionSecurityLabel: Integer;
begin
    Result := DefaultInterface.SessionSecurityLabel;
end;

function TLooApplicationProperties.Get_TypeIconsOffset: Integer;
begin
    Result := DefaultInterface.TypeIconsOffset;
end;

{$ENDIF}

procedure Register;
begin
  RegisterComponents(dtlOcxPage, [TConnectSP, TSocketConnect, TWebConnect, TSQLAutorization, 
    TConnectDB, TMetodsWorkObject, TConnectDBActive, TSaveDocument]);
  RegisterComponents(dtlServerPage, [TBOLoodsmanSimpleProvider, TBOAttribute, TBOAttributeCollection, TBOItem, 
    TBOItemCollection, TBOKernel, TBOObject, TBOObjectCollection, TBORequest, 
    TBOResponse, TLoodsmanObject, TPluginCall, TURL, TCDataBase, 
    TCoLooPlugin, TCDBWindow, TCoSimpleAPI, TCoDataSet, TCoClientAsyncTask, 
    TCoOptions, TCoDBContext, TCoFrameContainer, TCoNotification, TCoMenuBar, 
    TCoMenuItem, TCoActions, TLooApplication]);
end;

end.
