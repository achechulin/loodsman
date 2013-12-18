unit LinkedObjects;

interface

uses
    SysUtils, Classes, Forms, Controls, StdCtrls,
    Buttons, ExtCtrls, Loodsman_TLB;

type
    TLinkedObjectsDialog = class(TForm)
        OKBtn: TButton;
        CancelBtn: TButton;
        LabelObject: TLabel;
        EditObject: TEdit;
        LabelLink: TLabel;
        ComboLink: TComboBox;
        LabelLinkedObjects: TLabel;
        ListLinkedObjects: TListBox;
        procedure ComboLinkChange(Sender: TObject);
    private
        FPluginCall: IPluginCall;
        procedure SetPluginCall(const Value: IPluginCall);
    public
        property PluginCall: IPluginCall read FPluginCall write SetPluginCall;
    end;

    function ShowLinkedObjectsDialog(AOwner: TComponent; APluginCall: IPluginCall): Boolean;

implementation

uses
    Variants, Loodsman.Infrastructure.Types;

function ShowLinkedObjectsDialog(AOwner: TComponent; APluginCall: IPluginCall): Boolean;
var
    Dialog: TLinkedObjectsDialog;
begin
    Dialog := TLinkedObjectsDialog.Create(AOwner);
    try
        Dialog.PluginCall := APluginCall;
        Result := Dialog.ShowModal = mrOk;
    finally
        Dialog.Free;
    end;
end;

{$R *.dfm}

{ TLinkedObjectsDialog }

procedure TLinkedObjectsDialog.ComboLinkChange(Sender: TObject);
var
    LLinkName: String;
    LDataSet: IDataSet;
    LText: String;
begin
    ListLinkedObjects.Clear;

    if ComboLink.ItemIndex = -1 then
        Exit;

    LLinkName := ComboLink.Items.Strings[ComboLink.ItemIndex];
    LDataSet := FPluginCall.GetDataSet('GetLinkedFast',
        VarArrayOf([FPluginCall.IdVersion, LLinkName, False]));
    while not LDataSet.Eof do
    begin
        LText := GetValue(LDataSet, '_PRODUCT', '');
        if GetValue(LDataSet, '_VERSION', '') <> '' then
            LText := LText + ', версия ' + GetValue(LDataSet, '_VERSION', '');
        ListLinkedObjects.AddItem(LText, nil);
        LDataSet.Next;
    end;
end;

procedure TLinkedObjectsDialog.SetPluginCall(const Value: IPluginCall);
var
    LDataSet: IDataSet;
    LDirection: TLinkDirection;
begin
    FPluginCall := Value;

    EditObject.Text := FPluginCall.stProduct;
    if FPluginCall.stVersion <> '' then
        EditObject.Text := EditObject.Text + ', версия ' + FPluginCall.stVersion;

    LDataSet := FPluginCall.GetDataSet('GetInfoAboutType',
        VarArrayOf([FPluginCall.stType, 11]));
    while not LDataSet.Eof do
    begin
        LDirection := GetValue(LDataSet, '_DIRECTION', 0);
        if (LDirection = ldAny) or (LDirection = ldForwardOnly) then
        begin
            ComboLink.AddItem(GetValue(LDataSet, '_NAME', ''), nil);
        end;
        LDataSet.Next;
    end;
end;

end.
