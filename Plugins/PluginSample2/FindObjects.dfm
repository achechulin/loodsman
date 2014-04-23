object FindObjectsDialog: TFindObjectsDialog
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1055#1086#1080#1089#1082' '#1086#1073#1098#1077#1082#1090#1086#1074
  ClientHeight = 268
  ClientWidth = 394
  Color = clBtnFace
  ParentFont = True
  OldCreateOrder = False
  Position = poOwnerFormCenter
  DesignSize = (
    394
    268)
  PixelsPerInch = 96
  TextHeight = 13
  object LabelFoundObjects: TLabel
    Left = 8
    Top = 8
    Width = 110
    Height = 13
    Caption = #1053#1072#1081#1076#1077#1085#1085#1099#1077' '#1086#1073#1098#1077#1082#1090#1099':'
  end
  object OKBtn: TButton
    Left = 232
    Top = 232
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 1
  end
  object CancelBtn: TButton
    Left = 312
    Top = 232
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Cancel = True
    Caption = #1054#1090#1084#1077#1085#1072
    ModalResult = 2
    TabOrder = 2
  end
  object ListFoundObjects: TListBox
    Left = 8
    Top = 32
    Width = 378
    Height = 195
    Anchors = [akLeft, akTop, akRight, akBottom]
    ItemHeight = 13
    TabOrder = 0
  end
end
