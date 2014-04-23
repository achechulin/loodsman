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
// File generated on 01.02.2011 10:52:56 from Type Library described below.

// ************************************************************************  //
// Type Lib: Loodsman.tlb (1)
// LIBID: {7CC86059-0262-44D5-9AA3-033DB38F11EF}
// LCID: 0
// Helpfile: 
// HelpString: Loodsman Client Library
// DepndLst: 
//   (1) v2.0 stdole, (C:\WINDOWS\system32\STDOLE2.TLB)
//   (2) v1.0 BOSimple, (C:\Program Files\Common Files\ASCON Shared\BOSimple.DLL)
//   (3) v1.0 Ask, (Ask.dll)
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
{$ALIGN 4}
interface

uses Windows, ActiveX, Ask_TLB, BOSimple_TLB, Classes, Graphics, OleCtrls, OleServer, Variants;
  

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
  DIID_ILoodsman8Events: TGUID = '{F8EC509B-FB71-45DC-82FB-586E50B3DB18}';
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
  IID_IDataSet: TGUID = '{60446488-9D7B-4776-866E-7EE647F72972}';
  CLASS_DataSet: TGUID = '{A4896438-F452-49F1-8B40-EF50F24BF5B6}';
  CLASS_PluginCall: TGUID = '{E4D4AE7B-7EB9-4057-B229-967E02B90054}';
  CLASS_URL: TGUID = '{975FD36D-CAE8-4690-A28F-830CE1141EEB}';
  IID_IPDMData: TGUID = '{0EB0573F-D586-4B46-9FB0-F44673455D12}';
  IID_IPDMObject: TGUID = '{E32BF2D4-529A-4566-88BF-6413B5642718}';
  CLASS_CPDMData: TGUID = '{C962D244-EC62-457E-B0F0-5ACA07C86096}';
  CLASS_CPDMObject: TGUID = '{A70B8B70-5CF9-4DC3-A8AD-E5331FA33054}';
  IID_IPDMDocument: TGUID = '{693C8331-AE1F-449B-89E8-2165657984E6}';
  CLASS_CPDMDocument: TGUID = '{0AEAEA86-D379-4826-9F9B-DA8CA0B29539}';
  IID_IPDMFile: TGUID = '{31D155C2-5FC8-40BB-A436-062B1BCBB18E}';
  CLASS_CPDMFile: TGUID = '{4F1E8FBF-0FEB-43D8-ABD3-07415AF65399}';
  IID_IPDMCollection: TGUID = '{D6656545-D515-4096-8CEE-89A58223BEA5}';
  CLASS_CPDMCollection: TGUID = '{A7C0267A-0F5D-4998-9276-73BAB12813DC}';
  IID_IView: TGUID = '{3A337EF0-BB86-4F60-B577-699192922B3A}';
  CLASS_CView: TGUID = '{F9681FF6-182A-43DE-B0F2-B3E11B15FB31}';
  IID_IAnnotation: TGUID = '{09741CE4-5386-4037-8DFC-B83628AAE723}';
  CLASS_CAnnotation: TGUID = '{CAC15135-4162-46CD-A60D-E484A4331C5E}';
  IID_IDocumentViewer: TGUID = '{27B59D50-87FA-4017-B8C1-5F02D90EF1E7}';
  IID_ILoodsmanUser: TGUID = '{24D25D51-3044-4D0E-AFCF-DB6471487BF5}';
  CLASS_CLoodsmanUser: TGUID = '{1937E223-4026-4484-A8E6-544AB1A71AAE}';
  IID_IDataBase: TGUID = '{84555B43-9101-41CA-AAB3-0F176A0AF30C}';
  CLASS_CDataBase: TGUID = '{593972B0-7702-4932-A46C-9446555821DB}';
  IID_IDBWindow: TGUID = '{8A2DF0A5-19C6-4B21-AD73-7F8718CA37EE}';
  CLASS_CDBWindow: TGUID = '{9718B914-E357-436F-8D57-99216039534F}';
  IID_IWFObject: TGUID = '{7D2F6E4D-0552-475A-BE96-734DC993414B}';
  CLASS_CWFObject: TGUID = '{2B9A2019-2B0C-4DF4-9072-23B13DDA865F}';
  IID_IWFRoute: TGUID = '{85206128-062B-4058-8795-4AF30ACBA67B}';
  CLASS_CWFRoute: TGUID = '{0D161323-5BC4-4827-95AC-80D73E54938A}';
  IID_IWFTask: TGUID = '{48A0BE87-BAB6-4776-8EEC-69AACEC9A40C}';
  CLASS_CWFTask: TGUID = '{DF024425-4146-4BCE-8D2E-DCF7E9F2779E}';
  IID_ITaskTerm: TGUID = '{8A4B5F2B-EDEA-4B6B-BA13-938232E9627F}';
  CLASS_CTaskTerm: TGUID = '{5F5FB324-814C-4D8B-B7F5-F942DE75C605}';
  IID_IAsyncTask: TGUID = '{A3CBA7B0-2E12-44CA-9BEB-39D269AC30BD}';
  IID_IPluginCallBack: TGUID = '{9C6DAF55-8F9D-4AB6-B151-F83E317480E5}';
  CLASS_CAsyncTask: TGUID = '{1695051D-46A7-4D5A-938C-854DCF188C9F}';
  IID_IRTFText: TGUID = '{ACCC7902-EE75-474E-AD45-544086136A68}';
  CLASS_CRTFText: TGUID = '{B34738C4-93D2-4506-8715-974FD05B2177}';

// *********************************************************************//
// Declaration of Enumerations defined in Type Library                    
// *********************************************************************//
// Constants for enum PDMLockLevels
type
  PDMLockLevels = TOleEnum;
const
  NoLock = $00000000;
  SelfLock = $00000001;
  UserLock = $00000002;

// Constants for enum PDMAccessLevels
type
  PDMAccessLevels = TOleEnum;
const
  NoAccess = $00000000;
  ReadAccess = $00000001;
  EditAccess = $00000002;
  AdminAccess = $00000003;

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

// Constants for enum UserFeatures
type
  UserFeatures = TOleEnum;
const
  CREATE_FEATURE = $00000001;
  RUN_FEATURE = $00000002;
  EDIT_CALENDAR_FEATURE = $00000004;
  ADMIN_FEATURE = $00000008;

// Constants for enum WFRouteStates
type
  WFRouteStates = TOleEnum;
const
  rsNew = $00000000;
  rsActive = $00000001;
  rsStopped = $00000002;
  rsFinished = $00000003;

// Constants for enum WFTaskStates
type
  WFTaskStates = TOleEnum;
const
  ttUndefined = $00000000;
  ttReceived = $00000001;
  ttRunning = $00000002;
  ttFinished = $00000003;
  ttQuestions = $00000004;
  ttRefused = $00000005;

// Constants for enum WFTaskTypes
type
  WFTaskTypes = TOleEnum;
const
  ttStage = $00000000;
  ttSubRoute = $00000001;

// Constants for enum WFObjectTypes
type
  WFObjectTypes = TOleEnum;
const
  woUnknown = $00000000;
  woTask = $00000001;
  woRoute = $00000002;

type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  ILoodsman8 = interface;
  ILoodsman8Disp = dispinterface;
  ILoodsman8Events = dispinterface;
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
  IDataSet = interface;
  IDataSetDisp = dispinterface;
  IPDMData = interface;
  IPDMDataDisp = dispinterface;
  IPDMObject = interface;
  IPDMObjectDisp = dispinterface;
  IPDMDocument = interface;
  IPDMDocumentDisp = dispinterface;
  IPDMFile = interface;
  IPDMFileDisp = dispinterface;
  IPDMCollection = interface;
  IPDMCollectionDisp = dispinterface;
  IView = interface;
  IViewDisp = dispinterface;
  IAnnotation = interface;
  IAnnotationDisp = dispinterface;
  IDocumentViewer = interface;
  IDocumentViewerDisp = dispinterface;
  ILoodsmanUser = interface;
  ILoodsmanUserDisp = dispinterface;
  IDataBase = interface;
  IDataBaseDisp = dispinterface;
  IDBWindow = interface;
  IDBWindowDisp = dispinterface;
  IWFObject = interface;
  IWFObjectDisp = dispinterface;
  IWFRoute = interface;
  IWFRouteDisp = dispinterface;
  IWFTask = interface;
  IWFTaskDisp = dispinterface;
  ITaskTerm = interface;
  ITaskTermDisp = dispinterface;
  IAsyncTask = interface;
  IAsyncTaskDisp = dispinterface;
  IPluginCallBack = interface;
  IPluginCallBackDisp = dispinterface;
  IRTFText = interface;
  IRTFTextDisp = dispinterface;

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
  DataSet = IDataSet;
  PluginCall = IPluginCall;
  URL = ICommand;
  CPDMData = IPDMData;
  CPDMObject = IPDMObject;
  CPDMDocument = IPDMDocument;
  CPDMFile = IPDMFile;
  CPDMCollection = IPDMCollection;
  CView = IView;
  CAnnotation = IAnnotation;
  CLoodsmanUser = ILoodsmanUser;
  CDataBase = IDataBase;
  CDBWindow = IDBWindow;
  CWFObject = IWFObject;
  CWFRoute = IWFRoute;
  CWFTask = IWFTask;
  CTaskTerm = ITaskTerm;
  CAsyncTask = IAsyncTask;
  CRTFText = IRTFText;


// *********************************************************************//
// Declaration of structures, unions and aliases.                         
// *********************************************************************//
  WFRole = record
    ID: Integer;
    Name: WideString;
  end;


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
// DispIntf:  ILoodsman8Events
// Flags:     (4096) Dispatchable
// GUID:      {F8EC509B-FB71-45DC-82FB-586E50B3DB18}
// *********************************************************************//
  ILoodsman8Events = dispinterface
    ['{F8EC509B-FB71-45DC-82FB-586E50B3DB18}']
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
    function Get_AsyncTask: IAsyncTask; safecall;
    function Get_MainHandle: OLE_HANDLE; safecall;
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
    property AsyncTask: IAsyncTask read Get_AsyncTask;
    property MainHandle: OLE_HANDLE read Get_MainHandle;
  end;

// *********************************************************************//
// DispIntf:  IPluginCallDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {7779A0A3-1BF6-45C8-A536-21AD4B97E46D}
// *********************************************************************//
  IPluginCallDisp = dispinterface
    ['{7779A0A3-1BF6-45C8-A536-21AD4B97E46D}']
    function RunMethod(const stMetod: WideString; vaParams: OleVariant): OleVariant; dispid 1;
    function GetDataSet(const stMetod: WideString; vaParams: OleVariant): IDataSet; dispid 2;
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
    property AsyncTask: IAsyncTask readonly dispid 203;
    property MainHandle: OLE_HANDLE readonly dispid 204;
  end;

// *********************************************************************//
// Interface: IDataSet
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {60446488-9D7B-4776-866E-7EE647F72972}
// *********************************************************************//
  IDataSet = interface(IDispatch)
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
// DispIntf:  IDataSetDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {60446488-9D7B-4776-866E-7EE647F72972}
// *********************************************************************//
  IDataSetDisp = dispinterface
    ['{60446488-9D7B-4776-866E-7EE647F72972}']
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
// Interface: IPDMData
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0EB0573F-D586-4B46-9FB0-F44673455D12}
// *********************************************************************//
  IPDMData = interface(IDispatch)
    ['{0EB0573F-D586-4B46-9FB0-F44673455D12}']
    function Get_ID: Integer; safecall;
    function Get_Name: WideString; safecall;
    function Get_LockLevel: PDMLockLevels; safecall;
    function Get_AccessLevel: PDMAccessLevels; safecall;
    property ID: Integer read Get_ID;
    property Name: WideString read Get_Name;
    property LockLevel: PDMLockLevels read Get_LockLevel;
    property AccessLevel: PDMAccessLevels read Get_AccessLevel;
  end;

// *********************************************************************//
// DispIntf:  IPDMDataDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0EB0573F-D586-4B46-9FB0-F44673455D12}
// *********************************************************************//
  IPDMDataDisp = dispinterface
    ['{0EB0573F-D586-4B46-9FB0-F44673455D12}']
    property ID: Integer readonly dispid 201;
    property Name: WideString readonly dispid 202;
    property LockLevel: PDMLockLevels readonly dispid 203;
    property AccessLevel: PDMAccessLevels readonly dispid 204;
  end;

// *********************************************************************//
// Interface: IPDMObject
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {E32BF2D4-529A-4566-88BF-6413B5642718}
// *********************************************************************//
  IPDMObject = interface(IDispatch)
    ['{E32BF2D4-529A-4566-88BF-6413B5642718}']
    function Get_ID: Integer; safecall;
    function Get_Name: WideString; safecall;
    function Get_TypeName: WideString; safecall;
    function Get_Version: WideString; safecall;
    function Get_StateName: WideString; safecall;
    function Get_LockLevel: PDMLockLevels; safecall;
    function Get_AccessLevel: PDMAccessLevels; safecall;
    function Get_IsDocument: WordBool; safecall;
    property ID: Integer read Get_ID;
    property Name: WideString read Get_Name;
    property TypeName: WideString read Get_TypeName;
    property Version: WideString read Get_Version;
    property StateName: WideString read Get_StateName;
    property LockLevel: PDMLockLevels read Get_LockLevel;
    property AccessLevel: PDMAccessLevels read Get_AccessLevel;
    property IsDocument: WordBool read Get_IsDocument;
  end;

// *********************************************************************//
// DispIntf:  IPDMObjectDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {E32BF2D4-529A-4566-88BF-6413B5642718}
// *********************************************************************//
  IPDMObjectDisp = dispinterface
    ['{E32BF2D4-529A-4566-88BF-6413B5642718}']
    property ID: Integer readonly dispid 201;
    property Name: WideString readonly dispid 202;
    property TypeName: WideString readonly dispid 203;
    property Version: WideString readonly dispid 204;
    property StateName: WideString readonly dispid 205;
    property LockLevel: PDMLockLevels readonly dispid 206;
    property AccessLevel: PDMAccessLevels readonly dispid 207;
    property IsDocument: WordBool readonly dispid 208;
  end;

// *********************************************************************//
// Interface: IPDMDocument
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {693C8331-AE1F-449B-89E8-2165657984E6}
// *********************************************************************//
  IPDMDocument = interface(IDispatch)
    ['{693C8331-AE1F-449B-89E8-2165657984E6}']
    function Get_ID: Integer; safecall;
    function Get_Name: WideString; safecall;
    function Get_TypeName: WideString; safecall;
    function Get_Version: WideString; safecall;
    function Get_StateName: WideString; safecall;
    function Get_Files: IPDMCollection; safecall;
    function Get_View: IView; safecall;
    function Get_Annotation: IAnnotation; safecall;
    function Get_LockLevel: PDMLockLevels; safecall;
    function Get_AccessLevel: PDMAccessLevels; safecall;
    property ID: Integer read Get_ID;
    property Name: WideString read Get_Name;
    property TypeName: WideString read Get_TypeName;
    property Version: WideString read Get_Version;
    property StateName: WideString read Get_StateName;
    property Files: IPDMCollection read Get_Files;
    property View: IView read Get_View;
    property Annotation: IAnnotation read Get_Annotation;
    property LockLevel: PDMLockLevels read Get_LockLevel;
    property AccessLevel: PDMAccessLevels read Get_AccessLevel;
  end;

// *********************************************************************//
// DispIntf:  IPDMDocumentDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {693C8331-AE1F-449B-89E8-2165657984E6}
// *********************************************************************//
  IPDMDocumentDisp = dispinterface
    ['{693C8331-AE1F-449B-89E8-2165657984E6}']
    property ID: Integer readonly dispid 201;
    property Name: WideString readonly dispid 202;
    property TypeName: WideString readonly dispid 203;
    property Version: WideString readonly dispid 204;
    property StateName: WideString readonly dispid 205;
    property Files: IPDMCollection readonly dispid 206;
    property View: IView readonly dispid 207;
    property Annotation: IAnnotation readonly dispid 208;
    property LockLevel: PDMLockLevels readonly dispid 209;
    property AccessLevel: PDMAccessLevels readonly dispid 210;
  end;

// *********************************************************************//
// Interface: IPDMFile
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {31D155C2-5FC8-40BB-A436-062B1BCBB18E}
// *********************************************************************//
  IPDMFile = interface(IDispatch)
    ['{31D155C2-5FC8-40BB-A436-062B1BCBB18E}']
    function Get_ID: Integer; safecall;
    function Get_Name: WideString; safecall;
    function Get_Path: WideString; safecall;
    function Get_Size: Integer; safecall;
    function Get_Created: TDateTime; safecall;
    function Get_Modified: TDateTime; safecall;
    function Load: WideString; safecall;
    function Get_LockLevel: PDMLockLevels; safecall;
    function Get_AccessLevel: PDMAccessLevels; safecall;
    function Get_LocalName: WideString; safecall;
    property ID: Integer read Get_ID;
    property Name: WideString read Get_Name;
    property Path: WideString read Get_Path;
    property Size: Integer read Get_Size;
    property Created: TDateTime read Get_Created;
    property Modified: TDateTime read Get_Modified;
    property LockLevel: PDMLockLevels read Get_LockLevel;
    property AccessLevel: PDMAccessLevels read Get_AccessLevel;
    property LocalName: WideString read Get_LocalName;
  end;

// *********************************************************************//
// DispIntf:  IPDMFileDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {31D155C2-5FC8-40BB-A436-062B1BCBB18E}
// *********************************************************************//
  IPDMFileDisp = dispinterface
    ['{31D155C2-5FC8-40BB-A436-062B1BCBB18E}']
    property ID: Integer readonly dispid 201;
    property Name: WideString readonly dispid 202;
    property Path: WideString readonly dispid 203;
    property Size: Integer readonly dispid 204;
    property Created: TDateTime readonly dispid 205;
    property Modified: TDateTime readonly dispid 206;
    function Load: WideString; dispid 207;
    property LockLevel: PDMLockLevels readonly dispid 208;
    property AccessLevel: PDMAccessLevels readonly dispid 209;
    property LocalName: WideString readonly dispid 210;
  end;

// *********************************************************************//
// Interface: IPDMCollection
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D6656545-D515-4096-8CEE-89A58223BEA5}
// *********************************************************************//
  IPDMCollection = interface(IDispatch)
    ['{D6656545-D515-4096-8CEE-89A58223BEA5}']
    function Get_Items(Index: Integer): IPDMData; safecall;
    function Get_Count: Integer; safecall;
    function ItemByName(const ItemName: WideString): IPDMData; safecall;
    property Items[Index: Integer]: IPDMData read Get_Items;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  IPDMCollectionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D6656545-D515-4096-8CEE-89A58223BEA5}
// *********************************************************************//
  IPDMCollectionDisp = dispinterface
    ['{D6656545-D515-4096-8CEE-89A58223BEA5}']
    property Items[Index: Integer]: IPDMData readonly dispid 201;
    property Count: Integer readonly dispid 202;
    function ItemByName(const ItemName: WideString): IPDMData; dispid 203;
  end;

// *********************************************************************//
// Interface: IView
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {3A337EF0-BB86-4F60-B577-699192922B3A}
// *********************************************************************//
  IView = interface(IDispatch)
    ['{3A337EF0-BB86-4F60-B577-699192922B3A}']
    function Load: WideString; safecall;
    procedure Save; safecall;
    procedure Delete; safecall;
    function Get_FileName: WideString; safecall;
    function NewFile(const FileExt: WideString): WideString; safecall;
    property FileName: WideString read Get_FileName;
  end;

// *********************************************************************//
// DispIntf:  IViewDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {3A337EF0-BB86-4F60-B577-699192922B3A}
// *********************************************************************//
  IViewDisp = dispinterface
    ['{3A337EF0-BB86-4F60-B577-699192922B3A}']
    function Load: WideString; dispid 201;
    procedure Save; dispid 202;
    procedure Delete; dispid 203;
    property FileName: WideString readonly dispid 204;
    function NewFile(const FileExt: WideString): WideString; dispid 205;
  end;

// *********************************************************************//
// Interface: IAnnotation
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {09741CE4-5386-4037-8DFC-B83628AAE723}
// *********************************************************************//
  IAnnotation = interface(IDispatch)
    ['{09741CE4-5386-4037-8DFC-B83628AAE723}']
    function Load: WideString; safecall;
    procedure Save; safecall;
    procedure Delete; safecall;
    function Get_FileName: WideString; safecall;
    function Get_Locked: WordBool; safecall;
    procedure Set_Locked(Value: WordBool); safecall;
    function NewFile(const FileExt: WideString): WideString; safecall;
    function Get_LockLevel: PDMLockLevels; safecall;
    property FileName: WideString read Get_FileName;
    property Locked: WordBool read Get_Locked write Set_Locked;
    property LockLevel: PDMLockLevels read Get_LockLevel;
  end;

// *********************************************************************//
// DispIntf:  IAnnotationDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {09741CE4-5386-4037-8DFC-B83628AAE723}
// *********************************************************************//
  IAnnotationDisp = dispinterface
    ['{09741CE4-5386-4037-8DFC-B83628AAE723}']
    function Load: WideString; dispid 201;
    procedure Save; dispid 202;
    procedure Delete; dispid 203;
    property FileName: WideString readonly dispid 204;
    property Locked: WordBool dispid 205;
    function NewFile(const FileExt: WideString): WideString; dispid 206;
    property LockLevel: PDMLockLevels readonly dispid 207;
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
// Interface: ILoodsmanUser
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {24D25D51-3044-4D0E-AFCF-DB6471487BF5}
// *********************************************************************//
  ILoodsmanUser = interface(IDispatch)
    ['{24D25D51-3044-4D0E-AFCF-DB6471487BF5}']
    function Get_Name: WideString; safecall;
    function Get_FullName: WideString; safecall;
    function Get_EMail: WideString; safecall;
    function Get_ID: Integer; safecall;
    function Get_Features: Integer; safecall;
    property Name: WideString read Get_Name;
    property FullName: WideString read Get_FullName;
    property EMail: WideString read Get_EMail;
    property ID: Integer read Get_ID;
    property Features: Integer read Get_Features;
  end;

// *********************************************************************//
// DispIntf:  ILoodsmanUserDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {24D25D51-3044-4D0E-AFCF-DB6471487BF5}
// *********************************************************************//
  ILoodsmanUserDisp = dispinterface
    ['{24D25D51-3044-4D0E-AFCF-DB6471487BF5}']
    property Name: WideString readonly dispid 201;
    property FullName: WideString readonly dispid 202;
    property EMail: WideString readonly dispid 203;
    property ID: Integer readonly dispid 204;
    property Features: Integer readonly dispid 205;
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
    property Name: WideString read Get_Name;
    property CurrentUser: ILoodsmanUser read Get_CurrentUser;
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
    property DataBase: IDataBase read Get_DataBase;
    property CheckOutMode: WordBool read Get_CheckOutMode;
    property WindowHandle: OLE_HANDLE read Get_WindowHandle;
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
  end;

// *********************************************************************//
// Interface: IWFObject
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {7D2F6E4D-0552-475A-BE96-734DC993414B}
// *********************************************************************//
  IWFObject = interface(IDispatch)
    ['{7D2F6E4D-0552-475A-BE96-734DC993414B}']
    function Get_ID: Integer; safecall;
    function Get_ObjectType: WFObjectTypes; safecall;
    property ID: Integer read Get_ID;
    property ObjectType: WFObjectTypes read Get_ObjectType;
  end;

// *********************************************************************//
// DispIntf:  IWFObjectDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {7D2F6E4D-0552-475A-BE96-734DC993414B}
// *********************************************************************//
  IWFObjectDisp = dispinterface
    ['{7D2F6E4D-0552-475A-BE96-734DC993414B}']
    property ID: Integer readonly dispid 201;
    property ObjectType: WFObjectTypes readonly dispid 202;
  end;

// *********************************************************************//
// Interface: IWFRoute
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {85206128-062B-4058-8795-4AF30ACBA67B}
// *********************************************************************//
  IWFRoute = interface(IDispatch)
    ['{85206128-062B-4058-8795-4AF30ACBA67B}']
    function Get_ID: Integer; safecall;
    function Get_Name: WideString; safecall;
    function Get_Created: TDateTime; safecall;
    function Get_Changed: TDateTime; safecall;
    function Get_Locked: WordBool; safecall;
    function Get_RunDate: TDateTime; safecall;
    function Get_Text: IRTFText; safecall;
    function Get_Initiator: ILoodsmanUser; safecall;
    function Get_TypicalRoute: IWFRoute; safecall;
    function Get_State: WFRouteStates; safecall;
    function Get_ParentRoute: IWFRoute; safecall;
    function Get_PDMObject: IPDMObject; safecall;
    function Get_IsTypical: WordBool; safecall;
    property ID: Integer read Get_ID;
    property Name: WideString read Get_Name;
    property Created: TDateTime read Get_Created;
    property Changed: TDateTime read Get_Changed;
    property Locked: WordBool read Get_Locked;
    property RunDate: TDateTime read Get_RunDate;
    property Text: IRTFText read Get_Text;
    property Initiator: ILoodsmanUser read Get_Initiator;
    property TypicalRoute: IWFRoute read Get_TypicalRoute;
    property State: WFRouteStates read Get_State;
    property ParentRoute: IWFRoute read Get_ParentRoute;
    property PDMObject: IPDMObject read Get_PDMObject;
    property IsTypical: WordBool read Get_IsTypical;
  end;

// *********************************************************************//
// DispIntf:  IWFRouteDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {85206128-062B-4058-8795-4AF30ACBA67B}
// *********************************************************************//
  IWFRouteDisp = dispinterface
    ['{85206128-062B-4058-8795-4AF30ACBA67B}']
    property ID: Integer readonly dispid 201;
    property Name: WideString readonly dispid 202;
    property Created: TDateTime readonly dispid 203;
    property Changed: TDateTime readonly dispid 204;
    property Locked: WordBool readonly dispid 205;
    property RunDate: TDateTime readonly dispid 206;
    property Text: IRTFText readonly dispid 207;
    property Initiator: ILoodsmanUser readonly dispid 208;
    property TypicalRoute: IWFRoute readonly dispid 209;
    property State: WFRouteStates readonly dispid 210;
    property ParentRoute: IWFRoute readonly dispid 211;
    property PDMObject: IPDMObject readonly dispid 212;
    property IsTypical: WordBool readonly dispid 213;
  end;

// *********************************************************************//
// Interface: IWFTask
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {48A0BE87-BAB6-4776-8EEC-69AACEC9A40C}
// *********************************************************************//
  IWFTask = interface(IDispatch)
    ['{48A0BE87-BAB6-4776-8EEC-69AACEC9A40C}']
    function Get_ID: Integer; safecall;
    function Get_Text: IRTFText; safecall;
    function Get_TransformationEnabled: WordBool; safecall;
    function Get_SendDate: TDateTime; safecall;
    function Get_StartDate: TDateTime; safecall;
    function Get_StopDate: TDateTime; safecall;
    function Get_State: WFTaskStates; safecall;
    function Get_TaskType: WFTaskTypes; safecall;
    function Get_Route: IWFRoute; safecall;
    function Get_User: ILoodsmanUser; safecall;
    function Get_Term: ITaskTerm; safecall;
    function Get_Role: WFRole; safecall;
    function Get_ChildRoute: IWFRoute; safecall;
    property ID: Integer read Get_ID;
    property Text: IRTFText read Get_Text;
    property TransformationEnabled: WordBool read Get_TransformationEnabled;
    property SendDate: TDateTime read Get_SendDate;
    property StartDate: TDateTime read Get_StartDate;
    property StopDate: TDateTime read Get_StopDate;
    property State: WFTaskStates read Get_State;
    property TaskType: WFTaskTypes read Get_TaskType;
    property Route: IWFRoute read Get_Route;
    property User: ILoodsmanUser read Get_User;
    property Term: ITaskTerm read Get_Term;
    property Role: WFRole read Get_Role;
    property ChildRoute: IWFRoute read Get_ChildRoute;
  end;

// *********************************************************************//
// DispIntf:  IWFTaskDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {48A0BE87-BAB6-4776-8EEC-69AACEC9A40C}
// *********************************************************************//
  IWFTaskDisp = dispinterface
    ['{48A0BE87-BAB6-4776-8EEC-69AACEC9A40C}']
    property ID: Integer readonly dispid 201;
    property Text: IRTFText readonly dispid 202;
    property TransformationEnabled: WordBool readonly dispid 203;
    property SendDate: TDateTime readonly dispid 204;
    property StartDate: TDateTime readonly dispid 205;
    property StopDate: TDateTime readonly dispid 206;
    property State: WFTaskStates readonly dispid 207;
    property TaskType: WFTaskTypes readonly dispid 208;
    property Route: IWFRoute readonly dispid 209;
    property User: ILoodsmanUser readonly dispid 210;
    property Term: ITaskTerm readonly dispid 211;
    property Role: {??WFRole}OleVariant readonly dispid 212;
    property ChildRoute: IWFRoute readonly dispid 213;
  end;

// *********************************************************************//
// Interface: ITaskTerm
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8A4B5F2B-EDEA-4B6B-BA13-938232E9627F}
// *********************************************************************//
  ITaskTerm = interface(IDispatch)
    ['{8A4B5F2B-EDEA-4B6B-BA13-938232E9627F}']
    function Get_Expired: WordBool; safecall;
    function Get_DateConstraint: TDateTime; safecall;
    function Get_TimeConstraint: Integer; safecall;
    function Get_TimeLimit: Integer; safecall;
    function Get_FromRouteStart: WordBool; safecall;
    function Get_TextValue: WideString; safecall;
    property Expired: WordBool read Get_Expired;
    property DateConstraint: TDateTime read Get_DateConstraint;
    property TimeConstraint: Integer read Get_TimeConstraint;
    property TimeLimit: Integer read Get_TimeLimit;
    property FromRouteStart: WordBool read Get_FromRouteStart;
    property TextValue: WideString read Get_TextValue;
  end;

// *********************************************************************//
// DispIntf:  ITaskTermDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8A4B5F2B-EDEA-4B6B-BA13-938232E9627F}
// *********************************************************************//
  ITaskTermDisp = dispinterface
    ['{8A4B5F2B-EDEA-4B6B-BA13-938232E9627F}']
    property Expired: WordBool readonly dispid 201;
    property DateConstraint: TDateTime readonly dispid 202;
    property TimeConstraint: Integer readonly dispid 203;
    property TimeLimit: Integer readonly dispid 204;
    property FromRouteStart: WordBool readonly dispid 205;
    property TextValue: WideString readonly dispid 206;
  end;

// *********************************************************************//
// Interface: IAsyncTask
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A3CBA7B0-2E12-44CA-9BEB-39D269AC30BD}
// *********************************************************************//
  IAsyncTask = interface(IDispatch)
    ['{A3CBA7B0-2E12-44CA-9BEB-39D269AC30BD}']
    function Run(const MethodName: WideString; Params: OleVariant; 
                 const CallBackIntf: IPluginCallBack; Tag: Integer): Integer; safecall;
    procedure Cancel(TaskID: Integer); safecall;
    procedure CancelAll; safecall;
  end;

// *********************************************************************//
// DispIntf:  IAsyncTaskDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A3CBA7B0-2E12-44CA-9BEB-39D269AC30BD}
// *********************************************************************//
  IAsyncTaskDisp = dispinterface
    ['{A3CBA7B0-2E12-44CA-9BEB-39D269AC30BD}']
    function Run(const MethodName: WideString; Params: OleVariant; 
                 const CallBackIntf: IPluginCallBack; Tag: Integer): Integer; dispid 201;
    procedure Cancel(TaskID: Integer); dispid 202;
    procedure CancelAll; dispid 204;
  end;

// *********************************************************************//
// Interface: IPluginCallBack
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9C6DAF55-8F9D-4AB6-B151-F83E317480E5}
// *********************************************************************//
  IPluginCallBack = interface(IDispatch)
    ['{9C6DAF55-8F9D-4AB6-B151-F83E317480E5}']
    procedure CallBackProc(TaskID: Integer; ResultData: OleVariant; const DataSet: IDataSet; 
                           const ErrorMsg: WideString; Tag: Integer); safecall;
  end;

// *********************************************************************//
// DispIntf:  IPluginCallBackDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9C6DAF55-8F9D-4AB6-B151-F83E317480E5}
// *********************************************************************//
  IPluginCallBackDisp = dispinterface
    ['{9C6DAF55-8F9D-4AB6-B151-F83E317480E5}']
    procedure CallBackProc(TaskID: Integer; ResultData: OleVariant; const DataSet: IDataSet; 
                           const ErrorMsg: WideString; Tag: Integer); dispid 201;
  end;

// *********************************************************************//
// Interface: IRTFText
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {ACCC7902-EE75-474E-AD45-544086136A68}
// *********************************************************************//
  IRTFText = interface(IDispatch)
    ['{ACCC7902-EE75-474E-AD45-544086136A68}']
    function Get_Value: WideString; safecall;
    procedure Set_Value(const Value: WideString); safecall;
    function ToPlain: WideString; safecall;
    property Value: WideString read Get_Value write Set_Value;
  end;

// *********************************************************************//
// DispIntf:  IRTFTextDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {ACCC7902-EE75-474E-AD45-544086136A68}
// *********************************************************************//
  IRTFTextDisp = dispinterface
    ['{ACCC7902-EE75-474E-AD45-544086136A68}']
    property Value: WideString dispid 201;
    function ToPlain: WideString; dispid 202;
  end;

implementation

end.
