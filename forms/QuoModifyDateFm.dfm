object QuoModifyDateForm: TQuoModifyDateForm
  Left = 493
  Top = 10
  Width = 361
  Height = 269
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object IncreaseByLabel: TLabel
    Left = 24
    Top = 120
    Width = 68
    Height = 13
    Caption = 'Increase By'
    Transparent = True
  end
  object cxGroupBox1: TcxGroupBox
    Left = 24
    Top = 16
    Caption = 'Dates'
    TabOrder = 0
    Height = 89
    Width = 305
    object Label1: TLabel
      Left = 8
      Top = 32
      Width = 104
      Height = 13
      Caption = 'Current Start Date'
      Transparent = True
    end
    object Label2: TLabel
      Left = 8
      Top = 56
      Width = 88
      Height = 13
      Caption = 'New Start Date'
      Transparent = True
    end
    object cxCurrentDateEdit: TcxDateEdit
      Left = 120
      Top = 32
      Enabled = False
      TabOrder = 0
      Width = 161
    end
    object cxNewDateEdit: TcxDateEdit
      Left = 120
      Top = 56
      Properties.OnEditValueChanged = cxNewDateEditPropertiesEditValueChanged
      TabOrder = 1
      Width = 161
    end
  end
  object cxButton1: TcxButton
    Left = 24
    Top = 152
    Width = 105
    Height = 25
    Caption = 'Change Dates'
    TabOrder = 1
    OnClick = cxButton1Click
  end
  object Panel1: TPanel
    Left = 0
    Top = 186
    Width = 345
    Height = 45
    Align = alBottom
    TabOrder = 2
    object cxCloseBtn: TcxButton
      Left = 260
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Close'
      TabOrder = 0
      OnClick = cxCloseBtnClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        33333FFFFFFFFFFFFFFF000000000000000077777777777777770F7777777777
        77707F3F3333333333370F988888888888707F733FFFFFFFF3370F8800000000
        88707F337777777733370F888888888888707F333FFFFFFFF3370F8800000000
        88707F337777777733370F888888888888707F333333333333370F8888888888
        88707F333333333333370FFFFFFFFFFFFFF07FFFFFFFFFFFFFF7000000000000
        0000777777777777777733333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
    end
  end
end
