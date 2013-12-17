unit IntegratorObject_TLB;

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
// File generated on 13.09.2010 10:21:16 from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\Program Files\ASCON\Loodsman\Client\Integrator\LoodsmanIntegrator.dll (1)
// LIBID: {4BF79394-42C3-4459-BC49-E1F1CD44AE6C}
// LCID: 0
// Helpfile: 
// HelpString: IntegratorObject Library
// DepndLst: 
//   (1) v2.0 stdole, (C:\WINDOWS\system32\STDOLE2.TLB)
//   (2) v1.0 CommonModel, (C:\WINDOWS\system32\CommonModel.dll)
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
  IntegratorObjectMajorVersion = 1;
  IntegratorObjectMinorVersion = 0;

  LIBID_IntegratorObject: TGUID = '{4BF79394-42C3-4459-BC49-E1F1CD44AE6C}';

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
  IIntegratorDisp = dispinterface;
  IIntegratorEvent = dispinterface;
  IProxyCall = interface;
  IProxyCallDisp = dispinterface;
  IInterfaceExtractor = interface;
  IInterfaceExtractorDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  ProxyCall = IProxyCall;
  Integrator = IIntegrator;
  InterfaceExtractor = IInterfaceExtractor;


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
    property SilentMode: WordBool read Get_SilentMode write Set_SilentMode;
  end;

// *********************************************************************//
// DispIntf:  IIntegratorDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {021331C0-91F0-4808-8C89-8DDD57584318}
// *********************************************************************//
  IIntegratorDisp = dispinterface
    ['{021331C0-91F0-4808-8C89-8DDD57584318}']
    function Connect(const ConnectString: WideString; const DBName: WideString; CheckOut: Integer; 
                     const UserName: WideString; const Password: WideString): HResult; dispid 1;
    function ReadDocument(IdObj: Integer; IdDoc: Integer; const LinkType: WideString; 
                          const FileName: WideString; const FullFilePath: WideString; 
                          inParams: Integer; UseCase: Integer): OleVariant; dispid 6;
    procedure LoadDocument(IdObj: Integer; IdDoc: Integer; const LinkType: WideString; 
                           const FileName: WideString; const FullFilePath: WideString; 
                           ShowTool: WordBool; UseCase: Integer); dispid 7;
    procedure CreateDocument(IdObj: Integer; IdDoc: Integer; const LinkType: WideString; 
                             const FileName: WideString; const FullFilePath: WideString; 
                             UseCase: Integer); dispid 8;
    property SilentMode: WordBool dispid 12;
    function GetAddress: Integer; dispid 2;
    procedure SetMainWindowHandle(AHandle: Integer); dispid 3;
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
  end;

// *********************************************************************//
// DispIntf:  IProxyCallDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {7F1410F9-9874-4A76-9846-F036703BB64A}
// *********************************************************************//
  IProxyCallDisp = dispinterface
    ['{7F1410F9-9874-4A76-9846-F036703BB64A}']
    function GetModel(const Mask: IModel): IModel; dispid 1;
    function GetFile(IdDoc: Integer; const FileName: WideString; const FullFilePath: WideString): HResult; dispid 2;
    procedure WriteLog(const Message: WideString); dispid 3;
    function GetState: SYSINT; dispid 4;
    procedure SetCurrentOperation(const stOperation: WideString); dispid 5;
    function GetAddress: Integer; dispid 6;
    function WriteLogModel(const Model: IModel): WordBool; dispid 7;
    function ShowDebugModel(const Msg: WideString; const Model: IModel): WordBool; dispid 8;
    function GetAppServer: OleVariant; dispid 9;
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

// *********************************************************************//
// DispIntf:  IInterfaceExtractorDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {90FF512B-44CA-494A-9A7D-0C79EA00A283}
// *********************************************************************//
  IInterfaceExtractorDisp = dispinterface
    ['{90FF512B-44CA-494A-9A7D-0C79EA00A283}']
    function GetProxyCall(inAddress: Integer): IProxyCall; dispid 1;
    function GetIntegrator(inAddress: Integer): IIntegrator; dispid 2;
  end;

implementation

end.
