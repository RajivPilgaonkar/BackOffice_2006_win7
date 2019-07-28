object CopyFitMasterForm: TCopyFitMasterForm
  Left = 195
  Top = 108
  Width = 666
  Height = 480
  Caption = 'CopyFitMasterForm'
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
  object Panel1: TPanel
    Left = 0
    Top = 401
    Width = 650
    Height = 41
    Align = alBottom
    TabOrder = 0
    object cxOkButton: TcxButton
      Left = 320
      Top = 8
      Width = 75
      Height = 25
      Caption = 'OK'
      Default = True
      ModalResult = 1
      TabOrder = 0
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333000003333333333F777773FF333333008877700
        33333337733FFF773F33330887000777033333733F777FFF73F330880FAFAF07
        703337F37733377FF7F33080F00000F07033373733777337F73F087F00A2200F
        77037F3737333737FF7F080A0A2A220A07037F737F3333737F7F0F0F0AAAA20F
        07037F737F3333737F7F0F0A0FAA2A0A08037F737FF33373737F0F7F00FFA00F
        780373F737FFF737F3733080F00000F0803337F73377733737F330F80FAFAF08
        8033373F773337733733330F8700078803333373FF77733F733333300FFF8800
        3333333773FFFF77333333333000003333333333377777333333}
      NumGlyphs = 2
    end
    object cxCancelButton: TcxButton
      Left = 192
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 1
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333000003333333333F777773FF333333008877700
        33333337733FFF773F33330887000777033333733F777FFF73F330880F9F9F07
        703337F37733377FF7F33080F00000F07033373733777337F73F087F0091100F
        77037F3737333737FF7F08090919110907037F737F3333737F7F0F0F0999910F
        07037F737F3333737F7F0F090F99190908037F737FF33373737F0F7F00FF900F
        780373F737FFF737F3733080F00000F0803337F73377733737F330F80F9F9F08
        8033373F773337733733330F8700078803333373FF77733F733333300FFF8800
        3333333773FFFF77333333333000003333333333377777333333}
      NumGlyphs = 2
    end
  end
  object GroupBox1: TcxGroupBox
    Left = 32
    Top = 16
    TabOrder = 1
    Height = 369
    Width = 585
    object cxGrid2: TcxGrid
      Left = 3
      Top = 18
      Width = 579
      Height = 348
      Align = alClient
      TabOrder = 0
      object cxGrid2DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = FitAgentsDs
        DataController.KeyFieldNames = 'MasterCode'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsData.Appending = True
        OptionsSelection.MultiSelect = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object cxGrid2DBTableView1Masters_id: TcxGridDBColumn
          DataBinding.FieldName = 'Masters_id'
          Visible = False
        end
        object cxGrid2DBTableView1MasterCode: TcxGridDBColumn
          Caption = 'Master Code'
          DataBinding.FieldName = 'MasterCode'
          Options.Filtering = False
          Options.Grouping = False
          Width = 98
        end
        object cxGrid2DBTableView1Name: TcxGridDBColumn
          DataBinding.FieldName = 'Name'
          Options.Filtering = False
          Options.Grouping = False
        end
      end
      object cxGrid2Level1: TcxGridLevel
        GridView = cxGrid2DBTableView1
      end
    end
  end
  object FitAgentsSds: TSQLDataSet
    CommandText = 
      'select m.Masters_id, MasterCode, Name from Masters m, MasterFitA' +
      'gents mf where m.Masters_id = mf.Masters_id'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 168
    Top = 8
  end
  object FitAgentsDsp: TDataSetProvider
    DataSet = FitAgentsSds
    Left = 200
    Top = 8
  end
  object FitAgentsCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FitAgentsDsp'
    Left = 224
    Top = 8
    object FitAgentsCdsMasterCode: TStringField
      FieldName = 'MasterCode'
      Size = 50
    end
    object FitAgentsCdsName: TStringField
      FieldName = 'Name'
      Size = 50
    end
    object FitAgentsCdsMasters_id: TIntegerField
      FieldName = 'Masters_id'
    end
  end
  object FitAgentsDs: TDataSource
    DataSet = FitAgentsCds
    Left = 256
    Top = 8
  end
end
