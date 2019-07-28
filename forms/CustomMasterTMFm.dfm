object CustomMasterTMForm: TCustomMasterTMForm
  Left = 192
  Top = 107
  Width = 696
  Height = 480
  Caption = 'Custom Master Tour-Masters Form'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 405
    Width = 688
    Height = 41
    Align = alBottom
    TabOrder = 0
    object DBNavigator1: TDBNavigator
      Left = 362
      Top = 9
      Width = 240
      Height = 25
      DataSource = MasterDS
      TabOrder = 0
    end
    object BitBtn1: TBitBtn
      Left = 609
      Top = 8
      Width = 73
      Height = 27
      Caption = 'Clos&e'
      TabOrder = 1
      OnClick = BitBtn1Click
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00388888888877
        F7F787F8888888888333333F00004444400888FFF444448888888888F333FF8F
        000033334D5007FFF4333388888888883338888F0000333345D50FFFF4333333
        338F888F3338F33F000033334D5D0FFFF43333333388788F3338F33F00003333
        45D50FEFE4333333338F878F3338F33F000033334D5D0FFFF43333333388788F
        3338F33F0000333345D50FEFE4333333338F878F3338F33F000033334D5D0FFF
        F43333333388788F3338F33F0000333345D50FEFE4333333338F878F3338F33F
        000033334D5D0EFEF43333333388788F3338F33F0000333345D50FEFE4333333
        338F878F3338F33F000033334D5D0EFEF43333333388788F3338F33F00003333
        4444444444333333338F8F8FFFF8F33F00003333333333333333333333888888
        8888333F00003333330000003333333333333FFFFFF3333F00003333330AAAA0
        333333333333888888F3333F00003333330000003333333333338FFFF8F3333F
        0000}
      NumGlyphs = 2
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 688
    Height = 405
    Align = alClient
    TabOrder = 1
    object Label2: TLabel
      Left = 12
      Top = 236
      Width = 50
      Height = 13
      Caption = 'Remarks'
    end
    object Label3: TLabel
      Left = 68
      Top = 50
      Width = 39
      Height = 13
      Caption = 'Label1'
    end
    object Label4: TLabel
      Left = 68
      Top = 76
      Width = 39
      Height = 13
      Caption = 'Label2'
    end
    object Label5: TLabel
      Left = 68
      Top = 102
      Width = 39
      Height = 13
      Caption = 'Label3'
    end
    object Label6: TLabel
      Left = 68
      Top = 128
      Width = 39
      Height = 13
      Caption = 'Label4'
    end
    object Label7: TLabel
      Left = 68
      Top = 154
      Width = 39
      Height = 13
      Caption = 'Label5'
    end
    object Label8: TLabel
      Left = 356
      Top = 42
      Width = 39
      Height = 13
      Caption = 'Label6'
    end
    object Label9: TLabel
      Left = 356
      Top = 94
      Width = 39
      Height = 13
      Caption = 'Label8'
    end
    object Label10: TLabel
      Left = 356
      Top = 120
      Width = 39
      Height = 13
      Caption = 'Label9'
    end
    object Label11: TLabel
      Left = 356
      Top = 146
      Width = 46
      Height = 13
      Caption = 'Label10'
    end
    object Label12: TLabel
      Left = 356
      Top = 68
      Width = 39
      Height = 13
      Caption = 'Label7'
    end
    object Label13: TLabel
      Left = 357
      Top = 166
      Width = 46
      Height = 13
      Caption = 'Label11'
    end
    object GroupBox1: TGroupBox
      Left = 1
      Top = 299
      Width = 686
      Height = 105
      Align = alBottom
      Caption = 'Tour Details'
      TabOrder = 0
      object Label1: TLabel
        Left = 324
        Top = 13
        Width = 183
        Height = 13
        Caption = 'Applicable to the following tours'
      end
      object DBGrid1: TDBGrid
        Left = 2
        Top = 15
        Width = 285
        Height = 88
        Align = alLeft
        DataSource = MasterToursDS
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
      end
      object DBEdit1: TDBEdit
        Left = 326
        Top = 33
        Width = 185
        Height = 21
        Color = cl3DLight
        DataSource = MasterDS
        Enabled = False
        TabOrder = 1
      end
    end
    object DBMemo1: TDBMemo
      Left = 69
      Top = 238
      Width = 509
      Height = 59
      DataSource = MasterDS
      TabOrder = 1
    end
    object DBEdit6: TDBEdit
      Left = 152
      Top = 48
      Width = 121
      Height = 21
      TabOrder = 2
    end
    object DBEdit5: TDBEdit
      Left = 152
      Top = 144
      Width = 121
      Height = 21
      TabOrder = 3
    end
    object DBEdit4: TDBEdit
      Left = 152
      Top = 120
      Width = 121
      Height = 21
      TabOrder = 4
    end
    object DBEdit3: TDBEdit
      Left = 152
      Top = 96
      Width = 121
      Height = 21
      TabOrder = 5
    end
    object DBEdit2: TDBEdit
      Left = 152
      Top = 72
      Width = 121
      Height = 21
      TabOrder = 6
    end
    object DBLookupComboBox4: TDBLookupComboBox
      Left = 432
      Top = 160
      Width = 145
      Height = 21
      TabOrder = 7
    end
    object DBLookupComboBox3: TDBLookupComboBox
      Left = 432
      Top = 136
      Width = 145
      Height = 21
      TabOrder = 8
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 432
      Top = 112
      Width = 145
      Height = 21
      TabOrder = 9
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 432
      Top = 88
      Width = 145
      Height = 21
      TabOrder = 10
    end
    object DBLookupComboBox5: TDBLookupComboBox
      Left = 432
      Top = 40
      Width = 145
      Height = 21
      TabOrder = 11
    end
    object DBLookupComboBox6: TDBLookupComboBox
      Left = 432
      Top = 64
      Width = 145
      Height = 21
      TabOrder = 12
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 656
    object Clear1: TMenuItem
      Caption = '&Clear'
    end
  end
  object MasterTable: TSQLTable
    MaxBlobSize = -1
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 520
    Top = 368
  end
  object MasterToursTable: TSQLTable
    MaxBlobSize = -1
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 608
    Top = 368
  end
  object MasterDSP: TDataSetProvider
    DataSet = MasterTable
    Left = 553
    Top = 370
  end
  object MasterToursDSP: TDataSetProvider
    DataSet = MasterToursTable
    Left = 641
    Top = 370
  end
  object MasterDS: TDataSource
    DataSet = MasterCDS
    Left = 521
    Top = 339
  end
  object MasterToursDS: TDataSource
    DataSet = MasterToursCDS
    Left = 609
    Top = 339
  end
  object MasterCDS: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'MasterDSP'
    BeforePost = MasterCDSBeforePost
    AfterPost = MasterCDSAfterPost
    Left = 553
    Top = 339
  end
  object MasterToursCDS: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'MasterToursDSP'
    BeforePost = MasterToursCDSBeforePost
    AfterPost = MasterToursCDSAfterPost
    Left = 641
    Top = 339
  end
end
