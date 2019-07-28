object CustomMasterBlockBkgForm: TCustomMasterBlockBkgForm
  Left = 123
  Top = 138
  Width = 820
  Height = 517
  Caption = 'CustomMasterBlockBkgForm'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  Menu = MainMenu1
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 809
    Height = 41
    TabOrder = 1
    object Label1: TLabel
      Left = 18
      Top = 16
      Width = 22
      Height = 13
      Caption = 'City'
    end
    object Label2: TLabel
      Left = 207
      Top = 16
      Width = 34
      Height = 13
      Caption = 'Agent'
    end
    object Label3: TLabel
      Left = 505
      Top = 17
      Width = 28
      Height = 13
      Caption = 'From'
    end
    object Label4: TLabel
      Left = 658
      Top = 16
      Width = 16
      Height = 13
      Caption = 'To'
    end
    object CitiesLookUpCmb: TDBLookupComboBox
      Left = 52
      Top = 12
      Width = 121
      Height = 21
      ListSource = CityLookupDS
      TabOrder = 0
    end
    object AgentsLookUpCmb: TDBLookupComboBox
      Left = 256
      Top = 12
      Width = 197
      Height = 21
      ListSource = AgentLookUpDS
      TabOrder = 1
    end
    object FromDateEF: TDateTimePicker
      Left = 541
      Top = 12
      Width = 108
      Height = 21
      Date = 38552.468052557880000000
      Format = 'dd/MM/yyyy'
      Time = 38552.468052557880000000
      TabOrder = 2
    end
    object ToDateEF: TDateTimePicker
      Left = 682
      Top = 12
      Width = 108
      Height = 21
      Date = 38552.468910277780000000
      Format = 'dd/MM/yyyy'
      Time = 38552.468910277780000000
      TabOrder = 3
    end
  end
  object GroupBox2: TGroupBox
    Left = 1
    Top = 40
    Width = 808
    Height = 316
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 11
      Top = 16
      Width = 790
      Height = 289
      DataSource = GridDS
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
    end
  end
  object GroupBox3: TGroupBox
    Left = 2
    Top = 360
    Width = 807
    Height = 59
    Caption = ' Set for current agent and date range '
    TabOrder = 2
    object Label5: TLabel
      Left = 5
      Top = 26
      Width = 77
      Height = 13
      Caption = 'No.Confirmed'
    end
    object Label6: TLabel
      Left = 178
      Top = 26
      Width = 75
      Height = 13
      Caption = 'Confirmed on'
    end
    object Label7: TLabel
      Left = 388
      Top = 27
      Width = 73
      Height = 13
      Caption = 'Reserved on'
    end
    object Label8: TLabel
      Left = 594
      Top = 27
      Width = 75
      Height = 13
      Caption = 'Cancelled on'
    end
    object SpeedButton1: TSpeedButton
      Left = 141
      Top = 22
      Width = 26
      Height = 20
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500000000055
        555557777777775F55550FFFFFFFFF0555557F5555555F7FFF5F0FEEEEEE0000
        05007F555555777775770FFFFFF0BFBFB00E7F5F5557FFF557770F0EEEE000FB
        FB0E7F75FF57775555770FF00F0FBFBFBF0E7F57757FFFF555770FE0B00000FB
        FB0E7F575777775555770FFF0FBFBFBFBF0E7F5575FFFFFFF5770FEEE0000000
        FB0E7F555777777755770FFFFF0B00BFB0007F55557577FFF7770FEEEEE0B000
        05557F555557577775550FFFFFFF0B0555557FF5F5F57575F55500F0F0F0F0B0
        555577F7F7F7F7F75F5550707070700B055557F7F7F7F7757FF5507070707050
        9055575757575757775505050505055505557575757575557555}
      NumGlyphs = 2
    end
    object SpeedButton2: TSpeedButton
      Left = 352
      Top = 24
      Width = 26
      Height = 20
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500000000055
        555557777777775F55550FFFFFFFFF0555557F5555555F7FFF5F0FEEEEEE0000
        05007F555555777775770FFFFFF0BFBFB00E7F5F5557FFF557770F0EEEE000FB
        FB0E7F75FF57775555770FF00F0FBFBFBF0E7F57757FFFF555770FE0B00000FB
        FB0E7F575777775555770FFF0FBFBFBFBF0E7F5575FFFFFFF5770FEEE0000000
        FB0E7F555777777755770FFFFF0B00BFB0007F55557577FFF7770FEEEEE0B000
        05557F555557577775550FFFFFFF0B0555557FF5F5F57575F55500F0F0F0F0B0
        555577F7F7F7F7F75F5550707070700B055557F7F7F7F7757FF5507070707050
        9055575757575757775505050505055505557575757575557555}
      NumGlyphs = 2
    end
    object SpeedButton3: TSpeedButton
      Left = 555
      Top = 24
      Width = 26
      Height = 20
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500000000055
        555557777777775F55550FFFFFFFFF0555557F5555555F7FFF5F0FEEEEEE0000
        05007F555555777775770FFFFFF0BFBFB00E7F5F5557FFF557770F0EEEE000FB
        FB0E7F75FF57775555770FF00F0FBFBFBF0E7F57757FFFF555770FE0B00000FB
        FB0E7F575777775555770FFF0FBFBFBFBF0E7F5575FFFFFFF5770FEEE0000000
        FB0E7F555777777755770FFFFF0B00BFB0007F55557577FFF7770FEEEEE0B000
        05557F555557577775550FFFFFFF0B0555557FF5F5F57575F55500F0F0F0F0B0
        555577F7F7F7F7F75F5550707070700B055557F7F7F7F7757FF5507070707050
        9055575757575757775505050505055505557575757575557555}
      NumGlyphs = 2
    end
    object SpeedButton4: TSpeedButton
      Left = 765
      Top = 24
      Width = 26
      Height = 20
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500000000055
        555557777777775F55550FFFFFFFFF0555557F5555555F7FFF5F0FEEEEEE0000
        05007F555555777775770FFFFFF0BFBFB00E7F5F5557FFF557770F0EEEE000FB
        FB0E7F75FF57775555770FF00F0FBFBFBF0E7F57757FFFF555770FE0B00000FB
        FB0E7F575777775555770FFF0FBFBFBFBF0E7F5575FFFFFFF5770FEEE0000000
        FB0E7F555777777755770FFFFF0B00BFB0007F55557577FFF7770FEEEEE0B000
        05557F555557577775550FFFFFFF0B0555557FF5F5F57575F55500F0F0F0F0B0
        555577F7F7F7F7F75F5550707070700B055557F7F7F7F7757FF5507070707050
        9055575757575757775505050505055505557575757575557555}
      NumGlyphs = 2
    end
    object NoConfEF: TDBEdit
      Left = 86
      Top = 22
      Width = 50
      Height = 21
      DataSource = GridDS
      TabOrder = 0
    end
    object ConfirmEF1: TDBEdit
      Left = 264
      Top = 6
      Width = 85
      Height = 21
      DataSource = GridDS
      Enabled = False
      TabOrder = 1
      Visible = False
    end
    object ReserveEF1: TDBEdit
      Left = 468
      Top = 8
      Width = 86
      Height = 21
      Enabled = False
      TabOrder = 2
      Visible = False
    end
    object CancEF1: TDBEdit
      Left = 675
      Top = 8
      Width = 90
      Height = 21
      Enabled = False
      TabOrder = 3
      Visible = False
    end
    object ConfirmEF: TMaskEdit
      Left = 264
      Top = 24
      Width = 76
      Height = 21
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      TabOrder = 4
      Text = '  /  /    '
    end
    object ReserveEF: TMaskEdit
      Left = 468
      Top = 24
      Width = 75
      Height = 21
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      TabOrder = 5
      Text = '  /  /    '
    end
    object CancEF: TMaskEdit
      Left = 676
      Top = 24
      Width = 76
      Height = 21
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      TabOrder = 6
      Text = '  /  /    '
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 424
    Width = 810
    Height = 42
    TabOrder = 3
    object CloseBtn: TBitBtn
      Left = 698
      Top = 8
      Width = 73
      Height = 27
      Caption = 'Clos&e'
      TabOrder = 0
      OnClick = CloseBtnClick
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
  object MainMenu1: TMainMenu
    Left = 208
    Top = 65520
    object Utilities1: TMenuItem
      Caption = 'Utilities'
      object Regenarate1: TMenuItem
        Caption = 'Regenarate'
      end
    end
    object Reports1: TMenuItem
      Caption = 'Reports'
      object BlockBookings1: TMenuItem
        Caption = 'Block Bookings'
      end
    end
  end
  object GridDS: TDataSource
    DataSet = GridCDS
    Left = 584
    Top = 96
  end
  object GridCDS: TClientDataSet
    Aggregates = <>
    PacketRecords = 0
    Params = <>
    ProviderName = 'GridDSP'
    BeforeInsert = GridCDSBeforeInsert
    AfterInsert = GridCDSAfterInsert
    BeforeEdit = GridCDSBeforeEdit
    BeforePost = GridCDSBeforePost
    AfterPost = GridCDSAfterPost
    BeforeDelete = GridCDSBeforeDelete
    AfterDelete = GridCDSAfterDelete
    Left = 616
    Top = 96
  end
  object GridDSP: TDataSetProvider
    DataSet = GridSQLTable
    Left = 616
    Top = 128
  end
  object GridSQLTable: TSQLTable
    MaxBlobSize = -1
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 584
    Top = 128
  end
  object CityLookUpQry: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 150
    Top = 33
  end
  object CityLookupDSP: TDataSetProvider
    DataSet = CityLookUpQry
    Left = 182
    Top = 33
  end
  object CityLookupCDS: TClientDataSet
    Aggregates = <>
    Filtered = True
    Params = <>
    ProviderName = 'CityLookupDSP'
    Left = 182
    Top = 1
  end
  object CityLookupDS: TDataSource
    DataSet = CityLookupCDS
    Left = 150
    Top = 1
  end
  object AgentLookUpQry: TSQLQuery
    DataSource = AgentLookUpDS
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 469
    Top = 32
  end
  object AgentLookUpDSP: TDataSetProvider
    DataSet = AgentLookUpQry
    Left = 501
    Top = 32
  end
  object AgentLookUpCDS: TClientDataSet
    Aggregates = <>
    Filtered = True
    MasterSource = CityLookupDS
    PacketRecords = 0
    Params = <>
    ProviderName = 'AgentLookUpDSP'
    Left = 501
  end
  object AgentLookUpDS: TDataSource
    DataSet = AgentLookUpCDS
    Left = 469
  end
end
