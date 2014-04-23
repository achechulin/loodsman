object LinkedObjectsDialog: TLinkedObjectsDialog
  Left = 227
  Top = 108
  BorderStyle = bsDialog
  Caption = #1057#1074#1103#1079#1072#1085#1085#1099#1077' '#1086#1073#1098#1077#1082#1090#1099
  ClientHeight = 268
  ClientWidth = 394
  Color = clBtnFace
  ParentFont = True
  OldCreateOrder = True
  Position = poOwnerFormCenter
  DesignSize = (
    394
    268)
  PixelsPerInch = 96
  TextHeight = 13
  object LabelObject: TLabel
    Left = 8
    Top = 8
    Width = 43
    Height = 13
    Caption = #1054#1073#1098#1077#1082#1090':'
  end
  object LabelLink: TLabel
    Left = 8
    Top = 40
    Width = 34
    Height = 13
    Caption = #1057#1074#1103#1079#1100':'
  end
  object LabelLinkedObjects: TLabel
    Left = 8
    Top = 72
    Width = 108
    Height = 13
    Caption = #1057#1074#1103#1079#1072#1085#1085#1099#1077' '#1086#1073#1098#1077#1082#1090#1099':'
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
    TabOrder = 3
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
    TabOrder = 4
  end
  object EditObject: TEdit
    Left = 64
    Top = 8
    Width = 322
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    ReadOnly = True
    TabOrder = 0
  end
  object ComboLink: TComboBox
    Left = 64
    Top = 40
    Width = 322
    Height = 21
    Style = csDropDownList
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 1
    OnChange = ComboLinkChange
  end
  object ListLinkedObjects: TListBox
    Left = 8
    Top = 88
    Width = 378
    Height = 138
    Anchors = [akLeft, akTop, akRight, akBottom]
    ItemHeight = 13
    TabOrder = 2
  end
end
