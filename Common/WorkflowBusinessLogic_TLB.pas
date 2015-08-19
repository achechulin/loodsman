unit WorkflowBusinessLogic_TLB;

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

// $Rev: 52393 $
// File generated on 29.04.2015 10:38:22 from Type Library described below.

// ************************************************************************  //
// Type Lib: WorkflowBusinessLogic.tlb (1)
// LIBID: {1FDA6F1C-2D72-4474-870E-A021A02187CA}
// LCID: 0
// Helpfile: 
// HelpString: WorkflowBusinessLogic Library
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
  WorkflowBusinessLogicMajorVersion = 1;
  WorkflowBusinessLogicMinorVersion = 0;

  LIBID_WorkflowBusinessLogic: TGUID = '{1FDA6F1C-2D72-4474-870E-A021A02187CA}';

  IID_IWFBusinessLogic: TGUID = '{EC6F2312-95CD-4EF9-99EB-1514C11B0CF7}';
  CLASS_WFBusinessLogic: TGUID = '{8A1BB533-6E3D-48B9-A6DD-3B25AA50FA23}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  IWFBusinessLogic = interface;


// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  WFBusinessLogic = IWFBusinessLogic;


// *********************************************************************//
// Declaration of structures, unions and aliases.                         
// *********************************************************************//
  POleVariant1 = ^OleVariant; {*}


// *********************************************************************//
// Interface: IWFBusinessLogic
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {EC6F2312-95CD-4EF9-99EB-1514C11B0CF7}
// *********************************************************************//
  IWFBusinessLogic = interface(IDispatch)
    ['{EC6F2312-95CD-4EF9-99EB-1514C11B0CF7}']
    function Get_WFSystem: OleVariant; safecall;
    procedure SetTaskState(inID_Route: Integer; inID_Operation: Integer; inStateTask: Integer; 
                           const stMessageBody: WideString; out inReturnCode: OleVariant; 
                           out stErrorMessage: OleVariant); safecall;
    function Get_MainSystem: OleVariant; safecall;
    procedure SetStateOfProcess(inID_Route: Integer; inStateBP: Integer; 
                                out inReturnCode: OleVariant; out stErrorMessage: OleVariant); safecall;
    procedure AuditingTask(out inReturnCode: OleVariant; out stErrorMessage: OleVariant); safecall;
    function ExecuteAutoOperation(inID_Route: Integer; inIdAutoOp: Integer; 
                                  out inReturnCode: OleVariant; out stErrorMessage: OleVariant): OleVariant; safecall;
    procedure StartNextStage(inID_Route: Integer; inIdItem: Integer; inTransitionType: Integer; 
                             out inReturnCode: OleVariant; out stErrorMessage: OleVariant); safecall;
    procedure MonitoringTaskWait(out inReturnCode: OleVariant; out stErrorMessage: OleVariant); safecall;
    function SetItemState(inIdItem: Integer; inItemState: Integer; inFlags: Integer; 
                          const inReturnCode: OleVariant; const stErrorMessage: OleVariant): OleVariant; safecall;
    procedure RollBackStages(inIdRoute: Integer; inIdFirst: Integer; inIdSecond: Integer; 
                             const stStages: WideString; const stBody: WideString; 
                             out inReturnCode: OleVariant; out stErrorMessage: OleVariant); safecall;
    procedure AddStageDocument(inIdStage: Integer; inIdPDMObject: Integer; 
                               inIdParentObject: Integer; inFlags: Integer; 
                               out inReturnCode: OleVariant; out stErrorMessage: OleVariant); safecall;
    procedure DelStageDocument(inIdStage: Integer; inIdPDMObject: Integer; inFlags: Integer; 
                               out inReturnCode: OleVariant; out stErrorMessage: OleVariant); safecall;
    procedure SetStageActuated(inIdStage: Integer; inActuated: Integer; inFlags: Integer; 
                               out inReturnCode: OleVariant; out stErrorMessage: OleVariant); safecall;
    procedure TransformStageToSubProcess(inIdStage: Integer; vaIdTBP: OleVariant; 
                                         out inReturnCode: OleVariant; 
                                         out stErrorMessage: OleVariant); safecall;
    procedure TransformSubProcessToStage(inIdSubflow: Integer; out inReturnCode: OleVariant; 
                                         out stErrorMessage: OleVariant); safecall;
    procedure SetStageExecutor(inIdStage: Integer; inIdUser: OleVariant; inIdRole: OleVariant; 
                               inFlags: Integer; out inReturnCode: OleVariant; 
                               out stErrorMessage: OleVariant); safecall;
    procedure StartStage(inIdItem: Integer; out inReturnCode: OleVariant; 
                         out stErrorMessage: OleVariant); safecall;
    function ExecuteAutoOperationOnReturnLine(inIdRoute: Integer; inIdFirstStage: Integer; 
                                              inIdSecondStage: Integer; 
                                              out inReturnCode: OleVariant; 
                                              out stErrorMessage: OleVariant): OleVariant; safecall;
    function RunMethod(const MethodName: WideString; Params: OleVariant): OleVariant; safecall;
    procedure SendStageAutoMessage(inIdStage: Integer; inMessageType: Integer; 
                                   const stComment: WideString; out inReturnCode: OleVariant; 
                                   out stErrorMessage: OleVariant); safecall;
    function CallLoodsmanPlugin(const PluginName: WideString; const FunctionName: WideString; 
                                IdVersion: Integer; IdParentVersion: Integer; IdRoute: Integer; 
                                out inReturnCode: OleVariant; out stErrorMessage: OleVariant): Integer; safecall;
    function Get_TopWindowHandle: Integer; safecall;
    function Get_MainHandle: Integer; safecall;
    procedure Set_MainHandle(Value: Integer); safecall;
    function Get_ClientHandle: Integer; safecall;
    procedure Set_ClientHandle(Value: Integer); safecall;
    function Get_AppServer: WideString; safecall;
    procedure Set_AppServer(const Value: WideString); safecall;
    function Get_Connected: WordBool; safecall;
    procedure Set_Connected(Value: WordBool); safecall;
    function ConnectToDB(const DBName: WideString; const Checkout: WideString; 
                         const Username: WideString; const Password: WideString): Integer; safecall;
    function Reconnect: WordBool; safecall;
    property WFSystem: OleVariant read Get_WFSystem;
    property MainSystem: OleVariant read Get_MainSystem;
    property TopWindowHandle: Integer read Get_TopWindowHandle;
    property MainHandle: Integer read Get_MainHandle write Set_MainHandle;
    property ClientHandle: Integer read Get_ClientHandle write Set_ClientHandle;
    property AppServer: WideString read Get_AppServer write Set_AppServer;
    property Connected: WordBool read Get_Connected write Set_Connected;
  end;

implementation

end.
