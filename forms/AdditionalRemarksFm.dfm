object AdditionalRemarksForm: TAdditionalRemarksForm
  Left = 333
  Top = 314
  Width = 560
  Height = 200
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object cxDBMemo1: TcxDBMemo
    Left = 16
    Top = 16
    DataBinding.DataField = 'RemarksOther'
    DataBinding.DataSource = QuoCitywiseForm.Detail1DS
    TabOrder = 0
    Height = 113
    Width = 513
  end
  object cxButton1: TcxButton
    Left = 456
    Top = 136
    Width = 75
    Height = 25
    Caption = 'Close'
    TabOrder = 1
    OnClick = cxButton1Click
  end
end
