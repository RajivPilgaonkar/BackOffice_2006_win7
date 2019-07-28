object CustomMasterPageControlForm: TCustomMasterPageControlForm
  Left = 272
  Top = 123
  Width = 613
  Height = 449
  Caption = 'CustomMasterPageControl'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 605
    Height = 65
    Align = alTop
    TabOrder = 0
    object Label2: TLabel
      Left = 10
      Top = 28
      Width = 32
      Height = 13
      Caption = 'Label'
    end
    object LookUpCmb: TDBLookupComboBox
      Left = 103
      Top = 24
      Width = 156
      Height = 21
      ListSource = DSLookup
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 374
    Width = 605
    Height = 41
    Align = alBottom
    TabOrder = 1
    object SearchLbl: TLabel
      Left = 24
      Top = 17
      Width = 41
      Height = 13
      Caption = 'Search'
    end
    object BitBtn1: TBitBtn
      Left = 518
      Top = 7
      Width = 75
      Height = 27
      Caption = 'Clos&e'
      TabOrder = 0
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
    object DBNavigator1: TDBNavigator
      Left = 298
      Top = 12
      Width = 200
      Height = 20
      TabOrder = 1
    end
    object SearchEdit: TEdit
      Left = 80
      Top = 12
      Width = 96
      Height = 21
      TabOrder = 2
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 65
    Width = 605
    Height = 309
    ActivePage = TabSheet6
    Align = alClient
    TabOrder = 2
    object TabSheet1: TTabSheet
      Caption = 'TabSheet1'
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 597
        Height = 281
        Align = alClient
        DataSource = GridDS1
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'TabSheet2'
      ImageIndex = 1
      object DBGrid2: TDBGrid
        Left = 0
        Top = 0
        Width = 597
        Height = 281
        Align = alClient
        DataSource = GridDS2
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'TabSheet3'
      ImageIndex = 2
    end
    object TabSheet4: TTabSheet
      Caption = 'TabSheet4'
      ImageIndex = 3
    end
    object TabSheet5: TTabSheet
      Caption = 'TabSheet5'
      ImageIndex = 4
    end
    object TabSheet6: TTabSheet
      Caption = 'TabSheet6'
      ImageIndex = 5
    end
  end
  object GridDS1: TDataSource
    DataSet = GridCDS1
    Left = 336
    Top = 229
  end
  object GridDSP1: TDataSetProvider
    DataSet = GridTbl1
    Left = 368
    Top = 256
  end
  object GridTbl1: TSQLTable
    MaxBlobSize = -1
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 336
    Top = 256
  end
  object GridCDS1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'GridDSP1'
    BeforePost = GridCDS1BeforePost
    AfterPost = GridCDS1AfterPost
    AfterDelete = GridCDS1AfterDelete
    Left = 368
    Top = 224
  end
  object GridDS2: TDataSource
    DataSet = GridCDS2
    Left = 456
    Top = 128
  end
  object GridDSP2: TDataSetProvider
    DataSet = GridTbl2
    Left = 488
    Top = 160
  end
  object GridTbl2: TSQLTable
    MaxBlobSize = -1
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 456
    Top = 160
  end
  object GridCDS2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'GridDSP2'
    BeforePost = GridCDS2BeforePost
    AfterPost = GridCDS2AfterPost
    AfterDelete = GridCDS2AfterDelete
    Left = 488
    Top = 128
  end
  object DSLookup: TDataSource
    DataSet = CDSLookup
    Left = 312
  end
  object CDSLookup: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPLookup'
    Left = 344
  end
  object DSPLookup: TDataSetProvider
    DataSet = LookUpQry
    Left = 344
    Top = 32
  end
  object LookUpQry: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      '')
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 312
    Top = 32
  end
end
