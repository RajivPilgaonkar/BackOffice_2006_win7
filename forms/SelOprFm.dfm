object SelOprForm: TSelOprForm
  Left = 510
  Top = 294
  Width = 239
  Height = 230
  Caption = 'Select Operation Days'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DailyCheckBox: TCheckBox
    Left = 16
    Top = 18
    Width = 60
    Height = 17
    Caption = 'Daily'
    TabOrder = 0
    OnClick = DailyCheckBoxClick
  end
  object DayLB: TListBox
    Left = 46
    Top = 48
    Width = 139
    Height = 101
    ItemHeight = 13
    Items.Strings = (
      'Monday'
      'Tuesday'
      'Wednesday'
      'Thursday'
      'Friday'
      'Saturday'
      'Sunday')
    MultiSelect = True
    TabOrder = 1
  end
  object btnOK: TBitBtn
    Left = 126
    Top = 161
    Width = 98
    Height = 31
    TabOrder = 2
    OnClick = btnOKClick
    Kind = bkOK
  end
  object btnCancel: TBitBtn
    Left = 5
    Top = 161
    Width = 98
    Height = 31
    TabOrder = 3
    Kind = bkCancel
  end
end
