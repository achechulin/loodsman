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
// File generated on 22.04.2014 13:01:51 from Type Library described below.

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
  PDMObjectsMajorVersion = 1;
  PDMObjectsMinorVersion = 0;

  LIBID_PDMObjects: TGUID = '{10D3926C-2A54-4343-80AB-4A4B28899959}';

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

type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
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

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  CPDMData = IPDMData;
  CPDMObject = IPDMObject;
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
    property ObjectCode: Integer readonly dispid 205;
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
    function Get_Parent: IPDMData; safecall;
    property ID: Integer read Get_ID;
    property Name: WideString read Get_Name;
    property TypeName: WideString read Get_TypeName;
    property Version: WideString read Get_Version;
    property StateName: WideString read Get_StateName;
    property LockLevel: PDMLockLevels read Get_LockLevel;
    property AccessLevel: PDMAccessLevels read Get_AccessLevel;
    property IsDocument: WordBool read Get_IsDocument;
    property Parent: IPDMData read Get_Parent;
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
    property Parent: IPDMData readonly dispid 209;
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
    function Get_Parent: IPDMData; safecall;
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
    property Parent: IPDMData read Get_Parent;
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
    property Parent: IPDMData readonly dispid 211;
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
    function Get_CRC: Integer; safecall;
    function Get_Document: IPDMDocument; safecall;
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
    property Document: IPDMDocument read Get_Document;
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
    property CRC: Integer readonly dispid 211;
    property Document: IPDMDocument readonly dispid 212;
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
    function Get_LockUser: ILoodsmanUser; safecall;
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
    property LockUser: ILoodsmanUser read Get_LockUser;
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
    property LockUser: ILoodsmanUser readonly dispid 214;
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
    property Route: IWFRoute read Get_Route;
    property User: ILoodsmanUser read Get_User;
    property Term: ITaskTerm read Get_Term;
    property Role: WFRole read Get_Role;
    property ChildRoute: IWFRoute read Get_ChildRoute;
    property StateID: Integer read Get_StateID;
    property Name: WideString read Get_Name;
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
    property StateID: Integer readonly dispid 214;
    procedure SetState(StateID: Integer; const Comment: WideString); dispid 215;
    property Name: WideString readonly dispid 216;
    function CanReturn: WordBool; dispid 217;
    function Transform(TypicalRouteID: Integer): Integer; dispid 218;
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
  IPDMLink = interface(IDispatch)
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
    function Get_ParentObject: IPDMObject; safecall;
    function Get_ChildObject: IPDMObject; safecall;
    function Get_Inverse: WordBool; safecall;
    function Get_Parent: IPDMData; safecall;
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
    property ID: Integer readonly dispid 201;
    property Name: WideString readonly dispid 202;
    property LockLevel: PDMLockLevels readonly dispid 203;
    property AccessLevel: PDMAccessLevels readonly dispid 204;
    property MinQuantity: Double readonly dispid 205;
    property MaxQuantity: Double readonly dispid 206;
    property UnitID: WideString readonly dispid 207;
    property UnitName: WideString readonly dispid 208;
    property MeasureID: WideString readonly dispid 209;
    property MeasureName: WideString readonly dispid 210;
    property ParentObject: IPDMObject readonly dispid 211;
    property ChildObject: IPDMObject readonly dispid 212;
    property Inverse: WordBool readonly dispid 213;
    property Parent: IPDMData readonly dispid 214;
  end;

// *********************************************************************//
// Interface: IWFMail
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A2E00E84-59AE-438A-99D5-E6D85818850C}
// *********************************************************************//
  IWFMail = interface(IDispatch)
    ['{A2E00E84-59AE-438A-99D5-E6D85818850C}']
    function Get_SendDate: TDateTime; safecall;
    function Get_Text: IRTFText; safecall;
    function Get_Route: IWFRoute; safecall;
    function Get_Author: ILoodsmanUser; safecall;
    function Get_Receivers: IPDMCollection; safecall;
    function Get_ID: Integer; safecall;
    function Get_Name: WideString; safecall;
    property SendDate: TDateTime read Get_SendDate;
    property Text: IRTFText read Get_Text;
    property Route: IWFRoute read Get_Route;
    property Author: ILoodsmanUser read Get_Author;
    property Receivers: IPDMCollection read Get_Receivers;
    property ID: Integer read Get_ID;
    property Name: WideString read Get_Name;
  end;

// *********************************************************************//
// DispIntf:  IWFMailDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A2E00E84-59AE-438A-99D5-E6D85818850C}
// *********************************************************************//
  IWFMailDisp = dispinterface
    ['{A2E00E84-59AE-438A-99D5-E6D85818850C}']
    property SendDate: TDateTime readonly dispid 202;
    property Text: IRTFText readonly dispid 203;
    property Route: IWFRoute readonly dispid 204;
    property Author: ILoodsmanUser readonly dispid 205;
    property Receivers: IPDMCollection readonly dispid 206;
    property ID: Integer readonly dispid 207;
    property Name: WideString readonly dispid 208;
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

implementation

end.
