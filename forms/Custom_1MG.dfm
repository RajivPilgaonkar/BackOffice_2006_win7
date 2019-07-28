object Form1: TForm1
  Left = 150
  Top = 109
  Width = 1022
  Height = 609
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1014
    Height = 41
    Align = alTop
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 534
    Width = 1014
    Height = 41
    Align = alBottom
    TabOrder = 1
    object cxButtonClose: TcxButton
      Left = 928
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Close'
      TabOrder = 0
    end
    object cxDBLabel1: TcxDBLabel
      Left = 852
      Top = 11
      DataBinding.DataSource = MasterDs
      Style.TextStyle = []
      Height = 24
      Width = 61
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 41
    Width = 1014
    Height = 493
    Align = alClient
    TabOrder = 2
    object cxPageControl1: TcxPageControl
      Left = 1
      Top = 1
      Width = 1012
      Height = 491
      ActivePage = cxTabSheet1
      Align = alClient
      TabOrder = 0
      ClientRectBottom = 491
      ClientRectRight = 1012
      ClientRectTop = 24
      object cxTabSheet1: TcxTabSheet
        Caption = 'Master'
        ImageIndex = 0
        object cxGrid1: TcxGrid
          Left = 0
          Top = 0
          Width = 1012
          Height = 467
          Align = alClient
          TabOrder = 0
          object cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = MasterDs
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.CellHints = True
            OptionsBehavior.FocusCellOnTab = True
            OptionsBehavior.FocusFirstCellOnNewRecord = True
            OptionsBehavior.FocusCellOnCycle = True
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.Appending = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            OptionsView.BandHeaders = False
            Bands = <
              item
              end>
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGrid1DBBandedTableView1
          end
        end
      end
    end
  end
  object MasterSds: TSQLDataSet
    CommandType = ctTable
    MaxBlobSize = -1
    Params = <>
    SQLConnection = AccountsDataModule.SQLConnection
    Left = 192
    Top = 208
  end
  object MasterDsp: TDataSetProvider
    DataSet = MasterSds
    UpdateMode = upWhereKeyOnly
    Left = 222
    Top = 208
  end
  object MasterCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'MasterDsp'
    Left = 255
    Top = 208
  end
  object MasterDs: TDataSource
    DataSet = MasterCds
    Left = 285
    Top = 208
  end
end
