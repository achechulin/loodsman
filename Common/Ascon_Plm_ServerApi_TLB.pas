unit Ascon_Plm_ServerApi_TLB;

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
// File generated on 01.10.2019 01:01:00 from Type Library described below.

// ************************************************************************  //
// Type Lib: Ascon.Plm.ServerApi.tlb (1)
// LIBID: {CFA74E3E-04D2-41CB-AC2C-0BA46728E8DD}
// LCID: 0
// Helpfile:
// DepndLst:
//   (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
//   (2) v2.4 mscorlib, (C:\Windows\Microsoft.NET\Framework\v4.0.30319\mscorlib.tlb)
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

uses Windows, ActiveX, Classes, Variants;



// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  Ascon_Plm_ServerApiMajorVersion = 18;
  Ascon_Plm_ServerApiMinorVersion = 0;

  LIBID_Ascon_Plm_ServerApi: TGUID = '{CFA74E3E-04D2-41CB-AC2C-0BA46728E8DD}';

  IID_IManagedMemoryControl: TGUID = '{8359B851-A288-43C0-9D06-F2FC12490B52}';
  IID_IConnection: TGUID = '{1CCBD8FF-E26D-4D9B-96B6-67AD482FD6D3}';
  IID_IMainSystem: TGUID = '{C716BFC0-D74C-4644-8D13-478EA5DB0D1F}';
  IID_IWFSystem: TGUID = '{B5A7E8D3-75D0-454C-AF16-C091E25455C4}';
  IID_IConfigServer: TGUID = '{FACFF30D-2C00-4207-BFD0-9383C22779D6}';
  IID_IDbAdministrator: TGUID = '{4D92D884-AFD1-4F82-906A-33DC281C3930}';
  CLASS_ServerConnection: TGUID = '{19858D12-FE08-3DAA-A39A-3EF95746A258}';
  IID_IConnectionFactory: TGUID = '{CA4F9BA3-E0F4-4898-B5F8-693AAE84CAD9}';
  CLASS_ConnectionFactory: TGUID = '{C6250D9C-FA34-4E3D-955E-43760C35E055}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  IManagedMemoryControl = interface;
  IConnection = interface;

// *********************************************************************//
// Interface: IManagedMemoryControl
// Flags:     (256) OleAutomation
// GUID:      {8359B851-A288-43C0-9D06-F2FC12490B52}
// *********************************************************************//
  IManagedMemoryControl = interface(IUnknown)
    ['{8359B851-A288-43C0-9D06-F2FC12490B52}']
    function CompactMemory: HResult; stdcall;
  end;

// *********************************************************************//
// Interface: IConnection
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {1CCBD8FF-E26D-4D9B-96B6-67AD482FD6D3}
// *********************************************************************//
  IConnection = interface(IDispatch)
    ['{1CCBD8FF-E26D-4D9B-96B6-67AD482FD6D3}']
    procedure Close; safecall;
    function Get_MainSystem: IDispatch; safecall;
    function Get_WFSystem: IDispatch; safecall;
    function Get_ConfigServer: IDispatch; safecall;
    property MainSystem: IDispatch read Get_MainSystem;
    property WFSystem: IDispatch read Get_WFSystem;
    property ConfigServer: IDispatch read Get_ConfigServer;
  end;

// *********************************************************************//
// Interface: IConnectionFactory
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {CA4F9BA3-E0F4-4898-B5F8-693AAE84CAD9}
// *********************************************************************//
  IConnectionFactory = interface(IDispatch)
    ['{CA4F9BA3-E0F4-4898-B5F8-693AAE84CAD9}']
    function CreateConnection(const host: WideString; port: Integer): IConnection; safecall;
  end;

implementation

end.
