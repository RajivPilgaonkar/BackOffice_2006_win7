object Custom_1MG_Form: TCustom_1MG_Form
  Left = 375
  Top = 58
  Width = 841
  Height = 557
  Caption = 'Custom 1M1G'
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
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 825
    Height = 41
    Align = alTop
    TabOrder = 1
  end
  object Panel2: TPanel
    Left = 0
    Top = 478
    Width = 825
    Height = 41
    Align = alBottom
    TabOrder = 2
    object cxButtonClose: TcxButton
      Left = 744
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Close'
      TabOrder = 0
      OnClick = cxButtonCloseClick
    end
    object cxDBLabelKeyId: TcxDBLabel
      Left = 668
      Top = 11
      DataBinding.DataSource = MasterDs
      Style.TextStyle = []
      Transparent = True
      Height = 24
      Width = 61
    end
    object cxButtonUtilities: TcxButton
      Left = 8
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Utilities'
      TabOrder = 2
      DropDownMenu = PopupMenu1
      Kind = cxbkDropDownButton
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 41
    Width = 825
    Height = 437
    Align = alClient
    TabOrder = 0
    object cxPageControl1: TcxPageControl
      Left = 1
      Top = 1
      Width = 823
      Height = 435
      ActivePage = cxTabSheet1
      Align = alClient
      TabOrder = 0
      ClientRectBottom = 429
      ClientRectLeft = 3
      ClientRectRight = 817
      ClientRectTop = 26
      object cxTabSheet1: TcxTabSheet
        Caption = 'Master'
        ImageIndex = 0
        object cxGrid1: TcxGrid
          Left = 0
          Top = 0
          Width = 814
          Height = 403
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
    SQLConnection = BackOfficeDataModule.SQLConnection
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
    BeforeInsert = MasterCdsBeforeInsert
    BeforeEdit = MasterCdsBeforeEdit
    BeforePost = MasterCdsBeforePost
    AfterPost = MasterCdsAfterPost
    BeforeDelete = MasterCdsBeforeDelete
    AfterDelete = MasterCdsAfterDelete
    Left = 255
    Top = 208
  end
  object MasterDs: TDataSource
    DataSet = MasterCds
    Left = 285
    Top = 208
  end
  object PopupMenu1: TPopupMenu
    Left = 89
    Top = 543
  end
end
