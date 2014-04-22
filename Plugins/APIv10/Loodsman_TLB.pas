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
  LoodsmanMajorVersion = 1;
  LoodsmanMinorVersion = 0;

  LIBID_Loodsman: TGUID = '{7CC86059-0262-44D5-9AA3-033DB38F11EF}';

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


// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
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

implementation

end.
