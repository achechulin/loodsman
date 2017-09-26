unit LoodsmanObjects_TLB;

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
// Type Lib: C:\Program Files\Common Files\ASCON Shared\LOODSMAN\LoodsmanObjects.dll (1)
// LIBID: {993330A6-6D54-40D6-9B30-67EE2A0FE3BB}
// LCID: 0
// Helpfile: 
// HelpString: LoodsmanObjects Library
// DepndLst: 
//   (1) v2.0 stdole, (C:\WINDOWS\system32\STDOLE2.TLB)
//   (2) v1.0 DataProvider, (C:\Program Files\Common Files\ASCON Shared\LOODSMAN\DataProvider.dll)
// Parent TypeLibrary:
//   (0) v1.0 Loodsman, (C:\Program Files\ASCON\Loodsman\Client\Loodsman.exe)
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
{$ALIGN 4}
interface

uses Windows, ActiveX, Classes, DataProvider_TLB, Graphics, OleServer, StdVCL, Variants;
  


// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  LoodsmanObjectsMajorVersion = 1;
  LoodsmanObjectsMinorVersion = 0;

  LIBID_LoodsmanObjects: TGUID = '{993330A6-6D54-40D6-9B30-67EE2A0FE3BB}';

  IID_IAccessItem: TGUID = '{7DE9AEAE-C27E-4B55-90F4-7531192DCEE1}';
  IID_IBasePDMCollection: TGUID = '{D16DC613-F7C0-47EA-92D0-1C276678596F}';
  IID_ICheckOut: TGUID = '{65EAFCA1-4ADD-42B7-B72C-B8E1BBBA2C23}';
  IID_IPDMItem: TGUID = '{FE4DB87D-4B4F-4EC9-9DCB-F939F8AABC4B}';
  IID_ILooEventSubscriber: TGUID = '{165A170F-4CE3-425F-BBF8-E0192BD0FA60}';
  IID_ICheckOutList: TGUID = '{2F73ACBD-5532-41D7-805F-DA46AE1AC2E6}';
  IID_ICollisionResolver: TGUID = '{CF4D1F22-4D93-48C5-ACD4-4FF8AFF2E72B}';
  IID_IEditablePDMItem: TGUID = '{06D84200-6EBF-4DDB-B297-029F75F63256}';
  IID_ILinkBetweenTypes: TGUID = '{ADFC32C5-4CE4-465A-BAA5-964CD4E18651}';
  IID_ILockInfo: TGUID = '{EAE72478-7EBC-4023-B541-2957ECC4B0C3}';
  IID_ILoodsmanMetaData: TGUID = '{03AC068C-19B2-496F-B42C-21A4BCD3C36F}';
  IID_ILoodsmanObjectsUtils: TGUID = '{2E47B5D5-0461-4D44-BF92-8F77C5D44C44}';
  IID_ICheckoutEventSubscriber: TGUID = '{740989E0-E4BE-4E38-B757-2E9BE9D08D9E}';
  IID_IObjectAccessInfo: TGUID = '{8CDEA303-6DDB-4C1D-A7A2-B9BDA7F45404}';
  IID_IPDMAttribute2: TGUID = '{6E4E3322-DE80-4432-BB57-618FF12D6098}';
  IID_ICheckoutablePDMEntity: TGUID = '{B77A7E1D-154C-4E11-9104-4E3ECD16FF62}';
  IID_IPDMAttrValueCollection: TGUID = '{42201F0C-464A-4148-8B0D-0FD8C4E9FD1F}';
  IID_IPDMAttrValueProvider: TGUID = '{43CE66E3-8062-4CF1-A61F-5F6E3603006D}';
  IID_IPDMEntityEventSubscriber: TGUID = '{B027B489-395B-4E75-AA2F-A7BEEA7E2221}';
  IID_IPDMEntityManager: TGUID = '{EB63DB05-F5B0-4F31-A1E2-D51F9C38E95A}';
  IID_IPDMFile2: TGUID = '{1EEE30B3-F72B-45D7-B4CD-A62675637AD0}';
  IID_IPDMFilesCollection: TGUID = '{657F5237-FD07-49AC-B47A-EB6B0F34A2B9}';
  IID_IPDMAttributeValue: TGUID = '{AB6C565B-A5C4-4E22-B447-316E8816E601}';
  IID_IAttributedPDMEntity: TGUID = '{9AAA405F-4AB5-41D7-9255-F20F70A23B2C}';
  IID_IPDMLinkCollection: TGUID = '{F8E3401D-E1B8-40A6-886C-CAE64C58425C}';
  IID_IPDMLinkProvider: TGUID = '{D12BC5B1-EF6D-4FB9-B078-1966D71E6DF2}';
  IID_IPDMLinkType: TGUID = '{F5884E23-78D8-4F49-8DD4-3002CCF9A15B}';
  IID_IPDMObject2: TGUID = '{5E3BCC12-71E9-4771-AE8B-94116EA6A7CB}';
  IID_IPDMObjectCollection: TGUID = '{BF85C681-9CAD-43DF-A720-26A9F2462FDA}';
  IID_IPDMObjectLinks: TGUID = '{EB4BAAB7-AEF7-426E-B820-967E265B6382}';
  IID_IPDMObjectProvider: TGUID = '{816E35A7-527D-4E75-93D0-B4E2A398AFCA}';
  IID_IPDMObjectState: TGUID = '{B7B5545F-3424-46BE-BB9A-2D0F751265C5}';
  IID_IPDMObjectType: TGUID = '{1EABCFFA-84FA-4B8C-A756-58014DA93B61}';
  IID_IPDMTreeEntityEventSubscriber: TGUID = '{99B34C0E-7314-4BE6-AFCC-5855135374B8}';
  IID_IStateTransition: TGUID = '{2F90C8C7-91FF-4553-8871-5A08D2A16C8F}';
  IID_ISubscriptionSource: TGUID = '{B1DCFAE3-6D0E-44C0-A1AF-95F024AF297F}';
  CLASS_PDMEntityManager: TGUID = '{1049A643-B3C9-4553-BCBC-9F1A4DCE294E}';
  IID_IPDMEntityAttrValues: TGUID = '{272E1F12-729A-4B4A-A908-0487045896AF}';
  IID_IPDMObjectFiles: TGUID = '{BDB1ACFA-D69B-49E3-B000-9220530F14A1}';
  IID_IPDMLink2: TGUID = '{8F019110-4C72-457A-B7A5-F0376F5463BA}';
  IID_ISimpleSubscriber: TGUID = '{BF21EC6D-BA9E-4ABF-B5BE-58EE56AAC879}';
  IID_ISignedEntity: TGUID = '{DE8896A5-9F54-4E27-B116-953B1272CC84}';

// *********************************************************************//
// Declaration of Enumerations defined in Type Library                    
// *********************************************************************//
// Constants for enum GetCollectionMode
type
  GetCollectionMode = TOleEnum;
const
  gcmAllRefresh = $00000000;
  gcmAbsentRefresh = $00000001;
  gcmNoRefresh = $00000002;

// Constants for enum EntityCodes
type
  EntityCodes = TOleEnum;
const
  EC_NONE = $00000000;
  EC_OBJECT = $00000001;
  EC_LINK = $00000002;
  EC_FILE = $00000003;
  EC_ATTR = $00000004;
  EC_TASK = $00000005;
  EC_ROUTE = $00000006;
  EC_MAIL = $00000007;
  EC_USER = $00000008;
  EC_WFTASK = $00000009;
  EC_NOTE = $0000000A;
  EC_PLANVERSION = $0000000B;
  EC_PLAN = $0000000C;
  EC_WORKLOAD = $0000000D;

// Constants for enum PropertyCodes
type
  PropertyCodes = TOleEnum;
const
  pcUnknown = $00000000;
  pcID = $00000001;
  pcProduct = $00000002;
  pcTypeName = $00000003;
  pcTypeID = $00000004;
  pcStateName = $00000005;
  pcStateID = $00000006;
  pcOriginalProduct = $00000007;
  pcVersion = $00000008;
  pcIsDocument = $00000009;
  pcExistStatus = $0000000A;
  pcNextStatesIDs = $0000000B;
  pcIsProject = $0000000C;
  pcSecondaryViewFileName = $0000000D;
  pcSourceVersion = $0000000E;
  pcAccess = $0000000F;
  pcAccessLevel = $00000010;
  pcLockLevel = $00000011;
  pcLockID = $00000012;
  pcLockUser = $00000013;
  pcLockUserFullName = $00000014;
  pcLockDate = $00000015;
  pcLockComment = $00000016;
  pcLinks = $00000017;
  pcInverseLinks = $00000018;
  pcVirtualLinks = $00000019;
  pcAttrs = $0000001A;
  pcFiles = $0000001B;
  pcLinkType = $0000001C;
  pcLinkTypeID = $0000001D;
  pcMinQuantity = $0000001E;
  pcMaxQuantity = $0000001F;
  pcUnitID = $00000020;
  pcUnitName = $00000021;
  pcMeasureID = $00000022;
  pcMeasureName = $00000023;
  pcParentObjectID = $00000024;
  pcChildObjectID = $00000025;
  pcHorizontal = $00000026;
  pcIsVirtual = $00000027;
  pcValue = $00000028;
  pcCreatorUser = $00000029;
  pcCreatorUserFullName = $0000002A;
  pcCreateDate = $0000002B;
  pcAdditionAttrs = $0000002C;
  pcAdditionAttrsValues = $0000002D;
  pcDeleted = $0000002E;
  pcFileName = $0000002F;
  pcFilePath = $00000030;
  pcFileSize = $00000031;
  pcFileCreated = $00000032;
  pcFileModified = $00000033;
  pcFileReadOnly = $00000034;
  pcFileCRC = $00000035;
  pcPDMObjSource = $00000036;
  pcModifyDate = $00000037;
  pcObjectSigned = $00000038;
  pcSecondaryViewFileExt = $00000039;

// Constants for enum LinkKinds
type
  LinkKinds = TOleEnum;
const
  lkNormal = $00000000;
  lkInverse = $00000001;
  lkVirtual = $00000002;
  lkHorizontal = $00000003;
  lkUnknown = $00000064;

// Constants for enum EntityPropTypes
type
  EntityPropTypes = TOleEnum;
const
  ptOther = $00000000;
  ptLinksCollection = $00000001;
  ptAttrsCollection = $00000002;
  ptFilesCollection = $00000003;
  ptLinksProps = $00000004;
  ptAttrsProps = $00000005;
  ptFilesProps = $00000006;

type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  IAccessItem = interface;
  IAccessItemDisp = dispinterface;
  IBasePDMCollection = interface;
  IBasePDMCollectionDisp = dispinterface;
  ICheckOut = interface;
  ICheckOutDisp = dispinterface;
  IPDMItem = interface;
  IPDMItemDisp = dispinterface;
  ILooEventSubscriber = interface;
  ILooEventSubscriberDisp = dispinterface;
  ICheckOutList = interface;
  ICheckOutListDisp = dispinterface;
  ICollisionResolver = interface;
  ICollisionResolverDisp = dispinterface;
  IEditablePDMItem = interface;
  IEditablePDMItemDisp = dispinterface;
  ILinkBetweenTypes = interface;
  ILinkBetweenTypesDisp = dispinterface;
  ILockInfo = interface;
  ILockInfoDisp = dispinterface;
  ILoodsmanMetaData = interface;
  ILoodsmanMetaDataDisp = dispinterface;
  ILoodsmanObjectsUtils = interface;
  ILoodsmanObjectsUtilsDisp = dispinterface;
  ICheckoutEventSubscriber = interface;
  ICheckoutEventSubscriberDisp = dispinterface;
  IObjectAccessInfo = interface;
  IObjectAccessInfoDisp = dispinterface;
  IPDMAttribute2 = interface;
  IPDMAttribute2Disp = dispinterface;
  ICheckoutablePDMEntity = interface;
  ICheckoutablePDMEntityDisp = dispinterface;
  IPDMAttrValueCollection = interface;
  IPDMAttrValueCollectionDisp = dispinterface;
  IPDMAttrValueProvider = interface;
  IPDMAttrValueProviderDisp = dispinterface;
  IPDMEntityEventSubscriber = interface;
  IPDMEntityEventSubscriberDisp = dispinterface;
  IPDMEntityManager = interface;
  IPDMEntityManagerDisp = dispinterface;
  IPDMFile2 = interface;
  IPDMFile2Disp = dispinterface;
  IPDMFilesCollection = interface;
  IPDMFilesCollectionDisp = dispinterface;
  IPDMAttributeValue = interface;
  IPDMAttributeValueDisp = dispinterface;
  IAttributedPDMEntity = interface;
  IAttributedPDMEntityDisp = dispinterface;
  IPDMLinkCollection = interface;
  IPDMLinkCollectionDisp = dispinterface;
  IPDMLinkProvider = interface;
  IPDMLinkProviderDisp = dispinterface;
  IPDMLinkType = interface;
  IPDMLinkTypeDisp = dispinterface;
  IPDMObject2 = interface;
  IPDMObject2Disp = dispinterface;
  IPDMObjectCollection = interface;
  IPDMObjectCollectionDisp = dispinterface;
  IPDMObjectLinks = interface;
  IPDMObjectLinksDisp = dispinterface;
  IPDMObjectProvider = interface;
  IPDMObjectProviderDisp = dispinterface;
  IPDMObjectState = interface;
  IPDMObjectStateDisp = dispinterface;
  IPDMObjectType = interface;
  IPDMObjectTypeDisp = dispinterface;
  IPDMTreeEntityEventSubscriber = interface;
  IPDMTreeEntityEventSubscriberDisp = dispinterface;
  IStateTransition = interface;
  IStateTransitionDisp = dispinterface;
  ISubscriptionSource = interface;
  ISubscriptionSourceDisp = dispinterface;
  IPDMEntityAttrValues = interface;
  IPDMEntityAttrValuesDisp = dispinterface;
  IPDMObjectFiles = interface;
  IPDMObjectFilesDisp = dispinterface;
  IPDMLink2 = interface;
  IPDMLink2Disp = dispinterface;
  ISimpleSubscriber = interface;
  ISimpleSubscriberDisp = dispinterface;
  ISignedEntity = interface;
  ISignedEntityDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  PDMEntityManager = IPDMEntityManager;


// *********************************************************************//
// Interface: IAccessItem
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {7DE9AEAE-C27E-4B55-90F4-7531192DCEE1}
// *********************************************************************//
  IAccessItem = interface(IDispatch)
    ['{7DE9AEAE-C27E-4B55-90F4-7531192DCEE1}']
    function Get_SubjID: Integer; safecall;
    function Get_SubjType: Integer; safecall;
    function Get_AccessLevel: Integer; safecall;
    function Get_PDMObject: IPDMObject2; safecall;
    property SubjID: Integer read Get_SubjID;
    property SubjType: Integer read Get_SubjType;
    property AccessLevel: Integer read Get_AccessLevel;
    property PDMObject: IPDMObject2 read Get_PDMObject;
  end;

// *********************************************************************//
// DispIntf:  IAccessItemDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {7DE9AEAE-C27E-4B55-90F4-7531192DCEE1}
// *********************************************************************//
  IAccessItemDisp = dispinterface
    ['{7DE9AEAE-C27E-4B55-90F4-7531192DCEE1}']
    property SubjID: Integer readonly dispid 201;
    property SubjType: Integer readonly dispid 202;
    property AccessLevel: Integer readonly dispid 203;
    property PDMObject: IPDMObject2 readonly dispid 204;
  end;

// *********************************************************************//
// Interface: IBasePDMCollection
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D16DC613-F7C0-47EA-92D0-1C276678596F}
// *********************************************************************//
  IBasePDMCollection = interface(IDispatch)
    ['{D16DC613-F7C0-47EA-92D0-1C276678596F}']
    function Get_Count: Integer; safecall;
    function Items(Index: Integer): IPDMItem; safecall;
    function ItemByName(const Name: WideString): IPDMItem; safecall;
    function ItemByID(ID: Integer): IPDMItem; safecall;
    function Add(const Item: IPDMItem): Integer; safecall;
    function Get_UniqueNames: WordBool; safecall;
    procedure Delete(Index: Integer); safecall;
    procedure AppendCollection(const Collection: IBasePDMCollection); safecall;
    function Get_ReadOnly: WordBool; safecall;
    function Get_IDStr: WideString; safecall;
    procedure Clear; safecall;
    function IndexOf(const Item: IPDMItem): Integer; safecall;
    function Get_MainEntityCode: Integer; safecall;
    function CollectionByNames(const Names: WideString): IBasePDMCollection; safecall;
    function CollectionByIDs(const IDs: WideString): IBasePDMCollection; safecall;
    property Count: Integer read Get_Count;
    property UniqueNames: WordBool read Get_UniqueNames;
    property ReadOnly: WordBool read Get_ReadOnly;
    property IDStr: WideString read Get_IDStr;
    property MainEntityCode: Integer read Get_MainEntityCode;
  end;

// *********************************************************************//
// DispIntf:  IBasePDMCollectionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D16DC613-F7C0-47EA-92D0-1C276678596F}
// *********************************************************************//
  IBasePDMCollectionDisp = dispinterface
    ['{D16DC613-F7C0-47EA-92D0-1C276678596F}']
    property Count: Integer readonly dispid 201;
    function Items(Index: Integer): IPDMItem; dispid 202;
    function ItemByName(const Name: WideString): IPDMItem; dispid 203;
    function ItemByID(ID: Integer): IPDMItem; dispid 204;
    function Add(const Item: IPDMItem): Integer; dispid 205;
    property UniqueNames: WordBool readonly dispid 206;
    procedure Delete(Index: Integer); dispid 207;
    procedure AppendCollection(const Collection: IBasePDMCollection); dispid 208;
    property ReadOnly: WordBool readonly dispid 209;
    property IDStr: WideString readonly dispid 211;
    procedure Clear; dispid 212;
    function IndexOf(const Item: IPDMItem): Integer; dispid 213;
    property MainEntityCode: Integer readonly dispid 214;
    function CollectionByNames(const Names: WideString): IBasePDMCollection; dispid 215;
    function CollectionByIDs(const IDs: WideString): IBasePDMCollection; dispid 216;
  end;

// *********************************************************************//
// Interface: ICheckOut
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {65EAFCA1-4ADD-42B7-B72C-B8E1BBBA2C23}
// *********************************************************************//
  ICheckOut = interface(IDispatch)
    ['{65EAFCA1-4ADD-42B7-B72C-B8E1BBBA2C23}']
    function Get_Name: WideString; safecall;
    function Get_ID: Integer; safecall;
    function Get_Description: WideString; safecall;
    procedure Set_Description(const Value: WideString); safecall;
    function Get_DateOfCreate: Double; safecall;
    function Get_Connection: ISimpleAPI2; safecall;
    function Get_Exist: WordBool; safecall;
    function AddHeadObject(const PDMObject: IPDMObject2): IPDMObject2; safecall;
    procedure SaveCheckout(Close: WordBool); safecall;
    procedure CancelCheckout; safecall;
    procedure UnlockObject(const PDMObject: IPDMObject2; WithChilds: WordBool); safecall;
    property Name: WideString read Get_Name;
    property ID: Integer read Get_ID;
    property Description: WideString read Get_Description write Set_Description;
    property DateOfCreate: Double read Get_DateOfCreate;
    property Connection: ISimpleAPI2 read Get_Connection;
    property Exist: WordBool read Get_Exist;
  end;

// *********************************************************************//
// DispIntf:  ICheckOutDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {65EAFCA1-4ADD-42B7-B72C-B8E1BBBA2C23}
// *********************************************************************//
  ICheckOutDisp = dispinterface
    ['{65EAFCA1-4ADD-42B7-B72C-B8E1BBBA2C23}']
    property Name: WideString readonly dispid 201;
    property ID: Integer readonly dispid 202;
    property Description: WideString dispid 203;
    property DateOfCreate: Double readonly dispid 204;
    property Connection: ISimpleAPI2 readonly dispid 205;
    property Exist: WordBool readonly dispid 206;
    function AddHeadObject(const PDMObject: IPDMObject2): IPDMObject2; dispid 207;
    procedure SaveCheckout(Close: WordBool); dispid 208;
    procedure CancelCheckout; dispid 209;
    procedure UnlockObject(const PDMObject: IPDMObject2; WithChilds: WordBool); dispid 210;
  end;

// *********************************************************************//
// Interface: IPDMItem
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {FE4DB87D-4B4F-4EC9-9DCB-F939F8AABC4B}
// *********************************************************************//
  IPDMItem = interface(IDispatch)
    ['{FE4DB87D-4B4F-4EC9-9DCB-F939F8AABC4B}']
    function Get_ID: Integer; safecall;
    function Get_Name: WideString; safecall;
    function Get_EntityCode: EntityCodes; safecall;
    property ID: Integer read Get_ID;
    property Name: WideString read Get_Name;
    property EntityCode: EntityCodes read Get_EntityCode;
  end;

// *********************************************************************//
// DispIntf:  IPDMItemDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {FE4DB87D-4B4F-4EC9-9DCB-F939F8AABC4B}
// *********************************************************************//
  IPDMItemDisp = dispinterface
    ['{FE4DB87D-4B4F-4EC9-9DCB-F939F8AABC4B}']
    property ID: Integer readonly dispid 169;
    property Name: WideString readonly dispid 170;
    property EntityCode: EntityCodes readonly dispid 171;
  end;

// *********************************************************************//
// Interface: ILooEventSubscriber
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {165A170F-4CE3-425F-BBF8-E0192BD0FA60}
// *********************************************************************//
  ILooEventSubscriber = interface(IDispatch)
    ['{165A170F-4CE3-425F-BBF8-E0192BD0FA60}']
  end;

// *********************************************************************//
// DispIntf:  ILooEventSubscriberDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {165A170F-4CE3-425F-BBF8-E0192BD0FA60}
// *********************************************************************//
  ILooEventSubscriberDisp = dispinterface
    ['{165A170F-4CE3-425F-BBF8-E0192BD0FA60}']
  end;

// *********************************************************************//
// Interface: ICheckOutList
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {2F73ACBD-5532-41D7-805F-DA46AE1AC2E6}
// *********************************************************************//
  ICheckOutList = interface(IDispatch)
    ['{2F73ACBD-5532-41D7-805F-DA46AE1AC2E6}']
    function Get_Count: Integer; safecall;
    function GetItem(Index: Integer): ICheckOut; safecall;
    function GetCheckoutByID(CheckOutID: Integer): ICheckOut; safecall;
    function GetCheckoutByConnection(const Connection: ISimpleAPI2): ICheckOut; safecall;
    function CreateCheckout: ICheckOut; safecall;
    procedure Subscribe(const Subscriber: ICheckoutEventSubscriber; const Checkout: ICheckOut); safecall;
    procedure UnSubscribe(const Subscriber: ICheckoutEventSubscriber; const Checkout: ICheckOut); safecall;
    procedure Refresh; safecall;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  ICheckOutListDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {2F73ACBD-5532-41D7-805F-DA46AE1AC2E6}
// *********************************************************************//
  ICheckOutListDisp = dispinterface
    ['{2F73ACBD-5532-41D7-805F-DA46AE1AC2E6}']
    property Count: Integer readonly dispid 201;
    function GetItem(Index: Integer): ICheckOut; dispid 202;
    function GetCheckoutByID(CheckOutID: Integer): ICheckOut; dispid 203;
    function GetCheckoutByConnection(const Connection: ISimpleAPI2): ICheckOut; dispid 204;
    function CreateCheckout: ICheckOut; dispid 205;
    procedure Subscribe(const Subscriber: ICheckoutEventSubscriber; const Checkout: ICheckOut); dispid 206;
    procedure UnSubscribe(const Subscriber: ICheckoutEventSubscriber; const Checkout: ICheckOut); dispid 207;
    procedure Refresh; dispid 208;
  end;

// *********************************************************************//
// Interface: ICollisionResolver
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {CF4D1F22-4D93-48C5-ACD4-4FF8AFF2E72B}
// *********************************************************************//
  ICollisionResolver = interface(IDispatch)
    ['{CF4D1F22-4D93-48C5-ACD4-4FF8AFF2E72B}']
    function OnApplyChanges(const Entity: IPDMItem; AdditionData: OleVariant): IPDMItem; safecall;
  end;

// *********************************************************************//
// DispIntf:  ICollisionResolverDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {CF4D1F22-4D93-48C5-ACD4-4FF8AFF2E72B}
// *********************************************************************//
  ICollisionResolverDisp = dispinterface
    ['{CF4D1F22-4D93-48C5-ACD4-4FF8AFF2E72B}']
    function OnApplyChanges(const Entity: IPDMItem; AdditionData: OleVariant): IPDMItem; dispid 201;
  end;

// *********************************************************************//
// Interface: IEditablePDMItem
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {06D84200-6EBF-4DDB-B297-029F75F63256}
// *********************************************************************//
  IEditablePDMItem = interface(IPDMItem)
    ['{06D84200-6EBF-4DDB-B297-029F75F63256}']
    function InEditMode: WordBool; safecall;
    function Get_Deleted: WordBool; safecall;
    function Get_Valid: WordBool; safecall;
    function Get_ExistsInDB: WordBool; safecall;
    function Get_SourceEntity: IEditablePDMItem; safecall;
    function CreateEditableCopy: IEditablePDMItem; safecall;
    function SaveToDB(const CollisionResolver: ICollisionResolver): IEditablePDMItem; safecall;
    procedure DeleteItem; safecall;
    procedure ClearProperty(PropCode: Integer; NeedNotify: WordBool); safecall;
    function Changed: WordBool; safecall;
    property Deleted: WordBool read Get_Deleted;
    property Valid: WordBool read Get_Valid;
    property ExistsInDB: WordBool read Get_ExistsInDB;
    property SourceEntity: IEditablePDMItem read Get_SourceEntity;
  end;

// *********************************************************************//
// DispIntf:  IEditablePDMItemDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {06D84200-6EBF-4DDB-B297-029F75F63256}
// *********************************************************************//
  IEditablePDMItemDisp = dispinterface
    ['{06D84200-6EBF-4DDB-B297-029F75F63256}']
    function InEditMode: WordBool; dispid 185;
    property Deleted: WordBool readonly dispid 186;
    property Valid: WordBool readonly dispid 187;
    property ExistsInDB: WordBool readonly dispid 188;
    property SourceEntity: IEditablePDMItem readonly dispid 189;
    function CreateEditableCopy: IEditablePDMItem; dispid 190;
    function SaveToDB(const CollisionResolver: ICollisionResolver): IEditablePDMItem; dispid 191;
    procedure DeleteItem; dispid 192;
    procedure ClearProperty(PropCode: Integer; NeedNotify: WordBool); dispid 193;
    function Changed: WordBool; dispid 194;
    property ID: Integer readonly dispid 169;
    property Name: WideString readonly dispid 170;
    property EntityCode: EntityCodes readonly dispid 171;
  end;

// *********************************************************************//
// Interface: ILinkBetweenTypes
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {ADFC32C5-4CE4-465A-BAA5-964CD4E18651}
// *********************************************************************//
  ILinkBetweenTypes = interface(IDispatch)
    ['{ADFC32C5-4CE4-465A-BAA5-964CD4E18651}']
    function Get_Link: IPDMLinkType; safecall;
    function Get_ParentType: IPDMObjectType; safecall;
    function Get_ChildType: IPDMObjectType; safecall;
    function Get_Quantity: Integer; safecall;
    function Get_AttrList: IBasePDMCollection; safecall;
    property Link: IPDMLinkType read Get_Link;
    property ParentType: IPDMObjectType read Get_ParentType;
    property ChildType: IPDMObjectType read Get_ChildType;
    property Quantity: Integer read Get_Quantity;
    property AttrList: IBasePDMCollection read Get_AttrList;
  end;

// *********************************************************************//
// DispIntf:  ILinkBetweenTypesDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {ADFC32C5-4CE4-465A-BAA5-964CD4E18651}
// *********************************************************************//
  ILinkBetweenTypesDisp = dispinterface
    ['{ADFC32C5-4CE4-465A-BAA5-964CD4E18651}']
    property Link: IPDMLinkType readonly dispid 201;
    property ParentType: IPDMObjectType readonly dispid 202;
    property ChildType: IPDMObjectType readonly dispid 203;
    property Quantity: Integer readonly dispid 204;
    property AttrList: IBasePDMCollection readonly dispid 205;
  end;

// *********************************************************************//
// Interface: ILockInfo
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {EAE72478-7EBC-4023-B541-2957ECC4B0C3}
// *********************************************************************//
  ILockInfo = interface(IDispatch)
    ['{EAE72478-7EBC-4023-B541-2957ECC4B0C3}']
    function Get_LockLevel: Integer; safecall;
    function Get_LockID: Integer; safecall;
    function Get_UserName: WideString; safecall;
    function Get_FullUserName: WideString; safecall;
    function Get_Date: Double; safecall;
    function Get_Comments: WideString; safecall;
    property LockLevel: Integer read Get_LockLevel;
    property LockID: Integer read Get_LockID;
    property UserName: WideString read Get_UserName;
    property FullUserName: WideString read Get_FullUserName;
    property Date: Double read Get_Date;
    property Comments: WideString read Get_Comments;
  end;

// *********************************************************************//
// DispIntf:  ILockInfoDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {EAE72478-7EBC-4023-B541-2957ECC4B0C3}
// *********************************************************************//
  ILockInfoDisp = dispinterface
    ['{EAE72478-7EBC-4023-B541-2957ECC4B0C3}']
    property LockLevel: Integer readonly dispid 201;
    property LockID: Integer readonly dispid 202;
    property UserName: WideString readonly dispid 203;
    property FullUserName: WideString readonly dispid 204;
    property Date: Double readonly dispid 205;
    property Comments: WideString readonly dispid 206;
  end;

// *********************************************************************//
// Interface: ILoodsmanMetaData
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {03AC068C-19B2-496F-B42C-21A4BCD3C36F}
// *********************************************************************//
  ILoodsmanMetaData = interface(IDispatch)
    ['{03AC068C-19B2-496F-B42C-21A4BCD3C36F}']
    function Get_Types: IBasePDMCollection; safecall;
    function Get_Links: IBasePDMCollection; safecall;
    function Get_States: IBasePDMCollection; safecall;
    function Get_Attributes: IBasePDMCollection; safecall;
    function Get_Icons: IImageList; safecall;
    function Get_TypesIcons: IImageList; safecall;
    function Get_LinksIcons: IImageList; safecall;
    function Get_StatesIcons: IImageList; safecall;
    function Get_AttributesIcons: IImageList; safecall;
    property Types: IBasePDMCollection read Get_Types;
    property Links: IBasePDMCollection read Get_Links;
    property States: IBasePDMCollection read Get_States;
    property Attributes: IBasePDMCollection read Get_Attributes;
    property Icons: IImageList read Get_Icons;
    property TypesIcons: IImageList read Get_TypesIcons;
    property LinksIcons: IImageList read Get_LinksIcons;
    property StatesIcons: IImageList read Get_StatesIcons;
    property AttributesIcons: IImageList read Get_AttributesIcons;
  end;

// *********************************************************************//
// DispIntf:  ILoodsmanMetaDataDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {03AC068C-19B2-496F-B42C-21A4BCD3C36F}
// *********************************************************************//
  ILoodsmanMetaDataDisp = dispinterface
    ['{03AC068C-19B2-496F-B42C-21A4BCD3C36F}']
    property Types: IBasePDMCollection readonly dispid 201;
    property Links: IBasePDMCollection readonly dispid 202;
    property States: IBasePDMCollection readonly dispid 203;
    property Attributes: IBasePDMCollection readonly dispid 204;
    property Icons: IImageList readonly dispid 205;
    property TypesIcons: IImageList readonly dispid 206;
    property LinksIcons: IImageList readonly dispid 207;
    property StatesIcons: IImageList readonly dispid 208;
    property AttributesIcons: IImageList readonly dispid 209;
  end;

// *********************************************************************//
// Interface: ILoodsmanObjectsUtils
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {2E47B5D5-0461-4D44-BF92-8F77C5D44C44}
// *********************************************************************//
  ILoodsmanObjectsUtils = interface(IDispatch)
    ['{2E47B5D5-0461-4D44-BF92-8F77C5D44C44}']
    function GetObjectNextStates(const Entity: IPDMObject2): IBasePDMCollection; safecall;
  end;

// *********************************************************************//
// DispIntf:  ILoodsmanObjectsUtilsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {2E47B5D5-0461-4D44-BF92-8F77C5D44C44}
// *********************************************************************//
  ILoodsmanObjectsUtilsDisp = dispinterface
    ['{2E47B5D5-0461-4D44-BF92-8F77C5D44C44}']
    function GetObjectNextStates(const Entity: IPDMObject2): IBasePDMCollection; dispid 201;
  end;

// *********************************************************************//
// Interface: ICheckoutEventSubscriber
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {740989E0-E4BE-4E38-B757-2E9BE9D08D9E}
// *********************************************************************//
  ICheckoutEventSubscriber = interface(ILooEventSubscriber)
    ['{740989E0-E4BE-4E38-B757-2E9BE9D08D9E}']
    procedure CheckoutClosed(const Checkout: ICheckOut); safecall;
    procedure PDMObjectUnlocked(const PDMObject: IPDMObject2); safecall;
  end;

// *********************************************************************//
// DispIntf:  ICheckoutEventSubscriberDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {740989E0-E4BE-4E38-B757-2E9BE9D08D9E}
// *********************************************************************//
  ICheckoutEventSubscriberDisp = dispinterface
    ['{740989E0-E4BE-4E38-B757-2E9BE9D08D9E}']
    procedure CheckoutClosed(const Checkout: ICheckOut); dispid 201;
    procedure PDMObjectUnlocked(const PDMObject: IPDMObject2); dispid 202;
  end;

// *********************************************************************//
// Interface: IObjectAccessInfo
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8CDEA303-6DDB-4C1D-A7A2-B9BDA7F45404}
// *********************************************************************//
  IObjectAccessInfo = interface(IDispatch)
    ['{8CDEA303-6DDB-4C1D-A7A2-B9BDA7F45404}']
    function Get_AccessItemsCount: Integer; safecall;
    function GetAccessRight(Index: Integer): IAccessItem; safecall;
    function AddAccess(SubjID: Integer; SubjType: Integer; AccessLevel: Integer): Integer; safecall;
    procedure DeleteAccess(Index: Integer); safecall;
    procedure ClearAccess; safecall;
    property AccessItemsCount: Integer read Get_AccessItemsCount;
  end;

// *********************************************************************//
// DispIntf:  IObjectAccessInfoDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8CDEA303-6DDB-4C1D-A7A2-B9BDA7F45404}
// *********************************************************************//
  IObjectAccessInfoDisp = dispinterface
    ['{8CDEA303-6DDB-4C1D-A7A2-B9BDA7F45404}']
    property AccessItemsCount: Integer readonly dispid 201;
    function GetAccessRight(Index: Integer): IAccessItem; dispid 202;
    function AddAccess(SubjID: Integer; SubjType: Integer; AccessLevel: Integer): Integer; dispid 203;
    procedure DeleteAccess(Index: Integer); dispid 204;
    procedure ClearAccess; dispid 205;
  end;

// *********************************************************************//
// Interface: IPDMAttribute2
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {6E4E3322-DE80-4432-BB57-618FF12D6098}
// *********************************************************************//
  IPDMAttribute2 = interface(IDispatch)
    ['{6E4E3322-DE80-4432-BB57-618FF12D6098}']
    function Get_ID: Integer; safecall;
    function Get_Name: WideString; safecall;
    function Get_AttrType: Integer; safecall;
    function Get_DefaultValue: WideString; safecall;
    function Get_ValueList: WideString; safecall;
    function Get_IsSystem: WordBool; safecall;
    function Get_OnlyListValues: WordBool; safecall;
    function Get_DefaultMeasureID: WideString; safecall;
    function Get_Measures: WideString; safecall;
    property ID: Integer read Get_ID;
    property Name: WideString read Get_Name;
    property AttrType: Integer read Get_AttrType;
    property DefaultValue: WideString read Get_DefaultValue;
    property ValueList: WideString read Get_ValueList;
    property IsSystem: WordBool read Get_IsSystem;
    property OnlyListValues: WordBool read Get_OnlyListValues;
    property DefaultMeasureID: WideString read Get_DefaultMeasureID;
    property Measures: WideString read Get_Measures;
  end;

// *********************************************************************//
// DispIntf:  IPDMAttribute2Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {6E4E3322-DE80-4432-BB57-618FF12D6098}
// *********************************************************************//
  IPDMAttribute2Disp = dispinterface
    ['{6E4E3322-DE80-4432-BB57-618FF12D6098}']
    property ID: Integer readonly dispid 201;
    property Name: WideString readonly dispid 202;
    property AttrType: Integer readonly dispid 203;
    property DefaultValue: WideString readonly dispid 204;
    property ValueList: WideString readonly dispid 205;
    property IsSystem: WordBool readonly dispid 206;
    property OnlyListValues: WordBool readonly dispid 207;
    property DefaultMeasureID: WideString readonly dispid 208;
    property Measures: WideString readonly dispid 209;
  end;

// *********************************************************************//
// Interface: ICheckoutablePDMEntity
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B77A7E1D-154C-4E11-9104-4E3ECD16FF62}
// *********************************************************************//
  ICheckoutablePDMEntity = interface(IEditablePDMItem)
    ['{B77A7E1D-154C-4E11-9104-4E3ECD16FF62}']
    function Get_CopyForCheckout: Integer; safecall;
    property CopyForCheckout: Integer read Get_CopyForCheckout;
  end;

// *********************************************************************//
// DispIntf:  ICheckoutablePDMEntityDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B77A7E1D-154C-4E11-9104-4E3ECD16FF62}
// *********************************************************************//
  ICheckoutablePDMEntityDisp = dispinterface
    ['{B77A7E1D-154C-4E11-9104-4E3ECD16FF62}']
    property CopyForCheckout: Integer readonly dispid 201;
    function InEditMode: WordBool; dispid 185;
    property Deleted: WordBool readonly dispid 186;
    property Valid: WordBool readonly dispid 187;
    property ExistsInDB: WordBool readonly dispid 188;
    property SourceEntity: IEditablePDMItem readonly dispid 189;
    function CreateEditableCopy: IEditablePDMItem; dispid 190;
    function SaveToDB(const CollisionResolver: ICollisionResolver): IEditablePDMItem; dispid 191;
    procedure DeleteItem; dispid 192;
    procedure ClearProperty(PropCode: Integer; NeedNotify: WordBool); dispid 193;
    function Changed: WordBool; dispid 194;
    property ID: Integer readonly dispid 169;
    property Name: WideString readonly dispid 170;
    property EntityCode: EntityCodes readonly dispid 171;
  end;

// *********************************************************************//
// Interface: IPDMAttrValueCollection
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {42201F0C-464A-4148-8B0D-0FD8C4E9FD1F}
// *********************************************************************//
  IPDMAttrValueCollection = interface(IBasePDMCollection)
    ['{42201F0C-464A-4148-8B0D-0FD8C4E9FD1F}']
    function Get_AttrValues(Index: Integer): IPDMAttributeValue; safecall;
    function AttrsByTypes(const AttrTypes: WideString; InverseCondition: WordBool): IPDMAttrValueCollection; safecall;
    property AttrValues[Index: Integer]: IPDMAttributeValue read Get_AttrValues;
  end;

// *********************************************************************//
// DispIntf:  IPDMAttrValueCollectionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {42201F0C-464A-4148-8B0D-0FD8C4E9FD1F}
// *********************************************************************//
  IPDMAttrValueCollectionDisp = dispinterface
    ['{42201F0C-464A-4148-8B0D-0FD8C4E9FD1F}']
    property AttrValues[Index: Integer]: IPDMAttributeValue readonly dispid 240;
    function AttrsByTypes(const AttrTypes: WideString; InverseCondition: WordBool): IPDMAttrValueCollection; dispid 241;
    property Count: Integer readonly dispid 201;
    function Items(Index: Integer): IPDMItem; dispid 202;
    function ItemByName(const Name: WideString): IPDMItem; dispid 203;
    function ItemByID(ID: Integer): IPDMItem; dispid 204;
    function Add(const Item: IPDMItem): Integer; dispid 205;
    property UniqueNames: WordBool readonly dispid 206;
    procedure Delete(Index: Integer); dispid 207;
    procedure AppendCollection(const Collection: IBasePDMCollection); dispid 208;
    property ReadOnly: WordBool readonly dispid 209;
    property IDStr: WideString readonly dispid 211;
    procedure Clear; dispid 212;
    function IndexOf(const Item: IPDMItem): Integer; dispid 213;
    property MainEntityCode: Integer readonly dispid 214;
    function CollectionByNames(const Names: WideString): IBasePDMCollection; dispid 215;
    function CollectionByIDs(const IDs: WideString): IBasePDMCollection; dispid 216;
  end;

// *********************************************************************//
// Interface: IPDMAttrValueProvider
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {43CE66E3-8062-4CF1-A61F-5F6E3603006D}
// *********************************************************************//
  IPDMAttrValueProvider = interface(IDispatch)
    ['{43CE66E3-8062-4CF1-A61F-5F6E3603006D}']
    function GetAttrValue(ID: Integer; Mode: GetCollectionMode; const Checkout: ICheckOut): IPDMAttributeValue; safecall;
    function GetCollectionByIDs(const IDs: WideString; Mode: GetCollectionMode; 
                                const Checkout: ICheckOut): IPDMAttrValueCollection; safecall;
    function GetCollectionByOwner(const Owner: ICheckoutablePDMEntity; Mode: GetCollectionMode): IPDMAttrValueCollection; safecall;
    procedure Refresh(const Item: ICheckoutablePDMEntity); safecall;
    procedure RefreshByIDs(const IDs: WideString; CheckOutID: Integer); safecall;
    function GetTypedCollectionByOwner(const Owner: ICheckoutablePDMEntity; 
                                       const AttrTypes: WideString; Mode: GetCollectionMode): IPDMAttrValueCollection; safecall;
    function GetCollectionByOwnersIDs(const OwnerIDs: WideString; LinkAttrs: WordBool; 
                                      const AttrTypes: WideString; Mode: GetCollectionMode; 
                                      const Checkout: ICheckOut): IPDMAttrValueCollection; safecall;
    function CreateEmptyCollection: IPDMAttrValueCollection; safecall;
    procedure ClearProperties(const AttrValue: IPDMAttributeValue); safecall;
  end;

// *********************************************************************//
// DispIntf:  IPDMAttrValueProviderDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {43CE66E3-8062-4CF1-A61F-5F6E3603006D}
// *********************************************************************//
  IPDMAttrValueProviderDisp = dispinterface
    ['{43CE66E3-8062-4CF1-A61F-5F6E3603006D}']
    function GetAttrValue(ID: Integer; Mode: GetCollectionMode; const Checkout: ICheckOut): IPDMAttributeValue; dispid 201;
    function GetCollectionByIDs(const IDs: WideString; Mode: GetCollectionMode; 
                                const Checkout: ICheckOut): IPDMAttrValueCollection; dispid 202;
    function GetCollectionByOwner(const Owner: ICheckoutablePDMEntity; Mode: GetCollectionMode): IPDMAttrValueCollection; dispid 203;
    procedure Refresh(const Item: ICheckoutablePDMEntity); dispid 204;
    procedure RefreshByIDs(const IDs: WideString; CheckOutID: Integer); dispid 205;
    function GetTypedCollectionByOwner(const Owner: ICheckoutablePDMEntity; 
                                       const AttrTypes: WideString; Mode: GetCollectionMode): IPDMAttrValueCollection; dispid 206;
    function GetCollectionByOwnersIDs(const OwnerIDs: WideString; LinkAttrs: WordBool; 
                                      const AttrTypes: WideString; Mode: GetCollectionMode; 
                                      const Checkout: ICheckOut): IPDMAttrValueCollection; dispid 207;
    function CreateEmptyCollection: IPDMAttrValueCollection; dispid 208;
    procedure ClearProperties(const AttrValue: IPDMAttributeValue); dispid 209;
  end;

// *********************************************************************//
// Interface: IPDMEntityEventSubscriber
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B027B489-395B-4E75-AA2F-A7BEEA7E2221}
// *********************************************************************//
  IPDMEntityEventSubscriber = interface(ILooEventSubscriber)
    ['{B027B489-395B-4E75-AA2F-A7BEEA7E2221}']
    procedure EntitySaved(const Entity: IPDMItem; ErrCode: Integer; const ErrMessage: WideString); safecall;
    procedure EntityDeleted(EntityID: Integer; EntityCode: EntityCodes; CheckOutID: Integer); safecall;
    procedure EntityInvalidated(const Entity: IPDMItem); safecall;
    procedure EntityPropsChanged(const Entity: IPDMItem; PropCode: Integer; OldValue: OleVariant; 
                                 NewValue: OleVariant); safecall;
    procedure EntityPropsDiscarded(const Entity: IPDMItem; PropCode: Integer); safecall;
    procedure EntitySubPropsChanged(const Entity: IPDMItem; const SubEntity: IPDMItem; 
                                    PropCode: Integer; Value: OleVariant); safecall;
    procedure EntitySubPropsDiscarded(const Entity: IPDMItem; const SubEntity: IPDMItem; 
                                      PropCode: Integer); safecall;
    procedure EntityComesToCheckout(EntityID: Integer; CheckOutID: Integer); safecall;
    procedure EntityLeaveCheckout(EntityID: Integer; CheckOutID: Integer); safecall;
  end;

// *********************************************************************//
// DispIntf:  IPDMEntityEventSubscriberDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B027B489-395B-4E75-AA2F-A7BEEA7E2221}
// *********************************************************************//
  IPDMEntityEventSubscriberDisp = dispinterface
    ['{B027B489-395B-4E75-AA2F-A7BEEA7E2221}']
    procedure EntitySaved(const Entity: IPDMItem; ErrCode: Integer; const ErrMessage: WideString); dispid 201;
    procedure EntityDeleted(EntityID: Integer; EntityCode: EntityCodes; CheckOutID: Integer); dispid 202;
    procedure EntityInvalidated(const Entity: IPDMItem); dispid 203;
    procedure EntityPropsChanged(const Entity: IPDMItem; PropCode: Integer; OldValue: OleVariant; 
                                 NewValue: OleVariant); dispid 204;
    procedure EntityPropsDiscarded(const Entity: IPDMItem; PropCode: Integer); dispid 205;
    procedure EntitySubPropsChanged(const Entity: IPDMItem; const SubEntity: IPDMItem; 
                                    PropCode: Integer; Value: OleVariant); dispid 206;
    procedure EntitySubPropsDiscarded(const Entity: IPDMItem; const SubEntity: IPDMItem; 
                                      PropCode: Integer); dispid 207;
    procedure EntityComesToCheckout(EntityID: Integer; CheckOutID: Integer); dispid 208;
    procedure EntityLeaveCheckout(EntityID: Integer; CheckOutID: Integer); dispid 209;
  end;

// *********************************************************************//
// Interface: IPDMEntityManager
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {EB63DB05-F5B0-4F31-A1E2-D51F9C38E95A}
// *********************************************************************//
  IPDMEntityManager = interface(IDispatch)
    ['{EB63DB05-F5B0-4F31-A1E2-D51F9C38E95A}']
    function GetObjectProvider: IPDMObjectProvider; safecall;
    function GetLinkProvider: IPDMLinkProvider; safecall;
    function GetAttrValueProvider: IPDMAttrValueProvider; safecall;
    function GetMetaData: ILoodsmanMetaData; safecall;
    function GetCheckoutList: ICheckOutList; safecall;
    function Get_DBConnection: ISimpleAPI2; safecall;
    procedure Set_DBConnection(const Value: ISimpleAPI2); safecall;
    procedure ClearAllItemsProperties; safecall;
    procedure RefreshAll; safecall;
    function GetUtils: ILoodsmanObjectsUtils; safecall;
    function Get_Logger: ILoodsmanLogger; safecall;
    procedure Set_Logger(const Value: ILoodsmanLogger); safecall;
    procedure UnInit; safecall;
    procedure Subscribe(const Callback: ILooEventSubscriber; CheckOutID: Integer); safecall;
    procedure UnSubscribe(const Callback: ILooEventSubscriber; CheckOutID: Integer); safecall;
    property DBConnection: ISimpleAPI2 read Get_DBConnection write Set_DBConnection;
    property Logger: ILoodsmanLogger read Get_Logger write Set_Logger;
  end;

// *********************************************************************//
// DispIntf:  IPDMEntityManagerDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {EB63DB05-F5B0-4F31-A1E2-D51F9C38E95A}
// *********************************************************************//
  IPDMEntityManagerDisp = dispinterface
    ['{EB63DB05-F5B0-4F31-A1E2-D51F9C38E95A}']
    function GetObjectProvider: IPDMObjectProvider; dispid 201;
    function GetLinkProvider: IPDMLinkProvider; dispid 202;
    function GetAttrValueProvider: IPDMAttrValueProvider; dispid 203;
    function GetMetaData: ILoodsmanMetaData; dispid 204;
    function GetCheckoutList: ICheckOutList; dispid 205;
    property DBConnection: ISimpleAPI2 dispid 206;
    procedure ClearAllItemsProperties; dispid 207;
    procedure RefreshAll; dispid 208;
    function GetUtils: ILoodsmanObjectsUtils; dispid 209;
    property Logger: ILoodsmanLogger dispid 210;
    procedure UnInit; dispid 211;
    procedure Subscribe(const Callback: ILooEventSubscriber; CheckOutID: Integer); dispid 212;
    procedure UnSubscribe(const Callback: ILooEventSubscriber; CheckOutID: Integer); dispid 213;
  end;

// *********************************************************************//
// Interface: IPDMFile2
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {1EEE30B3-F72B-45D7-B4CD-A62675637AD0}
// *********************************************************************//
  IPDMFile2 = interface(ICheckoutablePDMEntity)
    ['{1EEE30B3-F72B-45D7-B4CD-A62675637AD0}']
    function Get_FileOwner: IPDMObject2; safecall;
    function Get_FileNameInLoodsman: WideString; safecall;
    procedure Set_FileNameInLoodsman(const Value: WideString); safecall;
    function Get_FilePathInLoodsman: WideString; safecall;
    procedure Set_FilePathInLoodsman(const Value: WideString); safecall;
    function Get_Size: Integer; safecall;
    function Get_Created: Double; safecall;
    function Get_Modified: Double; safecall;
    function Get_ReadOnly: WordBool; safecall;
    function GetFileForOpen: WideString; safecall;
    function Get_UploadFrom: WideString; safecall;
    procedure Set_UploadFrom(const FileName: WideString); safecall;
    function Get_CRC: LongWord; safecall;
    property FileOwner: IPDMObject2 read Get_FileOwner;
    property FileNameInLoodsman: WideString read Get_FileNameInLoodsman write Set_FileNameInLoodsman;
    property FilePathInLoodsman: WideString read Get_FilePathInLoodsman write Set_FilePathInLoodsman;
    property Size: Integer read Get_Size;
    property Created: Double read Get_Created;
    property Modified: Double read Get_Modified;
    property ReadOnly: WordBool read Get_ReadOnly;
    property UploadFrom: WideString read Get_UploadFrom write Set_UploadFrom;
    property CRC: LongWord read Get_CRC;
  end;

// *********************************************************************//
// DispIntf:  IPDMFile2Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {1EEE30B3-F72B-45D7-B4CD-A62675637AD0}
// *********************************************************************//
  IPDMFile2Disp = dispinterface
    ['{1EEE30B3-F72B-45D7-B4CD-A62675637AD0}']
    property FileOwner: IPDMObject2 readonly dispid 213;
    property FileNameInLoodsman: WideString dispid 214;
    property FilePathInLoodsman: WideString dispid 215;
    property Size: Integer readonly dispid 216;
    property Created: Double readonly dispid 217;
    property Modified: Double readonly dispid 218;
    property ReadOnly: WordBool readonly dispid 219;
    function GetFileForOpen: WideString; dispid 220;
    property UploadFrom: WideString dispid 221;
    property CRC: LongWord readonly dispid 222;
    property CopyForCheckout: Integer readonly dispid 201;
    function InEditMode: WordBool; dispid 185;
    property Deleted: WordBool readonly dispid 186;
    property Valid: WordBool readonly dispid 187;
    property ExistsInDB: WordBool readonly dispid 188;
    property SourceEntity: IEditablePDMItem readonly dispid 189;
    function CreateEditableCopy: IEditablePDMItem; dispid 190;
    function SaveToDB(const CollisionResolver: ICollisionResolver): IEditablePDMItem; dispid 191;
    procedure DeleteItem; dispid 192;
    procedure ClearProperty(PropCode: Integer; NeedNotify: WordBool); dispid 193;
    function Changed: WordBool; dispid 194;
    property ID: Integer readonly dispid 169;
    property Name: WideString readonly dispid 170;
    property EntityCode: EntityCodes readonly dispid 171;
  end;

// *********************************************************************//
// Interface: IPDMFilesCollection
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {657F5237-FD07-49AC-B47A-EB6B0F34A2B9}
// *********************************************************************//
  IPDMFilesCollection = interface(IBasePDMCollection)
    ['{657F5237-FD07-49AC-B47A-EB6B0F34A2B9}']
    function Get_PDMFiles(Index: Integer): IPDMFile2; safecall;
    property PDMFiles[Index: Integer]: IPDMFile2 read Get_PDMFiles;
  end;

// *********************************************************************//
// DispIntf:  IPDMFilesCollectionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {657F5237-FD07-49AC-B47A-EB6B0F34A2B9}
// *********************************************************************//
  IPDMFilesCollectionDisp = dispinterface
    ['{657F5237-FD07-49AC-B47A-EB6B0F34A2B9}']
    property PDMFiles[Index: Integer]: IPDMFile2 readonly dispid 240;
    property Count: Integer readonly dispid 201;
    function Items(Index: Integer): IPDMItem; dispid 202;
    function ItemByName(const Name: WideString): IPDMItem; dispid 203;
    function ItemByID(ID: Integer): IPDMItem; dispid 204;
    function Add(const Item: IPDMItem): Integer; dispid 205;
    property UniqueNames: WordBool readonly dispid 206;
    procedure Delete(Index: Integer); dispid 207;
    procedure AppendCollection(const Collection: IBasePDMCollection); dispid 208;
    property ReadOnly: WordBool readonly dispid 209;
    property IDStr: WideString readonly dispid 211;
    procedure Clear; dispid 212;
    function IndexOf(const Item: IPDMItem): Integer; dispid 213;
    property MainEntityCode: Integer readonly dispid 214;
    function CollectionByNames(const Names: WideString): IBasePDMCollection; dispid 215;
    function CollectionByIDs(const IDs: WideString): IBasePDMCollection; dispid 216;
  end;

// *********************************************************************//
// Interface: IPDMAttributeValue
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {AB6C565B-A5C4-4E22-B447-316E8816E601}
// *********************************************************************//
  IPDMAttributeValue = interface(ICheckoutablePDMEntity)
    ['{AB6C565B-A5C4-4E22-B447-316E8816E601}']
    function Get_AttrOwner: IAttributedPDMEntity; safecall;
    function Get_AttrOwnerID: Integer; safecall;
    function Get_IsLinkAttr: WordBool; safecall;
    function Get_Attribute: IPDMAttribute2; safecall;
    function Get_Value: OleVariant; safecall;
    procedure Set_Value(Value: OleVariant); safecall;
    function Get_StrValue: WideString; safecall;
    function Get_UnitID: WideString; safecall;
    procedure Set_UnitID(const Value: WideString); safecall;
    function Get_UnitName: WideString; safecall;
    function Get_MeasureID: WideString; safecall;
    procedure Set_MeasureID(const Value: WideString); safecall;
    function Get_MeasureName: WideString; safecall;
    property AttrOwner: IAttributedPDMEntity read Get_AttrOwner;
    property AttrOwnerID: Integer read Get_AttrOwnerID;
    property IsLinkAttr: WordBool read Get_IsLinkAttr;
    property Attribute: IPDMAttribute2 read Get_Attribute;
    property Value: OleVariant read Get_Value write Set_Value;
    property StrValue: WideString read Get_StrValue;
    property UnitID: WideString read Get_UnitID write Set_UnitID;
    property UnitName: WideString read Get_UnitName;
    property MeasureID: WideString read Get_MeasureID write Set_MeasureID;
    property MeasureName: WideString read Get_MeasureName;
  end;

// *********************************************************************//
// DispIntf:  IPDMAttributeValueDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {AB6C565B-A5C4-4E22-B447-316E8816E601}
// *********************************************************************//
  IPDMAttributeValueDisp = dispinterface
    ['{AB6C565B-A5C4-4E22-B447-316E8816E601}']
    property AttrOwner: IAttributedPDMEntity readonly dispid 213;
    property AttrOwnerID: Integer readonly dispid 214;
    property IsLinkAttr: WordBool readonly dispid 215;
    property Attribute: IPDMAttribute2 readonly dispid 216;
    property Value: OleVariant dispid 217;
    property StrValue: WideString readonly dispid 218;
    property UnitID: WideString dispid 219;
    property UnitName: WideString readonly dispid 220;
    property MeasureID: WideString dispid 221;
    property MeasureName: WideString readonly dispid 222;
    property CopyForCheckout: Integer readonly dispid 201;
    function InEditMode: WordBool; dispid 185;
    property Deleted: WordBool readonly dispid 186;
    property Valid: WordBool readonly dispid 187;
    property ExistsInDB: WordBool readonly dispid 188;
    property SourceEntity: IEditablePDMItem readonly dispid 189;
    function CreateEditableCopy: IEditablePDMItem; dispid 190;
    function SaveToDB(const CollisionResolver: ICollisionResolver): IEditablePDMItem; dispid 191;
    procedure DeleteItem; dispid 192;
    procedure ClearProperty(PropCode: Integer; NeedNotify: WordBool); dispid 193;
    function Changed: WordBool; dispid 194;
    property ID: Integer readonly dispid 169;
    property Name: WideString readonly dispid 170;
    property EntityCode: EntityCodes readonly dispid 171;
  end;

// *********************************************************************//
// Interface: IAttributedPDMEntity
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9AAA405F-4AB5-41D7-9255-F20F70A23B2C}
// *********************************************************************//
  IAttributedPDMEntity = interface(ICheckoutablePDMEntity)
    ['{9AAA405F-4AB5-41D7-9255-F20F70A23B2C}']
    function Get_Attrs: IPDMEntityAttrValues; safecall;
    property Attrs: IPDMEntityAttrValues read Get_Attrs;
  end;

// *********************************************************************//
// DispIntf:  IAttributedPDMEntityDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9AAA405F-4AB5-41D7-9255-F20F70A23B2C}
// *********************************************************************//
  IAttributedPDMEntityDisp = dispinterface
    ['{9AAA405F-4AB5-41D7-9255-F20F70A23B2C}']
    property Attrs: IPDMEntityAttrValues readonly dispid 213;
    property CopyForCheckout: Integer readonly dispid 201;
    function InEditMode: WordBool; dispid 185;
    property Deleted: WordBool readonly dispid 186;
    property Valid: WordBool readonly dispid 187;
    property ExistsInDB: WordBool readonly dispid 188;
    property SourceEntity: IEditablePDMItem readonly dispid 189;
    function CreateEditableCopy: IEditablePDMItem; dispid 190;
    function SaveToDB(const CollisionResolver: ICollisionResolver): IEditablePDMItem; dispid 191;
    procedure DeleteItem; dispid 192;
    procedure ClearProperty(PropCode: Integer; NeedNotify: WordBool); dispid 193;
    function Changed: WordBool; dispid 194;
    property ID: Integer readonly dispid 169;
    property Name: WideString readonly dispid 170;
    property EntityCode: EntityCodes readonly dispid 171;
  end;

// *********************************************************************//
// Interface: IPDMLinkCollection
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F8E3401D-E1B8-40A6-886C-CAE64C58425C}
// *********************************************************************//
  IPDMLinkCollection = interface(IBasePDMCollection)
    ['{F8E3401D-E1B8-40A6-886C-CAE64C58425C}']
    function Get_ParentObjects: IPDMObjectCollection; safecall;
    function Get_ChildObjects: IPDMObjectCollection; safecall;
    function Get_LinksAttrs: IPDMAttrValueCollection; safecall;
    function Get_Links(Index: Integer): IPDMLink2; safecall;
    function LinksByParent(const PDMObject: IPDMObject2): IPDMLinkCollection; safecall;
    function LinksByChild(const PDMObject: IPDMObject2): IPDMLinkCollection; safecall;
    function LinksByTypes(const LinkTypes: WideString; InverseCondition: WordBool): IPDMLinkCollection; safecall;
    function Get_LinksTypes: WideString; safecall;
    function HorizontalLinks: IPDMLinkCollection; safecall;
    property ParentObjects: IPDMObjectCollection read Get_ParentObjects;
    property ChildObjects: IPDMObjectCollection read Get_ChildObjects;
    property LinksAttrs: IPDMAttrValueCollection read Get_LinksAttrs;
    property Links[Index: Integer]: IPDMLink2 read Get_Links;
    property LinksTypes: WideString read Get_LinksTypes;
  end;

// *********************************************************************//
// DispIntf:  IPDMLinkCollectionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F8E3401D-E1B8-40A6-886C-CAE64C58425C}
// *********************************************************************//
  IPDMLinkCollectionDisp = dispinterface
    ['{F8E3401D-E1B8-40A6-886C-CAE64C58425C}']
    property ParentObjects: IPDMObjectCollection readonly dispid 240;
    property ChildObjects: IPDMObjectCollection readonly dispid 241;
    property LinksAttrs: IPDMAttrValueCollection readonly dispid 242;
    property Links[Index: Integer]: IPDMLink2 readonly dispid 243;
    function LinksByParent(const PDMObject: IPDMObject2): IPDMLinkCollection; dispid 245;
    function LinksByChild(const PDMObject: IPDMObject2): IPDMLinkCollection; dispid 246;
    function LinksByTypes(const LinkTypes: WideString; InverseCondition: WordBool): IPDMLinkCollection; dispid 247;
    property LinksTypes: WideString readonly dispid 248;
    function HorizontalLinks: IPDMLinkCollection; dispid 249;
    property Count: Integer readonly dispid 201;
    function Items(Index: Integer): IPDMItem; dispid 202;
    function ItemByName(const Name: WideString): IPDMItem; dispid 203;
    function ItemByID(ID: Integer): IPDMItem; dispid 204;
    function Add(const Item: IPDMItem): Integer; dispid 205;
    property UniqueNames: WordBool readonly dispid 206;
    procedure Delete(Index: Integer); dispid 207;
    procedure AppendCollection(const Collection: IBasePDMCollection); dispid 208;
    property ReadOnly: WordBool readonly dispid 209;
    property IDStr: WideString readonly dispid 211;
    procedure Clear; dispid 212;
    function IndexOf(const Item: IPDMItem): Integer; dispid 213;
    property MainEntityCode: Integer readonly dispid 214;
    function CollectionByNames(const Names: WideString): IBasePDMCollection; dispid 215;
    function CollectionByIDs(const IDs: WideString): IBasePDMCollection; dispid 216;
  end;

// *********************************************************************//
// Interface: IPDMLinkProvider
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D12BC5B1-EF6D-4FB9-B078-1966D71E6DF2}
// *********************************************************************//
  IPDMLinkProvider = interface(IDispatch)
    ['{D12BC5B1-EF6D-4FB9-B078-1966D71E6DF2}']
    function GetLink(ID: Integer; Mode: GetCollectionMode; const Checkout: ICheckOut): IPDMLink2; safecall;
    function GetCollectionByIDs(const IDs: WideString; Mode: GetCollectionMode; 
                                const Checkout: ICheckOut; WithObjects: WordBool): IPDMLinkCollection; safecall;
    function GetCollectionByObjectsIDs(const OwnerIDs: WideString; Kind: LinkKinds; 
                                       const LinkTypes: WideString; Mode: GetCollectionMode; 
                                       const Checkout: ICheckOut): IPDMLinkCollection; safecall;
    procedure Refresh(const Item: ICheckoutablePDMEntity); safecall;
    procedure RefreshByIDs(const IDs: WideString; CheckOutID: Integer); safecall;
    function CreateEmptyCollection: IPDMLinkCollection; safecall;
    procedure ClearProperties(const Link: IPDMLink2; WithSubItems: WordBool); safecall;
  end;

// *********************************************************************//
// DispIntf:  IPDMLinkProviderDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D12BC5B1-EF6D-4FB9-B078-1966D71E6DF2}
// *********************************************************************//
  IPDMLinkProviderDisp = dispinterface
    ['{D12BC5B1-EF6D-4FB9-B078-1966D71E6DF2}']
    function GetLink(ID: Integer; Mode: GetCollectionMode; const Checkout: ICheckOut): IPDMLink2; dispid 201;
    function GetCollectionByIDs(const IDs: WideString; Mode: GetCollectionMode; 
                                const Checkout: ICheckOut; WithObjects: WordBool): IPDMLinkCollection; dispid 202;
    function GetCollectionByObjectsIDs(const OwnerIDs: WideString; Kind: LinkKinds; 
                                       const LinkTypes: WideString; Mode: GetCollectionMode; 
                                       const Checkout: ICheckOut): IPDMLinkCollection; dispid 203;
    procedure Refresh(const Item: ICheckoutablePDMEntity); dispid 204;
    procedure RefreshByIDs(const IDs: WideString; CheckOutID: Integer); dispid 205;
    function CreateEmptyCollection: IPDMLinkCollection; dispid 206;
    procedure ClearProperties(const Link: IPDMLink2; WithSubItems: WordBool); dispid 207;
  end;

// *********************************************************************//
// Interface: IPDMLinkType
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F5884E23-78D8-4F49-8DD4-3002CCF9A15B}
// *********************************************************************//
  IPDMLinkType = interface(IDispatch)
    ['{F5884E23-78D8-4F49-8DD4-3002CCF9A15B}']
    function Get_ID: Integer; safecall;
    function Get_Name: WideString; safecall;
    function Get_InverseName: WideString; safecall;
    function Get_Horizontal: WordBool; safecall;
    function Get_Order: Integer; safecall;
    function Get_IconIndex: Integer; safecall;
    property ID: Integer read Get_ID;
    property Name: WideString read Get_Name;
    property InverseName: WideString read Get_InverseName;
    property Horizontal: WordBool read Get_Horizontal;
    property Order: Integer read Get_Order;
    property IconIndex: Integer read Get_IconIndex;
  end;

// *********************************************************************//
// DispIntf:  IPDMLinkTypeDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F5884E23-78D8-4F49-8DD4-3002CCF9A15B}
// *********************************************************************//
  IPDMLinkTypeDisp = dispinterface
    ['{F5884E23-78D8-4F49-8DD4-3002CCF9A15B}']
    property ID: Integer readonly dispid 201;
    property Name: WideString readonly dispid 202;
    property InverseName: WideString readonly dispid 203;
    property Horizontal: WordBool readonly dispid 204;
    property Order: Integer readonly dispid 205;
    property IconIndex: Integer readonly dispid 206;
  end;

// *********************************************************************//
// Interface: IPDMObject2
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {5E3BCC12-71E9-4771-AE8B-94116EA6A7CB}
// *********************************************************************//
  IPDMObject2 = interface(IAttributedPDMEntity)
    ['{5E3BCC12-71E9-4771-AE8B-94116EA6A7CB}']
    function Get_TypeName: WideString; safecall;
    function Get_StateName: WideString; safecall;
    procedure Set_StateName(const Value: WideString); safecall;
    function Get_OriginalProduct: WideString; safecall;
    function Get_Version: WideString; safecall;
    function Get_IsDocument: WordBool; safecall;
    function Get_ExistStatus: Integer; safecall;
    function Get_NextStatesIDs: WideString; safecall;
    function Get_IsProject: WordBool; safecall;
    procedure Set_IsProject(Value: WordBool); safecall;
    function Get_SecondaryViewFileName: WideString; safecall;
    function Get_SourceVersion: IPDMObject2; safecall;
    function Get_Access: IObjectAccessInfo; safecall;
    function Get_AccessLevel: Integer; safecall;
    function Get_LockInfo: ILockInfo; safecall;
    function Get_Creator: WideString; safecall;
    function Get_CreatorFullName: WideString; safecall;
    function Get_DateOfCreate: Double; safecall;
    function Get_Links: IPDMObjectLinks; safecall;
    function Get_Files: IPDMObjectFiles; safecall;
    function Get_Source: WideString; safecall;
    function Get_DateOfModify: Double; safecall;
    procedure SetNewProduct(const Value: WideString); safecall;
    function Get_Signed: WordBool; safecall;
    function Get_SecondaryViewFileExt: WideString; safecall;
    function Get_LastChangeTime: Double; safecall;
    function Get_LastChangeLinksTime: Double; safecall;
    procedure ClearAllProperties(NeedNotify: WordBool; NeedClearCollections: Integer); safecall;
    property TypeName: WideString read Get_TypeName;
    property StateName: WideString read Get_StateName write Set_StateName;
    property OriginalProduct: WideString read Get_OriginalProduct;
    property Version: WideString read Get_Version;
    property IsDocument: WordBool read Get_IsDocument;
    property ExistStatus: Integer read Get_ExistStatus;
    property NextStatesIDs: WideString read Get_NextStatesIDs;
    property IsProject: WordBool read Get_IsProject write Set_IsProject;
    property SecondaryViewFileName: WideString read Get_SecondaryViewFileName;
    property SourceVersion: IPDMObject2 read Get_SourceVersion;
    property Access: IObjectAccessInfo read Get_Access;
    property AccessLevel: Integer read Get_AccessLevel;
    property LockInfo: ILockInfo read Get_LockInfo;
    property Creator: WideString read Get_Creator;
    property CreatorFullName: WideString read Get_CreatorFullName;
    property DateOfCreate: Double read Get_DateOfCreate;
    property Links: IPDMObjectLinks read Get_Links;
    property Files: IPDMObjectFiles read Get_Files;
    property Source: WideString read Get_Source;
    property DateOfModify: Double read Get_DateOfModify;
    property Signed: WordBool read Get_Signed;
    property SecondaryViewFileExt: WideString read Get_SecondaryViewFileExt;
    property LastChangeTime: Double read Get_LastChangeTime;
    property LastChangeLinksTime: Double read Get_LastChangeLinksTime;
  end;

// *********************************************************************//
// DispIntf:  IPDMObject2Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {5E3BCC12-71E9-4771-AE8B-94116EA6A7CB}
// *********************************************************************//
  IPDMObject2Disp = dispinterface
    ['{5E3BCC12-71E9-4771-AE8B-94116EA6A7CB}']
    property TypeName: WideString readonly dispid 218;
    property StateName: WideString dispid 219;
    property OriginalProduct: WideString readonly dispid 220;
    property Version: WideString readonly dispid 221;
    property IsDocument: WordBool readonly dispid 222;
    property ExistStatus: Integer readonly dispid 223;
    property NextStatesIDs: WideString readonly dispid 224;
    property IsProject: WordBool dispid 226;
    property SecondaryViewFileName: WideString readonly dispid 227;
    property SourceVersion: IPDMObject2 readonly dispid 228;
    property Access: IObjectAccessInfo readonly dispid 229;
    property AccessLevel: Integer readonly dispid 230;
    property LockInfo: ILockInfo readonly dispid 231;
    property Creator: WideString readonly dispid 232;
    property CreatorFullName: WideString readonly dispid 233;
    property DateOfCreate: Double readonly dispid 234;
    property Links: IPDMObjectLinks readonly dispid 235;
    property Files: IPDMObjectFiles readonly dispid 237;
    property Source: WideString readonly dispid 238;
    property DateOfModify: Double readonly dispid 239;
    procedure SetNewProduct(const Value: WideString); dispid 240;
    property Signed: WordBool readonly dispid 241;
    property SecondaryViewFileExt: WideString readonly dispid 242;
    property LastChangeTime: Double readonly dispid 243;
    property LastChangeLinksTime: Double readonly dispid 244;
    procedure ClearAllProperties(NeedNotify: WordBool; NeedClearCollections: Integer); dispid 245;
    property Attrs: IPDMEntityAttrValues readonly dispid 213;
    property CopyForCheckout: Integer readonly dispid 201;
    function InEditMode: WordBool; dispid 185;
    property Deleted: WordBool readonly dispid 186;
    property Valid: WordBool readonly dispid 187;
    property ExistsInDB: WordBool readonly dispid 188;
    property SourceEntity: IEditablePDMItem readonly dispid 189;
    function CreateEditableCopy: IEditablePDMItem; dispid 190;
    function SaveToDB(const CollisionResolver: ICollisionResolver): IEditablePDMItem; dispid 191;
    procedure DeleteItem; dispid 192;
    procedure ClearProperty(PropCode: Integer; NeedNotify: WordBool); dispid 193;
    function Changed: WordBool; dispid 194;
    property ID: Integer readonly dispid 169;
    property Name: WideString readonly dispid 170;
    property EntityCode: EntityCodes readonly dispid 171;
  end;

// *********************************************************************//
// Interface: IPDMObjectCollection
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {BF85C681-9CAD-43DF-A720-26A9F2462FDA}
// *********************************************************************//
  IPDMObjectCollection = interface(IBasePDMCollection)
    ['{BF85C681-9CAD-43DF-A720-26A9F2462FDA}']
    function Get_ObjectAttrs: IPDMAttrValueCollection; safecall;
    function Get_PDMObjects(Index: Integer): IPDMObject2; safecall;
    function ObjectsByTypes(const ObjTypes: WideString; InverseCondition: WordBool): IPDMObjectCollection; safecall;
    function ObjectsByStates(const ObjStates: WideString; InverseCondition: WordBool): IPDMObjectCollection; safecall;
    property ObjectAttrs: IPDMAttrValueCollection read Get_ObjectAttrs;
    property PDMObjects[Index: Integer]: IPDMObject2 read Get_PDMObjects;
  end;

// *********************************************************************//
// DispIntf:  IPDMObjectCollectionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {BF85C681-9CAD-43DF-A720-26A9F2462FDA}
// *********************************************************************//
  IPDMObjectCollectionDisp = dispinterface
    ['{BF85C681-9CAD-43DF-A720-26A9F2462FDA}']
    property ObjectAttrs: IPDMAttrValueCollection readonly dispid 240;
    property PDMObjects[Index: Integer]: IPDMObject2 readonly dispid 241;
    function ObjectsByTypes(const ObjTypes: WideString; InverseCondition: WordBool): IPDMObjectCollection; dispid 242;
    function ObjectsByStates(const ObjStates: WideString; InverseCondition: WordBool): IPDMObjectCollection; dispid 243;
    property Count: Integer readonly dispid 201;
    function Items(Index: Integer): IPDMItem; dispid 202;
    function ItemByName(const Name: WideString): IPDMItem; dispid 203;
    function ItemByID(ID: Integer): IPDMItem; dispid 204;
    function Add(const Item: IPDMItem): Integer; dispid 205;
    property UniqueNames: WordBool readonly dispid 206;
    procedure Delete(Index: Integer); dispid 207;
    procedure AppendCollection(const Collection: IBasePDMCollection); dispid 208;
    property ReadOnly: WordBool readonly dispid 209;
    property IDStr: WideString readonly dispid 211;
    procedure Clear; dispid 212;
    function IndexOf(const Item: IPDMItem): Integer; dispid 213;
    property MainEntityCode: Integer readonly dispid 214;
    function CollectionByNames(const Names: WideString): IBasePDMCollection; dispid 215;
    function CollectionByIDs(const IDs: WideString): IBasePDMCollection; dispid 216;
  end;

// *********************************************************************//
// Interface: IPDMObjectLinks
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {EB4BAAB7-AEF7-426E-B820-967E265B6382}
// *********************************************************************//
  IPDMObjectLinks = interface(IDispatch)
    ['{EB4BAAB7-AEF7-426E-B820-967E265B6382}']
    function Get_AllLinks: IPDMLinkCollection; safecall;
    function LoadLinks(Kind: LinkKinds; const LinkTypes: WideString; Mode: GetCollectionMode): IPDMLinkCollection; safecall;
    function LoadLinksWithAttrs(Kind: LinkKinds; const LinkTypes: WideString; 
                                Mode: GetCollectionMode): IPDMLinkCollection; safecall;
    function AddLink(const LinkType: WideString; const ToObject: IPDMObject2; Inverse: WordBool): IPDMLink2; safecall;
    procedure Delete(const Link: IPDMLink2); safecall;
    function Get_Initialized: WordBool; safecall;
    property AllLinks: IPDMLinkCollection read Get_AllLinks;
    property Initialized: WordBool read Get_Initialized;
  end;

// *********************************************************************//
// DispIntf:  IPDMObjectLinksDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {EB4BAAB7-AEF7-426E-B820-967E265B6382}
// *********************************************************************//
  IPDMObjectLinksDisp = dispinterface
    ['{EB4BAAB7-AEF7-426E-B820-967E265B6382}']
    property AllLinks: IPDMLinkCollection readonly dispid 201;
    function LoadLinks(Kind: LinkKinds; const LinkTypes: WideString; Mode: GetCollectionMode): IPDMLinkCollection; dispid 202;
    function LoadLinksWithAttrs(Kind: LinkKinds; const LinkTypes: WideString; 
                                Mode: GetCollectionMode): IPDMLinkCollection; dispid 203;
    function AddLink(const LinkType: WideString; const ToObject: IPDMObject2; Inverse: WordBool): IPDMLink2; dispid 204;
    procedure Delete(const Link: IPDMLink2); dispid 205;
    property Initialized: WordBool readonly dispid 206;
  end;

// *********************************************************************//
// Interface: IPDMObjectProvider
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {816E35A7-527D-4E75-93D0-B4E2A398AFCA}
// *********************************************************************//
  IPDMObjectProvider = interface(IDispatch)
    ['{816E35A7-527D-4E75-93D0-B4E2A398AFCA}']
    function GetObject(ID: Integer; Mode: GetCollectionMode; const Checkout: ICheckOut): IPDMObject2; safecall;
    function GetCollectionByIDs(const IDs: WideString; Mode: GetCollectionMode; 
                                const Checkout: ICheckOut; WithAttrs: WordBool): IPDMObjectCollection; safecall;
    function GetProjectListCollection(Mode: GetCollectionMode; const Checkout: ICheckOut; 
                                      WithAttrs: WordBool): IPDMObjectCollection; safecall;
    function GetCollectionByUserSet(const UserSetName: WideString; Mode: GetCollectionMode; 
                                    const Checkout: ICheckOut; WithAttrs: WordBool): IPDMObjectCollection; safecall;
    function GetCollectionByLinks(const LinksIDs: WideString; ChildObjects: WordBool; 
                                  const Checkout: ICheckOut): IPDMObjectCollection; safecall;
    function GetEditableObject(const ASourceObject: IPDMObject2): IPDMObject2; safecall;
    function SaveToDB(const PDMObject: IPDMObject2; const CollisionResolver: ICollisionResolver): IPDMObject2; safecall;
    procedure DeleteObject(const PDMObject: IPDMObject2); safecall;
    procedure Refresh(const Item: ICheckoutablePDMEntity); safecall;
    procedure RefreshByIDs(const IDs: WideString; CheckOutID: Integer); safecall;
    function CreateVersion(const SrcVersion: IPDMObject2; CopyFiles: WordBool; 
                           CopyAccess: WordBool; Group: Integer; const Checkout: ICheckOut): IPDMObject2; safecall;
    function CreateProject(const ObjectType: WideString; const State: WideString; 
                           const Name: WideString): IPDMObject2; safecall;
    function CreateObject(const ObjectType: WideString; const State: WideString; 
                          const Name: WideString; const Checkout: ICheckOut): IPDMObject2; safecall;
    function CreateEmptyCollection: IPDMObjectCollection; safecall;
    procedure ClearProperties(const PDMObject: IPDMObject2; WithSubItems: WordBool); safecall;
    procedure UpdateObjectsProperty(const IDs: WideString; const Checkout: ICheckOut; 
                                    PropCode: Integer); safecall;
  end;

// *********************************************************************//
// DispIntf:  IPDMObjectProviderDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {816E35A7-527D-4E75-93D0-B4E2A398AFCA}
// *********************************************************************//
  IPDMObjectProviderDisp = dispinterface
    ['{816E35A7-527D-4E75-93D0-B4E2A398AFCA}']
    function GetObject(ID: Integer; Mode: GetCollectionMode; const Checkout: ICheckOut): IPDMObject2; dispid 201;
    function GetCollectionByIDs(const IDs: WideString; Mode: GetCollectionMode; 
                                const Checkout: ICheckOut; WithAttrs: WordBool): IPDMObjectCollection; dispid 202;
    function GetProjectListCollection(Mode: GetCollectionMode; const Checkout: ICheckOut; 
                                      WithAttrs: WordBool): IPDMObjectCollection; dispid 203;
    function GetCollectionByUserSet(const UserSetName: WideString; Mode: GetCollectionMode; 
                                    const Checkout: ICheckOut; WithAttrs: WordBool): IPDMObjectCollection; dispid 204;
    function GetCollectionByLinks(const LinksIDs: WideString; ChildObjects: WordBool; 
                                  const Checkout: ICheckOut): IPDMObjectCollection; dispid 205;
    function GetEditableObject(const ASourceObject: IPDMObject2): IPDMObject2; dispid 206;
    function SaveToDB(const PDMObject: IPDMObject2; const CollisionResolver: ICollisionResolver): IPDMObject2; dispid 207;
    procedure DeleteObject(const PDMObject: IPDMObject2); dispid 208;
    procedure Refresh(const Item: ICheckoutablePDMEntity); dispid 209;
    procedure RefreshByIDs(const IDs: WideString; CheckOutID: Integer); dispid 210;
    function CreateVersion(const SrcVersion: IPDMObject2; CopyFiles: WordBool; 
                           CopyAccess: WordBool; Group: Integer; const Checkout: ICheckOut): IPDMObject2; dispid 211;
    function CreateProject(const ObjectType: WideString; const State: WideString; 
                           const Name: WideString): IPDMObject2; dispid 212;
    function CreateObject(const ObjectType: WideString; const State: WideString; 
                          const Name: WideString; const Checkout: ICheckOut): IPDMObject2; dispid 213;
    function CreateEmptyCollection: IPDMObjectCollection; dispid 214;
    procedure ClearProperties(const PDMObject: IPDMObject2; WithSubItems: WordBool); dispid 215;
    procedure UpdateObjectsProperty(const IDs: WideString; const Checkout: ICheckOut; 
                                    PropCode: Integer); dispid 216;
  end;

// *********************************************************************//
// Interface: IPDMObjectState
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B7B5545F-3424-46BE-BB9A-2D0F751265C5}
// *********************************************************************//
  IPDMObjectState = interface(IDispatch)
    ['{B7B5545F-3424-46BE-BB9A-2D0F751265C5}']
    function Get_ID: Integer; safecall;
    function Get_Name: WideString; safecall;
    function Get_IconIndex: Integer; safecall;
    property ID: Integer read Get_ID;
    property Name: WideString read Get_Name;
    property IconIndex: Integer read Get_IconIndex;
  end;

// *********************************************************************//
// DispIntf:  IPDMObjectStateDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B7B5545F-3424-46BE-BB9A-2D0F751265C5}
// *********************************************************************//
  IPDMObjectStateDisp = dispinterface
    ['{B7B5545F-3424-46BE-BB9A-2D0F751265C5}']
    property ID: Integer readonly dispid 201;
    property Name: WideString readonly dispid 202;
    property IconIndex: Integer readonly dispid 203;
  end;

// *********************************************************************//
// Interface: IPDMObjectType
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {1EABCFFA-84FA-4B8C-A756-58014DA93B61}
// *********************************************************************//
  IPDMObjectType = interface(IDispatch)
    ['{1EABCFFA-84FA-4B8C-A756-58014DA93B61}']
    function Get_AttrList: IBasePDMCollection; safecall;
    function IsObligatoryAttr(const Attr: IPDMAttribute2): WordBool; safecall;
    function GetAttrLimits(const Attr: IPDMAttribute2): WideString; safecall;
    function Get_Name: WideString; safecall;
    function Get_ID: Integer; safecall;
    function Get_Cards: WideString; safecall;
    function Get_Links: IBasePDMCollection; safecall;
    function Get_IconIndex: Integer; safecall;
    function Get_CreationStates: IBasePDMCollection; safecall;
    function Get_StateTransitions: IBasePDMCollection; safecall;
    function Get_AvailableLinks: WideString; safecall;
    function Get_AvailableInverseLinks: WideString; safecall;
    function Get_AvailableHorizontalLinks: WideString; safecall;
    function Get_HasVirtualLinks: WordBool; safecall;
    function Get_TypeKeyAttr: WideString; safecall;
    function Get_DocumentType: WordBool; safecall;
    function Get_Versioning: WordBool; safecall;
    property AttrList: IBasePDMCollection read Get_AttrList;
    property Name: WideString read Get_Name;
    property ID: Integer read Get_ID;
    property Cards: WideString read Get_Cards;
    property Links: IBasePDMCollection read Get_Links;
    property IconIndex: Integer read Get_IconIndex;
    property CreationStates: IBasePDMCollection read Get_CreationStates;
    property StateTransitions: IBasePDMCollection read Get_StateTransitions;
    property AvailableLinks: WideString read Get_AvailableLinks;
    property AvailableInverseLinks: WideString read Get_AvailableInverseLinks;
    property AvailableHorizontalLinks: WideString read Get_AvailableHorizontalLinks;
    property HasVirtualLinks: WordBool read Get_HasVirtualLinks;
    property TypeKeyAttr: WideString read Get_TypeKeyAttr;
    property DocumentType: WordBool read Get_DocumentType;
    property Versioning: WordBool read Get_Versioning;
  end;

// *********************************************************************//
// DispIntf:  IPDMObjectTypeDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {1EABCFFA-84FA-4B8C-A756-58014DA93B61}
// *********************************************************************//
  IPDMObjectTypeDisp = dispinterface
    ['{1EABCFFA-84FA-4B8C-A756-58014DA93B61}']
    property AttrList: IBasePDMCollection readonly dispid 201;
    function IsObligatoryAttr(const Attr: IPDMAttribute2): WordBool; dispid 202;
    function GetAttrLimits(const Attr: IPDMAttribute2): WideString; dispid 203;
    property Name: WideString readonly dispid 204;
    property ID: Integer readonly dispid 205;
    property Cards: WideString readonly dispid 206;
    property Links: IBasePDMCollection readonly dispid 207;
    property IconIndex: Integer readonly dispid 208;
    property CreationStates: IBasePDMCollection readonly dispid 209;
    property StateTransitions: IBasePDMCollection readonly dispid 210;
    property AvailableLinks: WideString readonly dispid 211;
    property AvailableInverseLinks: WideString readonly dispid 212;
    property AvailableHorizontalLinks: WideString readonly dispid 213;
    property HasVirtualLinks: WordBool readonly dispid 214;
    property TypeKeyAttr: WideString readonly dispid 215;
    property DocumentType: WordBool readonly dispid 216;
    property Versioning: WordBool readonly dispid 217;
  end;

// *********************************************************************//
// Interface: IPDMTreeEntityEventSubscriber
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {99B34C0E-7314-4BE6-AFCC-5855135374B8}
// *********************************************************************//
  IPDMTreeEntityEventSubscriber = interface(ILooEventSubscriber)
    ['{99B34C0E-7314-4BE6-AFCC-5855135374B8}']
    procedure ObjectDeleted(const Entity: ICheckoutablePDMEntity; JustLoaded: WordBool); safecall;
    procedure ObjectPropsChanged(const Entity: ICheckoutablePDMEntity; PropType: EntityPropTypes; 
                                 JustLoaded: WordBool); safecall;
    procedure ObjectPropsDiscarded(const Entity: ICheckoutablePDMEntity; PropType: EntityPropTypes; 
                                   JustLoaded: WordBool); safecall;
  end;

// *********************************************************************//
// DispIntf:  IPDMTreeEntityEventSubscriberDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {99B34C0E-7314-4BE6-AFCC-5855135374B8}
// *********************************************************************//
  IPDMTreeEntityEventSubscriberDisp = dispinterface
    ['{99B34C0E-7314-4BE6-AFCC-5855135374B8}']
    procedure ObjectDeleted(const Entity: ICheckoutablePDMEntity; JustLoaded: WordBool); dispid 202;
    procedure ObjectPropsChanged(const Entity: ICheckoutablePDMEntity; PropType: EntityPropTypes; 
                                 JustLoaded: WordBool); dispid 204;
    procedure ObjectPropsDiscarded(const Entity: ICheckoutablePDMEntity; PropType: EntityPropTypes; 
                                   JustLoaded: WordBool); dispid 205;
  end;

// *********************************************************************//
// Interface: IStateTransition
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {2F90C8C7-91FF-4553-8871-5A08D2A16C8F}
// *********************************************************************//
  IStateTransition = interface(IDispatch)
    ['{2F90C8C7-91FF-4553-8871-5A08D2A16C8F}']
    function Get_CurrentState: IPDMObjectState; safecall;
    function Get_NecessarySignRoles: WideString; safecall;
    function Get_NextState: IPDMObjectState; safecall;
    property CurrentState: IPDMObjectState read Get_CurrentState;
    property NecessarySignRoles: WideString read Get_NecessarySignRoles;
    property NextState: IPDMObjectState read Get_NextState;
  end;

// *********************************************************************//
// DispIntf:  IStateTransitionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {2F90C8C7-91FF-4553-8871-5A08D2A16C8F}
// *********************************************************************//
  IStateTransitionDisp = dispinterface
    ['{2F90C8C7-91FF-4553-8871-5A08D2A16C8F}']
    property CurrentState: IPDMObjectState readonly dispid 201;
    property NecessarySignRoles: WideString readonly dispid 202;
    property NextState: IPDMObjectState readonly dispid 203;
  end;

// *********************************************************************//
// Interface: ISubscriptionSource
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B1DCFAE3-6D0E-44C0-A1AF-95F024AF297F}
// *********************************************************************//
  ISubscriptionSource = interface(IDispatch)
    ['{B1DCFAE3-6D0E-44C0-A1AF-95F024AF297F}']
    function Get_SubscribersCount: Integer; safecall;
    function Subscribers(Index: Integer): ILooEventSubscriber; safecall;
    function AddSubscriber(const Subscriber: ILooEventSubscriber): Integer; safecall;
    function RemoveSubscriber(const Subscriber: ILooEventSubscriber): Integer; safecall;
    property SubscribersCount: Integer read Get_SubscribersCount;
  end;

// *********************************************************************//
// DispIntf:  ISubscriptionSourceDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B1DCFAE3-6D0E-44C0-A1AF-95F024AF297F}
// *********************************************************************//
  ISubscriptionSourceDisp = dispinterface
    ['{B1DCFAE3-6D0E-44C0-A1AF-95F024AF297F}']
    property SubscribersCount: Integer readonly dispid 201;
    function Subscribers(Index: Integer): ILooEventSubscriber; dispid 202;
    function AddSubscriber(const Subscriber: ILooEventSubscriber): Integer; dispid 203;
    function RemoveSubscriber(const Subscriber: ILooEventSubscriber): Integer; dispid 204;
  end;

// *********************************************************************//
// Interface: IPDMEntityAttrValues
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {272E1F12-729A-4B4A-A908-0487045896AF}
// *********************************************************************//
  IPDMEntityAttrValues = interface(IDispatch)
    ['{272E1F12-729A-4B4A-A908-0487045896AF}']
    function Get_AllAttrValues: IPDMAttrValueCollection; safecall;
    function LoadAttrValues(const AttrValueTypes: WideString; Mode: GetCollectionMode): IPDMAttrValueCollection; safecall;
    function AddAttrValue(const AttrType: WideString; AttrValue: OleVariant; 
                          const MeasureID: WideString): IPDMAttributeValue; safecall;
    procedure Delete(const Attr: IPDMAttributeValue); safecall;
    function Get_AvailableAttrTypes: WideString; safecall;
    property AllAttrValues: IPDMAttrValueCollection read Get_AllAttrValues;
    property AvailableAttrTypes: WideString read Get_AvailableAttrTypes;
  end;

// *********************************************************************//
// DispIntf:  IPDMEntityAttrValuesDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {272E1F12-729A-4B4A-A908-0487045896AF}
// *********************************************************************//
  IPDMEntityAttrValuesDisp = dispinterface
    ['{272E1F12-729A-4B4A-A908-0487045896AF}']
    property AllAttrValues: IPDMAttrValueCollection readonly dispid 201;
    function LoadAttrValues(const AttrValueTypes: WideString; Mode: GetCollectionMode): IPDMAttrValueCollection; dispid 202;
    function AddAttrValue(const AttrType: WideString; AttrValue: OleVariant; 
                          const MeasureID: WideString): IPDMAttributeValue; dispid 203;
    procedure Delete(const Attr: IPDMAttributeValue); dispid 204;
    property AvailableAttrTypes: WideString readonly dispid 205;
  end;

// *********************************************************************//
// Interface: IPDMObjectFiles
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {BDB1ACFA-D69B-49E3-B000-9220530F14A1}
// *********************************************************************//
  IPDMObjectFiles = interface(IDispatch)
    ['{BDB1ACFA-D69B-49E3-B000-9220530F14A1}']
    function Get_AllFiles: IPDMFilesCollection; safecall;
    function LoadFiles(Mode: GetCollectionMode): IPDMFilesCollection; safecall;
    function AddFile(const UploadFrom: WideString; const NewFileName: WideString; 
                     const NewFilePath: WideString): IPDMFile2; safecall;
    procedure Delete(const PDMFile: IPDMFile2); safecall;
    property AllFiles: IPDMFilesCollection read Get_AllFiles;
  end;

// *********************************************************************//
// DispIntf:  IPDMObjectFilesDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {BDB1ACFA-D69B-49E3-B000-9220530F14A1}
// *********************************************************************//
  IPDMObjectFilesDisp = dispinterface
    ['{BDB1ACFA-D69B-49E3-B000-9220530F14A1}']
    property AllFiles: IPDMFilesCollection readonly dispid 201;
    function LoadFiles(Mode: GetCollectionMode): IPDMFilesCollection; dispid 202;
    function AddFile(const UploadFrom: WideString; const NewFileName: WideString; 
                     const NewFilePath: WideString): IPDMFile2; dispid 203;
    procedure Delete(const PDMFile: IPDMFile2); dispid 204;
  end;

// *********************************************************************//
// Interface: IPDMLink2
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8F019110-4C72-457A-B7A5-F0376F5463BA}
// *********************************************************************//
  IPDMLink2 = interface(IAttributedPDMEntity)
    ['{8F019110-4C72-457A-B7A5-F0376F5463BA}']
    function Get_MinQuantity: Double; safecall;
    procedure Set_MinQuantity(Value: Double); safecall;
    function Get_MaxQuantity: Double; safecall;
    procedure Set_MaxQuantity(Value: Double); safecall;
    function Get_UnitID: WideString; safecall;
    procedure Set_UnitID(const Value: WideString); safecall;
    function Get_UnitName: WideString; safecall;
    function Get_MeasureID: WideString; safecall;
    procedure Set_MeasureID(const Value: WideString); safecall;
    function Get_MeasureName: WideString; safecall;
    function Get_ParentObject: IPDMObject2; safecall;
    function Get_ChildObject: IPDMObject2; safecall;
    function Get_ParentObjectID: Integer; safecall;
    function Get_ChildObjectID: Integer; safecall;
    function Get_Horizontal: WordBool; safecall;
    function Get_IsVirtual: WordBool; safecall;
    function Get_AdditionalAttrs: WideString; safecall;
    function Get_AdditionalAttrsValues: WideString; safecall;
    function Get_LinkType: WideString; safecall;
    function Get_LinkBetweenTypes: ILinkBetweenTypes; safecall;
    function Get_LastChangeTime: Double; safecall;
    property MinQuantity: Double read Get_MinQuantity write Set_MinQuantity;
    property MaxQuantity: Double read Get_MaxQuantity write Set_MaxQuantity;
    property UnitID: WideString read Get_UnitID write Set_UnitID;
    property UnitName: WideString read Get_UnitName;
    property MeasureID: WideString read Get_MeasureID write Set_MeasureID;
    property MeasureName: WideString read Get_MeasureName;
    property ParentObject: IPDMObject2 read Get_ParentObject;
    property ChildObject: IPDMObject2 read Get_ChildObject;
    property ParentObjectID: Integer read Get_ParentObjectID;
    property ChildObjectID: Integer read Get_ChildObjectID;
    property Horizontal: WordBool read Get_Horizontal;
    property IsVirtual: WordBool read Get_IsVirtual;
    property AdditionalAttrs: WideString read Get_AdditionalAttrs;
    property AdditionalAttrsValues: WideString read Get_AdditionalAttrsValues;
    property LinkType: WideString read Get_LinkType;
    property LinkBetweenTypes: ILinkBetweenTypes read Get_LinkBetweenTypes;
    property LastChangeTime: Double read Get_LastChangeTime;
  end;

// *********************************************************************//
// DispIntf:  IPDMLink2Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8F019110-4C72-457A-B7A5-F0376F5463BA}
// *********************************************************************//
  IPDMLink2Disp = dispinterface
    ['{8F019110-4C72-457A-B7A5-F0376F5463BA}']
    property MinQuantity: Double dispid 218;
    property MaxQuantity: Double dispid 219;
    property UnitID: WideString dispid 220;
    property UnitName: WideString readonly dispid 221;
    property MeasureID: WideString dispid 222;
    property MeasureName: WideString readonly dispid 223;
    property ParentObject: IPDMObject2 readonly dispid 224;
    property ChildObject: IPDMObject2 readonly dispid 225;
    property ParentObjectID: Integer readonly dispid 226;
    property ChildObjectID: Integer readonly dispid 227;
    property Horizontal: WordBool readonly dispid 228;
    property IsVirtual: WordBool readonly dispid 229;
    property AdditionalAttrs: WideString readonly dispid 230;
    property AdditionalAttrsValues: WideString readonly dispid 231;
    property LinkType: WideString readonly dispid 232;
    property LinkBetweenTypes: ILinkBetweenTypes readonly dispid 233;
    property LastChangeTime: Double readonly dispid 234;
    property Attrs: IPDMEntityAttrValues readonly dispid 213;
    property CopyForCheckout: Integer readonly dispid 201;
    function InEditMode: WordBool; dispid 185;
    property Deleted: WordBool readonly dispid 186;
    property Valid: WordBool readonly dispid 187;
    property ExistsInDB: WordBool readonly dispid 188;
    property SourceEntity: IEditablePDMItem readonly dispid 189;
    function CreateEditableCopy: IEditablePDMItem; dispid 190;
    function SaveToDB(const CollisionResolver: ICollisionResolver): IEditablePDMItem; dispid 191;
    procedure DeleteItem; dispid 192;
    procedure ClearProperty(PropCode: Integer; NeedNotify: WordBool); dispid 193;
    function Changed: WordBool; dispid 194;
    property ID: Integer readonly dispid 169;
    property Name: WideString readonly dispid 170;
    property EntityCode: EntityCodes readonly dispid 171;
  end;

// *********************************************************************//
// Interface: ISimpleSubscriber
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {BF21EC6D-BA9E-4ABF-B5BE-58EE56AAC879}
// *********************************************************************//
  ISimpleSubscriber = interface(ILooEventSubscriber)
    ['{BF21EC6D-BA9E-4ABF-B5BE-58EE56AAC879}']
    procedure ModelChanged; safecall;
  end;

// *********************************************************************//
// DispIntf:  ISimpleSubscriberDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {BF21EC6D-BA9E-4ABF-B5BE-58EE56AAC879}
// *********************************************************************//
  ISimpleSubscriberDisp = dispinterface
    ['{BF21EC6D-BA9E-4ABF-B5BE-58EE56AAC879}']
    procedure ModelChanged; dispid 201;
  end;

// *********************************************************************//
// Interface: ISignedEntity
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {DE8896A5-9F54-4E27-B116-953B1272CC84}
// *********************************************************************//
  ISignedEntity = interface(IDispatch)
    ['{DE8896A5-9F54-4E27-B116-953B1272CC84}']
    procedure ReloadSignInfo; safecall;
    function Get_SignInfo: IDispatch; safecall;
    function Get_SignInfoValid: WordBool; safecall;
    property SignInfo: IDispatch read Get_SignInfo;
    property SignInfoValid: WordBool read Get_SignInfoValid;
  end;

// *********************************************************************//
// DispIntf:  ISignedEntityDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {DE8896A5-9F54-4E27-B116-953B1272CC84}
// *********************************************************************//
  ISignedEntityDisp = dispinterface
    ['{DE8896A5-9F54-4E27-B116-953B1272CC84}']
    procedure ReloadSignInfo; dispid 201;
    property SignInfo: IDispatch readonly dispid 202;
    property SignInfoValid: WordBool readonly dispid 203;
  end;

implementation

end.
