unit LoodsmanIntegrator_TLB;

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
// File generated on 23.04.2014 10:33:48 from Type Library described below.

// ************************************************************************  //
// Type Lib: 1.tlb (1)
// LIBID: {4BF79394-42C3-4459-BC49-E1F1CD44AE6C}
// LCID: 0
// Helpfile: 
// HelpString: IntegratorObject Library
// DepndLst: 
//   (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
//   (2) v1.0 CommonModel, (C:\Program Files (x86)\Common Files\ASCON Shared\Loodsman\CommonModel.dll)
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
{$ALIGN 4}
interface

uses Windows, ActiveX, Classes, CommonModel_TLB, Graphics, OleServer, Variants;
  


// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  LoodsmanIntegratorMajorVersion = 1;
  LoodsmanIntegratorMinorVersion = 0;

  LIBID_LoodsmanIntegrator: TGUID = '{4BF79394-42C3-4459-BC49-E1F1CD44AE6C}';

  IID_IIntegrator: TGUID = '{021331C0-91F0-4808-8C89-8DDD57584318}';
  DIID_IIntegratorEvent: TGUID = '{D51EFAE2-78BF-412B-AF4D-AA686A126ED1}';
  IID_IProxyCall: TGUID = '{7F1410F9-9874-4A76-9846-F036703BB64A}';
  CLASS_ProxyCall: TGUID = '{6BC5D8B4-FA41-4E24-947A-A6048B7B1B88}';
  CLASS_Integrator: TGUID = '{650682CE-5C3D-4A2A-A384-0B65BC46A25D}';
  IID_IInterfaceExtractor: TGUID = '{90FF512B-44CA-494A-9A7D-0C79EA00A283}';
  CLASS_InterfaceExtractor: TGUID = '{57FD0FF4-59D9-4B54-832F-B4D8E653549D}';

// *********************************************************************//
// Declaration of Enumerations defined in Type Library                    
// *********************************************************************//
// Constants for enum IntegratorState
type
  IntegratorState = TOleEnum;
const
  isNormal = $00000000;
  isCancelled = $00000001;

type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  IIntegrator = interface;
  IIntegratorEvent = dispinterface;
  IProxyCall = interface;
  IInterfaceExtractor = interface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  ProxyCall = IProxyCall;
  Integrator = IIntegrator;
  InterfaceExtractor = IInterfaceExtractor;


// *********************************************************************//
// Declaration of structures, unions and aliases.                         
// *********************************************************************//
  POleVariant1 = ^OleVariant; {*}


// *********************************************************************//
// Interface: IIntegrator
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {021331C0-91F0-4808-8C89-8DDD57584318}
// *********************************************************************//
  IIntegrator = interface(IDispatch)
    ['{021331C0-91F0-4808-8C89-8DDD57584318}']
    function Connect(const ConnectString: WideString; const DBName: WideString; CheckOut: Integer; 
                     const UserName: WideString; const Password: WideString): HResult; safecall;
    function ReadDocument(IdObj: Integer; IdDoc: Integer; const LinkType: WideString; 
                          const FileName: WideString; const FullFilePath: WideString; 
                          inParams: Integer; UseCase: Integer): OleVariant; safecall;
    procedure LoadDocument(IdObj: Integer; IdDoc: Integer; const LinkType: WideString; 
                           const FileName: WideString; const FullFilePath: WideString; 
                           ShowTool: WordBool; UseCase: Integer); safecall;
    procedure CreateDocument(IdObj: Integer; IdDoc: Integer; const LinkType: WideString; 
                             const FileName: WideString; const FullFilePath: WideString; 
                             UseCase: Integer); safecall;
    function Get_SilentMode: WordBool; safecall;
    procedure Set_SilentMode(Value: WordBool); safecall;
    function GetAddress: Integer; safecall;
    procedure SetMainWindowHandle(AHandle: Integer); safecall;
    function Attach(var Provider: OleVariant): HResult; safecall;
    function SafeConnect(const ConnectString: WideString; const DBName: WideString; 
                         CheckOut: Integer; const UserName: WideString; const Password: WideString): HResult; safecall;
    function SafeAttach(var Provider: OleVariant): HResult; safecall;
    procedure DisplayDebugModel(const stFileName: WideString); safecall;
    function Get_CustomFlags: LongWord; safecall;
    procedure Set_CustomFlags(Value: LongWord); safecall;
    property SilentMode: WordBool read Get_SilentMode write Set_SilentMode;
    property CustomFlags: LongWord read Get_CustomFlags write Set_CustomFlags;
  end;

// *********************************************************************//
// DispIntf:  IIntegratorEvent
// Flags:     (4096) Dispatchable
// GUID:      {D51EFAE2-78BF-412B-AF4D-AA686A126ED1}
// *********************************************************************//
  IIntegratorEvent = dispinterface
    ['{D51EFAE2-78BF-412B-AF4D-AA686A126ED1}']
    procedure GetState(var State: SYSINT); dispid 1;
    procedure CurrentOperation(const stOperation: WideString); dispid 2;
  end;

// *********************************************************************//
// Interface: IProxyCall
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {7F1410F9-9874-4A76-9846-F036703BB64A}
// *********************************************************************//
  IProxyCall = interface(IDispatch)
    ['{7F1410F9-9874-4A76-9846-F036703BB64A}']
    function GetModel(const Mask: IModel): IModel; safecall;
    function GetFile(IdDoc: Integer; const FileName: WideString; const FullFilePath: WideString): HResult; safecall;
    procedure WriteLog(const Message: WideString); safecall;
    function GetState: SYSINT; safecall;
    procedure SetCurrentOperation(const stOperation: WideString); safecall;
    function GetAddress: Integer; safecall;
    function WriteLogModel(const Model: IModel): WordBool; safecall;
    function ShowDebugModel(const Msg: WideString; const Model: IModel): WordBool; safecall;
    function GetAppServer: OleVariant; safecall;
    function GetFileRequest(IdDoc: Integer; const FileName: WideString; 
                            const FullFilePath: WideString): HResult; safecall;
    function GetMainWindowHandle: Integer; safecall;
    function GetUserName: WideString; safecall;
    function GetPassword: WideString; safecall;
    procedure ShowBaloonMessage(const sHeader: WideString; const sMessage: WideString; 
                                inType: Integer; boError: WordBool); safecall;
    function GetFileNoLockReadOnly(IdDoc: Integer; const FileName: WideString; 
                                   const FullFilePath: WideString): HResult; safecall;
  end;

// *********************************************************************//
// Interface: IInterfaceExtractor
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {90FF512B-44CA-494A-9A7D-0C79EA00A283}
// *********************************************************************//
  IInterfaceExtractor = interface(IDispatch)
    ['{90FF512B-44CA-494A-9A7D-0C79EA00A283}']
    function GetProxyCall(inAddress: Integer): IProxyCall; safecall;
    function GetIntegrator(inAddress: Integer): IIntegrator; safecall;
  end;

implementation

end.
