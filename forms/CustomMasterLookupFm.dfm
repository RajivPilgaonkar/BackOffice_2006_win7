object CustomMasterLookupForm: TCustomMasterLookupForm
  Left = 225
  Top = 192
  Width = 696
  Height = 480
  Caption = 'CustomMasterLookupForm'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 5
    Width = 671
    Height = 432
    Caption = ' Train Categories '
    TabOrder = 0
    object Label1: TLabel
      Left = 66
      Top = 28
      Width = 80
      Height = 13
      Caption = 'Train Stations'
    end
    object DBGrid1: TDBGrid
      Left = 24
      Top = 80
      Width = 617
      Height = 289
      DataSource = GridDS
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 168
      Top = 24
      Width = 170
      Height = 21
      ListSource = DSLookup
      TabOrder = 1
    end
  end
  object BitBtn1: TBitBtn
    Left = 580
    Top = 390
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
  object DSLookup: TDataSource
    DataSet = CDSLookup
    Left = 328
    Top = 8
  end
  object CDSLookup: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPLookup'
    Left = 360
    Top = 8
  end
  object SQLQueryLookup: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      '')
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 328
    Top = 40
  end
  object DSPLookup: TDataSetProvider
    DataSet = SQLQueryLookup
    Left = 360
    Top = 40
  end
  object GridDS: TDataSource
    DataSet = GridCDS
    Left = 584
    Top = 96
  end
  object GridCDS: TClientDataSet
    Aggregates = <>
    MasterSource = DSLookup
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
end
