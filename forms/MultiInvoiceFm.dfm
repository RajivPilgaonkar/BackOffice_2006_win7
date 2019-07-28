object MultiInvoiceForm: TMultiInvoiceForm
  Left = 386
  Top = 18
  Width = 819
  Height = 649
  Caption = 'Multi Invoices'
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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 41
    Width = 803
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 168
      Height = 13
      Caption = 'Tour Starting Dates between '
      Transparent = True
    end
    object Label2: TLabel
      Left = 322
      Top = 8
      Width = 22
      Height = 13
      Caption = 'and'
    end
    object FromDateEdit: TMaskEdit
      Left = 192
      Top = 8
      Width = 121
      Height = 21
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      TabOrder = 0
      Text = '  /  /    '
      OnExit = FromDateEditExit
    end
    object ToDateEdit: TMaskEdit
      Left = 359
      Top = 8
      Width = 121
      Height = 21
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      TabOrder = 1
      Text = '  /  /    '
    end
    object cxDisplayButton: TcxButton
      Left = 496
      Top = 8
      Width = 89
      Height = 25
      Caption = 'Display'
      TabOrder = 2
      OnClick = cxDisplayButtonClick
    end
    object cxButton1: TcxButton
      Left = 632
      Top = 8
      Width = 41
      Height = 25
      Hint = 'Previous Month'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = cxButton1Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333303333
        333333333337F33333333333333033333333333333373F333333333333090333
        33333333337F7F33333333333309033333333333337373F33333333330999033
        3333333337F337F33333333330999033333333333733373F3333333309999903
        333333337F33337F33333333099999033333333373333373F333333099999990
        33333337FFFF3FF7F33333300009000033333337777F77773333333333090333
        33333333337F7F33333333333309033333333333337F7F333333333333090333
        33333333337F7F33333333333309033333333333337F7F333333333333090333
        33333333337F7F33333333333300033333333333337773333333}
      NumGlyphs = 2
    end
    object cxButton2: TcxButton
      Left = 680
      Top = 8
      Width = 41
      Height = 25
      Hint = 'Next Month'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = cxButton2Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000333
        3333333333777F33333333333309033333333333337F7F333333333333090333
        33333333337F7F33333333333309033333333333337F7F333333333333090333
        33333333337F7F33333333333309033333333333FF7F7FFFF333333000090000
        3333333777737777F333333099999990333333373F3333373333333309999903
        333333337F33337F33333333099999033333333373F333733333333330999033
        3333333337F337F3333333333099903333333333373F37333333333333090333
        33333333337F7F33333333333309033333333333337373333333333333303333
        333333333337F333333333333330333333333333333733333333}
      NumGlyphs = 2
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 572
    Width = 803
    Height = 39
    Align = alBottom
    TabOrder = 1
    object Progbar: TProgressBar
      Left = 136
      Top = 12
      Width = 145
      Height = 17
      TabOrder = 0
    end
    object cxButton3: TcxButton
      Left = 3
      Top = 8
      Width = 129
      Height = 25
      Caption = 'Generate Invoices'
      TabOrder = 1
      DropDownMenu = GenerateInvoiceMenu
      Kind = cxbkDropDown
    end
    object cxButton4: TcxButton
      Left = 515
      Top = 8
      Width = 105
      Height = 25
      Caption = 'Delete Invoices'
      TabOrder = 2
      DropDownMenu = DeleteInvoiceMenu
      Kind = cxbkDropDown
    end
    object cxButton6: TcxButton
      Left = 288
      Top = 8
      Width = 97
      Height = 25
      Caption = 'View Invoices'
      TabOrder = 3
      DropDownMenu = ViewInvoiceMenu
      Kind = cxbkDropDown
    end
    object cxButton7: TcxButton
      Left = 398
      Top = 8
      Width = 105
      Height = 25
      Caption = 'Export Invoices'
      TabOrder = 4
      DropDownMenu = ExportMenu
      Kind = cxbkDropDown
    end
    object cxButton8: TcxButton
      Left = 672
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Close'
      TabOrder = 5
      OnClick = cxButton8Click
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
  object InvoiceGrid: TcxGrid
    Left = 0
    Top = 82
    Width = 803
    Height = 490
    Align = alClient
    TabOrder = 2
    object InvoiceGridDBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = MasterTourDS
      DataController.KeyFieldNames = 'Masters_id;MasterDepDate'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,##0'
          Kind = skCount
          Column = InvoiceGridDBTableView1MasterCode
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
      Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
      object InvoiceGridDBTableView1MasterCode: TcxGridDBColumn
        Caption = 'Master Code'
        DataBinding.FieldName = 'MasterCode'
        Options.Filtering = False
        Options.Grouping = False
        Width = 99
      end
      object InvoiceGridDBTableView1MasterDepDate: TcxGridDBColumn
        Caption = 'Departure Date'
        DataBinding.FieldName = 'MasterDepDate'
        Options.Filtering = False
        Options.Grouping = False
        Width = 140
      end
      object InvoiceGridDBTableView1NumPax: TcxGridDBColumn
        Caption = 'Num Pax'
        DataBinding.FieldName = 'NumPax'
        Options.Filtering = False
        Options.Grouping = False
      end
      object InvoiceGridDBTableView1NumCancelled: TcxGridDBColumn
        Caption = 'Num Cancelled'
        DataBinding.FieldName = 'NumCancelled'
        Options.Filtering = False
        Options.Grouping = False
        Width = 129
      end
      object InvoiceGridDBTableView1Fit: TcxGridDBColumn
        DataBinding.FieldName = 'FIT'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Options.Filtering = False
        Options.Grouping = False
        Width = 70
      end
      object InvoiceGridDBTableView1InvoiceNo: TcxGridDBColumn
        Caption = 'Invoice No'
        DataBinding.FieldName = 'InvoiceNo'
        Options.Filtering = False
        Options.Grouping = False
        Width = 85
      end
      object InvoiceGridDBTableView1InvoiceDate: TcxGridDBColumn
        Caption = 'Invoice Date'
        DataBinding.FieldName = 'InvoiceDate'
        Options.Filtering = False
        Options.Grouping = False
        Width = 117
      end
      object InvoiceGridDBTableView1ErrorNo: TcxGridDBColumn
        Caption = 'Error No'
        DataBinding.FieldName = 'ErrorNo'
        Width = 61
      end
      object InvoiceGridDBTableView1TourDepDate: TcxGridDBColumn
        Caption = 'Tour Dep Date'
        DataBinding.FieldName = 'TourDepDate'
        Visible = False
        Width = 100
      end
      object InvoiceGridDBTableView1QuoDepDate: TcxGridDBColumn
        Caption = 'Quo Dep Date'
        DataBinding.FieldName = 'QuoDepDate'
        Visible = False
        Width = 100
      end
      object InvoiceGridDBTableView1QuoModDepDate: TcxGridDBColumn
        Caption = 'Mod Dep Date'
        DataBinding.FieldName = 'QuoModDepDate'
        Visible = False
        Width = 100
      end
    end
    object InvoiceGridLevel1: TcxGridLevel
      GridView = InvoiceGridDBTableView1
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 803
    Height = 41
    Align = alTop
    TabOrder = 3
    object Label3: TLabel
      Left = 16
      Top = 13
      Width = 166
      Height = 13
      Caption = 'Invoice Date ......................'
      Transparent = True
    end
    object TL_Exp_Label: TLabel
      Left = 496
      Top = 4
      Width = 82
      Height = 13
      Caption = 'TL_Exp_Label'
      Transparent = True
    end
    object TL_All_Label: TLabel
      Left = 496
      Top = 20
      Width = 75
      Height = 13
      Caption = 'TL_All_Label'
      Transparent = True
    end
    object InvDateEdit: TMaskEdit
      Left = 191
      Top = 8
      Width = 121
      Height = 21
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      TabOrder = 0
      Text = '  /  /    '
    end
  end
  object MasterTourSds: TSQLDataSet
    CommandText = 'exec p_GetMasterToursDateRange '#39'01/01/2005'#39', '#39'01/05/2005'#39', 1'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 48
    Top = 72
  end
  object MasterTourDsp: TDataSetProvider
    DataSet = MasterTourSds
    Left = 72
    Top = 72
  end
  object MasterTourDS: TDataSource
    DataSet = MasterTourCds
    Left = 104
    Top = 72
  end
  object MasterTourCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'MasterTourDsp'
    Left = 88
    Top = 72
    object MasterTourCdsMasters_id: TIntegerField
      FieldName = 'Masters_id'
    end
    object MasterTourCdsMasterCode: TStringField
      FieldName = 'MasterCode'
      Size = 5
    end
    object MasterTourCdsMasterDepDate: TSQLTimeStampField
      FieldName = 'MasterDepDate'
    end
    object MasterTourCdsNumPax: TIntegerField
      FieldName = 'NumPax'
    end
    object MasterTourCdsNumCancelled: TIntegerField
      FieldName = 'NumCancelled'
    end
    object MasterTourCdsFIT: TBooleanField
      FieldName = 'FIT'
    end
    object MasterTourCdsStatus: TIntegerField
      FieldName = 'Status'
    end
    object MasterTourCdsInvoiceNo: TIntegerField
      FieldName = 'InvoiceNo'
    end
    object MasterTourCdsInvoiceDate: TSQLTimeStampField
      FieldName = 'InvoiceDate'
    end
    object MasterTourCdsInvoices_id: TIntegerField
      FieldName = 'Invoices_id'
    end
    object MasterTourCdsOrderNo: TIntegerField
      FieldName = 'OrderNo'
    end
    object MasterTourCdsItineraries_id: TIntegerField
      FieldName = 'Itineraries_id'
    end
    object MasterTourCdsItineraryCreated: TStringField
      FieldName = 'ItineraryCreated'
      Size = 3
    end
    object MasterTourCdsNumVouchers: TIntegerField
      FieldName = 'NumVouchers'
    end
    object MasterTourCdsNumManualVouchers: TIntegerField
      FieldName = 'NumManualVouchers'
    end
    object MasterTourCdsTourNo: TIntegerField
      FieldName = 'TourNo'
    end
    object MasterTourCdsNumMail: TIntegerField
      FieldName = 'NumMail'
    end
    object MasterTourCdsSendMail: TBooleanField
      FieldName = 'SendMail'
    end
    object MasterTourCdsQuoModules_id: TIntegerField
      FieldName = 'QuoModules_id'
    end
    object MasterTourCdsTourDepDate: TSQLTimeStampField
      FieldName = 'TourDepDate'
    end
    object MasterTourCdsQuoDepDate: TSQLTimeStampField
      FieldName = 'QuoDepDate'
    end
    object MasterTourCdsQuoModDepDate: TSQLTimeStampField
      FieldName = 'QuoModDepDate'
    end
    object MasterTourCdsErrorNo: TIntegerField
      FieldName = 'ErrorNo'
    end
  end
  object GenerateInvoiceMenu: TPopupMenu
    Left = 56
    Top = 544
    object GenerateInvoices2: TMenuItem
      Caption = 'Generate Tour Invoices'
      OnClick = GenerateInvoices2Click
    end
    object GenerateTourLeaderInvoicesforExpensesBookings1: TMenuItem
      Caption = 'Generate Tour Leader Invoices for Expenses - Bookings'
      OnClick = GenerateTourLeaderInvoicesforExpensesBookings1Click
    end
    object objectGenerateTourLeaderInvoicesVouchers1TMenuItem1: TMenuItem
      Caption = 'Generate Tour Leader Invoices for Allowances - Vouchers'
      OnClick = objectGenerateTourLeaderInvoicesVouchers1TMenuItem1Click
    end
    object N7: TMenuItem
      Caption = '-'
    end
    object GenerateSingleInvoice1: TMenuItem
      Caption = 'Generate Single Invoice'
      OnClick = GenerateSingleInvoice1Click
    end
  end
  object DeleteInvoiceMenu: TPopupMenu
    Left = 560
    Top = 560
    object MenuItem1: TMenuItem
      Caption = 'Delete all Tour Invoices displayed'
      OnClick = MenuItem1Click
    end
    object GenerateTourLeaderInvoicesforExpensesBookings2: TMenuItem
      Caption = 'Delete Tour Leader Invoices for Expenses - Bookings'
      OnClick = GenerateTourLeaderInvoicesforExpensesBookings2Click
    end
    object GenerateTourLeaderInvoicesforAllowancesVouchers1: TMenuItem
      Caption = 'Delete Tour Leader Invoices for Allowances - Vouchers'
      OnClick = GenerateTourLeaderInvoicesforAllowancesVouchers1Click
    end
    object N8: TMenuItem
      Caption = '-'
    end
    object MenuItem2: TMenuItem
      Caption = 'Delete Selected Invoice'
      OnClick = MenuItem2Click
    end
  end
  object ViewInvoiceMenu: TPopupMenu
    Left = 320
    Top = 560
    object ViewCurrentInvoice1: TMenuItem
      Caption = 'View Current Invoice'
      OnClick = ViewCurrentInvoice1Click
    end
    object ViewallInvoices1: TMenuItem
      Caption = 'View all Tour Invoices'
      OnClick = ViewallInvoices1Click
    end
    object ViewallTourLeaderInvoices1: TMenuItem
      Caption = 'View all Tour Leader Invoices'
      OnClick = ViewallTourLeaderInvoices1Click
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object CompareCosts1: TMenuItem
      Caption = 'Compare Costs'
      OnClick = CompareCosts1Click
    end
  end
  object ExportMenu: TPopupMenu
    Left = 432
    Top = 576
    object GST1: TMenuItem
      Caption = 'GST Invoices'
      object SaveAllasExcel1: TMenuItem
        Caption = 'Save All as Excel (Client)'
        OnClick = SaveAllasExcel1Click
      end
      object N6: TMenuItem
        Caption = '-'
      end
      object SaveAllasExcelSu1: TMenuItem
        Caption = 'Save All as Excel (Office)'
        OnClick = SaveAllasExcelSu1Click
      end
      object N12: TMenuItem
        Caption = '-'
      end
      object SaveAllasExcelDept1: TMenuItem
        Caption = 'Save All as Excel (Dept)'
        OnClick = SaveAllasExcelDept1Click
      end
    end
    object N9: TMenuItem
      Caption = '-'
    end
    object GSTR11: TMenuItem
      Caption = 'GSTR1 Uploads'
      object GSTR1Export1: TMenuItem
        Caption = 'GSTR1 (CSV for Upload)'
        OnClick = GSTR1Export1Click
      end
      object GSTR1ExcelForOffice1: TMenuItem
        Caption = 'GSTR1 (Excel) - For Office'
        OnClick = GSTR1ExcelForOffice1Click
      end
      object N10: TMenuItem
        Caption = '-'
      end
      object EnterAdvances1: TMenuItem
        Caption = 'Enter Advances'
        OnClick = EnterAdvances1Click
      end
      object SetExchangeRateinInvoices1: TMenuItem
        Caption = 'Set Exchange Rate in Invoices'
        OnClick = SetExchangeRateinInvoices1Click
      end
      object InvoiceExchRateMaster1: TMenuItem
        Caption = 'Invoice Exch Rate Master'
        OnClick = InvoiceExchRateMaster1Click
      end
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object ransfertoAccounts1: TMenuItem
      Caption = 'Transfer to Accounts'
      object CreateAccountingEntries1: TMenuItem
        Caption = 'Create Accounting Entries'
        OnClick = CreateAccountingEntries1Click
      end
      object EnterAcHeadsforPrincipalAgents1: TMenuItem
        Caption = 'Enter Ac Heads for Principal Agents'
        OnClick = EnterAcHeadsforPrincipalAgents1Click
      end
    end
    object N11: TMenuItem
      Caption = '-'
    end
    object ServiceTaxperInvoice1: TMenuItem
      Caption = 'Service Tax per Invoice Format'
      Visible = False
      object FITSaveallasExcel1: TMenuItem
        Caption = 'FIT - Save All as Excel'
        OnClick = FITSaveallasExcel1Click
      end
      object FITSaveCurrentasExcel1: TMenuItem
        Caption = 'FIT - Save Current as Excel'
        OnClick = FITSaveCurrentasExcel1Click
      end
    end
    object ServiceTaxperItemFormat1: TMenuItem
      Caption = 'Service Tax per Item Format'
      Visible = False
      object FITSaveAllasExcel2: TMenuItem
        Caption = 'FIT - Save All as Excel'
        OnClick = FITSaveAllasExcel2Click
      end
      object FITSaveCurrentasExcel2: TMenuItem
        Caption = 'FIT - Save Current as Excel'
        OnClick = FITSaveCurrentasExcel2Click
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object OfficeReportExcel1: TMenuItem
        Caption = 'Office Report (Excel)'
        OnClick = OfficeReportExcel1Click
      end
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object SaveAllInvoicesAsSingleExcelFileonebelowanother1: TMenuItem
      Caption = 'Save All Invoices As Single Excel File (one below another)'
      Visible = False
      OnClick = SaveAllInvoicesAsSingleExcelFileonebelowanother1Click
    end
    object SaveAllAsSingleExcelFile1: TMenuItem
      Caption = 'Save All Tour Invoices As Single Excel File (one below another)'
      Visible = False
      OnClick = SaveAllAsSingleExcelFile1Click
    end
    object SaveTourLeaderExpensesBookings1: TMenuItem
      Caption = 'Save Tour Leader Invoices as Excel (Bookings && Vouchers)'
      OnClick = SaveTourLeaderExpensesBookings1Click
    end
    object SaveOutstandingInvoices1: TMenuItem
      Caption = 'Save Outstanding Invoices'
      Visible = False
      OnClick = SaveOutstandingInvoices1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object SaveSelectedAsExcelFile1: TMenuItem
      Caption = 'Save Selected As Excel File'
      Visible = False
      OnClick = SaveSelectedAsExcelFile1Click
    end
  end
  object ExcelApplication1: TExcelApplication
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    AutoQuit = False
    Left = 360
    Top = 112
  end
  object ExcelWorkbook1: TExcelWorkbook
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 392
    Top = 112
  end
  object ExcelWorksheet1: TExcelWorksheet
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 424
    Top = 112
  end
  object scExcelExport1: TscExcelExport
    DataPipe = dpDataSet
    StyleColumnWidth = cwDefault
    ColumnWidth = 0
    FontHeader.Charset = DEFAULT_CHARSET
    FontHeader.Color = clWindowText
    FontHeader.Height = -11
    FontHeader.Name = 'MS Sans Serif'
    FontHeader.Style = []
    FontHeader.Alignment = haGeneral
    FontHeader.WrapText = False
    FontHeader.Orientation = 0
    FontTitles.Charset = DEFAULT_CHARSET
    FontTitles.Color = clWindowText
    FontTitles.Height = -11
    FontTitles.Name = 'MS Sans Serif'
    FontTitles.Style = []
    FontTitles.Alignment = haGeneral
    FontTitles.WrapText = False
    FontTitles.Orientation = 0
    FontData.Charset = DEFAULT_CHARSET
    FontData.Color = clWindowText
    FontData.Height = -11
    FontData.Name = 'MS Sans Serif'
    FontData.Style = []
    FontData.Alignment = haGeneral
    FontData.WrapText = False
    FontData.Orientation = 0
    FontSummary.Charset = DEFAULT_CHARSET
    FontSummary.Color = clWindowText
    FontSummary.Height = -11
    FontSummary.Name = 'MS Sans Serif'
    FontSummary.Style = []
    FontSummary.Alignment = haGeneral
    FontSummary.WrapText = False
    FontSummary.Orientation = 0
    SummarySelection = ssNone
    SummaryCalculation = scSUM
    FontFooter.Charset = DEFAULT_CHARSET
    FontFooter.Color = clWindowText
    FontFooter.Height = -11
    FontFooter.Name = 'MS Sans Serif'
    FontFooter.Style = []
    FontFooter.Alignment = haGeneral
    FontFooter.WrapText = False
    FontFooter.Orientation = 0
    FontGroup.Charset = DEFAULT_CHARSET
    FontGroup.Color = clWindowText
    FontGroup.Height = -11
    FontGroup.Name = 'MS Sans Serif'
    FontGroup.Style = []
    FontGroup.Alignment = haGeneral
    FontGroup.WrapText = False
    FontGroup.Orientation = 0
    GroupOptions.ClearContents = True
    GroupOptions.BorderRange = bsRow
    GroupOptions.IntervalFontSize = 2
    Left = 160
    Top = 184
  end
end
