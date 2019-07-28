object FitStatusListForm: TFitStatusListForm
  Left = 130
  Top = 23
  Width = 967
  Height = 694
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
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 951
    Height = 41
    Align = alTop
    TabOrder = 0
    object cxButton4: TcxButton
      Left = 848
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Utilities'
      TabOrder = 0
      DropDownMenu = PopupMenu1
      Kind = cxbkDropDownButton
    end
    object cxLabel1: TcxLabel
      Left = 8
      Top = 13
      Caption = 'From Date'
      Transparent = True
    end
    object cxFromDateEdit: TcxDateEdit
      Left = 77
      Top = 12
      Properties.OnEditValueChanged = cxFromDateEditPropertiesEditValueChanged
      TabOrder = 2
      Width = 121
    end
    object cxLabel2: TcxLabel
      Left = 224
      Top = 12
      Caption = 'To Date'
      Transparent = True
    end
    object cxToDateEdit: TcxDateEdit
      Left = 282
      Top = 11
      Properties.OnEditValueChanged = cxToDateEditPropertiesEditValueChanged
      TabOrder = 4
      Width = 121
    end
    object cxButton1: TcxButton
      Left = 432
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Generate'
      TabOrder = 5
      OnClick = cxButton1Click
    end
  end
  object cxGridFit: TcxGrid
    Left = 0
    Top = 41
    Width = 951
    Height = 574
    Align = alClient
    TabOrder = 1
    object cxGridFitDBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = MasterDS
      DataController.KeyFieldNames = 'Quotations_id'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,##0'
          Kind = skSum
          Column = cxGridFitDBTableView1NumPax
        end
        item
          Format = 'Records: #,##0'
          Kind = skCount
          Column = cxGridFitDBTableView1PaxName
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.CellHints = True
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.Footer = True
      OptionsView.Indicator = True
      Styles.OnGetContentStyle = cxGridFitDBTableView1StylesGetContentStyle
      object cxGridFitDBTableView1Quotations_id: TcxGridDBColumn
        DataBinding.FieldName = 'Quotations_id'
        Visible = False
      end
      object cxGridFitDBTableView1StartDate: TcxGridDBColumn
        Caption = 'Start Date'
        DataBinding.FieldName = 'StartDate'
        Options.Filtering = False
        Options.Grouping = False
        SortIndex = 0
        SortOrder = soAscending
        Width = 86
      end
      object cxGridFitDBTableView1EndDate: TcxGridDBColumn
        Caption = 'End Date'
        DataBinding.FieldName = 'EndDate'
        Options.Editing = False
        Options.Filtering = False
        Options.Grouping = False
        Width = 95
      end
      object cxGridFitDBTableView1TourCode: TcxGridDBColumn
        Caption = 'Tour Code'
        DataBinding.FieldName = 'TourCode'
        Options.Filtering = False
        Options.Grouping = False
        Width = 66
      end
      object cxGridFitDBTableView1NumPax: TcxGridDBColumn
        Caption = 'Num Pax'
        DataBinding.FieldName = 'NumPax'
        Options.Filtering = False
        Options.Grouping = False
        Width = 56
      end
      object cxGridFitDBTableView1PaxName: TcxGridDBColumn
        Caption = 'Pax'
        DataBinding.FieldName = 'PaxName'
        Options.Filtering = False
        Options.Grouping = False
        Width = 161
      end
      object cxGridFitDBTableView1PrincipalAgent: TcxGridDBColumn
        Caption = 'Principal Agent'
        DataBinding.FieldName = 'PrincipalAgent'
        Width = 100
      end
      object cxGridFitDBTableView1Reference: TcxGridDBColumn
        DataBinding.FieldName = 'Reference'
        Options.Editing = False
        Options.Filtering = False
        Options.Grouping = False
        Width = 88
      end
      object cxGridFitDBTableView1Comment: TcxGridDBColumn
        DataBinding.FieldName = 'Comment'
        Options.Editing = False
        Options.Filtering = False
        Options.Grouping = False
        Width = 87
      end
      object cxGridFitDBTableView1Consultant: TcxGridDBColumn
        DataBinding.FieldName = 'Consultant'
        Width = 72
      end
      object cxGridFitDBTableView1BookingRecdDate: TcxGridDBColumn
        Caption = 'Bkg Recd'
        DataBinding.FieldName = 'BookingRecdDate'
        Options.Editing = False
        Options.Filtering = False
        Options.Grouping = False
        Width = 80
      end
      object cxGridFitDBTableView1QuotationDate: TcxGridDBColumn
        Caption = 'Bkg Entered'
        DataBinding.FieldName = 'QuotationDate'
        Options.Editing = False
        Options.Filtering = False
        Options.Grouping = False
        Width = 80
      end
      object cxGridFitDBTableView1QuotationSendDate: TcxGridDBColumn
        Caption = 'Quotation Sent'
        DataBinding.FieldName = 'QuotationSendDate'
        Options.Editing = False
        Options.Filtering = False
        Options.Grouping = False
        Width = 80
      end
      object cxGridFitDBTableView1QuotationNo: TcxGridDBColumn
        Caption = 'Quo. No.'
        DataBinding.FieldName = 'QuotationNo'
        Options.Editing = False
        Options.Filtering = False
        Options.Grouping = False
        Width = 60
      end
      object cxGridFitDBTableView1Confirmed: TcxGridDBColumn
        DataBinding.FieldName = 'Confirmed'
        Visible = False
        Width = 68
      end
      object cxGridFitDBTableView1Deadline: TcxGridDBColumn
        DataBinding.FieldName = 'Deadline'
        Options.Filtering = False
        Options.Grouping = False
        Width = 80
      end
      object cxGridFitDBTableView1Masters: TcxGridDBColumn
        DataBinding.FieldName = 'Masters'
        Width = 54
      end
      object cxGridFitDBTableView1Processed: TcxGridDBColumn
        DataBinding.FieldName = 'Processed'
        Visible = False
        Width = 62
      end
      object cxGridFitDBTableView1Status: TcxGridDBColumn
        DataBinding.FieldName = 'Status'
        Visible = False
      end
      object cxGridFitDBTableView1StatusLabel: TcxGridDBColumn
        Caption = 'Status'
        DataBinding.FieldName = 'StatusLabel'
        Width = 83
      end
      object cxGridFitDBTableView1TourFileSendDate: TcxGridDBColumn
        Caption = 'Tour File Send'
        DataBinding.FieldName = 'TourFileSendDate'
        Width = 100
      end
    end
    object cxGridFitLevel1: TcxGridLevel
      GridView = cxGridFitDBTableView1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 615
    Width = 951
    Height = 41
    Align = alBottom
    TabOrder = 2
    object CloseBtn: TcxButton
      Left = 857
      Top = 7
      Width = 75
      Height = 25
      Caption = 'Close'
      TabOrder = 0
      OnClick = CloseBtnClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        33333FFFFFFFFFFFFFFF000000000000000077777777777777770F7777777777
        77707F3F3333333333370F988888888888707F733FFFFFFFF3370F8800000000
        88707F337777777733370F888888888888707F333FFFFFFFF3370F8800000000
        88707F337777777733370F888888888888707F333333333333370F8888888888
        88707F333333333333370FFFFFFFFFFFFFF07FFFFFFFFFFFFFF7000000000000
        0000777777777777777733333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
    end
  end
  object MasterSds: TSQLDataSet
    CommandText = 'exec p_QuoFitDeadline '#39'04/01/2008'#39', '#39'03/31/2009'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 32
    Top = 160
  end
  object MasterDsp: TDataSetProvider
    DataSet = MasterSds
    Left = 56
    Top = 160
  end
  object MasterCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'MasterDsp'
    Left = 72
    Top = 160
    object MasterCdsQuotations_id: TIntegerField
      FieldName = 'Quotations_id'
    end
    object MasterCdsStartDate: TSQLTimeStampField
      FieldName = 'StartDate'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object MasterCdsPaxName: TStringField
      FieldName = 'PaxName'
      Size = 100
    end
    object MasterCdsPrincipalAgent: TStringField
      FieldName = 'PrincipalAgent'
      Size = 100
    end
    object MasterCdsConsultant: TStringField
      FieldName = 'Consultant'
      Size = 30
    end
    object MasterCdsConfirmed: TBooleanField
      FieldName = 'Confirmed'
    end
    object MasterCdsDeadline: TSQLTimeStampField
      FieldName = 'Deadline'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object MasterCdsProcessed: TBooleanField
      FieldName = 'Processed'
    end
    object MasterCdsTourCode: TStringField
      FieldName = 'TourCode'
      Size = 10
    end
    object MasterCdsStatus: TIntegerField
      FieldName = 'Status'
    end
    object MasterCdsNumPax: TIntegerField
      FieldName = 'NumPax'
    end
    object MasterCdsStatusLabel: TStringField
      FieldName = 'StatusLabel'
    end
    object MasterCdsMasters: TBooleanField
      FieldName = 'Masters'
    end
    object MasterCdsComment: TStringField
      FieldName = 'Comment'
      Size = 100
    end
    object MasterCdsReference: TStringField
      FieldName = 'Reference'
      Size = 50
    end
    object MasterCdsBookingRecdDate: TSQLTimeStampField
      FieldName = 'BookingRecdDate'
    end
    object MasterCdsBookingEntryDate: TSQLTimeStampField
      FieldName = 'BookingEntryDate'
    end
    object MasterCdsQuotationSendDate: TSQLTimeStampField
      FieldName = 'QuotationSendDate'
    end
    object MasterCdsQuotationDate: TSQLTimeStampField
      FieldName = 'QuotationDate'
    end
    object MasterCdsEndDate: TSQLTimeStampField
      FieldName = 'EndDate'
    end
    object MasterCdsQuotationNo: TIntegerField
      FieldName = 'QuotationNo'
    end
    object MasterCdsTourFileSendDate: TSQLTimeStampField
      FieldName = 'TourFileSendDate'
      DisplayFormat = 'dd/mm/yyyy'
    end
  end
  object MasterDS: TDataSource
    DataSet = MasterCds
    Left = 88
    Top = 160
  end
  object SaveDialog: TSaveDialog
    Left = 651
    Top = 49
  end
  object dxComponentPrinter: TdxComponentPrinter
    CurrentLink = dxComponentPrinterLink1
    Version = 0
    Left = 684
    Top = 49
    object dxComponentPrinterLink1: TdxGridReportLink
      PrinterPage.DMPaper = 1
      PrinterPage.Footer = 200
      PrinterPage.Header = 200
      PrinterPage.Margins.Bottom = 500
      PrinterPage.Margins.Left = 500
      PrinterPage.Margins.Right = 500
      PrinterPage.Margins.Top = 500
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageSize.X = 8500
      PrinterPage.PageSize.Y = 11000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 1
      ReportDocument.CreationDate = 39368.707159826390000000
      OptionsFormatting.UseNativeStyles = True
      OptionsOnEveryPage.Footers = False
      OptionsOnEveryPage.Headers = False
      OptionsOnEveryPage.Caption = False
      OptionsOnEveryPage.FilterBar = False
      OptionsView.Caption = False
      BuiltInReportLink = True
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 872
    Top = 40
    object SaveAsExcel1: TMenuItem
      Caption = 'Save As Excel'
      OnClick = SaveAsExcel1Click
    end
    object Print1: TMenuItem
      Caption = 'Print'
      OnClick = Print1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object ExpandAll1: TMenuItem
      Caption = 'Expand All'
      OnClick = ExpandAll1Click
    end
    object CollapseAll1: TMenuItem
      Caption = 'Collapse All'
      OnClick = CollapseAll1Click
    end
  end
  object CxStyleRepository1: TcxStyleRepository
    Left = 608
    Top = 8
    PixelsPerInch = 96
    object cxStyleGreen: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 13828073
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -7
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
    object cxStyleBlue: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 16770790
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -7
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
    object cxStyleRed: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 14544639
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -7
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
    object cxStyleDarkRed: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 5592575
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
  end
end
