object VouSearchForm: TVouSearchForm
  Left = 80
  Top = 178
  Width = 855
  Height = 330
  Caption = 'Vouchers Search Form'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 5
    Top = 0
    Width = 836
    Height = 249
    Caption = ' Search By '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object OrgLab: TLabel
      Left = 320
      Top = 56
      Width = 4
      Height = 16
    end
    object Label1: TLabel
      Left = 530
      Top = 23
      Width = 102
      Height = 16
      Caption = 'Year reference :'
    end
    object VouNoRB: TRadioButton
      Left = 8
      Top = 24
      Width = 102
      Height = 17
      Caption = 'Voucher No. :'
      Checked = True
      TabOrder = 0
      TabStop = True
    end
    object PaxNameRB: TRadioButton
      Left = 8
      Top = 86
      Width = 105
      Height = 17
      Caption = 'Pax Name :'
      TabOrder = 4
    end
    object CommDateRB: TRadioButton
      Left = 8
      Top = 54
      Width = 173
      Height = 17
      Caption = 'Commencement Date :'
      TabOrder = 5
    end
    object VouNoEF: TEdit
      Left = 184
      Top = 20
      Width = 121
      Height = 24
      Color = clInfoBk
      TabOrder = 1
    end
    object VouYrRefEF: TEdit
      Left = 662
      Top = 20
      Width = 121
      Height = 24
      Color = clInfoBk
      TabOrder = 2
    end
    object CommDateEF: TMaskEdit
      Left = 184
      Top = 48
      Width = 81
      Height = 24
      Color = clInfoBk
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      TabOrder = 3
      Text = '  /  /    '
      OnKeyPress = CommDateEFKeyPress
    end
    object PaxNameEF: TEdit
      Left = 184
      Top = 80
      Width = 237
      Height = 24
      CharCase = ecUpperCase
      Color = clInfoBk
      TabOrder = 6
      OnKeyPress = PaxNameEFKeyPress
    end
    object PaxNameGrid: TDBGrid
      Left = 12
      Top = 115
      Width = 813
      Height = 108
      Color = clInfoBk
      DataSource = VouSearchDS
      TabOrder = 7
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'Arial'
      TitleFont.Style = [fsBold]
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 255
    Width = 847
    Height = 41
    Align = alBottom
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 110
      Top = 8
      Width = 75
      Height = 25
      TabOrder = 1
      Kind = bkCancel
    end
    object OkBB: TBitBtn
      Left = 669
      Top = 8
      Width = 75
      Height = 25
      Caption = 'OK'
      ModalResult = 1
      TabOrder = 0
      OnClick = OkBBClick
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
  end
  object VouSearchQry: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 573
    Top = 80
  end
  object VouSearchDS: TDataSource
    DataSet = VouSearchCDS
    Left = 573
    Top = 48
  end
  object VouSearchCDS: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'VouSearchDSP'
    Left = 605
    Top = 48
  end
  object VouSearchDSP: TDataSetProvider
    DataSet = VouSearchQry
    Left = 605
    Top = 80
  end
end
