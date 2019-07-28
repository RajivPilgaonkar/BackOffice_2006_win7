object SearchSortForm: TSearchSortForm
  Left = 394
  Top = 29
  Width = 696
  Height = 480
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poDesktopCenter
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 405
    Width = 688
    Height = 41
    Align = alBottom
    TabOrder = 0
    object OkBB: TBitBtn
      Left = 372
      Top = 8
      Width = 75
      Height = 25
      TabOrder = 0
      Kind = bkOK
    end
    object CancelBB: TBitBtn
      Left = 276
      Top = 8
      Width = 75
      Height = 25
      TabOrder = 1
      Kind = bkCancel
    end
  end
  object SearchGrid: TcxGrid
    Left = 0
    Top = 0
    Width = 688
    Height = 405
    Align = alClient
    TabOrder = 1
    object SearchGridDBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      OnFocusedItemChanged = SearchGridDBTableView1FocusedItemChanged
      DataController.DataSource = SearchDS
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.IncSearch = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
      Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
    end
    object SearchGridLevel1: TcxGridLevel
      GridView = SearchGridDBTableView1
    end
  end
  object SearchSds: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 216
    Top = 8
  end
  object SearchCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'SearchDsp'
    Left = 248
    Top = 8
  end
  object SearchDS: TDataSource
    DataSet = SearchCds
    Left = 272
    Top = 8
  end
  object SearchDsp: TDataSetProvider
    DataSet = SearchSds
    Left = 232
    Top = 8
  end
end
