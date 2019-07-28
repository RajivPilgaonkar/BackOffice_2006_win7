object VoucherManagerForm: TVoucherManagerForm
  Left = 86
  Top = 55
  Width = 1058
  Height = 648
  Caption = 'Voucher Manager'
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
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 1042
    Height = 41
    Align = alTop
    TabOrder = 0
    object MasterCategoriesLabel: TLabel
      Left = 40
      Top = 6
      Width = 93
      Height = 13
      Caption = 'Master Category'
      Transparent = True
    end
    object Label3: TLabel
      Left = 41
      Top = 24
      Width = 20
      Height = 13
      Caption = 'FIT'
      Transparent = True
    end
    object Label4: TLabel
      Left = 505
      Top = 6
      Width = 161
      Height = 13
      Caption = 'Display Tours with Bookings'
      Transparent = True
    end
    object cxMasterCategoriesCkb: TcxCheckBox
      Left = 16
      Top = 3
      TabOrder = 0
      Transparent = True
      OnClick = cxMasterCategoriesCkbClick
      Width = 25
    end
    object cxMasterCategoryLCMB: TcxLookupComboBox
      Left = 138
      Top = 3
      Properties.DropDownWidth = 300
      Properties.KeyFieldNames = 'MasterCategories_id'
      Properties.ListColumns = <
        item
          FieldName = 'MasterCategory'
        end>
      Properties.ListSource = MasterCategoriesDS
      Properties.OnEditValueChanged = cxMasterCategoryLCMBPropertiesEditValueChanged
      TabOrder = 1
      Width = 207
    end
    object cxFitCkb: TcxCheckBox
      Left = 16
      Top = 20
      TabOrder = 2
      Transparent = True
      OnClick = cxFitCkbClick
      Width = 25
    end
    object cxBookingCkb: TcxCheckBox
      Left = 480
      Top = 5
      State = cbsChecked
      TabOrder = 3
      Transparent = True
      OnClick = cxBookingCkbClick
      Width = 25
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 41
    Width = 1042
    Height = 41
    Align = alTop
    TabOrder = 1
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
      Transparent = True
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
      Hint = 'Previous Week'
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
      Hint = 'Next Week'
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
    Top = 571
    Width = 1042
    Height = 39
    Align = alBottom
    TabOrder = 2
    object Progbar: TProgressBar
      Left = 144
      Top = 12
      Width = 177
      Height = 17
      TabOrder = 0
    end
    object cxButton3: TcxButton
      Left = 8
      Top = 8
      Width = 129
      Height = 25
      Caption = 'Pre Process'
      TabOrder = 1
      DropDownMenu = PreprocessPopupMenu
      Kind = cxbkDropDown
    end
    object cxButton5: TcxButton
      Left = 408
      Top = 8
      Width = 67
      Height = 25
      Caption = 'Process'
      TabOrder = 2
      DropDownMenu = ProcessPopupMenu
      Kind = cxbkDropDown
    end
    object cxButton6: TcxButton
      Left = 328
      Top = 8
      Width = 69
      Height = 25
      Caption = 'View'
      TabOrder = 3
      DropDownMenu = ViewPopupMenu
      Kind = cxbkDropDown
    end
    object cxButton7: TcxButton
      Left = 480
      Top = 8
      Width = 65
      Height = 25
      Caption = 'Reports'
      TabOrder = 4
      DropDownMenu = ReportsPopup
      Kind = cxbkDropDown
    end
    object cxButton4: TcxButton
      Left = 713
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Close'
      TabOrder = 5
      OnClick = cxButton4Click
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
    object cxButton8: TcxButton
      Left = 552
      Top = 7
      Width = 69
      Height = 25
      Caption = 'Send Mails'
      TabOrder = 6
      OnClick = cxButton8Click
    end
    object cxButton9: TcxButton
      Left = 624
      Top = 6
      Width = 69
      Height = 25
      Caption = 'Mail Status'
      TabOrder = 7
      OnClick = cxButton9Click
    end
  end
  object InvoiceGrid: TcxGrid
    Left = 0
    Top = 82
    Width = 1042
    Height = 378
    Align = alClient
    TabOrder = 3
    object InvoiceGridDBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = MasterTourDS
      DataController.KeyFieldNames = 'Masters_id;MasterDepDate'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,##0.00'
          Kind = skSum
          Column = InvoiceGridDBTableView1Quo_ExpCost
        end
        item
          Format = '#,##0.00'
          Kind = skSum
          Column = InvoiceGridDBTableView1Vou_ExpCost
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
      Styles.OnGetContentStyle = InvoiceGridDBTableView1StylesGetContentStyle
      object InvoiceGridDBTableView1MasterCode: TcxGridDBColumn
        Caption = 'Master Code'
        DataBinding.FieldName = 'MasterCode'
        Options.Filtering = False
        Options.Grouping = False
        Width = 83
      end
      object InvoiceGridDBTableView1TourNo: TcxGridDBColumn
        Caption = 'Tour No'
        DataBinding.FieldName = 'TourNo'
        Options.Filtering = False
        Options.Grouping = False
        Width = 57
      end
      object InvoiceGridDBTableView1MasterDepDate: TcxGridDBColumn
        Caption = 'Departure Date'
        DataBinding.FieldName = 'MasterDepDate'
        Options.Filtering = False
        Options.Grouping = False
        Width = 116
      end
      object InvoiceGridDBTableView1NumPax: TcxGridDBColumn
        Caption = 'Num Pax'
        DataBinding.FieldName = 'NumPax'
        Options.Filtering = False
        Options.Grouping = False
        Width = 62
      end
      object InvoiceGridDBTableView1NumCancelled: TcxGridDBColumn
        Caption = 'Num Cancelled'
        DataBinding.FieldName = 'NumCancelled'
        Options.Filtering = False
        Options.Grouping = False
        Width = 95
      end
      object InvoiceGridDBTableView1Fit: TcxGridDBColumn
        DataBinding.FieldName = 'FIT'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Options.Filtering = False
        Options.Grouping = False
        Width = 35
      end
      object InvoiceGridDBTableView1itineraryCreated: TcxGridDBColumn
        Caption = 'Itinerary Created'
        DataBinding.FieldName = 'ItineraryCreated'
        Options.Filtering = False
        Options.Grouping = False
        Width = 103
      end
      object InvoiceGridDBTableView1NumVouchers: TcxGridDBColumn
        Caption = 'Vouchers'
        DataBinding.FieldName = 'NumVouchers'
        Options.Filtering = False
        Options.Grouping = False
        Width = 60
      end
      object InvoiceGridDBTableView1NumManualVouchers: TcxGridDBColumn
        Caption = 'Man Vouchers'
        DataBinding.FieldName = 'NumManualVouchers'
        Options.Filtering = False
        Options.Grouping = False
        Width = 92
      end
      object InvoiceGridDBTableView1SendMail: TcxGridDBColumn
        Caption = 'EMail'
        DataBinding.FieldName = 'SendMail'
      end
      object InvoiceGridDBTableView1QuoDepDate: TcxGridDBColumn
        Caption = 'Quo Dep Date'
        DataBinding.FieldName = 'QuoDepDate'
        Visible = False
        Options.Editing = False
        Width = 100
      end
      object InvoiceGridDBTableView1QuoModDepDate: TcxGridDBColumn
        Caption = 'Module Dep Date'
        DataBinding.FieldName = 'QuoModDepDate'
        Visible = False
        Options.Editing = False
        Width = 100
      end
      object InvoiceGridDBTableView1TourDepDate: TcxGridDBColumn
        Caption = 'Tour Dep Date'
        DataBinding.FieldName = 'TourDepDate'
        Visible = False
        Options.Editing = False
        Width = 100
      end
      object InvoiceGridDBTableView1QuoArrivalDate: TcxGridDBColumn
        Caption = 'Quo Arrival Date'
        DataBinding.FieldName = 'QuoArrivalDate'
        Visible = False
        Options.Editing = False
        Width = 100
      end
      object InvoiceGridDBTableView1IssuedBy: TcxGridDBColumn
        Caption = 'Issued By'
        DataBinding.FieldName = 'IssuedBy'
        Width = 80
      end
      object InvoiceGridDBTableView1Quo_ExpCost: TcxGridDBColumn
        Caption = 'Total Cost'
        DataBinding.FieldName = 'Quo_ExpCost'
        Width = 80
      end
      object InvoiceGridDBTableView1Vou_ExpCost: TcxGridDBColumn
        Caption = 'Voucher Cost'
        DataBinding.FieldName = 'Vou_ExpCost'
        Width = 100
      end
      object InvoiceGridDBTableView1CancelledOn: TcxGridDBColumn
        Caption = 'Cancelled On'
        DataBinding.FieldName = 'CancelledOn'
        Visible = False
        Width = 80
      end
    end
    object InvoiceGridLevel1: TcxGridLevel
      GridView = InvoiceGridDBTableView1
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 460
    Width = 1042
    Height = 111
    Align = alBottom
    TabOrder = 4
    object GroupBox2: TcxGroupBox
      Left = 9
      Top = 3
      Caption = 'Calendar'
      TabOrder = 0
      Height = 96
      Width = 291
      object cxGrid2: TcxGrid
        Left = 3
        Top = 18
        Width = 285
        Height = 75
        Align = alClient
        TabOrder = 0
        object cxGrid2DBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = TourCalDS
          DataController.KeyFieldNames = 'TourDepartureDates_id'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
          Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
          object cxGrid2DBTableView1tourcodes_id: TcxGridDBColumn
            DataBinding.FieldName = 'TourDepartureDates_id'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'TourCodes_id'
            Properties.ListColumns = <
              item
                FieldName = 'TourCode'
              end>
            Properties.ListSource = BackOfficeDataModule.TourDS
            Visible = False
            SortIndex = 0
            SortOrder = soAscending
            Width = 120
          end
          object cxGrid2DBTableView1TourCode: TcxGridDBColumn
            Caption = 'Tour Code'
            DataBinding.FieldName = 'tourcode'
            Options.Filtering = False
            Options.Grouping = False
            Width = 95
          end
          object cxGrid2DBTableView1TourDate: TcxGridDBColumn
            Caption = 'Tour Date'
            DataBinding.FieldName = 'tourdate'
            Options.Filtering = False
            Options.Grouping = False
            Width = 100
          end
        end
        object cxGrid2Level1: TcxGridLevel
          GridView = cxGrid2DBTableView1
        end
      end
    end
  end
  object MasterCategoriesSds: TSQLDataSet
    CommandText = 'select * from MasterCategories'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 176
    Top = 3
  end
  object MasterCategoriesDsp: TDataSetProvider
    DataSet = MasterCategoriesSds
    Left = 192
    Top = 3
  end
  object MasterCategoriesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'MasterCategoriesDsp'
    Left = 208
    Top = 3
    object MasterCategoriesCdsMasterCategories_id: TIntegerField
      FieldName = 'MasterCategories_id'
    end
    object MasterCategoriesCdsMasterCategory: TStringField
      FieldName = 'MasterCategory'
    end
  end
  object MasterCategoriesDS: TDataSource
    DataSet = MasterCategoriesCds
    Left = 224
    Top = 3
  end
  object MasterTourSds: TSQLDataSet
    CommandText = 'exec p_GetMasterToursDateRange '#39'01/01/2005'#39', '#39'01/05/2005'#39', 2'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 32
    Top = 112
  end
  object MasterTourDsp: TDataSetProvider
    DataSet = MasterTourSds
    Left = 56
    Top = 112
  end
  object MasterTourCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'MasterTourDsp'
    Left = 72
    Top = 112
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
    object MasterTourCdsMasterCategory: TStringField
      FieldName = 'MasterCategory'
    end
    object MasterTourCdsTourNo: TIntegerField
      FieldName = 'TourNo'
    end
    object MasterTourCdsSendMail: TBooleanField
      FieldName = 'SendMail'
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
    object MasterTourCdsQuoArrivalDate: TSQLTimeStampField
      FieldName = 'QuoArrivalDate'
    end
    object MasterTourCdsIssuedBy: TStringField
      FieldName = 'IssuedBy'
      Size = 50
    end
    object MasterTourCdsQuo_ExpCost: TFMTBCDField
      FieldName = 'Quo_ExpCost'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object MasterTourCdsVou_ExpCost: TFMTBCDField
      FieldName = 'Vou_ExpCost'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object MasterTourCdsCancelledOn: TSQLTimeStampField
      FieldName = 'CancelledOn'
    end
  end
  object MasterTourDS: TDataSource
    DataSet = MasterTourCds
    Left = 88
    Top = 112
  end
  object PreprocessPopupMenu: TPopupMenu
    Left = 40
    Top = 568
    object DeleteItinerary1: TMenuItem
      Caption = 'Delete Itinerary'
      OnClick = DeleteItinerary1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object CreateItinerary1: TMenuItem
      Caption = 'Create Itinerary'
      OnClick = CreateItinerary1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object CheckDataConsistency1: TMenuItem
      Caption = 'Check Data Consistency'
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object UpdateBookingDetails1: TMenuItem
      Caption = 'Update Booking Details'
      OnClick = UpdateBookingDetails1Click
    end
    object GenerateRoomingList1: TMenuItem
      Caption = 'Generate Rooming List'
      OnClick = GenerateRoomingList1Click
    end
    object CountPax1: TMenuItem
      Caption = 'Count Pax'
      OnClick = CountPax1Click
    end
    object CountVehicles1: TMenuItem
      Caption = 'Estimate Most Economical Vehicle'
      OnClick = CountVehicles1Click
    end
    object SetLeadPax1: TMenuItem
      Caption = 'Set Lead Pax'
      OnClick = SetLeadPax1Click
    end
    object N11: TMenuItem
      Caption = '-'
    end
    object Performallabovesteps1: TMenuItem
      Caption = 'Perform all above steps (Update Bookings - Set Lead Pax)'
      OnClick = Performallabovesteps1Click
    end
  end
  object ViewPopupMenu: TPopupMenu
    Left = 352
    Top = 568
    object RoomingList1: TMenuItem
      Caption = 'Rooming List'
      OnClick = RoomingList1Click
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object PaxList1: TMenuItem
      Caption = 'Pax List'
      OnClick = PaxList1Click
    end
    object N6: TMenuItem
      Caption = '-'
    end
    object Itinerary1: TMenuItem
      Caption = 'Itinerary'
      OnClick = Itinerary1Click
    end
    object N7: TMenuItem
      Caption = '-'
    end
    object Vouchers1: TMenuItem
      Caption = 'Vouchers'
      OnClick = Vouchers1Click
    end
    object N13: TMenuItem
      Caption = '-'
    end
    object NewVouchers1: TMenuItem
      Caption = 'New Vouchers'
      OnClick = NewVouchers1Click
    end
  end
  object ProcessPopupMenu: TPopupMenu
    Left = 424
    Top = 560
    object GenerateVouchers1: TMenuItem
      Caption = 'Generate Vouchers'
      OnClick = GenerateVouchers1Click
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object GenerateExpectedCost1: TMenuItem
      Caption = 'Generate Expected Cost'
      OnClick = GenerateExpectedCost1Click
    end
    object N8: TMenuItem
      Caption = '-'
    end
    object DeleteVouchers1: TMenuItem
      Caption = 'Delete Vouchers'
      OnClick = DeleteVouchers1Click
    end
    object N12: TMenuItem
      Caption = '-'
    end
    object CompareCosts1: TMenuItem
      Caption = 'Compare Costs'
      OnClick = CompareCosts1Click
    end
  end
  object ReportsPopup: TPopupMenu
    Left = 448
    Top = 472
    object Itineraries1: TMenuItem
      Caption = 'Itineraries'
      object ourItinerary1: TMenuItem
        Caption = 'Tour Itinerary'
        OnClick = ourItinerary1Click
      end
      object RoomingList2: TMenuItem
        Caption = 'Rooming List'
        OnClick = RoomingList2Click
      end
      object NameList1: TMenuItem
        Caption = 'Name List'
        OnClick = NameList1Click
      end
      object LocalPayment1: TMenuItem
        Caption = 'Local Payment'
        OnClick = LocalPayment1Click
      end
      object SitList1: TMenuItem
        Caption = 'Sit List'
        OnClick = SitList1Click
      end
    end
    object N9: TMenuItem
      Caption = '-'
    end
    object Vouchers2: TMenuItem
      Caption = 'Vouchers'
      object VouchersForCurrentTour2perpg1: TMenuItem
        Caption = 'Vouchers For Current Tour (2 per pg)'
        OnClick = VouchersForCurrentTour2perpg1Click
      end
      object VouchersinRangeforCurrentTour2perpg1: TMenuItem
        Caption = 'Vouchers in Range for Current Tour (2 per pg)'
        OnClick = VouchersinRangeforCurrentTour2perpg1Click
      end
      object N14: TMenuItem
        Caption = '-'
      end
      object VouchersForCurrentTour1: TMenuItem
        Caption = 'Vouchers For Current Tour'
        OnClick = VouchersForCurrentTour1Click
      end
      object VouchersinDateRange1: TMenuItem
        Caption = 'Vouchers in Range for Current Tour'
        OnClick = VouchersinDateRange1Click
      end
      object N10: TMenuItem
        Caption = '-'
      end
      object SingleVoucher1: TMenuItem
        Caption = 'Single Voucher for Current Tour'
        OnClick = SingleVoucher1Click
      end
      object SingleVouchersinRangeforCurrentTour1: TMenuItem
        Caption = 'Single Vouchers in Range for Current Tour'
        OnClick = SingleVouchersinRangeforCurrentTour1Click
      end
      object SingleVoucherforCurrentTourwithoutimages1: TMenuItem
        Caption = 'Single Voucher for Current Tour (without images)'
        OnClick = SingleVoucherforCurrentTourwithoutimages1Click
      end
    end
  end
  object TourCalCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'MasterCode;MasterDepDate;tourdate'
    MasterFields = 'MasterCode;MasterDepDate'
    MasterSource = MasterTourDS
    PacketRecords = 0
    Params = <>
    ProviderName = 'TourCalDsp'
    Left = 216
    Top = 544
    object TourCalCdstourcodes_id: TIntegerField
      FieldName = 'tourcodes_id'
    end
    object TourCalCdstourcode: TStringField
      FieldName = 'tourcode'
      Size = 10
    end
    object TourCalCdstourdate: TSQLTimeStampField
      FieldName = 'tourdate'
    end
    object TourCalCdsTourDepartureDates_id: TIntegerField
      FieldName = 'TourDepartureDates_id'
    end
    object TourCalCdsMasterCode: TStringField
      FieldName = 'MasterCode'
      Size = 50
    end
    object TourCalCdsMasterDepDate: TSQLTimeStampField
      FieldName = 'MasterDepDate'
    end
  end
  object TourCalDS: TDataSource
    DataSet = TourCalCds
    Left = 200
    Top = 544
  end
  object TourCalDsp: TDataSetProvider
    DataSet = TourCalSds
    Left = 176
    Top = 544
  end
  object TourCalSds: TSQLDataSet
    CommandText = 
      'SELECT t.tourcodes_id, t.tourcode, tdd.tourdate, tdd.TourDepartu' +
      'reDates_id, m.MasterCode, mdd.TourDate as MasterDepDate'#13#10'       ' +
      'FROM masterdeparturedates mdd, masters m, tourcalendar tc, tourc' +
      'odes t, tourdeparturedates tdd'#13#10'    WHERE mdd.masters_id = m.mas' +
      'ters_id'#13#10'          AND m.mastercode = :MasterCode'#13#10'          AND' +
      ' mdd.tourdate = :MasterDepDate'#13#10'          AND tc.masters_id = m.' +
      'masters_id'#13#10'          AND tc.tourcodes_id = t.tourcodes_id'#13#10'    ' +
      '      AND tdd.tourcodes_id = t.tourcodes_id'#13#10'          AND datea' +
      'dd(d,tc.daysoffset,mdd.tourdate) = tdd.tourdate'#13#10
    DataSource = MasterTourDS
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'MasterCode'
        ParamType = ptInput
        Size = 6
      end
      item
        DataType = ftTimeStamp
        Name = 'MasterDepDate'
        ParamType = ptInput
        Size = 16
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 160
    Top = 544
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
      AssignedValues = [svColor]
      Color = 5592575
    end
  end
end
