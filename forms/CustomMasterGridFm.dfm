object CustomMasterGridForm: TCustomMasterGridForm
  Left = 189
  Top = 124
  Width = 559
  Height = 440
  Caption = 'CustomMasterGridForm'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object CustomMasterGridGroupBox: TGroupBox
    Left = 6
    Top = 7
    Width = 528
    Height = 386
    Caption = 'CustomMasterGridGroupBox'
    TabOrder = 0
    object SearchLbl: TLabel
      Left = 16
      Top = 345
      Width = 41
      Height = 13
      Caption = 'Search'
    end
    object KeyIdDBText: TDBText
      Left = 470
      Top = 369
      Width = 58
      Height = 11
      AutoSize = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'MS Serif'
      Font.Style = []
      ParentFont = False
    end
    object CustomMasterDBGrid: TDBGrid
      Left = 16
      Top = 17
      Width = 497
      Height = 313
      DataSource = MasterDS
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
    end
    object SearchEdit: TEdit
      Left = 72
      Top = 342
      Width = 96
      Height = 21
      TabOrder = 1
    end
    object CloseBtn: TBitBtn
      Left = 442
      Top = 343
      Width = 73
      Height = 27
      Caption = 'Clos&e'
      TabOrder = 2
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
  object DataSetProvider: TDataSetProvider
    DataSet = MasterSQLTable
    Left = 240
    Top = 72
  end
  object MasterDS: TDataSource
    DataSet = MasterCDS
    Left = 208
    Top = 40
  end
  object MasterCDS: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider'
    BeforeInsert = MasterCDSBeforeInsert
    AfterInsert = MasterCDSAfterInsert
    BeforeEdit = MasterCDSBeforeEdit
    BeforePost = MasterCDSBeforePost
    AfterPost = MasterCDSAfterPost
    BeforeDelete = MasterCDSBeforeDelete
    AfterDelete = MasterCDSAfterDelete
    Left = 240
    Top = 40
  end
  object MasterSQLTable: TSQLTable
    MaxBlobSize = -1
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 208
    Top = 72
  end
end
