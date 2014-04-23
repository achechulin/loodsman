unit LoodsmanPlugin;

interface

uses
    SysUtils, Messages, Loodsman_TLB;

const
    CAppServerV8 = 20061001;
    CAppServerV9 = 20080300;
    CAppServerV10 = 20090306;
    CAppServerV11 = 20100701;
    CAppServerV13 = 20121231;
    CAppServerV14 = 20141231;

const
    WM_REFRESHVERSION = WM_USER + 1;
    WM_REFRESHPARENT = WM_USER + 4;
    WM_GOTOCHILD = WM_USER + 5;
    WM_REFRESHCHECKOUTLIST = WM_USER + 6;
    WM_REFRESHPROJECTLIST =  WM_USER + 7;
    WM_GOTONODE = WM_USER + 8;
    WM_GOTOOBJECT = WM_USER + 9;
    WM_OPENOBJECTINNEWWINDOW = WM_USER + 100;
    WM_OPENOBJECTSINNEWWINDOW = WM_USER + 101;

type
    TAccessLevel = (alNoAccess, alRead, alReadWrite, alAdministration);
    TAttributeType = (atString, atInteger, atFloat, atDateTime, atText = 5, atImage = 6);
    TCardControlType = (cctEdit, cctNumEdit, cctNumMeasuredEdit, cctDate, cctTime,
        cctText, cctImage, cctLabel, cctBevel);
    TConnectionType = (ctDCOM, ctSocket, ctWeb);
    TDatabaseAuth = (amWindows, amSqlServer, amSqlServerSaved, amInaccessible, amUnknown);
    TLinkDirection = (ldAny, ldForwardOnly, ldBackwardOnly = -1);
    TLinkKind = (lkVertical, lkHorizontal);
    TLinkQuantity = (lqNone, lqParent, lqChild, lqAlways);
    TLockLevel = (llNone, llLockOwner, llLocked);
    TRoleType = (rtUser, rtRole, rtDepartment, rtOrganization);
    TRouteItemState = (risNone, risReceived = 2, risAccepted, risExecuted,
        risQuestion, risRefuse, risRefuseStop = 8, risWait, risQuestionStop);
    TRouteItemType = (ritStage = 1, ritSubFlow, ritCondition = 4, ritAutoOperation, ritWaitOperation);
    TRouteSeqType = (rstForward, rstReturn, rstYes, rstNo, rstTimeLimit);
    TRouteState = (rsNone, rsActive, rsStopped, rsFinished);

const
    MAX_TEXT_LENGTH = 255;

type
    TLoodsmanAddMenuCom = record
        stMenu: array [0..MAX_TEXT_LENGTH-1] of AnsiChar;
        stFunction: array [0..MAX_TEXT_LENGTH-1] of AnsiChar;
    end;

    PLoodsmanAddMenuCom = ^TLoodsmanAddMenuCom;

    EServerException = class(Exception)
    end;

    function GetValue(const ADataSet: IDataSet; const AFieldName: String;
        const ADefault: Variant): Variant; overload;

    function GetValue(const ADataSet: IDataSet; const AFieldName: String): Variant; overload;

    procedure HookApplication(const AHandle: THandle);

    procedure UnhookApplication(const AHandle: THandle);

    function GetPluginInfo(AParam: Integer; AValue: Pointer): Integer; stdcall;

implementation

uses
    Windows, Variants, Controls, Forms;

var
    OldApplicationWndProc: TFNWndProc;

resourcestring
    SRequiredFieldNotFound = 'Обязательное поле [%s] не найдено в наборе данных';

function GetValue(const ADataSet: IDataSet; const AFieldName: String; const
    ADefault: Variant): Variant;
begin
    if ADataSet.FieldValue[AFieldName] <> Null then
        Result := ADataSet.FieldValue[AFieldName]
    else
        Result := ADefault;
end;

function GetValue(const ADataSet: IDataSet; const AFieldName: String): Variant;
begin
    if ADataSet.FieldValue[AFieldName] <> Null then
        Result := ADataSet.FieldValue[AFieldName]
    else
        raise EServerException.CreateFmt(SRequiredFieldNotFound, [AFieldName]);
end;

function ApplicationWndProc(Window: HWND; Message, WParam, LParam: LongInt): LongInt; stdcall;
begin
    case Message of
        CM_ACTIONEXECUTE, CM_ACTIONUPDATE:
            Result := 0;
        CM_APPKEYDOWN:
            Result := 0;
        WM_HELP, CM_INVOKEHELP:
            Result := 0;
    else
        Result := CallWindowProc(OldApplicationWndProc, Window, Message, WParam, LParam);
    end;
end;

procedure HookApplication(const AHandle: THandle);
var
    LHook: LongInt;
begin
    LHook := LongInt(@ApplicationWndProc);
    if GetWindowLong(AHandle, GWL_WNDPROC) <> LHook then
    begin
        OldApplicationWndProc := TFNWndProc(SetWindowLong(AHandle, GWL_WNDPROC, LHook));
    end;
end;

procedure UnhookApplication(const AHandle: THandle);
var
    LHook: LongInt;
begin
    LHook := LongInt(@ApplicationWndProc);
    if GetWindowLong(AHandle, GWL_WNDPROC) = LHook then
        SetWindowLong(AHandle, GWL_WNDPROC, LongInt(OldApplicationWndProc));
end;

function GetPluginInfo(AParam: Integer; AValue: Pointer): Integer;
begin
    Result := 0;
end;

end.
