unit FindObjects;

interface

uses
    SysUtils, Classes, Forms, Controls, StdCtrls,
    Buttons, ExtCtrls, Loodsman_TLB;

type
    TFindObjectsDialog = class(TForm)
        OKBtn: TButton;
        CancelBtn: TButton;
        LabelFoundObjects: TLabel;
        ListFoundObjects: TListBox;
    private
        FPluginCall: IPluginCall;
        procedure SetPluginCall(const Value: IPluginCall);
    public
        property PluginCall: IPluginCall read FPluginCall write SetPluginCall;
    end;

    function ShowFindObjectsDialog(AOwner: TComponent; APluginCall: IPluginCall): Boolean;

implementation

uses
    Variants, Loodsman.Infrastructure.Types;

function ShowFindObjectsDialog(AOwner: TComponent; APluginCall: IPluginCall): Boolean;
var
    Dialog: TFindObjectsDialog;
begin
    Dialog := TFindObjectsDialog.Create(AOwner);
    try
        Dialog.PluginCall := APluginCall;
        Result := Dialog.ShowModal = mrOk;
    finally
        Dialog.Free;
    end;
end;

{$R *.dfm}

{ TFindObjectsDialog }

procedure TFindObjectsDialog.SetPluginCall(const Value: IPluginCall);
var
    LDataSet: IDataSet;
    LAttrConditions: String;
    LText: String;
begin
    FPluginCall := Value;

    ListFoundObjects.Clear();

    LAttrConditions := '������������'#2'������������ LIKE ' + QuotedStr('���������%')
        + #1'������'#2'������ = ' + QuotedStr('�4');

    LDataSet := FPluginCall.GetDataSet('FindObjects',
        VarArrayOf([
        '',             // ������ �����
        '',             // ������ ������ �� ��������� ��������
        '',             // ������ ������ �� ������
        '',             // ������ ���������
        LAttrConditions,// ������ ������ �� ���������
        '', '']));
    while not LDataSet.Eof do
    begin
        LText := GetValue(LDataSet, '_PRODUCT', '');
        if GetValue(LDataSet, '_VERSION', '') <> '' then
            LText := LText + ', ������ ' + GetValue(LDataSet, '_VERSION', '');
        ListFoundObjects.AddItem(LText, nil);
        LDataSet.Next;
    end;
end;

end.
