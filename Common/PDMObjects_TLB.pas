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
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
{$ALIGN 4}
interface

uses Windows, ActiveX, Variants;
  

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
  IPDMDataV14 = interface;
  IPDMDataV13 = interface;
  IProtectedPDMDataV14 = interface;
  IPDMObjectV14 = interface;
  IPDMObjectV13 = interface;
  IPDMDocumentV14 = interface;
  IPDMDocumentV13 = interface;
  IPDMFileV14 = interface;
  IPDMFileV13 = interface;
  IPDMCollectionV14 = interface;
  IPDMCollectionV13 = interface;
  IView = interface;
  IAnnotation = interface;
  ILoodsmanUser = interface;
  IWFObjectV14 = interface;
  IWFObjectV13 = interface;
  IWFRouteV14 = interface;
  IWFRouteV13 = interface;
  IWFTaskV14 = interface;
  IWFTaskV13 = interface;
  ITaskTerm = interface;
  IRTFText = interface;
  IPDMLinkV14 = interface;
  IPDMLinkV13 = interface;
  IWFMailV14 = interface;
  IWFMailV13 = interface;
  IObjectBuilderV14 = interface;
  IObjectBuilderV13 = interface;
  INote = interface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  CPDMData = IPDMDataV14;
  CPDMDocument = IPDMDocumentV14;
  CPDMFile = IPDMFileV14;
  CPDMCollection = IPDMCollectionV14;
  CView = IView;
  CAnnotation = IAnnotation;
  CLoodsmanUser = ILoodsmanUser;
  CWFObject = IWFObjectV14;
  CWFRoute = IWFRouteV14;
  CWFTask = IWFTaskV14;
  CTaskTerm = ITaskTerm;
  CRTFText = IRTFText;
  CPDMLink = IPDMLinkV14;
  CoWFMail = IWFMailV14;
  ObjectBuilder = IObjectBuilderV14;
  CoNote = INote;
  CPDMObject = IPDMObjectV14;


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
  IPDMDataV14 = interface(IDispatch)
    ['{0EB0573F-D586-4B46-9FB0-F44673455D12}']
    function Get_ID: Integer; safecall;
    function Get_Name: WideString; safecall;
    function Get_ObjectCode: Integer; safecall;
    property ID: Integer read Get_ID;
    property Name: WideString read Get_Name;
    property ObjectCode: Integer read Get_ObjectCode;
  end;

// *********************************************************************//
// Interface: IPDMData
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0EB0573F-D586-4B46-9FB0-F44673455D12}
// *********************************************************************//
  IPDMDataV13 = interface(IDispatch)
    ['{0EB0573F-D586-4B46-9FB0-F44673455D12}']
    function Get_ID: Integer; safecall;
    function Get_Name: WideString; safecall;
    function Get_LockLevel: PDMLockLevels; safecall;
    function Get_AccessLevel: PDMAccessLevels; safecall;
    function Get_ObjectCode: Integer; safecall;
    property ID: Integer read Get_ID;
    property Name: WideString read Get_Name;
    property LockLevel: PDMLockLevels read Get_LockLevel;
    property AccessLevel: PDMAccessLevels read Get_AccessLevel;
    property ObjectCode: Integer read Get_ObjectCode;
  end;

// *********************************************************************//
// Interface: IProtectedPDMData
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {12947964-F700-4055-9270-496DACC18ACB}
// *********************************************************************//
  IProtectedPDMDataV13 = interface(IPDMDataV13)
    ['{12947964-F700-4055-9270-496DACC18ACB}']
  end;

// *********************************************************************//
// Interface: IProtectedPDMData
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {12947964-F700-4055-9270-496DACC18ACB}
// *********************************************************************//
  IProtectedPDMDataV14 = interface(IPDMDataV14)
    ['{12947964-F700-4055-9270-496DACC18ACB}']
    function Get_LockLevel: PDMLockLevels; safecall;
    function Get_AccessLevel: PDMAccessLevels; safecall;
    property LockLevel: PDMLockLevels read Get_LockLevel;
    property AccessLevel: PDMAccessLevels read Get_AccessLevel;
  end;

// *********************************************************************//
// Interface: IPDMObject
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {E32BF2D4-529A-4566-88BF-6413B5642718}
// *********************************************************************//
  IPDMObjectV14 = interface(IProtectedPDMDataV14)
    ['{E32BF2D4-529A-4566-88BF-6413B5642718}']
    function Get_TypeName: WideString; safecall;
    function Get_Version: WideString; safecall;
    function Get_StateName: WideString; safecall;
    function Get_IsDocument: WordBool; safecall;
    function Get_Parent: IPDMDataV14; safecall;
    function Get_SecurityLabel: Integer; safecall;
    property TypeName: WideString read Get_TypeName;
    property Version: WideString read Get_Version;
    property StateName: WideString read Get_StateName;
    property IsDocument: WordBool read Get_IsDocument;
    property Parent: IPDMDataV14 read Get_Parent;
    property SecurityLabel: Integer read Get_SecurityLabel;
  end;

// *********************************************************************//
// Interface: IPDMObject
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {E32BF2D4-529A-4566-88BF-6413B5642718}
// *********************************************************************//
  IPDMObjectV13 = interface(IDispatch)
    ['{E32BF2D4-529A-4566-88BF-6413B5642718}']
    function Get_ID: Integer; safecall;
    function Get_Name: WideString; safecall;
    function Get_TypeName: WideString; safecall;
    function Get_Version: WideString; safecall;
    function Get_StateName: WideString; safecall;
    function Get_LockLevel: PDMLockLevels; safecall;
    function Get_AccessLevel: PDMAccessLevels; safecall;
    function Get_IsDocument: WordBool; safecall;
    function Get_Parent: IPDMDataV13; safecall;
    property ID: Integer read Get_ID;
    property Name: WideString read Get_Name;
    property TypeName: WideString read Get_TypeName;
    property Version: WideString read Get_Version;
    property StateName: WideString read Get_StateName;
    property LockLevel: PDMLockLevels read Get_LockLevel;
    property AccessLevel: PDMAccessLevels read Get_AccessLevel;
    property IsDocument: WordBool read Get_IsDocument;
    property Parent: IPDMDataV13 read Get_Parent;
  end;

// *********************************************************************//
// Interface: IPDMDocument
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {693C8331-AE1F-449B-89E8-2165657984E6}
// *********************************************************************//
  IPDMDocumentV14 = interface(IPDMObjectV14)
    ['{693C8331-AE1F-449B-89E8-2165657984E6}']
    function Get_Files: IPDMCollectionV14; safecall;
    function Get_View: IView; safecall;
    function Get_Annotation: IAnnotation; safecall;
    property Files: IPDMCollectionV14 read Get_Files;
    property View: IView read Get_View;
    property Annotation: IAnnotation read Get_Annotation;
  end;

// *********************************************************************//
// Interface: IPDMDocument
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {693C8331-AE1F-449B-89E8-2165657984E6}
// *********************************************************************//
  IPDMDocumentV13 = interface(IDispatch)
    ['{693C8331-AE1F-449B-89E8-2165657984E6}']
    function Get_ID: Integer; safecall;
    function Get_Name: WideString; safecall;
    function Get_TypeName: WideString; safecall;
    function Get_Version: WideString; safecall;
    function Get_StateName: WideString; safecall;
    function Get_Files: IPDMCollectionV13; safecall;
    function Get_View: IView; safecall;
    function Get_Annotation: IAnnotation; safecall;
    function Get_LockLevel: PDMLockLevels; safecall;
    function Get_AccessLevel: PDMAccessLevels; safecall;
    function Get_Parent: IPDMDataV13; safecall;
    property ID: Integer read Get_ID;
    property Name: WideString read Get_Name;
    property TypeName: WideString read Get_TypeName;
    property Version: WideString read Get_Version;
    property StateName: WideString read Get_StateName;
    property Files: IPDMCollectionV13 read Get_Files;
    property View: IView read Get_View;
    property Annotation: IAnnotation read Get_Annotation;
    property LockLevel: PDMLockLevels read Get_LockLevel;
    property AccessLevel: PDMAccessLevels read Get_AccessLevel;
    property Parent: IPDMDataV13 read Get_Parent;
  end;

// *********************************************************************//
// Interface: IPDMFile
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {31D155C2-5FC8-40BB-A436-062B1BCBB18E}
// *********************************************************************//
  IPDMFileV14 = interface(IProtectedPDMDataV14)
    ['{31D155C2-5FC8-40BB-A436-062B1BCBB18E}']
    function Get_Path: WideString; safecall;
    function Get_Size: Integer; safecall;
    function Get_Created: TDateTime; safecall;
    function Get_Modified: TDateTime; safecall;
    function Load: WideString; safecall;
    function Get_LocalName: WideString; safecall;
    function Get_CRC: Integer; safecall;
    function Get_Document: IPDMDocumentV14; safecall;
    property Path: WideString read Get_Path;
    property Size: Integer read Get_Size;
    property Created: TDateTime read Get_Created;
    property Modified: TDateTime read Get_Modified;
    property LocalName: WideString read Get_LocalName;
    property CRC: Integer read Get_CRC;
    property Document: IPDMDocumentV14 read Get_Document;
  end;

// *********************************************************************//
// Interface: IPDMFile
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {31D155C2-5FC8-40BB-A436-062B1BCBB18E}
// *********************************************************************//
  IPDMFileV13 = interface(IDispatch)
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
    function Get_CRC: Integer; safecall;
    function Get_Document: IPDMDocumentV13; safecall;
    property ID: Integer read Get_ID;
    property Name: WideString read Get_Name;
    property Path: WideString read Get_Path;
    property Size: Integer read Get_Size;
    property Created: TDateTime read Get_Created;
    property Modified: TDateTime read Get_Modified;
    property LockLevel: PDMLockLevels read Get_LockLevel;
    property AccessLevel: PDMAccessLevels read Get_AccessLevel;
    property LocalName: WideString read Get_LocalName;
    property CRC: Integer read Get_CRC;
    property Document: IPDMDocumentV13 read Get_Document;
  end;

// *********************************************************************//
// Interface: IPDMCollection
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D6656545-D515-4096-8CEE-89A58223BEA5}
// *********************************************************************//
  IPDMCollectionV14 = interface(IDispatch)
    ['{D6656545-D515-4096-8CEE-89A58223BEA5}']
    function Get_Items(Index: Integer): IPDMDataV14; safecall;
    function Get_Count: Integer; safecall;
    function ItemByName(const ItemName: WideString): IPDMDataV14; safecall;
    function ItemByID(ItemID: Integer): IPDMDataV14; safecall;
    procedure Delete(Index: Integer); safecall;
    property Items[Index: Integer]: IPDMDataV14 read Get_Items;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// Interface: IPDMCollection
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D6656545-D515-4096-8CEE-89A58223BEA5}
// *********************************************************************//
  IPDMCollectionV13 = interface(IDispatch)
    ['{D6656545-D515-4096-8CEE-89A58223BEA5}']
    function Get_Items(Index: Integer): IPDMDataV13; safecall;
    function Get_Count: Integer; safecall;
    function ItemByName(const ItemName: WideString): IPDMDataV13; safecall;
    function ItemByID(ItemID: Integer): IPDMDataV13; safecall;
    procedure Delete(Index: Integer); safecall;
    property Items[Index: Integer]: IPDMDataV13 read Get_Items;
    property Count: Integer read Get_Count;
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
// Interface: IWFObject
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {7D2F6E4D-0552-475A-BE96-734DC993414B}
// *********************************************************************//
  IWFObjectV14 = interface(IPDMDataV14)
    ['{7D2F6E4D-0552-475A-BE96-734DC993414B}']
    function Get_ObjectType: WFObjectTypes; safecall;
    property ObjectType: WFObjectTypes read Get_ObjectType;
  end;

// *********************************************************************//
// Interface: IWFObject
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {7D2F6E4D-0552-475A-BE96-734DC993414B}
// *********************************************************************//
  IWFObjectV13 = interface(IDispatch)
    ['{7D2F6E4D-0552-475A-BE96-734DC993414B}']
    function Get_ID: Integer; safecall;
    function Get_ObjectType: WFObjectTypes; safecall;
    property ID: Integer read Get_ID;
    property ObjectType: WFObjectTypes read Get_ObjectType;
  end;

// *********************************************************************//
// Interface: IWFRoute
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {85206128-062B-4058-8795-4AF30ACBA67B}
// *********************************************************************//
  IWFRouteV14 = interface(IWFObjectV14)
    ['{85206128-062B-4058-8795-4AF30ACBA67B}']
    function Get_Created: TDateTime; safecall;
    function Get_Changed: TDateTime; safecall;
    function Get_Locked: WordBool; safecall;
    function Get_RunDate: TDateTime; safecall;
    function Get_Text: IRTFText; safecall;
    function Get_Initiator: ILoodsmanUser; safecall;
    function Get_TypicalRoute: IWFRouteV14; safecall;
    function Get_State: WFRouteStates; safecall;
    function Get_ParentRoute: IWFRouteV14; safecall;
    function Get_PDMObject: IPDMObjectV14; safecall;
    function Get_IsTypical: WordBool; safecall;
    function Get_LockUser: ILoodsmanUser; safecall;
    property Created: TDateTime read Get_Created;
    property Changed: TDateTime read Get_Changed;
    property Locked: WordBool read Get_Locked;
    property RunDate: TDateTime read Get_RunDate;
    property Text: IRTFText read Get_Text;
    property Initiator: ILoodsmanUser read Get_Initiator;
    property TypicalRoute: IWFRouteV14 read Get_TypicalRoute;
    property State: WFRouteStates read Get_State;
    property ParentRoute: IWFRouteV14 read Get_ParentRoute;
    property PDMObject: IPDMObjectV14 read Get_PDMObject;
    property IsTypical: WordBool read Get_IsTypical;
    property LockUser: ILoodsmanUser read Get_LockUser;
  end;

// *********************************************************************//
// Interface: IWFRoute
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {85206128-062B-4058-8795-4AF30ACBA67B}
// *********************************************************************//
  IWFRouteV13 = interface(IDispatch)
    ['{85206128-062B-4058-8795-4AF30ACBA67B}']
    function Get_ID: Integer; safecall;
    function Get_Name: WideString; safecall;
    function Get_Created: TDateTime; safecall;
    function Get_Changed: TDateTime; safecall;
    function Get_Locked: WordBool; safecall;
    function Get_RunDate: TDateTime; safecall;
    function Get_Text: IRTFText; safecall;
    function Get_Initiator: ILoodsmanUser; safecall;
    function Get_TypicalRoute: IWFRouteV13; safecall;
    function Get_State: WFRouteStates; safecall;
    function Get_ParentRoute: IWFRouteV13; safecall;
    function Get_PDMObject: IPDMObjectV13; safecall;
    function Get_IsTypical: WordBool; safecall;
    function Get_LockUser: ILoodsmanUser; safecall;
    property ID: Integer read Get_ID;
    property Name: WideString read Get_Name;
    property Created: TDateTime read Get_Created;
    property Changed: TDateTime read Get_Changed;
    property Locked: WordBool read Get_Locked;
    property RunDate: TDateTime read Get_RunDate;
    property Text: IRTFText read Get_Text;
    property Initiator: ILoodsmanUser read Get_Initiator;
    property TypicalRoute: IWFRouteV13 read Get_TypicalRoute;
    property State: WFRouteStates read Get_State;
    property ParentRoute: IWFRouteV13 read Get_ParentRoute;
    property PDMObject: IPDMObjectV13 read Get_PDMObject;
    property IsTypical: WordBool read Get_IsTypical;
    property LockUser: ILoodsmanUser read Get_LockUser;
  end;

// *********************************************************************//
// Interface: IWFTask
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {48A0BE87-BAB6-4776-8EEC-69AACEC9A40C}
// *********************************************************************//
  IWFTaskV14 = interface(IWFObjectV14)
    ['{48A0BE87-BAB6-4776-8EEC-69AACEC9A40C}']
    function Get_Text: IRTFText; safecall;
    function Get_TransformationEnabled: WordBool; safecall;
    function Get_SendDate: TDateTime; safecall;
    function Get_StartDate: TDateTime; safecall;
    function Get_StopDate: TDateTime; safecall;
    function Get_State: WFTaskStates; safecall;
    function Get_TaskType: WFTaskTypes; safecall;
    function Get_Route: IWFRouteV14; safecall;
    function Get_User: ILoodsmanUser; safecall;
    function Get_Term: ITaskTerm; safecall;
    function Get_Role: WFRole; safecall;
    function Get_ChildRoute: IWFRouteV14; safecall;
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
    property Route: IWFRouteV14 read Get_Route;
    property User: ILoodsmanUser read Get_User;
    property Term: ITaskTerm read Get_Term;
    property Role: WFRole read Get_Role;
    property ChildRoute: IWFRouteV14 read Get_ChildRoute;
    property StateID: Integer read Get_StateID;
    property Actuated: WordBool read Get_Actuated;
    property PossibleDeactuated: WordBool read Get_PossibleDeactuated;
  end;

// *********************************************************************//
// Interface: IWFTask
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {48A0BE87-BAB6-4776-8EEC-69AACEC9A40C}
// *********************************************************************//
  IWFTaskV13 = interface(IDispatch)
    ['{48A0BE87-BAB6-4776-8EEC-69AACEC9A40C}']
    function Get_ID: Integer; safecall;
    function Get_Text: IRTFText; safecall;
    function Get_TransformationEnabled: WordBool; safecall;
    function Get_SendDate: TDateTime; safecall;
    function Get_StartDate: TDateTime; safecall;
    function Get_StopDate: TDateTime; safecall;
    function Get_State: WFTaskStates; safecall;
    function Get_TaskType: WFTaskTypes; safecall;
    function Get_Route: IWFRouteV13; safecall;
    function Get_User: ILoodsmanUser; safecall;
    function Get_Term: ITaskTerm; safecall;
    function Get_Role: WFRole; safecall;
    function Get_ChildRoute: IWFRouteV13; safecall;
    function Get_StateID: Integer; safecall;
    procedure SetState(StateID: Integer; const Comment: WideString); safecall;
    function Get_Name: WideString; safecall;
    function CanReturn: WordBool; safecall;
    function Transform(TypicalRouteID: Integer): Integer; safecall;
    property ID: Integer read Get_ID;
    property Text: IRTFText read Get_Text;
    property TransformationEnabled: WordBool read Get_TransformationEnabled;
    property SendDate: TDateTime read Get_SendDate;
    property StartDate: TDateTime read Get_StartDate;
    property StopDate: TDateTime read Get_StopDate;
    property State: WFTaskStates read Get_State;
    property TaskType: WFTaskTypes read Get_TaskType;
    property Route: IWFRouteV13 read Get_Route;
    property User: ILoodsmanUser read Get_User;
    property Term: ITaskTerm read Get_Term;
    property Role: WFRole read Get_Role;
    property ChildRoute: IWFRouteV13 read Get_ChildRoute;
    property StateID: Integer read Get_StateID;
    property Name: WideString read Get_Name;
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
// Interface: IPDMLink
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {C9897F45-EBD5-4006-9796-91333E093C06}
// *********************************************************************//
  IPDMLinkV14 = interface(IProtectedPDMDataV14)
    ['{C9897F45-EBD5-4006-9796-91333E093C06}']
    function Get_MinQuantity: Double; safecall;
    function Get_MaxQuantity: Double; safecall;
    function Get_UnitID: WideString; safecall;
    function Get_UnitName: WideString; safecall;
    function Get_MeasureID: WideString; safecall;
    function Get_MeasureName: WideString; safecall;
    function Get_ParentObject: IPDMObjectV14; safecall;
    function Get_ChildObject: IPDMObjectV14; safecall;
    function Get_Inverse: WordBool; safecall;
    function Get_Parent: IPDMDataV14; safecall;
    property MinQuantity: Double read Get_MinQuantity;
    property MaxQuantity: Double read Get_MaxQuantity;
    property UnitID: WideString read Get_UnitID;
    property UnitName: WideString read Get_UnitName;
    property MeasureID: WideString read Get_MeasureID;
    property MeasureName: WideString read Get_MeasureName;
    property ParentObject: IPDMObjectV14 read Get_ParentObject;
    property ChildObject: IPDMObjectV14 read Get_ChildObject;
    property Inverse: WordBool read Get_Inverse;
    property Parent: IPDMDataV14 read Get_Parent;
  end;

// *********************************************************************//
// Interface: IPDMLink
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {C9897F45-EBD5-4006-9796-91333E093C06}
// *********************************************************************//
  IPDMLinkV13 = interface(IDispatch)
    ['{C9897F45-EBD5-4006-9796-91333E093C06}']
    function Get_ID: Integer; safecall;
    function Get_Name: WideString; safecall;
    function Get_LockLevel: PDMLockLevels; safecall;
    function Get_AccessLevel: PDMAccessLevels; safecall;
    function Get_MinQuantity: Double; safecall;
    function Get_MaxQuantity: Double; safecall;
    function Get_UnitID: WideString; safecall;
    function Get_UnitName: WideString; safecall;
    function Get_MeasureID: WideString; safecall;
    function Get_MeasureName: WideString; safecall;
    function Get_ParentObject: IPDMObjectV13; safecall;
    function Get_ChildObject: IPDMObjectV13; safecall;
    function Get_Inverse: WordBool; safecall;
    function Get_Parent: IPDMDataV13; safecall;
    property ID: Integer read Get_ID;
    property Name: WideString read Get_Name;
    property LockLevel: PDMLockLevels read Get_LockLevel;
    property AccessLevel: PDMAccessLevels read Get_AccessLevel;
    property MinQuantity: Double read Get_MinQuantity;
    property MaxQuantity: Double read Get_MaxQuantity;
    property UnitID: WideString read Get_UnitID;
    property UnitName: WideString read Get_UnitName;
    property MeasureID: WideString read Get_MeasureID;
    property MeasureName: WideString read Get_MeasureName;
    property ParentObject: IPDMObjectV13 read Get_ParentObject;
    property ChildObject: IPDMObjectV13 read Get_ChildObject;
    property Inverse: WordBool read Get_Inverse;
    property Parent: IPDMDataV13 read Get_Parent;
  end;

// *********************************************************************//
// Interface: IWFMail
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A2E00E84-59AE-438A-99D5-E6D85818850C}
// *********************************************************************//
  IWFMailV14 = interface(IWFObjectV14)
    ['{A2E00E84-59AE-438A-99D5-E6D85818850C}']
    function Get_SendDate: TDateTime; safecall;
    function Get_Text: IRTFText; safecall;
    function Get_Route: IWFRouteV14; safecall;
    function Get_Author: ILoodsmanUser; safecall;
    function Get_Receivers: IPDMCollectionV14; safecall;
    property SendDate: TDateTime read Get_SendDate;
    property Text: IRTFText read Get_Text;
    property Route: IWFRouteV14 read Get_Route;
    property Author: ILoodsmanUser read Get_Author;
    property Receivers: IPDMCollectionV14 read Get_Receivers;
  end;

// *********************************************************************//
// Interface: IWFMail
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A2E00E84-59AE-438A-99D5-E6D85818850C}
// *********************************************************************//
  IWFMailV13 = interface(IDispatch)
    ['{A2E00E84-59AE-438A-99D5-E6D85818850C}']
    function Get_SendDate: TDateTime; safecall;
    function Get_Text: IRTFText; safecall;
    function Get_Route: IWFRouteV13; safecall;
    function Get_Author: ILoodsmanUser; safecall;
    function Get_Receivers: IPDMCollectionV13; safecall;
    function Get_ID: Integer; safecall;
    function Get_Name: WideString; safecall;
    property SendDate: TDateTime read Get_SendDate;
    property Text: IRTFText read Get_Text;
    property Route: IWFRouteV13 read Get_Route;
    property Author: ILoodsmanUser read Get_Author;
    property Receivers: IPDMCollectionV13 read Get_Receivers;
    property ID: Integer read Get_ID;
    property Name: WideString read Get_Name;
  end;

// *********************************************************************//
// Interface: IObjectBuilder
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {723EA58E-3CD5-4DDD-9A47-9E11C5B180FC}
// *********************************************************************//
  IObjectBuilderV14 = interface(IDispatch)
    ['{723EA58E-3CD5-4DDD-9A47-9E11C5B180FC}']
    function ObjectFromID(const Connection: IDispatch; ObjectCode: Integer; ObjectID: Integer): IDispatch; safecall;
    function CollectionFromDS(const Connection: IDispatch; ObjectCode: Integer; DS: OleVariant): IPDMCollectionV14; safecall;
  end;

// *********************************************************************//
// Interface: IObjectBuilder
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {723EA58E-3CD5-4DDD-9A47-9E11C5B180FC}
// *********************************************************************//
  IObjectBuilderV13 = interface(IDispatch)
    ['{723EA58E-3CD5-4DDD-9A47-9E11C5B180FC}']
    function ObjectFromID(const Connection: IDispatch; ObjectCode: Integer; ObjectID: Integer): IDispatch; safecall;
    function CollectionFromDS(const Connection: IDispatch; ObjectCode: Integer; DS: OleVariant): IPDMCollectionV13; safecall;
  end;

// *********************************************************************//
// Interface: INote
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {67FC5604-3B49-43B2-BC57-244FAF294B83}
// *********************************************************************//
  INote = interface(IPDMDataV14)
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

implementation

end.
