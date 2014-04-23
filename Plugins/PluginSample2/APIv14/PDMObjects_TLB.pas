unit PDMObjects_TLB;

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
// File generated on 22.04.2014 13:02:23 from Type Library described below.

// ************************************************************************  //
// Type Lib: PDMObjects.dll (1)
// LIBID: {10D3926C-2A54-4343-80AB-4A4B28899959}
// LCID: 0
// Helpfile: 
// HelpString: PDM objects library
// DepndLst: 
//   (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
// Cmdline:
//   "C:\Program Files (x86)\Embarcadero\RAD Studio\8.0\bin\tlibimp.exe" -P PDMObjects.dll
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
  PDMObjectsMajorVersion = 1;
  PDMObjectsMinorVersion = 0;

  LIBID_PDMObjects: TGUID = '{10D3926C-2A54-4343-80AB-4A4B28899959}';

  IID_IPDMData: TGUID = '{0EB0573F-D586-4B46-9FB0-F44673455D12}';
  IID_IProtectedPDMData: TGUID = '{12947964-F700-4055-9270-496DACC18ACB}';
  CLASS_CPDMData: TGUID = '{C962D244-EC62-457E-B0F0-5ACA07C86096}';
  IID_IPDMObject: TGUID = '{E32BF2D4-529A-4566-88BF-6413B5642718}';
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
  IID_ILoodsmanUser: TGUID = '{24D25D51-3044-4D0E-AFCF-DB6471487BF5}';
  CLASS_CLoodsmanUser: TGUID = '{1937E223-4026-4484-A8E6-544AB1A71AAE}';
  IID_IWFObject: TGUID = '{7D2F6E4D-0552-475A-BE96-734DC993414B}';
  CLASS_CWFObject: TGUID = '{2B9A2019-2B0C-4DF4-9072-23B13DDA865F}';
  IID_IWFRoute: TGUID = '{85206128-062B-4058-8795-4AF30ACBA67B}';
  CLASS_CWFRoute: TGUID = '{0D161323-5BC4-4827-95AC-80D73E54938A}';
  IID_IWFTask: TGUID = '{48A0BE87-BAB6-4776-8EEC-69AACEC9A40C}';
  CLASS_CWFTask: TGUID = '{DF024425-4146-4BCE-8D2E-DCF7E9F2779E}';
  IID_ITaskTerm: TGUID = '{8A4B5F2B-EDEA-4B6B-BA13-938232E9627F}';
  CLASS_CTaskTerm: TGUID = '{5F5FB324-814C-4D8B-B7F5-F942DE75C605}';
  IID_IRTFText: TGUID = '{ACCC7902-EE75-474E-AD45-544086136A68}';
  CLASS_CRTFText: TGUID = '{B34738C4-93D2-4506-8715-974FD05B2177}';
  IID_IPDMLink: TGUID = '{C9897F45-EBD5-4006-9796-91333E093C06}';
  CLASS_CPDMLink: TGUID = '{A771347F-E7B7-4234-9541-4BDE8E83BB96}';
  IID_IWFMail: TGUID = '{A2E00E84-59AE-438A-99D5-E6D85818850C}';
  CLASS_CoWFMail: TGUID = '{AE9922CD-A832-4336-9AEC-2738325EE7FC}';
  IID_IObjectBuilder: TGUID = '{723EA58E-3CD5-4DDD-9A47-9E11C5B180FC}';
  CLASS_ObjectBuilder: TGUID = '{060F8FDD-2801-450C-A910-C82212758156}';
  IID_INote: TGUID = '{67FC5604-3B49-43B2-BC57-244FAF294B83}';
  CLASS_CoNote: TGUID = '{1FA4FE48-AEDE-44EF-A252-402429D21E77}';
  CLASS_CPDMObject: TGUID = '{A70B8B70-5CF9-4DC3-A8AD-E5331FA33054}';

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

// Constants for enum ObjectCodes
type
  ObjectCodes = TOleEnum;
const
  C_NONE = $00000000;
  C_OBJECT = $00000001;
  C_LINK = $00000002;
  C_FILE = $00000003;
  C_ATTR = $00000004;
  C_TASK = $00000005;
  C_ROUTE = $00000006;
  C_MAIL = $00000007;
  C_USER = $00000008;
  C_UNKNOWN = $FFFFFFFF;
  C_WFTASK = $00000009;
  C_NOTE = $0000000A;
  C_PLANVERSION = $0000000B;
  C_PLAN = $0000000C;
  C_WORKLOAD = $0000000D;

type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  IPDMData = interface;
  IPDMDataDisp = dispinterface;
  IProtectedPDMData = interface;
  IProtectedPDMDataDisp = dispinterface;
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
  ILoodsmanUser = interface;
  ILoodsmanUserDisp = dispinterface;
  IWFObject = interface;
  IWFObjectDisp = dispinterface;
  IWFRoute = interface;
  IWFRouteDisp = dispinterface;
  IWFTask = interface;
  IWFTaskDisp = dispinterface;
  ITaskTerm = interface;
  ITaskTermDisp = dispinterface;
  IRTFText = interface;
  IRTFTextDisp = dispinterface;
  IPDMLink = interface;
  IPDMLinkDisp = dispinterface;
  IWFMail = interface;
  IWFMailDisp = dispinterface;
  IObjectBuilder = interface;
  IObjectBuilderDisp = dispinterface;
  INote = interface;
  INoteDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  CPDMData = IPDMData;
  CPDMDocument = IPDMDocument;
  CPDMFile = IPDMFile;
  CPDMCollection = IPDMCollection;
  CView = IView;
  CAnnotation = IAnnotation;
  CLoodsmanUser = ILoodsmanUser;
  CWFObject = IWFObject;
  CWFRoute = IWFRoute;
  CWFTask = IWFTask;
  CTaskTerm = ITaskTerm;
  CRTFText = IRTFText;
  CPDMLink = IPDMLink;
  CoWFMail = IWFMail;
  ObjectBuilder = IObjectBuilder;
  CoNote = INote;
  CPDMObject = IPDMObject;


// *********************************************************************//
// Declaration of structures, unions and aliases.                         
// *********************************************************************//
  WFRole = record
    ID: Integer;
    Name: WideString;
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
    function Get_ObjectCode: Integer; safecall;
    property ID: Integer read Get_ID;
    property Name: WideString read Get_Name;
    property ObjectCode: Integer read Get_ObjectCode;
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
    property ObjectCode: Integer readonly dispid 203;
  end;

// *********************************************************************//
// Interface: IProtectedPDMData
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {12947964-F700-4055-9270-496DACC18ACB}
// *********************************************************************//
  IProtectedPDMData = interface(IPDMData)
    ['{12947964-F700-4055-9270-496DACC18ACB}']
    function Get_LockLevel: PDMLockLevels; safecall;
    function Get_AccessLevel: PDMAccessLevels; safecall;
    property LockLevel: PDMLockLevels read Get_LockLevel;
    property AccessLevel: PDMAccessLevels read Get_AccessLevel;
  end;

// *********************************************************************//
// DispIntf:  IProtectedPDMDataDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {12947964-F700-4055-9270-496DACC18ACB}
// *********************************************************************//
  IProtectedPDMDataDisp = dispinterface
    ['{12947964-F700-4055-9270-496DACC18ACB}']
    property LockLevel: PDMLockLevels readonly dispid 204;
    property AccessLevel: PDMAccessLevels readonly dispid 205;
    property ID: Integer readonly dispid 201;
    property Name: WideString readonly dispid 202;
    property ObjectCode: Integer readonly dispid 203;
  end;

// *********************************************************************//
// Interface: IPDMObject
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {E32BF2D4-529A-4566-88BF-6413B5642718}
// *********************************************************************//
  IPDMObject = interface(IProtectedPDMData)
    ['{E32BF2D4-529A-4566-88BF-6413B5642718}']
    function Get_TypeName: WideString; safecall;
    function Get_Version: WideString; safecall;
    function Get_StateName: WideString; safecall;
    function Get_IsDocument: WordBool; safecall;
    function Get_Parent: IPDMData; safecall;
    function Get_SecurityLabel: Integer; safecall;
    property TypeName: WideString read Get_TypeName;
    property Version: WideString read Get_Version;
    property StateName: WideString read Get_StateName;
    property IsDocument: WordBool read Get_IsDocument;
    property Parent: IPDMData read Get_Parent;
    property SecurityLabel: Integer read Get_SecurityLabel;
  end;

// *********************************************************************//
// DispIntf:  IPDMObjectDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {E32BF2D4-529A-4566-88BF-6413B5642718}
// *********************************************************************//
  IPDMObjectDisp = dispinterface
    ['{E32BF2D4-529A-4566-88BF-6413B5642718}']
    property TypeName: WideString readonly dispid 206;
    property Version: WideString readonly dispid 207;
    property StateName: WideString readonly dispid 208;
    property IsDocument: WordBool readonly dispid 209;
    property Parent: IPDMData readonly dispid 210;
    property SecurityLabel: Integer readonly dispid 211;
    property LockLevel: PDMLockLevels readonly dispid 204;
    property AccessLevel: PDMAccessLevels readonly dispid 205;
    property ID: Integer readonly dispid 201;
    property Name: WideString readonly dispid 202;
    property ObjectCode: Integer readonly dispid 203;
  end;

// *********************************************************************//
// Interface: IPDMDocument
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {693C8331-AE1F-449B-89E8-2165657984E6}
// *********************************************************************//
  IPDMDocument = interface(IPDMObject)
    ['{693C8331-AE1F-449B-89E8-2165657984E6}']
    function Get_Files: IPDMCollection; safecall;
    function Get_View: IView; safecall;
    function Get_Annotation: IAnnotation; safecall;
    property Files: IPDMCollection read Get_Files;
    property View: IView read Get_View;
    property Annotation: IAnnotation read Get_Annotation;
  end;

// *********************************************************************//
// DispIntf:  IPDMDocumentDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {693C8331-AE1F-449B-89E8-2165657984E6}
// *********************************************************************//
  IPDMDocumentDisp = dispinterface
    ['{693C8331-AE1F-449B-89E8-2165657984E6}']
    property Files: IPDMCollection readonly dispid 212;
    property View: IView readonly dispid 213;
    property Annotation: IAnnotation readonly dispid 214;
    property TypeName: WideString readonly dispid 206;
    property Version: WideString readonly dispid 207;
    property StateName: WideString readonly dispid 208;
    property IsDocument: WordBool readonly dispid 209;
    property Parent: IPDMData readonly dispid 210;
    property SecurityLabel: Integer readonly dispid 211;
    property LockLevel: PDMLockLevels readonly dispid 204;
    property AccessLevel: PDMAccessLevels readonly dispid 205;
    property ID: Integer readonly dispid 201;
    property Name: WideString readonly dispid 202;
    property ObjectCode: Integer readonly dispid 203;
  end;

// *********************************************************************//
// Interface: IPDMFile
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {31D155C2-5FC8-40BB-A436-062B1BCBB18E}
// *********************************************************************//
  IPDMFile = interface(IProtectedPDMData)
    ['{31D155C2-5FC8-40BB-A436-062B1BCBB18E}']
    function Get_Path: WideString; safecall;
    function Get_Size: Integer; safecall;
    function Get_Created: TDateTime; safecall;
    function Get_Modified: TDateTime; safecall;
    function Load: WideString; safecall;
    function Get_LocalName: WideString; safecall;
    function Get_CRC: Integer; safecall;
    function Get_Document: IPDMDocument; safecall;
    property Path: WideString read Get_Path;
    property Size: Integer read Get_Size;
    property Created: TDateTime read Get_Created;
    property Modified: TDateTime read Get_Modified;
    property LocalName: WideString read Get_LocalName;
    property CRC: Integer read Get_CRC;
    property Document: IPDMDocument read Get_Document;
  end;

// *********************************************************************//
// DispIntf:  IPDMFileDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {31D155C2-5FC8-40BB-A436-062B1BCBB18E}
// *********************************************************************//
  IPDMFileDisp = dispinterface
    ['{31D155C2-5FC8-40BB-A436-062B1BCBB18E}']
    property Path: WideString readonly dispid 206;
    property Size: Integer readonly dispid 207;
    property Created: TDateTime readonly dispid 208;
    property Modified: TDateTime readonly dispid 209;
    function Load: WideString; dispid 210;
    property LocalName: WideString readonly dispid 211;
    property CRC: Integer readonly dispid 212;
    property Document: IPDMDocument readonly dispid 213;
    property LockLevel: PDMLockLevels readonly dispid 204;
    property AccessLevel: PDMAccessLevels readonly dispid 205;
    property ID: Integer readonly dispid 201;
    property Name: WideString readonly dispid 202;
    property ObjectCode: Integer readonly dispid 203;
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
    function ItemByID(ItemID: Integer): IPDMData; safecall;
    procedure Delete(Index: Integer); safecall;
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
    function ItemByID(ItemID: Integer): IPDMData; dispid 204;
    procedure Delete(Index: Integer); dispid 205;
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
    function PlayRole(RoleID: Integer; const RoleName: WideString): WordBool; safecall;
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
    function PlayRole(RoleID: Integer; const RoleName: WideString): WordBool; dispid 206;
  end;

// *********************************************************************//
// Interface: IWFObject
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {7D2F6E4D-0552-475A-BE96-734DC993414B}
// *********************************************************************//
  IWFObject = interface(IPDMData)
    ['{7D2F6E4D-0552-475A-BE96-734DC993414B}']
    function Get_ObjectType: WFObjectTypes; safecall;
    property ObjectType: WFObjectTypes read Get_ObjectType;
  end;

// *********************************************************************//
// DispIntf:  IWFObjectDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {7D2F6E4D-0552-475A-BE96-734DC993414B}
// *********************************************************************//
  IWFObjectDisp = dispinterface
    ['{7D2F6E4D-0552-475A-BE96-734DC993414B}']
    property ObjectType: WFObjectTypes readonly dispid 204;
    property ID: Integer readonly dispid 201;
    property Name: WideString readonly dispid 202;
    property ObjectCode: Integer readonly dispid 203;
  end;

// *********************************************************************//
// Interface: IWFRoute
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {85206128-062B-4058-8795-4AF30ACBA67B}
// *********************************************************************//
  IWFRoute = interface(IWFObject)
    ['{85206128-062B-4058-8795-4AF30ACBA67B}']
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
    function Get_LockUser: ILoodsmanUser; safecall;
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
    property LockUser: ILoodsmanUser read Get_LockUser;
  end;

// *********************************************************************//
// DispIntf:  IWFRouteDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {85206128-062B-4058-8795-4AF30ACBA67B}
// *********************************************************************//
  IWFRouteDisp = dispinterface
    ['{85206128-062B-4058-8795-4AF30ACBA67B}']
    property Created: TDateTime readonly dispid 205;
    property Changed: TDateTime readonly dispid 206;
    property Locked: WordBool readonly dispid 207;
    property RunDate: TDateTime readonly dispid 208;
    property Text: IRTFText readonly dispid 209;
    property Initiator: ILoodsmanUser readonly dispid 210;
    property TypicalRoute: IWFRoute readonly dispid 211;
    property State: WFRouteStates readonly dispid 212;
    property ParentRoute: IWFRoute readonly dispid 213;
    property PDMObject: IPDMObject readonly dispid 214;
    property IsTypical: WordBool readonly dispid 215;
    property LockUser: ILoodsmanUser readonly dispid 216;
    property ObjectType: WFObjectTypes readonly dispid 204;
    property ID: Integer readonly dispid 201;
    property Name: WideString readonly dispid 202;
    property ObjectCode: Integer readonly dispid 203;
  end;

// *********************************************************************//
// Interface: IWFTask
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {48A0BE87-BAB6-4776-8EEC-69AACEC9A40C}
// *********************************************************************//
  IWFTask = interface(IWFObject)
    ['{48A0BE87-BAB6-4776-8EEC-69AACEC9A40C}']
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
    function Get_StateID: Integer; safecall;
    procedure SetState(StateID: Integer; const Comment: WideString); safecall;
    function CanReturn: WordBool; safecall;
    function Transform(TypicalRouteID: Integer): Integer; safecall;
    function SetActuated(AValue: WordBool): WordBool; safecall;
    function Get_Actuated: WordBool; safecall;
    function Get_PossibleDeactuated: WordBool; safecall;
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
    property StateID: Integer read Get_StateID;
    property Actuated: WordBool read Get_Actuated;
    property PossibleDeactuated: WordBool read Get_PossibleDeactuated;
  end;

// *********************************************************************//
// DispIntf:  IWFTaskDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {48A0BE87-BAB6-4776-8EEC-69AACEC9A40C}
// *********************************************************************//
  IWFTaskDisp = dispinterface
    ['{48A0BE87-BAB6-4776-8EEC-69AACEC9A40C}']
    property Text: IRTFText readonly dispid 205;
    property TransformationEnabled: WordBool readonly dispid 206;
    property SendDate: TDateTime readonly dispid 207;
    property StartDate: TDateTime readonly dispid 208;
    property StopDate: TDateTime readonly dispid 209;
    property State: WFTaskStates readonly dispid 210;
    property TaskType: WFTaskTypes readonly dispid 211;
    property Route: IWFRoute readonly dispid 212;
    property User: ILoodsmanUser readonly dispid 213;
    property Term: ITaskTerm readonly dispid 214;
    property Role: {??WFRole}OleVariant readonly dispid 215;
    property ChildRoute: IWFRoute readonly dispid 216;
    property StateID: Integer readonly dispid 217;
    procedure SetState(StateID: Integer; const Comment: WideString); dispid 218;
    function CanReturn: WordBool; dispid 219;
    function Transform(TypicalRouteID: Integer): Integer; dispid 220;
    function SetActuated(AValue: WordBool): WordBool; dispid 221;
    property Actuated: WordBool readonly dispid 222;
    property PossibleDeactuated: WordBool readonly dispid 223;
    property ObjectType: WFObjectTypes readonly dispid 204;
    property ID: Integer readonly dispid 201;
    property Name: WideString readonly dispid 202;
    property ObjectCode: Integer readonly dispid 203;
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
    function Get_FinishDate: TDateTime; safecall;
    property Expired: WordBool read Get_Expired;
    property DateConstraint: TDateTime read Get_DateConstraint;
    property TimeConstraint: Integer read Get_TimeConstraint;
    property TimeLimit: Integer read Get_TimeLimit;
    property FromRouteStart: WordBool read Get_FromRouteStart;
    property TextValue: WideString read Get_TextValue;
    property FinishDate: TDateTime read Get_FinishDate;
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
    property FinishDate: TDateTime readonly dispid 207;
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

// *********************************************************************//
// Interface: IPDMLink
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {C9897F45-EBD5-4006-9796-91333E093C06}
// *********************************************************************//
  IPDMLink = interface(IProtectedPDMData)
    ['{C9897F45-EBD5-4006-9796-91333E093C06}']
    function Get_MinQuantity: Double; safecall;
    function Get_MaxQuantity: Double; safecall;
    function Get_UnitID: WideString; safecall;
    function Get_UnitName: WideString; safecall;
    function Get_MeasureID: WideString; safecall;
    function Get_MeasureName: WideString; safecall;
    function Get_ParentObject: IPDMObject; safecall;
    function Get_ChildObject: IPDMObject; safecall;
    function Get_Inverse: WordBool; safecall;
    function Get_Parent: IPDMData; safecall;
    property MinQuantity: Double read Get_MinQuantity;
    property MaxQuantity: Double read Get_MaxQuantity;
    property UnitID: WideString read Get_UnitID;
    property UnitName: WideString read Get_UnitName;
    property MeasureID: WideString read Get_MeasureID;
    property MeasureName: WideString read Get_MeasureName;
    property ParentObject: IPDMObject read Get_ParentObject;
    property ChildObject: IPDMObject read Get_ChildObject;
    property Inverse: WordBool read Get_Inverse;
    property Parent: IPDMData read Get_Parent;
  end;

// *********************************************************************//
// DispIntf:  IPDMLinkDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {C9897F45-EBD5-4006-9796-91333E093C06}
// *********************************************************************//
  IPDMLinkDisp = dispinterface
    ['{C9897F45-EBD5-4006-9796-91333E093C06}']
    property MinQuantity: Double readonly dispid 206;
    property MaxQuantity: Double readonly dispid 207;
    property UnitID: WideString readonly dispid 208;
    property UnitName: WideString readonly dispid 209;
    property MeasureID: WideString readonly dispid 210;
    property MeasureName: WideString readonly dispid 211;
    property ParentObject: IPDMObject readonly dispid 212;
    property ChildObject: IPDMObject readonly dispid 213;
    property Inverse: WordBool readonly dispid 214;
    property Parent: IPDMData readonly dispid 215;
    property LockLevel: PDMLockLevels readonly dispid 204;
    property AccessLevel: PDMAccessLevels readonly dispid 205;
    property ID: Integer readonly dispid 201;
    property Name: WideString readonly dispid 202;
    property ObjectCode: Integer readonly dispid 203;
  end;

// *********************************************************************//
// Interface: IWFMail
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A2E00E84-59AE-438A-99D5-E6D85818850C}
// *********************************************************************//
  IWFMail = interface(IWFObject)
    ['{A2E00E84-59AE-438A-99D5-E6D85818850C}']
    function Get_SendDate: TDateTime; safecall;
    function Get_Text: IRTFText; safecall;
    function Get_Route: IWFRoute; safecall;
    function Get_Author: ILoodsmanUser; safecall;
    function Get_Receivers: IPDMCollection; safecall;
    property SendDate: TDateTime read Get_SendDate;
    property Text: IRTFText read Get_Text;
    property Route: IWFRoute read Get_Route;
    property Author: ILoodsmanUser read Get_Author;
    property Receivers: IPDMCollection read Get_Receivers;
  end;

// *********************************************************************//
// DispIntf:  IWFMailDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A2E00E84-59AE-438A-99D5-E6D85818850C}
// *********************************************************************//
  IWFMailDisp = dispinterface
    ['{A2E00E84-59AE-438A-99D5-E6D85818850C}']
    property SendDate: TDateTime readonly dispid 205;
    property Text: IRTFText readonly dispid 206;
    property Route: IWFRoute readonly dispid 207;
    property Author: ILoodsmanUser readonly dispid 208;
    property Receivers: IPDMCollection readonly dispid 209;
    property ObjectType: WFObjectTypes readonly dispid 204;
    property ID: Integer readonly dispid 201;
    property Name: WideString readonly dispid 202;
    property ObjectCode: Integer readonly dispid 203;
  end;

// *********************************************************************//
// Interface: IObjectBuilder
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {723EA58E-3CD5-4DDD-9A47-9E11C5B180FC}
// *********************************************************************//
  IObjectBuilder = interface(IDispatch)
    ['{723EA58E-3CD5-4DDD-9A47-9E11C5B180FC}']
    function ObjectFromID(const Connection: IDispatch; ObjectCode: Integer; ObjectID: Integer): IDispatch; safecall;
    function CollectionFromDS(const Connection: IDispatch; ObjectCode: Integer; DS: OleVariant): IPDMCollection; safecall;
  end;

// *********************************************************************//
// DispIntf:  IObjectBuilderDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {723EA58E-3CD5-4DDD-9A47-9E11C5B180FC}
// *********************************************************************//
  IObjectBuilderDisp = dispinterface
    ['{723EA58E-3CD5-4DDD-9A47-9E11C5B180FC}']
    function ObjectFromID(const Connection: IDispatch; ObjectCode: Integer; ObjectID: Integer): IDispatch; dispid 202;
    function CollectionFromDS(const Connection: IDispatch; ObjectCode: Integer; DS: OleVariant): IPDMCollection; dispid 206;
  end;

// *********************************************************************//
// Interface: INote
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {67FC5604-3B49-43B2-BC57-244FAF294B83}
// *********************************************************************//
  INote = interface(IPDMData)
    ['{67FC5604-3B49-43B2-BC57-244FAF294B83}']
    function Get_Text: WideString; safecall;
    function Get_User: ILoodsmanUser; safecall;
    function Get_ParentNoteID: Integer; safecall;
    function Get_CreateTime: TDateTime; safecall;
    function Get_DeleteTime: TDateTime; safecall;
    function Get_ChangeTime: TDateTime; safecall;
    function Get_Attachments: WideString; safecall;
    property Text: WideString read Get_Text;
    property User: ILoodsmanUser read Get_User;
    property ParentNoteID: Integer read Get_ParentNoteID;
    property CreateTime: TDateTime read Get_CreateTime;
    property DeleteTime: TDateTime read Get_DeleteTime;
    property ChangeTime: TDateTime read Get_ChangeTime;
    property Attachments: WideString read Get_Attachments;
  end;

// *********************************************************************//
// DispIntf:  INoteDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {67FC5604-3B49-43B2-BC57-244FAF294B83}
// *********************************************************************//
  INoteDisp = dispinterface
    ['{67FC5604-3B49-43B2-BC57-244FAF294B83}']
    property Text: WideString readonly dispid 204;
    property User: ILoodsmanUser readonly dispid 205;
    property ParentNoteID: Integer readonly dispid 206;
    property CreateTime: TDateTime readonly dispid 207;
    property DeleteTime: TDateTime readonly dispid 208;
    property ChangeTime: TDateTime readonly dispid 209;
    property Attachments: WideString readonly dispid 210;
    property ID: Integer readonly dispid 201;
    property Name: WideString readonly dispid 202;
    property ObjectCode: Integer readonly dispid 203;
  end;

// *********************************************************************//
// The Class CoCPDMData provides a Create and CreateRemote method to          
// create instances of the default interface IPDMData exposed by              
// the CoClass CPDMData. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCPDMData = class
    class function Create: IPDMData;
    class function CreateRemote(const MachineName: string): IPDMData;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TCPDMData
// Help String      : 
// Default Interface: IPDMData
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TCPDMDataProperties= class;
{$ENDIF}
  TCPDMData = class(TOleServer)
  private
    FIntf: IPDMData;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TCPDMDataProperties;
    function GetServerProperties: TCPDMDataProperties;
{$ENDIF}
    function GetDefaultInterface: IPDMData;
  protected
    procedure InitServerData; override;
    function Get_ID: Integer;
    function Get_Name: WideString;
    function Get_ObjectCode: Integer;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IPDMData);
    procedure Disconnect; override;
    property DefaultInterface: IPDMData read GetDefaultInterface;
    property ID: Integer read Get_ID;
    property Name: WideString read Get_Name;
    property ObjectCode: Integer read Get_ObjectCode;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TCPDMDataProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TCPDMData
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TCPDMDataProperties = class(TPersistent)
  private
    FServer:    TCPDMData;
    function    GetDefaultInterface: IPDMData;
    constructor Create(AServer: TCPDMData);
  protected
    function Get_ID: Integer;
    function Get_Name: WideString;
    function Get_ObjectCode: Integer;
  public
    property DefaultInterface: IPDMData read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoCPDMDocument provides a Create and CreateRemote method to          
// create instances of the default interface IPDMDocument exposed by              
// the CoClass CPDMDocument. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCPDMDocument = class
    class function Create: IPDMDocument;
    class function CreateRemote(const MachineName: string): IPDMDocument;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TCPDMDocument
// Help String      : 
// Default Interface: IPDMDocument
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TCPDMDocumentProperties= class;
{$ENDIF}
  TCPDMDocument = class(TOleServer)
  private
    FIntf: IPDMDocument;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TCPDMDocumentProperties;
    function GetServerProperties: TCPDMDocumentProperties;
{$ENDIF}
    function GetDefaultInterface: IPDMDocument;
  protected
    procedure InitServerData; override;
    function Get_ID: Integer;
    function Get_Name: WideString;
    function Get_ObjectCode: Integer;
    function Get_LockLevel: PDMLockLevels;
    function Get_AccessLevel: PDMAccessLevels;
    function Get_TypeName: WideString;
    function Get_Version: WideString;
    function Get_StateName: WideString;
    function Get_IsDocument: WordBool;
    function Get_Parent: IPDMData;
    function Get_SecurityLabel: Integer;
    function Get_Files: IPDMCollection;
    function Get_View: IView;
    function Get_Annotation: IAnnotation;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IPDMDocument);
    procedure Disconnect; override;
    property DefaultInterface: IPDMDocument read GetDefaultInterface;
    property ID: Integer read Get_ID;
    property Name: WideString read Get_Name;
    property ObjectCode: Integer read Get_ObjectCode;
    property LockLevel: PDMLockLevels read Get_LockLevel;
    property AccessLevel: PDMAccessLevels read Get_AccessLevel;
    property TypeName: WideString read Get_TypeName;
    property Version: WideString read Get_Version;
    property StateName: WideString read Get_StateName;
    property IsDocument: WordBool read Get_IsDocument;
    property Parent: IPDMData read Get_Parent;
    property SecurityLabel: Integer read Get_SecurityLabel;
    property Files: IPDMCollection read Get_Files;
    property View: IView read Get_View;
    property Annotation: IAnnotation read Get_Annotation;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TCPDMDocumentProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TCPDMDocument
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TCPDMDocumentProperties = class(TPersistent)
  private
    FServer:    TCPDMDocument;
    function    GetDefaultInterface: IPDMDocument;
    constructor Create(AServer: TCPDMDocument);
  protected
    function Get_ID: Integer;
    function Get_Name: WideString;
    function Get_ObjectCode: Integer;
    function Get_LockLevel: PDMLockLevels;
    function Get_AccessLevel: PDMAccessLevels;
    function Get_TypeName: WideString;
    function Get_Version: WideString;
    function Get_StateName: WideString;
    function Get_IsDocument: WordBool;
    function Get_Parent: IPDMData;
    function Get_SecurityLabel: Integer;
    function Get_Files: IPDMCollection;
    function Get_View: IView;
    function Get_Annotation: IAnnotation;
  public
    property DefaultInterface: IPDMDocument read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoCPDMFile provides a Create and CreateRemote method to          
// create instances of the default interface IPDMFile exposed by              
// the CoClass CPDMFile. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCPDMFile = class
    class function Create: IPDMFile;
    class function CreateRemote(const MachineName: string): IPDMFile;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TCPDMFile
// Help String      : 
// Default Interface: IPDMFile
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TCPDMFileProperties= class;
{$ENDIF}
  TCPDMFile = class(TOleServer)
  private
    FIntf: IPDMFile;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TCPDMFileProperties;
    function GetServerProperties: TCPDMFileProperties;
{$ENDIF}
    function GetDefaultInterface: IPDMFile;
  protected
    procedure InitServerData; override;
    function Get_ID: Integer;
    function Get_Name: WideString;
    function Get_ObjectCode: Integer;
    function Get_LockLevel: PDMLockLevels;
    function Get_AccessLevel: PDMAccessLevels;
    function Get_Path: WideString;
    function Get_Size: Integer;
    function Get_Created: TDateTime;
    function Get_Modified: TDateTime;
    function Get_LocalName: WideString;
    function Get_CRC: Integer;
    function Get_Document: IPDMDocument;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IPDMFile);
    procedure Disconnect; override;
    function Load: WideString;
    property DefaultInterface: IPDMFile read GetDefaultInterface;
    property ID: Integer read Get_ID;
    property Name: WideString read Get_Name;
    property ObjectCode: Integer read Get_ObjectCode;
    property LockLevel: PDMLockLevels read Get_LockLevel;
    property AccessLevel: PDMAccessLevels read Get_AccessLevel;
    property Path: WideString read Get_Path;
    property Size: Integer read Get_Size;
    property Created: TDateTime read Get_Created;
    property Modified: TDateTime read Get_Modified;
    property LocalName: WideString read Get_LocalName;
    property CRC: Integer read Get_CRC;
    property Document: IPDMDocument read Get_Document;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TCPDMFileProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TCPDMFile
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TCPDMFileProperties = class(TPersistent)
  private
    FServer:    TCPDMFile;
    function    GetDefaultInterface: IPDMFile;
    constructor Create(AServer: TCPDMFile);
  protected
    function Get_ID: Integer;
    function Get_Name: WideString;
    function Get_ObjectCode: Integer;
    function Get_LockLevel: PDMLockLevels;
    function Get_AccessLevel: PDMAccessLevels;
    function Get_Path: WideString;
    function Get_Size: Integer;
    function Get_Created: TDateTime;
    function Get_Modified: TDateTime;
    function Get_LocalName: WideString;
    function Get_CRC: Integer;
    function Get_Document: IPDMDocument;
  public
    property DefaultInterface: IPDMFile read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoCPDMCollection provides a Create and CreateRemote method to          
// create instances of the default interface IPDMCollection exposed by              
// the CoClass CPDMCollection. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCPDMCollection = class
    class function Create: IPDMCollection;
    class function CreateRemote(const MachineName: string): IPDMCollection;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TCPDMCollection
// Help String      : 
// Default Interface: IPDMCollection
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TCPDMCollectionProperties= class;
{$ENDIF}
  TCPDMCollection = class(TOleServer)
  private
    FIntf: IPDMCollection;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TCPDMCollectionProperties;
    function GetServerProperties: TCPDMCollectionProperties;
{$ENDIF}
    function GetDefaultInterface: IPDMCollection;
  protected
    procedure InitServerData; override;
    function Get_Items(Index: Integer): IPDMData;
    function Get_Count: Integer;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IPDMCollection);
    procedure Disconnect; override;
    function ItemByName(const ItemName: WideString): IPDMData;
    function ItemByID(ItemID: Integer): IPDMData;
    procedure Delete(Index: Integer);
    property DefaultInterface: IPDMCollection read GetDefaultInterface;
    property Items[Index: Integer]: IPDMData read Get_Items;
    property Count: Integer read Get_Count;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TCPDMCollectionProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TCPDMCollection
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TCPDMCollectionProperties = class(TPersistent)
  private
    FServer:    TCPDMCollection;
    function    GetDefaultInterface: IPDMCollection;
    constructor Create(AServer: TCPDMCollection);
  protected
    function Get_Items(Index: Integer): IPDMData;
    function Get_Count: Integer;
  public
    property DefaultInterface: IPDMCollection read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoCView provides a Create and CreateRemote method to          
// create instances of the default interface IView exposed by              
// the CoClass CView. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCView = class
    class function Create: IView;
    class function CreateRemote(const MachineName: string): IView;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TCView
// Help String      : 
// Default Interface: IView
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TCViewProperties= class;
{$ENDIF}
  TCView = class(TOleServer)
  private
    FIntf: IView;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TCViewProperties;
    function GetServerProperties: TCViewProperties;
{$ENDIF}
    function GetDefaultInterface: IView;
  protected
    procedure InitServerData; override;
    function Get_FileName: WideString;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IView);
    procedure Disconnect; override;
    function Load: WideString;
    procedure Save;
    procedure Delete;
    function NewFile(const FileExt: WideString): WideString;
    property DefaultInterface: IView read GetDefaultInterface;
    property FileName: WideString read Get_FileName;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TCViewProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TCView
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TCViewProperties = class(TPersistent)
  private
    FServer:    TCView;
    function    GetDefaultInterface: IView;
    constructor Create(AServer: TCView);
  protected
    function Get_FileName: WideString;
  public
    property DefaultInterface: IView read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoCAnnotation provides a Create and CreateRemote method to          
// create instances of the default interface IAnnotation exposed by              
// the CoClass CAnnotation. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCAnnotation = class
    class function Create: IAnnotation;
    class function CreateRemote(const MachineName: string): IAnnotation;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TCAnnotation
// Help String      : 
// Default Interface: IAnnotation
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TCAnnotationProperties= class;
{$ENDIF}
  TCAnnotation = class(TOleServer)
  private
    FIntf: IAnnotation;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TCAnnotationProperties;
    function GetServerProperties: TCAnnotationProperties;
{$ENDIF}
    function GetDefaultInterface: IAnnotation;
  protected
    procedure InitServerData; override;
    function Get_FileName: WideString;
    function Get_Locked: WordBool;
    procedure Set_Locked(Value: WordBool);
    function Get_LockLevel: PDMLockLevels;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IAnnotation);
    procedure Disconnect; override;
    function Load: WideString;
    procedure Save;
    procedure Delete;
    function NewFile(const FileExt: WideString): WideString;
    property DefaultInterface: IAnnotation read GetDefaultInterface;
    property FileName: WideString read Get_FileName;
    property LockLevel: PDMLockLevels read Get_LockLevel;
    property Locked: WordBool read Get_Locked write Set_Locked;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TCAnnotationProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TCAnnotation
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TCAnnotationProperties = class(TPersistent)
  private
    FServer:    TCAnnotation;
    function    GetDefaultInterface: IAnnotation;
    constructor Create(AServer: TCAnnotation);
  protected
    function Get_FileName: WideString;
    function Get_Locked: WordBool;
    procedure Set_Locked(Value: WordBool);
    function Get_LockLevel: PDMLockLevels;
  public
    property DefaultInterface: IAnnotation read GetDefaultInterface;
  published
    property Locked: WordBool read Get_Locked write Set_Locked;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoCLoodsmanUser provides a Create and CreateRemote method to          
// create instances of the default interface ILoodsmanUser exposed by              
// the CoClass CLoodsmanUser. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCLoodsmanUser = class
    class function Create: ILoodsmanUser;
    class function CreateRemote(const MachineName: string): ILoodsmanUser;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TCLoodsmanUser
// Help String      : 
// Default Interface: ILoodsmanUser
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TCLoodsmanUserProperties= class;
{$ENDIF}
  TCLoodsmanUser = class(TOleServer)
  private
    FIntf: ILoodsmanUser;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TCLoodsmanUserProperties;
    function GetServerProperties: TCLoodsmanUserProperties;
{$ENDIF}
    function GetDefaultInterface: ILoodsmanUser;
  protected
    procedure InitServerData; override;
    function Get_Name: WideString;
    function Get_FullName: WideString;
    function Get_EMail: WideString;
    function Get_ID: Integer;
    function Get_Features: Integer;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: ILoodsmanUser);
    procedure Disconnect; override;
    function PlayRole(RoleID: Integer; const RoleName: WideString): WordBool;
    property DefaultInterface: ILoodsmanUser read GetDefaultInterface;
    property Name: WideString read Get_Name;
    property FullName: WideString read Get_FullName;
    property EMail: WideString read Get_EMail;
    property ID: Integer read Get_ID;
    property Features: Integer read Get_Features;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TCLoodsmanUserProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TCLoodsmanUser
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TCLoodsmanUserProperties = class(TPersistent)
  private
    FServer:    TCLoodsmanUser;
    function    GetDefaultInterface: ILoodsmanUser;
    constructor Create(AServer: TCLoodsmanUser);
  protected
    function Get_Name: WideString;
    function Get_FullName: WideString;
    function Get_EMail: WideString;
    function Get_ID: Integer;
    function Get_Features: Integer;
  public
    property DefaultInterface: ILoodsmanUser read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoCWFObject provides a Create and CreateRemote method to          
// create instances of the default interface IWFObject exposed by              
// the CoClass CWFObject. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCWFObject = class
    class function Create: IWFObject;
    class function CreateRemote(const MachineName: string): IWFObject;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TCWFObject
// Help String      : 
// Default Interface: IWFObject
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TCWFObjectProperties= class;
{$ENDIF}
  TCWFObject = class(TOleServer)
  private
    FIntf: IWFObject;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TCWFObjectProperties;
    function GetServerProperties: TCWFObjectProperties;
{$ENDIF}
    function GetDefaultInterface: IWFObject;
  protected
    procedure InitServerData; override;
    function Get_ID: Integer;
    function Get_Name: WideString;
    function Get_ObjectCode: Integer;
    function Get_ObjectType: WFObjectTypes;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IWFObject);
    procedure Disconnect; override;
    property DefaultInterface: IWFObject read GetDefaultInterface;
    property ID: Integer read Get_ID;
    property Name: WideString read Get_Name;
    property ObjectCode: Integer read Get_ObjectCode;
    property ObjectType: WFObjectTypes read Get_ObjectType;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TCWFObjectProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TCWFObject
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TCWFObjectProperties = class(TPersistent)
  private
    FServer:    TCWFObject;
    function    GetDefaultInterface: IWFObject;
    constructor Create(AServer: TCWFObject);
  protected
    function Get_ID: Integer;
    function Get_Name: WideString;
    function Get_ObjectCode: Integer;
    function Get_ObjectType: WFObjectTypes;
  public
    property DefaultInterface: IWFObject read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoCWFRoute provides a Create and CreateRemote method to          
// create instances of the default interface IWFRoute exposed by              
// the CoClass CWFRoute. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCWFRoute = class
    class function Create: IWFRoute;
    class function CreateRemote(const MachineName: string): IWFRoute;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TCWFRoute
// Help String      : 
// Default Interface: IWFRoute
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TCWFRouteProperties= class;
{$ENDIF}
  TCWFRoute = class(TOleServer)
  private
    FIntf: IWFRoute;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TCWFRouteProperties;
    function GetServerProperties: TCWFRouteProperties;
{$ENDIF}
    function GetDefaultInterface: IWFRoute;
  protected
    procedure InitServerData; override;
    function Get_ID: Integer;
    function Get_Name: WideString;
    function Get_ObjectCode: Integer;
    function Get_ObjectType: WFObjectTypes;
    function Get_Created: TDateTime;
    function Get_Changed: TDateTime;
    function Get_Locked: WordBool;
    function Get_RunDate: TDateTime;
    function Get_Text: IRTFText;
    function Get_Initiator: ILoodsmanUser;
    function Get_TypicalRoute: IWFRoute;
    function Get_State: WFRouteStates;
    function Get_ParentRoute: IWFRoute;
    function Get_PDMObject: IPDMObject;
    function Get_IsTypical: WordBool;
    function Get_LockUser: ILoodsmanUser;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IWFRoute);
    procedure Disconnect; override;
    property DefaultInterface: IWFRoute read GetDefaultInterface;
    property ID: Integer read Get_ID;
    property Name: WideString read Get_Name;
    property ObjectCode: Integer read Get_ObjectCode;
    property ObjectType: WFObjectTypes read Get_ObjectType;
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
    property LockUser: ILoodsmanUser read Get_LockUser;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TCWFRouteProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TCWFRoute
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TCWFRouteProperties = class(TPersistent)
  private
    FServer:    TCWFRoute;
    function    GetDefaultInterface: IWFRoute;
    constructor Create(AServer: TCWFRoute);
  protected
    function Get_ID: Integer;
    function Get_Name: WideString;
    function Get_ObjectCode: Integer;
    function Get_ObjectType: WFObjectTypes;
    function Get_Created: TDateTime;
    function Get_Changed: TDateTime;
    function Get_Locked: WordBool;
    function Get_RunDate: TDateTime;
    function Get_Text: IRTFText;
    function Get_Initiator: ILoodsmanUser;
    function Get_TypicalRoute: IWFRoute;
    function Get_State: WFRouteStates;
    function Get_ParentRoute: IWFRoute;
    function Get_PDMObject: IPDMObject;
    function Get_IsTypical: WordBool;
    function Get_LockUser: ILoodsmanUser;
  public
    property DefaultInterface: IWFRoute read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoCWFTask provides a Create and CreateRemote method to          
// create instances of the default interface IWFTask exposed by              
// the CoClass CWFTask. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCWFTask = class
    class function Create: IWFTask;
    class function CreateRemote(const MachineName: string): IWFTask;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TCWFTask
// Help String      : 
// Default Interface: IWFTask
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TCWFTaskProperties= class;
{$ENDIF}
  TCWFTask = class(TOleServer)
  private
    FIntf: IWFTask;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TCWFTaskProperties;
    function GetServerProperties: TCWFTaskProperties;
{$ENDIF}
    function GetDefaultInterface: IWFTask;
  protected
    procedure InitServerData; override;
    function Get_ID: Integer;
    function Get_Name: WideString;
    function Get_ObjectCode: Integer;
    function Get_ObjectType: WFObjectTypes;
    function Get_Text: IRTFText;
    function Get_TransformationEnabled: WordBool;
    function Get_SendDate: TDateTime;
    function Get_StartDate: TDateTime;
    function Get_StopDate: TDateTime;
    function Get_State: WFTaskStates;
    function Get_TaskType: WFTaskTypes;
    function Get_Route: IWFRoute;
    function Get_User: ILoodsmanUser;
    function Get_Term: ITaskTerm;
    function Get_Role: WFRole;
    function Get_ChildRoute: IWFRoute;
    function Get_StateID: Integer;
    function Get_Actuated: WordBool;
    function Get_PossibleDeactuated: WordBool;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IWFTask);
    procedure Disconnect; override;
    procedure SetState(StateID: Integer; const Comment: WideString);
    function CanReturn: WordBool;
    function Transform(TypicalRouteID: Integer): Integer;
    function SetActuated(AValue: WordBool): WordBool;
    property DefaultInterface: IWFTask read GetDefaultInterface;
    property ID: Integer read Get_ID;
    property Name: WideString read Get_Name;
    property ObjectCode: Integer read Get_ObjectCode;
    property ObjectType: WFObjectTypes read Get_ObjectType;
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
    property StateID: Integer read Get_StateID;
    property Actuated: WordBool read Get_Actuated;
    property PossibleDeactuated: WordBool read Get_PossibleDeactuated;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TCWFTaskProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TCWFTask
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TCWFTaskProperties = class(TPersistent)
  private
    FServer:    TCWFTask;
    function    GetDefaultInterface: IWFTask;
    constructor Create(AServer: TCWFTask);
  protected
    function Get_ID: Integer;
    function Get_Name: WideString;
    function Get_ObjectCode: Integer;
    function Get_ObjectType: WFObjectTypes;
    function Get_Text: IRTFText;
    function Get_TransformationEnabled: WordBool;
    function Get_SendDate: TDateTime;
    function Get_StartDate: TDateTime;
    function Get_StopDate: TDateTime;
    function Get_State: WFTaskStates;
    function Get_TaskType: WFTaskTypes;
    function Get_Route: IWFRoute;
    function Get_User: ILoodsmanUser;
    function Get_Term: ITaskTerm;
    function Get_Role: WFRole;
    function Get_ChildRoute: IWFRoute;
    function Get_StateID: Integer;
    function Get_Actuated: WordBool;
    function Get_PossibleDeactuated: WordBool;
  public
    property DefaultInterface: IWFTask read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoCTaskTerm provides a Create and CreateRemote method to          
// create instances of the default interface ITaskTerm exposed by              
// the CoClass CTaskTerm. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCTaskTerm = class
    class function Create: ITaskTerm;
    class function CreateRemote(const MachineName: string): ITaskTerm;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TCTaskTerm
// Help String      : 
// Default Interface: ITaskTerm
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TCTaskTermProperties= class;
{$ENDIF}
  TCTaskTerm = class(TOleServer)
  private
    FIntf: ITaskTerm;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TCTaskTermProperties;
    function GetServerProperties: TCTaskTermProperties;
{$ENDIF}
    function GetDefaultInterface: ITaskTerm;
  protected
    procedure InitServerData; override;
    function Get_Expired: WordBool;
    function Get_DateConstraint: TDateTime;
    function Get_TimeConstraint: Integer;
    function Get_TimeLimit: Integer;
    function Get_FromRouteStart: WordBool;
    function Get_TextValue: WideString;
    function Get_FinishDate: TDateTime;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: ITaskTerm);
    procedure Disconnect; override;
    property DefaultInterface: ITaskTerm read GetDefaultInterface;
    property Expired: WordBool read Get_Expired;
    property DateConstraint: TDateTime read Get_DateConstraint;
    property TimeConstraint: Integer read Get_TimeConstraint;
    property TimeLimit: Integer read Get_TimeLimit;
    property FromRouteStart: WordBool read Get_FromRouteStart;
    property TextValue: WideString read Get_TextValue;
    property FinishDate: TDateTime read Get_FinishDate;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TCTaskTermProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TCTaskTerm
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TCTaskTermProperties = class(TPersistent)
  private
    FServer:    TCTaskTerm;
    function    GetDefaultInterface: ITaskTerm;
    constructor Create(AServer: TCTaskTerm);
  protected
    function Get_Expired: WordBool;
    function Get_DateConstraint: TDateTime;
    function Get_TimeConstraint: Integer;
    function Get_TimeLimit: Integer;
    function Get_FromRouteStart: WordBool;
    function Get_TextValue: WideString;
    function Get_FinishDate: TDateTime;
  public
    property DefaultInterface: ITaskTerm read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoCRTFText provides a Create and CreateRemote method to          
// create instances of the default interface IRTFText exposed by              
// the CoClass CRTFText. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCRTFText = class
    class function Create: IRTFText;
    class function CreateRemote(const MachineName: string): IRTFText;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TCRTFText
// Help String      : 
// Default Interface: IRTFText
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TCRTFTextProperties= class;
{$ENDIF}
  TCRTFText = class(TOleServer)
  private
    FIntf: IRTFText;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TCRTFTextProperties;
    function GetServerProperties: TCRTFTextProperties;
{$ENDIF}
    function GetDefaultInterface: IRTFText;
  protected
    procedure InitServerData; override;
    function Get_Value: WideString;
    procedure Set_Value(const Value: WideString);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IRTFText);
    procedure Disconnect; override;
    function ToPlain: WideString;
    property DefaultInterface: IRTFText read GetDefaultInterface;
    property Value: WideString read Get_Value write Set_Value;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TCRTFTextProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TCRTFText
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TCRTFTextProperties = class(TPersistent)
  private
    FServer:    TCRTFText;
    function    GetDefaultInterface: IRTFText;
    constructor Create(AServer: TCRTFText);
  protected
    function Get_Value: WideString;
    procedure Set_Value(const Value: WideString);
  public
    property DefaultInterface: IRTFText read GetDefaultInterface;
  published
    property Value: WideString read Get_Value write Set_Value;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoCPDMLink provides a Create and CreateRemote method to          
// create instances of the default interface IPDMLink exposed by              
// the CoClass CPDMLink. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCPDMLink = class
    class function Create: IPDMLink;
    class function CreateRemote(const MachineName: string): IPDMLink;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TCPDMLink
// Help String      : 
// Default Interface: IPDMLink
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TCPDMLinkProperties= class;
{$ENDIF}
  TCPDMLink = class(TOleServer)
  private
    FIntf: IPDMLink;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TCPDMLinkProperties;
    function GetServerProperties: TCPDMLinkProperties;
{$ENDIF}
    function GetDefaultInterface: IPDMLink;
  protected
    procedure InitServerData; override;
    function Get_ID: Integer;
    function Get_Name: WideString;
    function Get_ObjectCode: Integer;
    function Get_LockLevel: PDMLockLevels;
    function Get_AccessLevel: PDMAccessLevels;
    function Get_MinQuantity: Double;
    function Get_MaxQuantity: Double;
    function Get_UnitID: WideString;
    function Get_UnitName: WideString;
    function Get_MeasureID: WideString;
    function Get_MeasureName: WideString;
    function Get_ParentObject: IPDMObject;
    function Get_ChildObject: IPDMObject;
    function Get_Inverse: WordBool;
    function Get_Parent: IPDMData;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IPDMLink);
    procedure Disconnect; override;
    property DefaultInterface: IPDMLink read GetDefaultInterface;
    property ID: Integer read Get_ID;
    property Name: WideString read Get_Name;
    property ObjectCode: Integer read Get_ObjectCode;
    property LockLevel: PDMLockLevels read Get_LockLevel;
    property AccessLevel: PDMAccessLevels read Get_AccessLevel;
    property MinQuantity: Double read Get_MinQuantity;
    property MaxQuantity: Double read Get_MaxQuantity;
    property UnitID: WideString read Get_UnitID;
    property UnitName: WideString read Get_UnitName;
    property MeasureID: WideString read Get_MeasureID;
    property MeasureName: WideString read Get_MeasureName;
    property ParentObject: IPDMObject read Get_ParentObject;
    property ChildObject: IPDMObject read Get_ChildObject;
    property Inverse: WordBool read Get_Inverse;
    property Parent: IPDMData read Get_Parent;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TCPDMLinkProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TCPDMLink
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TCPDMLinkProperties = class(TPersistent)
  private
    FServer:    TCPDMLink;
    function    GetDefaultInterface: IPDMLink;
    constructor Create(AServer: TCPDMLink);
  protected
    function Get_ID: Integer;
    function Get_Name: WideString;
    function Get_ObjectCode: Integer;
    function Get_LockLevel: PDMLockLevels;
    function Get_AccessLevel: PDMAccessLevels;
    function Get_MinQuantity: Double;
    function Get_MaxQuantity: Double;
    function Get_UnitID: WideString;
    function Get_UnitName: WideString;
    function Get_MeasureID: WideString;
    function Get_MeasureName: WideString;
    function Get_ParentObject: IPDMObject;
    function Get_ChildObject: IPDMObject;
    function Get_Inverse: WordBool;
    function Get_Parent: IPDMData;
  public
    property DefaultInterface: IPDMLink read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoCoWFMail provides a Create and CreateRemote method to          
// create instances of the default interface IWFMail exposed by              
// the CoClass CoWFMail. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCoWFMail = class
    class function Create: IWFMail;
    class function CreateRemote(const MachineName: string): IWFMail;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TCoWFMail
// Help String      : 
// Default Interface: IWFMail
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TCoWFMailProperties= class;
{$ENDIF}
  TCoWFMail = class(TOleServer)
  private
    FIntf: IWFMail;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TCoWFMailProperties;
    function GetServerProperties: TCoWFMailProperties;
{$ENDIF}
    function GetDefaultInterface: IWFMail;
  protected
    procedure InitServerData; override;
    function Get_ID: Integer;
    function Get_Name: WideString;
    function Get_ObjectCode: Integer;
    function Get_ObjectType: WFObjectTypes;
    function Get_SendDate: TDateTime;
    function Get_Text: IRTFText;
    function Get_Route: IWFRoute;
    function Get_Author: ILoodsmanUser;
    function Get_Receivers: IPDMCollection;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IWFMail);
    procedure Disconnect; override;
    property DefaultInterface: IWFMail read GetDefaultInterface;
    property ID: Integer read Get_ID;
    property Name: WideString read Get_Name;
    property ObjectCode: Integer read Get_ObjectCode;
    property ObjectType: WFObjectTypes read Get_ObjectType;
    property SendDate: TDateTime read Get_SendDate;
    property Text: IRTFText read Get_Text;
    property Route: IWFRoute read Get_Route;
    property Author: ILoodsmanUser read Get_Author;
    property Receivers: IPDMCollection read Get_Receivers;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TCoWFMailProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TCoWFMail
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TCoWFMailProperties = class(TPersistent)
  private
    FServer:    TCoWFMail;
    function    GetDefaultInterface: IWFMail;
    constructor Create(AServer: TCoWFMail);
  protected
    function Get_ID: Integer;
    function Get_Name: WideString;
    function Get_ObjectCode: Integer;
    function Get_ObjectType: WFObjectTypes;
    function Get_SendDate: TDateTime;
    function Get_Text: IRTFText;
    function Get_Route: IWFRoute;
    function Get_Author: ILoodsmanUser;
    function Get_Receivers: IPDMCollection;
  public
    property DefaultInterface: IWFMail read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoObjectBuilder provides a Create and CreateRemote method to          
// create instances of the default interface IObjectBuilder exposed by              
// the CoClass ObjectBuilder. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoObjectBuilder = class
    class function Create: IObjectBuilder;
    class function CreateRemote(const MachineName: string): IObjectBuilder;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TObjectBuilder
// Help String      : 
// Default Interface: IObjectBuilder
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TObjectBuilderProperties= class;
{$ENDIF}
  TObjectBuilder = class(TOleServer)
  private
    FIntf: IObjectBuilder;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TObjectBuilderProperties;
    function GetServerProperties: TObjectBuilderProperties;
{$ENDIF}
    function GetDefaultInterface: IObjectBuilder;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IObjectBuilder);
    procedure Disconnect; override;
    function ObjectFromID(const Connection: IDispatch; ObjectCode: Integer; ObjectID: Integer): IDispatch;
    function CollectionFromDS(const Connection: IDispatch; ObjectCode: Integer; DS: OleVariant): IPDMCollection;
    property DefaultInterface: IObjectBuilder read GetDefaultInterface;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TObjectBuilderProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TObjectBuilder
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TObjectBuilderProperties = class(TPersistent)
  private
    FServer:    TObjectBuilder;
    function    GetDefaultInterface: IObjectBuilder;
    constructor Create(AServer: TObjectBuilder);
  protected
  public
    property DefaultInterface: IObjectBuilder read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoCoNote provides a Create and CreateRemote method to          
// create instances of the default interface INote exposed by              
// the CoClass CoNote. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCoNote = class
    class function Create: INote;
    class function CreateRemote(const MachineName: string): INote;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TCoNote
// Help String      : 
// Default Interface: INote
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TCoNoteProperties= class;
{$ENDIF}
  TCoNote = class(TOleServer)
  private
    FIntf: INote;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TCoNoteProperties;
    function GetServerProperties: TCoNoteProperties;
{$ENDIF}
    function GetDefaultInterface: INote;
  protected
    procedure InitServerData; override;
    function Get_ID: Integer;
    function Get_Name: WideString;
    function Get_ObjectCode: Integer;
    function Get_Text: WideString;
    function Get_User: ILoodsmanUser;
    function Get_ParentNoteID: Integer;
    function Get_CreateTime: TDateTime;
    function Get_DeleteTime: TDateTime;
    function Get_ChangeTime: TDateTime;
    function Get_Attachments: WideString;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: INote);
    procedure Disconnect; override;
    property DefaultInterface: INote read GetDefaultInterface;
    property ID: Integer read Get_ID;
    property Name: WideString read Get_Name;
    property ObjectCode: Integer read Get_ObjectCode;
    property Text: WideString read Get_Text;
    property User: ILoodsmanUser read Get_User;
    property ParentNoteID: Integer read Get_ParentNoteID;
    property CreateTime: TDateTime read Get_CreateTime;
    property DeleteTime: TDateTime read Get_DeleteTime;
    property ChangeTime: TDateTime read Get_ChangeTime;
    property Attachments: WideString read Get_Attachments;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TCoNoteProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TCoNote
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TCoNoteProperties = class(TPersistent)
  private
    FServer:    TCoNote;
    function    GetDefaultInterface: INote;
    constructor Create(AServer: TCoNote);
  protected
    function Get_ID: Integer;
    function Get_Name: WideString;
    function Get_ObjectCode: Integer;
    function Get_Text: WideString;
    function Get_User: ILoodsmanUser;
    function Get_ParentNoteID: Integer;
    function Get_CreateTime: TDateTime;
    function Get_DeleteTime: TDateTime;
    function Get_ChangeTime: TDateTime;
    function Get_Attachments: WideString;
  public
    property DefaultInterface: INote read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoCPDMObject provides a Create and CreateRemote method to          
// create instances of the default interface IPDMObject exposed by              
// the CoClass CPDMObject. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCPDMObject = class
    class function Create: IPDMObject;
    class function CreateRemote(const MachineName: string): IPDMObject;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TCPDMObject
// Help String      : 
// Default Interface: IPDMObject
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TCPDMObjectProperties= class;
{$ENDIF}
  TCPDMObject = class(TOleServer)
  private
    FIntf: IPDMObject;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TCPDMObjectProperties;
    function GetServerProperties: TCPDMObjectProperties;
{$ENDIF}
    function GetDefaultInterface: IPDMObject;
  protected
    procedure InitServerData; override;
    function Get_ID: Integer;
    function Get_Name: WideString;
    function Get_ObjectCode: Integer;
    function Get_LockLevel: PDMLockLevels;
    function Get_AccessLevel: PDMAccessLevels;
    function Get_TypeName: WideString;
    function Get_Version: WideString;
    function Get_StateName: WideString;
    function Get_IsDocument: WordBool;
    function Get_Parent: IPDMData;
    function Get_SecurityLabel: Integer;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IPDMObject);
    procedure Disconnect; override;
    property DefaultInterface: IPDMObject read GetDefaultInterface;
    property ID: Integer read Get_ID;
    property Name: WideString read Get_Name;
    property ObjectCode: Integer read Get_ObjectCode;
    property LockLevel: PDMLockLevels read Get_LockLevel;
    property AccessLevel: PDMAccessLevels read Get_AccessLevel;
    property TypeName: WideString read Get_TypeName;
    property Version: WideString read Get_Version;
    property StateName: WideString read Get_StateName;
    property IsDocument: WordBool read Get_IsDocument;
    property Parent: IPDMData read Get_Parent;
    property SecurityLabel: Integer read Get_SecurityLabel;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TCPDMObjectProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TCPDMObject
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TCPDMObjectProperties = class(TPersistent)
  private
    FServer:    TCPDMObject;
    function    GetDefaultInterface: IPDMObject;
    constructor Create(AServer: TCPDMObject);
  protected
    function Get_ID: Integer;
    function Get_Name: WideString;
    function Get_ObjectCode: Integer;
    function Get_LockLevel: PDMLockLevels;
    function Get_AccessLevel: PDMAccessLevels;
    function Get_TypeName: WideString;
    function Get_Version: WideString;
    function Get_StateName: WideString;
    function Get_IsDocument: WordBool;
    function Get_Parent: IPDMData;
    function Get_SecurityLabel: Integer;
  public
    property DefaultInterface: IPDMObject read GetDefaultInterface;
  published
  end;
{$ENDIF}


procedure Register;

resourcestring
  dtlServerPage = 'Servers';

  dtlOcxPage = 'ActiveX';

implementation

uses ComObj;

class function CoCPDMData.Create: IPDMData;
begin
  Result := CreateComObject(CLASS_CPDMData) as IPDMData;
end;

class function CoCPDMData.CreateRemote(const MachineName: string): IPDMData;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CPDMData) as IPDMData;
end;

procedure TCPDMData.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{C962D244-EC62-457E-B0F0-5ACA07C86096}';
    IntfIID:   '{0EB0573F-D586-4B46-9FB0-F44673455D12}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TCPDMData.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IPDMData;
  end;
end;

procedure TCPDMData.ConnectTo(svrIntf: IPDMData);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TCPDMData.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TCPDMData.GetDefaultInterface: IPDMData;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TCPDMData.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TCPDMDataProperties.Create(Self);
{$ENDIF}
end;

destructor TCPDMData.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TCPDMData.GetServerProperties: TCPDMDataProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TCPDMData.Get_ID: Integer;
begin
    Result := DefaultInterface.ID;
end;

function TCPDMData.Get_Name: WideString;
begin
    Result := DefaultInterface.Name;
end;

function TCPDMData.Get_ObjectCode: Integer;
begin
    Result := DefaultInterface.ObjectCode;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TCPDMDataProperties.Create(AServer: TCPDMData);
begin
  inherited Create;
  FServer := AServer;
end;

function TCPDMDataProperties.GetDefaultInterface: IPDMData;
begin
  Result := FServer.DefaultInterface;
end;

function TCPDMDataProperties.Get_ID: Integer;
begin
    Result := DefaultInterface.ID;
end;

function TCPDMDataProperties.Get_Name: WideString;
begin
    Result := DefaultInterface.Name;
end;

function TCPDMDataProperties.Get_ObjectCode: Integer;
begin
    Result := DefaultInterface.ObjectCode;
end;

{$ENDIF}

class function CoCPDMDocument.Create: IPDMDocument;
begin
  Result := CreateComObject(CLASS_CPDMDocument) as IPDMDocument;
end;

class function CoCPDMDocument.CreateRemote(const MachineName: string): IPDMDocument;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CPDMDocument) as IPDMDocument;
end;

procedure TCPDMDocument.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{0AEAEA86-D379-4826-9F9B-DA8CA0B29539}';
    IntfIID:   '{693C8331-AE1F-449B-89E8-2165657984E6}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TCPDMDocument.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IPDMDocument;
  end;
end;

procedure TCPDMDocument.ConnectTo(svrIntf: IPDMDocument);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TCPDMDocument.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TCPDMDocument.GetDefaultInterface: IPDMDocument;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TCPDMDocument.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TCPDMDocumentProperties.Create(Self);
{$ENDIF}
end;

destructor TCPDMDocument.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TCPDMDocument.GetServerProperties: TCPDMDocumentProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TCPDMDocument.Get_ID: Integer;
begin
    Result := DefaultInterface.ID;
end;

function TCPDMDocument.Get_Name: WideString;
begin
    Result := DefaultInterface.Name;
end;

function TCPDMDocument.Get_ObjectCode: Integer;
begin
    Result := DefaultInterface.ObjectCode;
end;

function TCPDMDocument.Get_LockLevel: PDMLockLevels;
begin
    Result := DefaultInterface.LockLevel;
end;

function TCPDMDocument.Get_AccessLevel: PDMAccessLevels;
begin
    Result := DefaultInterface.AccessLevel;
end;

function TCPDMDocument.Get_TypeName: WideString;
begin
    Result := DefaultInterface.TypeName;
end;

function TCPDMDocument.Get_Version: WideString;
begin
    Result := DefaultInterface.Version;
end;

function TCPDMDocument.Get_StateName: WideString;
begin
    Result := DefaultInterface.StateName;
end;

function TCPDMDocument.Get_IsDocument: WordBool;
begin
    Result := DefaultInterface.IsDocument;
end;

function TCPDMDocument.Get_Parent: IPDMData;
begin
    Result := DefaultInterface.Parent;
end;

function TCPDMDocument.Get_SecurityLabel: Integer;
begin
    Result := DefaultInterface.SecurityLabel;
end;

function TCPDMDocument.Get_Files: IPDMCollection;
begin
    Result := DefaultInterface.Files;
end;

function TCPDMDocument.Get_View: IView;
begin
    Result := DefaultInterface.View;
end;

function TCPDMDocument.Get_Annotation: IAnnotation;
begin
    Result := DefaultInterface.Annotation;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TCPDMDocumentProperties.Create(AServer: TCPDMDocument);
begin
  inherited Create;
  FServer := AServer;
end;

function TCPDMDocumentProperties.GetDefaultInterface: IPDMDocument;
begin
  Result := FServer.DefaultInterface;
end;

function TCPDMDocumentProperties.Get_ID: Integer;
begin
    Result := DefaultInterface.ID;
end;

function TCPDMDocumentProperties.Get_Name: WideString;
begin
    Result := DefaultInterface.Name;
end;

function TCPDMDocumentProperties.Get_ObjectCode: Integer;
begin
    Result := DefaultInterface.ObjectCode;
end;

function TCPDMDocumentProperties.Get_LockLevel: PDMLockLevels;
begin
    Result := DefaultInterface.LockLevel;
end;

function TCPDMDocumentProperties.Get_AccessLevel: PDMAccessLevels;
begin
    Result := DefaultInterface.AccessLevel;
end;

function TCPDMDocumentProperties.Get_TypeName: WideString;
begin
    Result := DefaultInterface.TypeName;
end;

function TCPDMDocumentProperties.Get_Version: WideString;
begin
    Result := DefaultInterface.Version;
end;

function TCPDMDocumentProperties.Get_StateName: WideString;
begin
    Result := DefaultInterface.StateName;
end;

function TCPDMDocumentProperties.Get_IsDocument: WordBool;
begin
    Result := DefaultInterface.IsDocument;
end;

function TCPDMDocumentProperties.Get_Parent: IPDMData;
begin
    Result := DefaultInterface.Parent;
end;

function TCPDMDocumentProperties.Get_SecurityLabel: Integer;
begin
    Result := DefaultInterface.SecurityLabel;
end;

function TCPDMDocumentProperties.Get_Files: IPDMCollection;
begin
    Result := DefaultInterface.Files;
end;

function TCPDMDocumentProperties.Get_View: IView;
begin
    Result := DefaultInterface.View;
end;

function TCPDMDocumentProperties.Get_Annotation: IAnnotation;
begin
    Result := DefaultInterface.Annotation;
end;

{$ENDIF}

class function CoCPDMFile.Create: IPDMFile;
begin
  Result := CreateComObject(CLASS_CPDMFile) as IPDMFile;
end;

class function CoCPDMFile.CreateRemote(const MachineName: string): IPDMFile;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CPDMFile) as IPDMFile;
end;

procedure TCPDMFile.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{4F1E8FBF-0FEB-43D8-ABD3-07415AF65399}';
    IntfIID:   '{31D155C2-5FC8-40BB-A436-062B1BCBB18E}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TCPDMFile.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IPDMFile;
  end;
end;

procedure TCPDMFile.ConnectTo(svrIntf: IPDMFile);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TCPDMFile.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TCPDMFile.GetDefaultInterface: IPDMFile;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TCPDMFile.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TCPDMFileProperties.Create(Self);
{$ENDIF}
end;

destructor TCPDMFile.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TCPDMFile.GetServerProperties: TCPDMFileProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TCPDMFile.Get_ID: Integer;
begin
    Result := DefaultInterface.ID;
end;

function TCPDMFile.Get_Name: WideString;
begin
    Result := DefaultInterface.Name;
end;

function TCPDMFile.Get_ObjectCode: Integer;
begin
    Result := DefaultInterface.ObjectCode;
end;

function TCPDMFile.Get_LockLevel: PDMLockLevels;
begin
    Result := DefaultInterface.LockLevel;
end;

function TCPDMFile.Get_AccessLevel: PDMAccessLevels;
begin
    Result := DefaultInterface.AccessLevel;
end;

function TCPDMFile.Get_Path: WideString;
begin
    Result := DefaultInterface.Path;
end;

function TCPDMFile.Get_Size: Integer;
begin
    Result := DefaultInterface.Size;
end;

function TCPDMFile.Get_Created: TDateTime;
begin
    Result := DefaultInterface.Created;
end;

function TCPDMFile.Get_Modified: TDateTime;
begin
    Result := DefaultInterface.Modified;
end;

function TCPDMFile.Get_LocalName: WideString;
begin
    Result := DefaultInterface.LocalName;
end;

function TCPDMFile.Get_CRC: Integer;
begin
    Result := DefaultInterface.CRC;
end;

function TCPDMFile.Get_Document: IPDMDocument;
begin
    Result := DefaultInterface.Document;
end;

function TCPDMFile.Load: WideString;
begin
  Result := DefaultInterface.Load;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TCPDMFileProperties.Create(AServer: TCPDMFile);
begin
  inherited Create;
  FServer := AServer;
end;

function TCPDMFileProperties.GetDefaultInterface: IPDMFile;
begin
  Result := FServer.DefaultInterface;
end;

function TCPDMFileProperties.Get_ID: Integer;
begin
    Result := DefaultInterface.ID;
end;

function TCPDMFileProperties.Get_Name: WideString;
begin
    Result := DefaultInterface.Name;
end;

function TCPDMFileProperties.Get_ObjectCode: Integer;
begin
    Result := DefaultInterface.ObjectCode;
end;

function TCPDMFileProperties.Get_LockLevel: PDMLockLevels;
begin
    Result := DefaultInterface.LockLevel;
end;

function TCPDMFileProperties.Get_AccessLevel: PDMAccessLevels;
begin
    Result := DefaultInterface.AccessLevel;
end;

function TCPDMFileProperties.Get_Path: WideString;
begin
    Result := DefaultInterface.Path;
end;

function TCPDMFileProperties.Get_Size: Integer;
begin
    Result := DefaultInterface.Size;
end;

function TCPDMFileProperties.Get_Created: TDateTime;
begin
    Result := DefaultInterface.Created;
end;

function TCPDMFileProperties.Get_Modified: TDateTime;
begin
    Result := DefaultInterface.Modified;
end;

function TCPDMFileProperties.Get_LocalName: WideString;
begin
    Result := DefaultInterface.LocalName;
end;

function TCPDMFileProperties.Get_CRC: Integer;
begin
    Result := DefaultInterface.CRC;
end;

function TCPDMFileProperties.Get_Document: IPDMDocument;
begin
    Result := DefaultInterface.Document;
end;

{$ENDIF}

class function CoCPDMCollection.Create: IPDMCollection;
begin
  Result := CreateComObject(CLASS_CPDMCollection) as IPDMCollection;
end;

class function CoCPDMCollection.CreateRemote(const MachineName: string): IPDMCollection;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CPDMCollection) as IPDMCollection;
end;

procedure TCPDMCollection.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{A7C0267A-0F5D-4998-9276-73BAB12813DC}';
    IntfIID:   '{D6656545-D515-4096-8CEE-89A58223BEA5}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TCPDMCollection.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IPDMCollection;
  end;
end;

procedure TCPDMCollection.ConnectTo(svrIntf: IPDMCollection);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TCPDMCollection.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TCPDMCollection.GetDefaultInterface: IPDMCollection;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TCPDMCollection.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TCPDMCollectionProperties.Create(Self);
{$ENDIF}
end;

destructor TCPDMCollection.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TCPDMCollection.GetServerProperties: TCPDMCollectionProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TCPDMCollection.Get_Items(Index: Integer): IPDMData;
begin
    Result := DefaultInterface.Items[Index];
end;

function TCPDMCollection.Get_Count: Integer;
begin
    Result := DefaultInterface.Count;
end;

function TCPDMCollection.ItemByName(const ItemName: WideString): IPDMData;
begin
  Result := DefaultInterface.ItemByName(ItemName);
end;

function TCPDMCollection.ItemByID(ItemID: Integer): IPDMData;
begin
  Result := DefaultInterface.ItemByID(ItemID);
end;

procedure TCPDMCollection.Delete(Index: Integer);
begin
  DefaultInterface.Delete(Index);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TCPDMCollectionProperties.Create(AServer: TCPDMCollection);
begin
  inherited Create;
  FServer := AServer;
end;

function TCPDMCollectionProperties.GetDefaultInterface: IPDMCollection;
begin
  Result := FServer.DefaultInterface;
end;

function TCPDMCollectionProperties.Get_Items(Index: Integer): IPDMData;
begin
    Result := DefaultInterface.Items[Index];
end;

function TCPDMCollectionProperties.Get_Count: Integer;
begin
    Result := DefaultInterface.Count;
end;

{$ENDIF}

class function CoCView.Create: IView;
begin
  Result := CreateComObject(CLASS_CView) as IView;
end;

class function CoCView.CreateRemote(const MachineName: string): IView;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CView) as IView;
end;

procedure TCView.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{F9681FF6-182A-43DE-B0F2-B3E11B15FB31}';
    IntfIID:   '{3A337EF0-BB86-4F60-B577-699192922B3A}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TCView.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IView;
  end;
end;

procedure TCView.ConnectTo(svrIntf: IView);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TCView.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TCView.GetDefaultInterface: IView;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TCView.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TCViewProperties.Create(Self);
{$ENDIF}
end;

destructor TCView.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TCView.GetServerProperties: TCViewProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TCView.Get_FileName: WideString;
begin
    Result := DefaultInterface.FileName;
end;

function TCView.Load: WideString;
begin
  Result := DefaultInterface.Load;
end;

procedure TCView.Save;
begin
  DefaultInterface.Save;
end;

procedure TCView.Delete;
begin
  DefaultInterface.Delete;
end;

function TCView.NewFile(const FileExt: WideString): WideString;
begin
  Result := DefaultInterface.NewFile(FileExt);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TCViewProperties.Create(AServer: TCView);
begin
  inherited Create;
  FServer := AServer;
end;

function TCViewProperties.GetDefaultInterface: IView;
begin
  Result := FServer.DefaultInterface;
end;

function TCViewProperties.Get_FileName: WideString;
begin
    Result := DefaultInterface.FileName;
end;

{$ENDIF}

class function CoCAnnotation.Create: IAnnotation;
begin
  Result := CreateComObject(CLASS_CAnnotation) as IAnnotation;
end;

class function CoCAnnotation.CreateRemote(const MachineName: string): IAnnotation;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CAnnotation) as IAnnotation;
end;

procedure TCAnnotation.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{CAC15135-4162-46CD-A60D-E484A4331C5E}';
    IntfIID:   '{09741CE4-5386-4037-8DFC-B83628AAE723}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TCAnnotation.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IAnnotation;
  end;
end;

procedure TCAnnotation.ConnectTo(svrIntf: IAnnotation);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TCAnnotation.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TCAnnotation.GetDefaultInterface: IAnnotation;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TCAnnotation.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TCAnnotationProperties.Create(Self);
{$ENDIF}
end;

destructor TCAnnotation.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TCAnnotation.GetServerProperties: TCAnnotationProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TCAnnotation.Get_FileName: WideString;
begin
    Result := DefaultInterface.FileName;
end;

function TCAnnotation.Get_Locked: WordBool;
begin
    Result := DefaultInterface.Locked;
end;

procedure TCAnnotation.Set_Locked(Value: WordBool);
begin
  DefaultInterface.Set_Locked(Value);
end;

function TCAnnotation.Get_LockLevel: PDMLockLevels;
begin
    Result := DefaultInterface.LockLevel;
end;

function TCAnnotation.Load: WideString;
begin
  Result := DefaultInterface.Load;
end;

procedure TCAnnotation.Save;
begin
  DefaultInterface.Save;
end;

procedure TCAnnotation.Delete;
begin
  DefaultInterface.Delete;
end;

function TCAnnotation.NewFile(const FileExt: WideString): WideString;
begin
  Result := DefaultInterface.NewFile(FileExt);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TCAnnotationProperties.Create(AServer: TCAnnotation);
begin
  inherited Create;
  FServer := AServer;
end;

function TCAnnotationProperties.GetDefaultInterface: IAnnotation;
begin
  Result := FServer.DefaultInterface;
end;

function TCAnnotationProperties.Get_FileName: WideString;
begin
    Result := DefaultInterface.FileName;
end;

function TCAnnotationProperties.Get_Locked: WordBool;
begin
    Result := DefaultInterface.Locked;
end;

procedure TCAnnotationProperties.Set_Locked(Value: WordBool);
begin
  DefaultInterface.Set_Locked(Value);
end;

function TCAnnotationProperties.Get_LockLevel: PDMLockLevels;
begin
    Result := DefaultInterface.LockLevel;
end;

{$ENDIF}

class function CoCLoodsmanUser.Create: ILoodsmanUser;
begin
  Result := CreateComObject(CLASS_CLoodsmanUser) as ILoodsmanUser;
end;

class function CoCLoodsmanUser.CreateRemote(const MachineName: string): ILoodsmanUser;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CLoodsmanUser) as ILoodsmanUser;
end;

procedure TCLoodsmanUser.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{1937E223-4026-4484-A8E6-544AB1A71AAE}';
    IntfIID:   '{24D25D51-3044-4D0E-AFCF-DB6471487BF5}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TCLoodsmanUser.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as ILoodsmanUser;
  end;
end;

procedure TCLoodsmanUser.ConnectTo(svrIntf: ILoodsmanUser);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TCLoodsmanUser.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TCLoodsmanUser.GetDefaultInterface: ILoodsmanUser;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TCLoodsmanUser.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TCLoodsmanUserProperties.Create(Self);
{$ENDIF}
end;

destructor TCLoodsmanUser.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TCLoodsmanUser.GetServerProperties: TCLoodsmanUserProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TCLoodsmanUser.Get_Name: WideString;
begin
    Result := DefaultInterface.Name;
end;

function TCLoodsmanUser.Get_FullName: WideString;
begin
    Result := DefaultInterface.FullName;
end;

function TCLoodsmanUser.Get_EMail: WideString;
begin
    Result := DefaultInterface.EMail;
end;

function TCLoodsmanUser.Get_ID: Integer;
begin
    Result := DefaultInterface.ID;
end;

function TCLoodsmanUser.Get_Features: Integer;
begin
    Result := DefaultInterface.Features;
end;

function TCLoodsmanUser.PlayRole(RoleID: Integer; const RoleName: WideString): WordBool;
begin
  Result := DefaultInterface.PlayRole(RoleID, RoleName);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TCLoodsmanUserProperties.Create(AServer: TCLoodsmanUser);
begin
  inherited Create;
  FServer := AServer;
end;

function TCLoodsmanUserProperties.GetDefaultInterface: ILoodsmanUser;
begin
  Result := FServer.DefaultInterface;
end;

function TCLoodsmanUserProperties.Get_Name: WideString;
begin
    Result := DefaultInterface.Name;
end;

function TCLoodsmanUserProperties.Get_FullName: WideString;
begin
    Result := DefaultInterface.FullName;
end;

function TCLoodsmanUserProperties.Get_EMail: WideString;
begin
    Result := DefaultInterface.EMail;
end;

function TCLoodsmanUserProperties.Get_ID: Integer;
begin
    Result := DefaultInterface.ID;
end;

function TCLoodsmanUserProperties.Get_Features: Integer;
begin
    Result := DefaultInterface.Features;
end;

{$ENDIF}

class function CoCWFObject.Create: IWFObject;
begin
  Result := CreateComObject(CLASS_CWFObject) as IWFObject;
end;

class function CoCWFObject.CreateRemote(const MachineName: string): IWFObject;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CWFObject) as IWFObject;
end;

procedure TCWFObject.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{2B9A2019-2B0C-4DF4-9072-23B13DDA865F}';
    IntfIID:   '{7D2F6E4D-0552-475A-BE96-734DC993414B}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TCWFObject.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IWFObject;
  end;
end;

procedure TCWFObject.ConnectTo(svrIntf: IWFObject);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TCWFObject.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TCWFObject.GetDefaultInterface: IWFObject;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TCWFObject.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TCWFObjectProperties.Create(Self);
{$ENDIF}
end;

destructor TCWFObject.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TCWFObject.GetServerProperties: TCWFObjectProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TCWFObject.Get_ID: Integer;
begin
    Result := DefaultInterface.ID;
end;

function TCWFObject.Get_Name: WideString;
begin
    Result := DefaultInterface.Name;
end;

function TCWFObject.Get_ObjectCode: Integer;
begin
    Result := DefaultInterface.ObjectCode;
end;

function TCWFObject.Get_ObjectType: WFObjectTypes;
begin
    Result := DefaultInterface.ObjectType;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TCWFObjectProperties.Create(AServer: TCWFObject);
begin
  inherited Create;
  FServer := AServer;
end;

function TCWFObjectProperties.GetDefaultInterface: IWFObject;
begin
  Result := FServer.DefaultInterface;
end;

function TCWFObjectProperties.Get_ID: Integer;
begin
    Result := DefaultInterface.ID;
end;

function TCWFObjectProperties.Get_Name: WideString;
begin
    Result := DefaultInterface.Name;
end;

function TCWFObjectProperties.Get_ObjectCode: Integer;
begin
    Result := DefaultInterface.ObjectCode;
end;

function TCWFObjectProperties.Get_ObjectType: WFObjectTypes;
begin
    Result := DefaultInterface.ObjectType;
end;

{$ENDIF}

class function CoCWFRoute.Create: IWFRoute;
begin
  Result := CreateComObject(CLASS_CWFRoute) as IWFRoute;
end;

class function CoCWFRoute.CreateRemote(const MachineName: string): IWFRoute;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CWFRoute) as IWFRoute;
end;

procedure TCWFRoute.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{0D161323-5BC4-4827-95AC-80D73E54938A}';
    IntfIID:   '{85206128-062B-4058-8795-4AF30ACBA67B}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TCWFRoute.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IWFRoute;
  end;
end;

procedure TCWFRoute.ConnectTo(svrIntf: IWFRoute);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TCWFRoute.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TCWFRoute.GetDefaultInterface: IWFRoute;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TCWFRoute.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TCWFRouteProperties.Create(Self);
{$ENDIF}
end;

destructor TCWFRoute.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TCWFRoute.GetServerProperties: TCWFRouteProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TCWFRoute.Get_ID: Integer;
begin
    Result := DefaultInterface.ID;
end;

function TCWFRoute.Get_Name: WideString;
begin
    Result := DefaultInterface.Name;
end;

function TCWFRoute.Get_ObjectCode: Integer;
begin
    Result := DefaultInterface.ObjectCode;
end;

function TCWFRoute.Get_ObjectType: WFObjectTypes;
begin
    Result := DefaultInterface.ObjectType;
end;

function TCWFRoute.Get_Created: TDateTime;
begin
    Result := DefaultInterface.Created;
end;

function TCWFRoute.Get_Changed: TDateTime;
begin
    Result := DefaultInterface.Changed;
end;

function TCWFRoute.Get_Locked: WordBool;
begin
    Result := DefaultInterface.Locked;
end;

function TCWFRoute.Get_RunDate: TDateTime;
begin
    Result := DefaultInterface.RunDate;
end;

function TCWFRoute.Get_Text: IRTFText;
begin
    Result := DefaultInterface.Text;
end;

function TCWFRoute.Get_Initiator: ILoodsmanUser;
begin
    Result := DefaultInterface.Initiator;
end;

function TCWFRoute.Get_TypicalRoute: IWFRoute;
begin
    Result := DefaultInterface.TypicalRoute;
end;

function TCWFRoute.Get_State: WFRouteStates;
begin
    Result := DefaultInterface.State;
end;

function TCWFRoute.Get_ParentRoute: IWFRoute;
begin
    Result := DefaultInterface.ParentRoute;
end;

function TCWFRoute.Get_PDMObject: IPDMObject;
begin
    Result := DefaultInterface.PDMObject;
end;

function TCWFRoute.Get_IsTypical: WordBool;
begin
    Result := DefaultInterface.IsTypical;
end;

function TCWFRoute.Get_LockUser: ILoodsmanUser;
begin
    Result := DefaultInterface.LockUser;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TCWFRouteProperties.Create(AServer: TCWFRoute);
begin
  inherited Create;
  FServer := AServer;
end;

function TCWFRouteProperties.GetDefaultInterface: IWFRoute;
begin
  Result := FServer.DefaultInterface;
end;

function TCWFRouteProperties.Get_ID: Integer;
begin
    Result := DefaultInterface.ID;
end;

function TCWFRouteProperties.Get_Name: WideString;
begin
    Result := DefaultInterface.Name;
end;

function TCWFRouteProperties.Get_ObjectCode: Integer;
begin
    Result := DefaultInterface.ObjectCode;
end;

function TCWFRouteProperties.Get_ObjectType: WFObjectTypes;
begin
    Result := DefaultInterface.ObjectType;
end;

function TCWFRouteProperties.Get_Created: TDateTime;
begin
    Result := DefaultInterface.Created;
end;

function TCWFRouteProperties.Get_Changed: TDateTime;
begin
    Result := DefaultInterface.Changed;
end;

function TCWFRouteProperties.Get_Locked: WordBool;
begin
    Result := DefaultInterface.Locked;
end;

function TCWFRouteProperties.Get_RunDate: TDateTime;
begin
    Result := DefaultInterface.RunDate;
end;

function TCWFRouteProperties.Get_Text: IRTFText;
begin
    Result := DefaultInterface.Text;
end;

function TCWFRouteProperties.Get_Initiator: ILoodsmanUser;
begin
    Result := DefaultInterface.Initiator;
end;

function TCWFRouteProperties.Get_TypicalRoute: IWFRoute;
begin
    Result := DefaultInterface.TypicalRoute;
end;

function TCWFRouteProperties.Get_State: WFRouteStates;
begin
    Result := DefaultInterface.State;
end;

function TCWFRouteProperties.Get_ParentRoute: IWFRoute;
begin
    Result := DefaultInterface.ParentRoute;
end;

function TCWFRouteProperties.Get_PDMObject: IPDMObject;
begin
    Result := DefaultInterface.PDMObject;
end;

function TCWFRouteProperties.Get_IsTypical: WordBool;
begin
    Result := DefaultInterface.IsTypical;
end;

function TCWFRouteProperties.Get_LockUser: ILoodsmanUser;
begin
    Result := DefaultInterface.LockUser;
end;

{$ENDIF}

class function CoCWFTask.Create: IWFTask;
begin
  Result := CreateComObject(CLASS_CWFTask) as IWFTask;
end;

class function CoCWFTask.CreateRemote(const MachineName: string): IWFTask;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CWFTask) as IWFTask;
end;

procedure TCWFTask.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{DF024425-4146-4BCE-8D2E-DCF7E9F2779E}';
    IntfIID:   '{48A0BE87-BAB6-4776-8EEC-69AACEC9A40C}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TCWFTask.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IWFTask;
  end;
end;

procedure TCWFTask.ConnectTo(svrIntf: IWFTask);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TCWFTask.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TCWFTask.GetDefaultInterface: IWFTask;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TCWFTask.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TCWFTaskProperties.Create(Self);
{$ENDIF}
end;

destructor TCWFTask.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TCWFTask.GetServerProperties: TCWFTaskProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TCWFTask.Get_ID: Integer;
begin
    Result := DefaultInterface.ID;
end;

function TCWFTask.Get_Name: WideString;
begin
    Result := DefaultInterface.Name;
end;

function TCWFTask.Get_ObjectCode: Integer;
begin
    Result := DefaultInterface.ObjectCode;
end;

function TCWFTask.Get_ObjectType: WFObjectTypes;
begin
    Result := DefaultInterface.ObjectType;
end;

function TCWFTask.Get_Text: IRTFText;
begin
    Result := DefaultInterface.Text;
end;

function TCWFTask.Get_TransformationEnabled: WordBool;
begin
    Result := DefaultInterface.TransformationEnabled;
end;

function TCWFTask.Get_SendDate: TDateTime;
begin
    Result := DefaultInterface.SendDate;
end;

function TCWFTask.Get_StartDate: TDateTime;
begin
    Result := DefaultInterface.StartDate;
end;

function TCWFTask.Get_StopDate: TDateTime;
begin
    Result := DefaultInterface.StopDate;
end;

function TCWFTask.Get_State: WFTaskStates;
begin
    Result := DefaultInterface.State;
end;

function TCWFTask.Get_TaskType: WFTaskTypes;
begin
    Result := DefaultInterface.TaskType;
end;

function TCWFTask.Get_Route: IWFRoute;
begin
    Result := DefaultInterface.Route;
end;

function TCWFTask.Get_User: ILoodsmanUser;
begin
    Result := DefaultInterface.User;
end;

function TCWFTask.Get_Term: ITaskTerm;
begin
    Result := DefaultInterface.Term;
end;

function TCWFTask.Get_Role: WFRole;
begin
    Result := DefaultInterface.Role;
end;

function TCWFTask.Get_ChildRoute: IWFRoute;
begin
    Result := DefaultInterface.ChildRoute;
end;

function TCWFTask.Get_StateID: Integer;
begin
    Result := DefaultInterface.StateID;
end;

function TCWFTask.Get_Actuated: WordBool;
begin
    Result := DefaultInterface.Actuated;
end;

function TCWFTask.Get_PossibleDeactuated: WordBool;
begin
    Result := DefaultInterface.PossibleDeactuated;
end;

procedure TCWFTask.SetState(StateID: Integer; const Comment: WideString);
begin
  DefaultInterface.SetState(StateID, Comment);
end;

function TCWFTask.CanReturn: WordBool;
begin
  Result := DefaultInterface.CanReturn;
end;

function TCWFTask.Transform(TypicalRouteID: Integer): Integer;
begin
  Result := DefaultInterface.Transform(TypicalRouteID);
end;

function TCWFTask.SetActuated(AValue: WordBool): WordBool;
begin
  Result := DefaultInterface.SetActuated(AValue);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TCWFTaskProperties.Create(AServer: TCWFTask);
begin
  inherited Create;
  FServer := AServer;
end;

function TCWFTaskProperties.GetDefaultInterface: IWFTask;
begin
  Result := FServer.DefaultInterface;
end;

function TCWFTaskProperties.Get_ID: Integer;
begin
    Result := DefaultInterface.ID;
end;

function TCWFTaskProperties.Get_Name: WideString;
begin
    Result := DefaultInterface.Name;
end;

function TCWFTaskProperties.Get_ObjectCode: Integer;
begin
    Result := DefaultInterface.ObjectCode;
end;

function TCWFTaskProperties.Get_ObjectType: WFObjectTypes;
begin
    Result := DefaultInterface.ObjectType;
end;

function TCWFTaskProperties.Get_Text: IRTFText;
begin
    Result := DefaultInterface.Text;
end;

function TCWFTaskProperties.Get_TransformationEnabled: WordBool;
begin
    Result := DefaultInterface.TransformationEnabled;
end;

function TCWFTaskProperties.Get_SendDate: TDateTime;
begin
    Result := DefaultInterface.SendDate;
end;

function TCWFTaskProperties.Get_StartDate: TDateTime;
begin
    Result := DefaultInterface.StartDate;
end;

function TCWFTaskProperties.Get_StopDate: TDateTime;
begin
    Result := DefaultInterface.StopDate;
end;

function TCWFTaskProperties.Get_State: WFTaskStates;
begin
    Result := DefaultInterface.State;
end;

function TCWFTaskProperties.Get_TaskType: WFTaskTypes;
begin
    Result := DefaultInterface.TaskType;
end;

function TCWFTaskProperties.Get_Route: IWFRoute;
begin
    Result := DefaultInterface.Route;
end;

function TCWFTaskProperties.Get_User: ILoodsmanUser;
begin
    Result := DefaultInterface.User;
end;

function TCWFTaskProperties.Get_Term: ITaskTerm;
begin
    Result := DefaultInterface.Term;
end;

function TCWFTaskProperties.Get_Role: WFRole;
begin
    Result := DefaultInterface.Role;
end;

function TCWFTaskProperties.Get_ChildRoute: IWFRoute;
begin
    Result := DefaultInterface.ChildRoute;
end;

function TCWFTaskProperties.Get_StateID: Integer;
begin
    Result := DefaultInterface.StateID;
end;

function TCWFTaskProperties.Get_Actuated: WordBool;
begin
    Result := DefaultInterface.Actuated;
end;

function TCWFTaskProperties.Get_PossibleDeactuated: WordBool;
begin
    Result := DefaultInterface.PossibleDeactuated;
end;

{$ENDIF}

class function CoCTaskTerm.Create: ITaskTerm;
begin
  Result := CreateComObject(CLASS_CTaskTerm) as ITaskTerm;
end;

class function CoCTaskTerm.CreateRemote(const MachineName: string): ITaskTerm;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CTaskTerm) as ITaskTerm;
end;

procedure TCTaskTerm.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{5F5FB324-814C-4D8B-B7F5-F942DE75C605}';
    IntfIID:   '{8A4B5F2B-EDEA-4B6B-BA13-938232E9627F}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TCTaskTerm.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as ITaskTerm;
  end;
end;

procedure TCTaskTerm.ConnectTo(svrIntf: ITaskTerm);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TCTaskTerm.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TCTaskTerm.GetDefaultInterface: ITaskTerm;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TCTaskTerm.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TCTaskTermProperties.Create(Self);
{$ENDIF}
end;

destructor TCTaskTerm.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TCTaskTerm.GetServerProperties: TCTaskTermProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TCTaskTerm.Get_Expired: WordBool;
begin
    Result := DefaultInterface.Expired;
end;

function TCTaskTerm.Get_DateConstraint: TDateTime;
begin
    Result := DefaultInterface.DateConstraint;
end;

function TCTaskTerm.Get_TimeConstraint: Integer;
begin
    Result := DefaultInterface.TimeConstraint;
end;

function TCTaskTerm.Get_TimeLimit: Integer;
begin
    Result := DefaultInterface.TimeLimit;
end;

function TCTaskTerm.Get_FromRouteStart: WordBool;
begin
    Result := DefaultInterface.FromRouteStart;
end;

function TCTaskTerm.Get_TextValue: WideString;
begin
    Result := DefaultInterface.TextValue;
end;

function TCTaskTerm.Get_FinishDate: TDateTime;
begin
    Result := DefaultInterface.FinishDate;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TCTaskTermProperties.Create(AServer: TCTaskTerm);
begin
  inherited Create;
  FServer := AServer;
end;

function TCTaskTermProperties.GetDefaultInterface: ITaskTerm;
begin
  Result := FServer.DefaultInterface;
end;

function TCTaskTermProperties.Get_Expired: WordBool;
begin
    Result := DefaultInterface.Expired;
end;

function TCTaskTermProperties.Get_DateConstraint: TDateTime;
begin
    Result := DefaultInterface.DateConstraint;
end;

function TCTaskTermProperties.Get_TimeConstraint: Integer;
begin
    Result := DefaultInterface.TimeConstraint;
end;

function TCTaskTermProperties.Get_TimeLimit: Integer;
begin
    Result := DefaultInterface.TimeLimit;
end;

function TCTaskTermProperties.Get_FromRouteStart: WordBool;
begin
    Result := DefaultInterface.FromRouteStart;
end;

function TCTaskTermProperties.Get_TextValue: WideString;
begin
    Result := DefaultInterface.TextValue;
end;

function TCTaskTermProperties.Get_FinishDate: TDateTime;
begin
    Result := DefaultInterface.FinishDate;
end;

{$ENDIF}

class function CoCRTFText.Create: IRTFText;
begin
  Result := CreateComObject(CLASS_CRTFText) as IRTFText;
end;

class function CoCRTFText.CreateRemote(const MachineName: string): IRTFText;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CRTFText) as IRTFText;
end;

procedure TCRTFText.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{B34738C4-93D2-4506-8715-974FD05B2177}';
    IntfIID:   '{ACCC7902-EE75-474E-AD45-544086136A68}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TCRTFText.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IRTFText;
  end;
end;

procedure TCRTFText.ConnectTo(svrIntf: IRTFText);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TCRTFText.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TCRTFText.GetDefaultInterface: IRTFText;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TCRTFText.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TCRTFTextProperties.Create(Self);
{$ENDIF}
end;

destructor TCRTFText.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TCRTFText.GetServerProperties: TCRTFTextProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TCRTFText.Get_Value: WideString;
begin
    Result := DefaultInterface.Value;
end;

procedure TCRTFText.Set_Value(const Value: WideString);
  { Warning: The property Value has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Value := Value;
end;

function TCRTFText.ToPlain: WideString;
begin
  Result := DefaultInterface.ToPlain;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TCRTFTextProperties.Create(AServer: TCRTFText);
begin
  inherited Create;
  FServer := AServer;
end;

function TCRTFTextProperties.GetDefaultInterface: IRTFText;
begin
  Result := FServer.DefaultInterface;
end;

function TCRTFTextProperties.Get_Value: WideString;
begin
    Result := DefaultInterface.Value;
end;

procedure TCRTFTextProperties.Set_Value(const Value: WideString);
  { Warning: The property Value has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Value := Value;
end;

{$ENDIF}

class function CoCPDMLink.Create: IPDMLink;
begin
  Result := CreateComObject(CLASS_CPDMLink) as IPDMLink;
end;

class function CoCPDMLink.CreateRemote(const MachineName: string): IPDMLink;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CPDMLink) as IPDMLink;
end;

procedure TCPDMLink.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{A771347F-E7B7-4234-9541-4BDE8E83BB96}';
    IntfIID:   '{C9897F45-EBD5-4006-9796-91333E093C06}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TCPDMLink.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IPDMLink;
  end;
end;

procedure TCPDMLink.ConnectTo(svrIntf: IPDMLink);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TCPDMLink.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TCPDMLink.GetDefaultInterface: IPDMLink;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TCPDMLink.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TCPDMLinkProperties.Create(Self);
{$ENDIF}
end;

destructor TCPDMLink.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TCPDMLink.GetServerProperties: TCPDMLinkProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TCPDMLink.Get_ID: Integer;
begin
    Result := DefaultInterface.ID;
end;

function TCPDMLink.Get_Name: WideString;
begin
    Result := DefaultInterface.Name;
end;

function TCPDMLink.Get_ObjectCode: Integer;
begin
    Result := DefaultInterface.ObjectCode;
end;

function TCPDMLink.Get_LockLevel: PDMLockLevels;
begin
    Result := DefaultInterface.LockLevel;
end;

function TCPDMLink.Get_AccessLevel: PDMAccessLevels;
begin
    Result := DefaultInterface.AccessLevel;
end;

function TCPDMLink.Get_MinQuantity: Double;
begin
    Result := DefaultInterface.MinQuantity;
end;

function TCPDMLink.Get_MaxQuantity: Double;
begin
    Result := DefaultInterface.MaxQuantity;
end;

function TCPDMLink.Get_UnitID: WideString;
begin
    Result := DefaultInterface.UnitID;
end;

function TCPDMLink.Get_UnitName: WideString;
begin
    Result := DefaultInterface.UnitName;
end;

function TCPDMLink.Get_MeasureID: WideString;
begin
    Result := DefaultInterface.MeasureID;
end;

function TCPDMLink.Get_MeasureName: WideString;
begin
    Result := DefaultInterface.MeasureName;
end;

function TCPDMLink.Get_ParentObject: IPDMObject;
begin
    Result := DefaultInterface.ParentObject;
end;

function TCPDMLink.Get_ChildObject: IPDMObject;
begin
    Result := DefaultInterface.ChildObject;
end;

function TCPDMLink.Get_Inverse: WordBool;
begin
    Result := DefaultInterface.Inverse;
end;

function TCPDMLink.Get_Parent: IPDMData;
begin
    Result := DefaultInterface.Parent;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TCPDMLinkProperties.Create(AServer: TCPDMLink);
begin
  inherited Create;
  FServer := AServer;
end;

function TCPDMLinkProperties.GetDefaultInterface: IPDMLink;
begin
  Result := FServer.DefaultInterface;
end;

function TCPDMLinkProperties.Get_ID: Integer;
begin
    Result := DefaultInterface.ID;
end;

function TCPDMLinkProperties.Get_Name: WideString;
begin
    Result := DefaultInterface.Name;
end;

function TCPDMLinkProperties.Get_ObjectCode: Integer;
begin
    Result := DefaultInterface.ObjectCode;
end;

function TCPDMLinkProperties.Get_LockLevel: PDMLockLevels;
begin
    Result := DefaultInterface.LockLevel;
end;

function TCPDMLinkProperties.Get_AccessLevel: PDMAccessLevels;
begin
    Result := DefaultInterface.AccessLevel;
end;

function TCPDMLinkProperties.Get_MinQuantity: Double;
begin
    Result := DefaultInterface.MinQuantity;
end;

function TCPDMLinkProperties.Get_MaxQuantity: Double;
begin
    Result := DefaultInterface.MaxQuantity;
end;

function TCPDMLinkProperties.Get_UnitID: WideString;
begin
    Result := DefaultInterface.UnitID;
end;

function TCPDMLinkProperties.Get_UnitName: WideString;
begin
    Result := DefaultInterface.UnitName;
end;

function TCPDMLinkProperties.Get_MeasureID: WideString;
begin
    Result := DefaultInterface.MeasureID;
end;

function TCPDMLinkProperties.Get_MeasureName: WideString;
begin
    Result := DefaultInterface.MeasureName;
end;

function TCPDMLinkProperties.Get_ParentObject: IPDMObject;
begin
    Result := DefaultInterface.ParentObject;
end;

function TCPDMLinkProperties.Get_ChildObject: IPDMObject;
begin
    Result := DefaultInterface.ChildObject;
end;

function TCPDMLinkProperties.Get_Inverse: WordBool;
begin
    Result := DefaultInterface.Inverse;
end;

function TCPDMLinkProperties.Get_Parent: IPDMData;
begin
    Result := DefaultInterface.Parent;
end;

{$ENDIF}

class function CoCoWFMail.Create: IWFMail;
begin
  Result := CreateComObject(CLASS_CoWFMail) as IWFMail;
end;

class function CoCoWFMail.CreateRemote(const MachineName: string): IWFMail;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CoWFMail) as IWFMail;
end;

procedure TCoWFMail.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{AE9922CD-A832-4336-9AEC-2738325EE7FC}';
    IntfIID:   '{A2E00E84-59AE-438A-99D5-E6D85818850C}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TCoWFMail.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IWFMail;
  end;
end;

procedure TCoWFMail.ConnectTo(svrIntf: IWFMail);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TCoWFMail.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TCoWFMail.GetDefaultInterface: IWFMail;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TCoWFMail.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TCoWFMailProperties.Create(Self);
{$ENDIF}
end;

destructor TCoWFMail.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TCoWFMail.GetServerProperties: TCoWFMailProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TCoWFMail.Get_ID: Integer;
begin
    Result := DefaultInterface.ID;
end;

function TCoWFMail.Get_Name: WideString;
begin
    Result := DefaultInterface.Name;
end;

function TCoWFMail.Get_ObjectCode: Integer;
begin
    Result := DefaultInterface.ObjectCode;
end;

function TCoWFMail.Get_ObjectType: WFObjectTypes;
begin
    Result := DefaultInterface.ObjectType;
end;

function TCoWFMail.Get_SendDate: TDateTime;
begin
    Result := DefaultInterface.SendDate;
end;

function TCoWFMail.Get_Text: IRTFText;
begin
    Result := DefaultInterface.Text;
end;

function TCoWFMail.Get_Route: IWFRoute;
begin
    Result := DefaultInterface.Route;
end;

function TCoWFMail.Get_Author: ILoodsmanUser;
begin
    Result := DefaultInterface.Author;
end;

function TCoWFMail.Get_Receivers: IPDMCollection;
begin
    Result := DefaultInterface.Receivers;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TCoWFMailProperties.Create(AServer: TCoWFMail);
begin
  inherited Create;
  FServer := AServer;
end;

function TCoWFMailProperties.GetDefaultInterface: IWFMail;
begin
  Result := FServer.DefaultInterface;
end;

function TCoWFMailProperties.Get_ID: Integer;
begin
    Result := DefaultInterface.ID;
end;

function TCoWFMailProperties.Get_Name: WideString;
begin
    Result := DefaultInterface.Name;
end;

function TCoWFMailProperties.Get_ObjectCode: Integer;
begin
    Result := DefaultInterface.ObjectCode;
end;

function TCoWFMailProperties.Get_ObjectType: WFObjectTypes;
begin
    Result := DefaultInterface.ObjectType;
end;

function TCoWFMailProperties.Get_SendDate: TDateTime;
begin
    Result := DefaultInterface.SendDate;
end;

function TCoWFMailProperties.Get_Text: IRTFText;
begin
    Result := DefaultInterface.Text;
end;

function TCoWFMailProperties.Get_Route: IWFRoute;
begin
    Result := DefaultInterface.Route;
end;

function TCoWFMailProperties.Get_Author: ILoodsmanUser;
begin
    Result := DefaultInterface.Author;
end;

function TCoWFMailProperties.Get_Receivers: IPDMCollection;
begin
    Result := DefaultInterface.Receivers;
end;

{$ENDIF}

class function CoObjectBuilder.Create: IObjectBuilder;
begin
  Result := CreateComObject(CLASS_ObjectBuilder) as IObjectBuilder;
end;

class function CoObjectBuilder.CreateRemote(const MachineName: string): IObjectBuilder;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ObjectBuilder) as IObjectBuilder;
end;

procedure TObjectBuilder.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{060F8FDD-2801-450C-A910-C82212758156}';
    IntfIID:   '{723EA58E-3CD5-4DDD-9A47-9E11C5B180FC}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TObjectBuilder.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IObjectBuilder;
  end;
end;

procedure TObjectBuilder.ConnectTo(svrIntf: IObjectBuilder);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TObjectBuilder.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TObjectBuilder.GetDefaultInterface: IObjectBuilder;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TObjectBuilder.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TObjectBuilderProperties.Create(Self);
{$ENDIF}
end;

destructor TObjectBuilder.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TObjectBuilder.GetServerProperties: TObjectBuilderProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TObjectBuilder.ObjectFromID(const Connection: IDispatch; ObjectCode: Integer; 
                                     ObjectID: Integer): IDispatch;
begin
  Result := DefaultInterface.ObjectFromID(Connection, ObjectCode, ObjectID);
end;

function TObjectBuilder.CollectionFromDS(const Connection: IDispatch; ObjectCode: Integer; 
                                         DS: OleVariant): IPDMCollection;
begin
  Result := DefaultInterface.CollectionFromDS(Connection, ObjectCode, DS);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TObjectBuilderProperties.Create(AServer: TObjectBuilder);
begin
  inherited Create;
  FServer := AServer;
end;

function TObjectBuilderProperties.GetDefaultInterface: IObjectBuilder;
begin
  Result := FServer.DefaultInterface;
end;

{$ENDIF}

class function CoCoNote.Create: INote;
begin
  Result := CreateComObject(CLASS_CoNote) as INote;
end;

class function CoCoNote.CreateRemote(const MachineName: string): INote;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CoNote) as INote;
end;

procedure TCoNote.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{1FA4FE48-AEDE-44EF-A252-402429D21E77}';
    IntfIID:   '{67FC5604-3B49-43B2-BC57-244FAF294B83}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TCoNote.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as INote;
  end;
end;

procedure TCoNote.ConnectTo(svrIntf: INote);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TCoNote.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TCoNote.GetDefaultInterface: INote;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TCoNote.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TCoNoteProperties.Create(Self);
{$ENDIF}
end;

destructor TCoNote.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TCoNote.GetServerProperties: TCoNoteProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TCoNote.Get_ID: Integer;
begin
    Result := DefaultInterface.ID;
end;

function TCoNote.Get_Name: WideString;
begin
    Result := DefaultInterface.Name;
end;

function TCoNote.Get_ObjectCode: Integer;
begin
    Result := DefaultInterface.ObjectCode;
end;

function TCoNote.Get_Text: WideString;
begin
    Result := DefaultInterface.Text;
end;

function TCoNote.Get_User: ILoodsmanUser;
begin
    Result := DefaultInterface.User;
end;

function TCoNote.Get_ParentNoteID: Integer;
begin
    Result := DefaultInterface.ParentNoteID;
end;

function TCoNote.Get_CreateTime: TDateTime;
begin
    Result := DefaultInterface.CreateTime;
end;

function TCoNote.Get_DeleteTime: TDateTime;
begin
    Result := DefaultInterface.DeleteTime;
end;

function TCoNote.Get_ChangeTime: TDateTime;
begin
    Result := DefaultInterface.ChangeTime;
end;

function TCoNote.Get_Attachments: WideString;
begin
    Result := DefaultInterface.Attachments;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TCoNoteProperties.Create(AServer: TCoNote);
begin
  inherited Create;
  FServer := AServer;
end;

function TCoNoteProperties.GetDefaultInterface: INote;
begin
  Result := FServer.DefaultInterface;
end;

function TCoNoteProperties.Get_ID: Integer;
begin
    Result := DefaultInterface.ID;
end;

function TCoNoteProperties.Get_Name: WideString;
begin
    Result := DefaultInterface.Name;
end;

function TCoNoteProperties.Get_ObjectCode: Integer;
begin
    Result := DefaultInterface.ObjectCode;
end;

function TCoNoteProperties.Get_Text: WideString;
begin
    Result := DefaultInterface.Text;
end;

function TCoNoteProperties.Get_User: ILoodsmanUser;
begin
    Result := DefaultInterface.User;
end;

function TCoNoteProperties.Get_ParentNoteID: Integer;
begin
    Result := DefaultInterface.ParentNoteID;
end;

function TCoNoteProperties.Get_CreateTime: TDateTime;
begin
    Result := DefaultInterface.CreateTime;
end;

function TCoNoteProperties.Get_DeleteTime: TDateTime;
begin
    Result := DefaultInterface.DeleteTime;
end;

function TCoNoteProperties.Get_ChangeTime: TDateTime;
begin
    Result := DefaultInterface.ChangeTime;
end;

function TCoNoteProperties.Get_Attachments: WideString;
begin
    Result := DefaultInterface.Attachments;
end;

{$ENDIF}

class function CoCPDMObject.Create: IPDMObject;
begin
  Result := CreateComObject(CLASS_CPDMObject) as IPDMObject;
end;

class function CoCPDMObject.CreateRemote(const MachineName: string): IPDMObject;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CPDMObject) as IPDMObject;
end;

procedure TCPDMObject.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{A70B8B70-5CF9-4DC3-A8AD-E5331FA33054}';
    IntfIID:   '{E32BF2D4-529A-4566-88BF-6413B5642718}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TCPDMObject.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IPDMObject;
  end;
end;

procedure TCPDMObject.ConnectTo(svrIntf: IPDMObject);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TCPDMObject.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TCPDMObject.GetDefaultInterface: IPDMObject;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TCPDMObject.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TCPDMObjectProperties.Create(Self);
{$ENDIF}
end;

destructor TCPDMObject.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TCPDMObject.GetServerProperties: TCPDMObjectProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TCPDMObject.Get_ID: Integer;
begin
    Result := DefaultInterface.ID;
end;

function TCPDMObject.Get_Name: WideString;
begin
    Result := DefaultInterface.Name;
end;

function TCPDMObject.Get_ObjectCode: Integer;
begin
    Result := DefaultInterface.ObjectCode;
end;

function TCPDMObject.Get_LockLevel: PDMLockLevels;
begin
    Result := DefaultInterface.LockLevel;
end;

function TCPDMObject.Get_AccessLevel: PDMAccessLevels;
begin
    Result := DefaultInterface.AccessLevel;
end;

function TCPDMObject.Get_TypeName: WideString;
begin
    Result := DefaultInterface.TypeName;
end;

function TCPDMObject.Get_Version: WideString;
begin
    Result := DefaultInterface.Version;
end;

function TCPDMObject.Get_StateName: WideString;
begin
    Result := DefaultInterface.StateName;
end;

function TCPDMObject.Get_IsDocument: WordBool;
begin
    Result := DefaultInterface.IsDocument;
end;

function TCPDMObject.Get_Parent: IPDMData;
begin
    Result := DefaultInterface.Parent;
end;

function TCPDMObject.Get_SecurityLabel: Integer;
begin
    Result := DefaultInterface.SecurityLabel;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TCPDMObjectProperties.Create(AServer: TCPDMObject);
begin
  inherited Create;
  FServer := AServer;
end;

function TCPDMObjectProperties.GetDefaultInterface: IPDMObject;
begin
  Result := FServer.DefaultInterface;
end;

function TCPDMObjectProperties.Get_ID: Integer;
begin
    Result := DefaultInterface.ID;
end;

function TCPDMObjectProperties.Get_Name: WideString;
begin
    Result := DefaultInterface.Name;
end;

function TCPDMObjectProperties.Get_ObjectCode: Integer;
begin
    Result := DefaultInterface.ObjectCode;
end;

function TCPDMObjectProperties.Get_LockLevel: PDMLockLevels;
begin
    Result := DefaultInterface.LockLevel;
end;

function TCPDMObjectProperties.Get_AccessLevel: PDMAccessLevels;
begin
    Result := DefaultInterface.AccessLevel;
end;

function TCPDMObjectProperties.Get_TypeName: WideString;
begin
    Result := DefaultInterface.TypeName;
end;

function TCPDMObjectProperties.Get_Version: WideString;
begin
    Result := DefaultInterface.Version;
end;

function TCPDMObjectProperties.Get_StateName: WideString;
begin
    Result := DefaultInterface.StateName;
end;

function TCPDMObjectProperties.Get_IsDocument: WordBool;
begin
    Result := DefaultInterface.IsDocument;
end;

function TCPDMObjectProperties.Get_Parent: IPDMData;
begin
    Result := DefaultInterface.Parent;
end;

function TCPDMObjectProperties.Get_SecurityLabel: Integer;
begin
    Result := DefaultInterface.SecurityLabel;
end;

{$ENDIF}

procedure Register;
begin
  RegisterComponents(dtlServerPage, [TCPDMData, TCPDMDocument, TCPDMFile, TCPDMCollection, 
    TCView, TCAnnotation, TCLoodsmanUser, TCWFObject, TCWFRoute, 
    TCWFTask, TCTaskTerm, TCRTFText, TCPDMLink, TCoWFMail, 
    TObjectBuilder, TCoNote, TCPDMObject]);
end;

end.
