unit Ask_TLB;

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
// File generated on 01.02.2011 10:57:12 from Type Library described below.

// ************************************************************************  //
// Type Lib: Ask.dll (1)
// LIBID: {69F99950-E30D-4533-B754-EF7A97ACA1A9}
// LCID: 0
// Helpfile: 
// HelpString: Ask Library
// DepndLst: 
//   (1) v2.0 stdole, (C:\WINDOWS\system32\STDOLE2.TLB)
// Parent TypeLibrary:
//   (0) v1.0 Loodsman, (Loodsman.tlb)
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
  AskMajorVersion = 1;
  AskMinorVersion = 0;

  LIBID_Ask: TGUID = '{69F99950-E30D-4533-B754-EF7A97ACA1A9}';

  IID_ICommand: TGUID = '{C63A105F-D389-4722-99C4-F636E30D915D}';
  CLASS_Command: TGUID = '{DA42EA4E-6932-4CFC-871B-B10158AE42A5}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  ICommand = interface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  Command = ICommand;


// *********************************************************************//
// Interface: ICommand
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {C63A105F-D389-4722-99C4-F636E30D915D}
// *********************************************************************//
  ICommand = interface(IDispatch)
    ['{C63A105F-D389-4722-99C4-F636E30D915D}']
    procedure Execute(hWnd: Integer; hInstance: Integer; const stCmdLine: WideString; dummy: Integer); safecall;
    function Get_WindowHandle: Integer; safecall;
    function Get_InstanceHandle: Integer; safecall;
    function Get_CommandLine: WideString; safecall;
    function Get_DummyParameter: Integer; safecall;
    property WindowHandle: Integer read Get_WindowHandle;
    property InstanceHandle: Integer read Get_InstanceHandle;
    property CommandLine: WideString read Get_CommandLine;
    property DummyParameter: Integer read Get_DummyParameter;
  end;

implementation

end.
