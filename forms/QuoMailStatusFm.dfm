object QuoMailStatusForm: TQuoMailStatusForm
  Left = 265
  Top = 73
  Width = 943
  Height = 622
  Caption = 'Mail Status'
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
    Width = 927
    Height = 45
    Align = alTop
    TabOrder = 0
    object cxButton3: TcxButton
      Left = 312
      Top = 14
      Width = 113
      Height = 25
      Caption = 'Refresh'
      TabOrder = 0
      OnClick = cxButton3Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555000000
        000055555F77777777775555000FFFFFFFF0555F777F5FFFF55755000F0F0000
        FFF05F777F7F77775557000F0F0FFFFFFFF0777F7F7F5FFFFFF70F0F0F0F0000
        00F07F7F7F7F777777570F0F0F0FFFFFFFF07F7F7F7F5FFFFFF70F0F0F0F0000
        00F07F7F7F7F777777570F0F0F0FFFFFFFF07F7F7F7F5FFF55570F0F0F0F000F
        FFF07F7F7F7F77755FF70F0F0F0FFFFF00007F7F7F7F5FF577770F0F0F0F00FF
        0F057F7F7F7F77557F750F0F0F0FFFFF00557F7F7F7FFFFF77550F0F0F000000
        05557F7F7F77777775550F0F0000000555557F7F7777777555550F0000000555
        55557F7777777555555500000005555555557777777555555555}
      NumGlyphs = 2
    end
    object cxGroupBox1: TcxGroupBox
      Left = 10
      Top = 2
      TabOrder = 1
      Height = 40
      Width = 193
      object Label1: TLabel
        Left = 7
        Top = 23
        Width = 32
        Height = 13
        Caption = 'As Of'
        Transparent = True
      end
      object cxToDateEdit: TcxDateEdit
        Left = 63
        Top = 19
        Style.Color = 16777192
        TabOrder = 0
        Width = 121
      end
    end
    object cxButton4: TcxButton
      Left = 213
      Top = 13
      Width = 41
      Height = 25
      Hint = 'Previous Month'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = cxButton4Click
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
    object cxButton5: TcxButton
      Left = 261
      Top = 13
      Width = 41
      Height = 25
      Hint = 'Next Month'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = cxButton5Click
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
    object cxUserCkb: TcxCheckBox
      Left = 712
      Top = 16
      Caption = 'Display Only for Logged in User'
      Properties.OnEditValueChanged = cxUserCkbPropertiesEditValueChanged
      State = cbsChecked
      TabOrder = 4
      Transparent = True
      Width = 203
    end
    object cxUnsentReqCkb: TcxCheckBox
      Left = 464
      Top = 16
      Caption = 'Include Requests not yet sent'
      Properties.OnEditValueChanged = cxUnsentReqCkbPropertiesEditValueChanged
      TabOrder = 5
      Transparent = True
      Width = 203
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 544
    Width = 927
    Height = 40
    Align = alBottom
    TabOrder = 1
    object cxButton1: TcxButton
      Left = 20
      Top = 7
      Width = 75
      Height = 25
      Caption = 'Utilities'
      TabOrder = 0
      DropDownMenu = PopupMenu1
      Kind = cxbkDropDownButton
    end
    object cxButton2: TcxButton
      Left = 824
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Close'
      TabOrder = 1
      OnClick = cxButton2Click
    end
  end
  object PageControl: TPageControl
    Left = 0
    Top = 45
    Width = 927
    Height = 499
    ActivePage = TabSheetPendingReq
    Align = alClient
    TabOrder = 2
    object TabSheetPendingReq: TTabSheet
      Caption = 'Pending Requests - Accommodation'
      object cxGridMail: TcxGrid
        Left = 0
        Top = 0
        Width = 919
        Height = 471
        Align = alClient
        TabOrder = 0
        object cxGridMailDBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsData.Appending = True
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.ShowEditButtons = gsebForFocusedRecord
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          Styles.Background = BackOfficeDataModule.cxStyleBackground
          Styles.Header = BackOfficeDataModule.cxStyleHeader
        end
        object cxGridMailDBBandedTableView1: TcxGridDBBandedTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = MailStatusDs
          DataController.KeyFieldNames = 'QuoAccommodation_id'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.CellHints = True
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.GroupFooters = gfVisibleWhenExpanded
          Styles.ContentEven = cxStyleBlue
          Styles.ContentOdd = cxStyleGreen
          Styles.OnGetContentStyle = cxGridMailDBBandedTableView1StylesGetContentStyle
          Bands = <
            item
              Width = 891
            end>
          object cxGridMailDBBandedTableView1QuoAccommodation_id: TcxGridDBBandedColumn
            DataBinding.FieldName = 'QuoAccommodation_id'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridMailDBBandedTableView1uid: TcxGridDBBandedColumn
            Caption = 'Created By'
            DataBinding.FieldName = 'uid'
            Visible = False
            GroupIndex = 0
            SortIndex = 0
            SortOrder = soAscending
            Width = 67
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGridMailDBBandedTableView1City: TcxGridDBBandedColumn
            DataBinding.FieldName = 'City'
            Width = 58
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGridMailDBBandedTableView1organisation: TcxGridDBBandedColumn
            Caption = 'Hotel'
            DataBinding.FieldName = 'organisation'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 91
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxGridMailDBBandedTableView1TourCode: TcxGridDBBandedColumn
            Caption = 'Tour Code'
            DataBinding.FieldName = 'TourCode'
            Options.Editing = False
            Options.Grouping = False
            Width = 49
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cxGridMailDBBandedTableView1PaxName: TcxGridDBBandedColumn
            Caption = 'Pax'
            DataBinding.FieldName = 'PaxName'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 81
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object cxGridMailDBBandedTableView1QuotationNo: TcxGridDBBandedColumn
            Caption = 'Qtn No'
            DataBinding.FieldName = 'QuotationNo'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 55
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object cxGridMailDBBandedTableView1AccString: TcxGridDBBandedColumn
            Caption = 'String'
            DataBinding.FieldName = 'AccString'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 153
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object cxGridMailDBBandedTableView1DateIn: TcxGridDBBandedColumn
            Caption = 'Date In'
            DataBinding.FieldName = 'DateIn'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            SortIndex = 1
            SortOrder = soAscending
            Width = 58
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object cxGridMailDBBandedTableView1RequestedOn: TcxGridDBBandedColumn
            Caption = 'Requested On'
            DataBinding.FieldName = 'RequestedOn'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 73
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object cxGridMailDBBandedTableView1Remarks: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Remarks'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 137
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object cxGridMailDBBandedTableView1Phone: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Phone'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 69
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object cxGridMailDBBandedTableView1Contact: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Contact'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
        end
        object cxGridMailLevel1: TcxGridLevel
          GridView = cxGridMailDBBandedTableView1
        end
      end
    end
    object TabSheetPendingReqTickets: TTabSheet
      Caption = 'Pending Requests - Tickets'
      ImageIndex = 1
      object cxGridTicket: TcxGrid
        Left = 0
        Top = 0
        Width = 919
        Height = 471
        Align = alClient
        TabOrder = 0
        object cxGridDBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsData.Appending = True
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.ShowEditButtons = gsebForFocusedRecord
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          Styles.Background = BackOfficeDataModule.cxStyleBackground
          Styles.Header = BackOfficeDataModule.cxStyleHeader
        end
        object cxGridTicketDBBandedTableView1: TcxGridDBBandedTableView
          PopupMenu = PopupMenu2
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = MailStatusTicketDs
          DataController.KeyFieldNames = 'QuoTickets_id'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.CellHints = True
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.GroupFooters = gfVisibleWhenExpanded
          Styles.ContentEven = cxStyleBlue
          Styles.ContentOdd = cxStyleGreen
          Styles.OnGetContentStyle = cxGridImpPoDBBandedTableView1StylesGetContentStyle
          Bands = <
            item
              Width = 891
            end>
          object cxGridTicketDBBandedTableView1QuoTickets_id: TcxGridDBBandedColumn
            DataBinding.FieldName = 'QuoTickets_id'
            Visible = False
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridTicketDBBandedTableView1uid: TcxGridDBBandedColumn
            Caption = 'Created By'
            DataBinding.FieldName = 'uid'
            Options.Editing = False
            Width = 68
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGridTicketDBBandedTableView1organisation: TcxGridDBBandedColumn
            Caption = 'Agent'
            DataBinding.FieldName = 'organisation'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGridTicketDBBandedTableView1TourCode: TcxGridDBBandedColumn
            Caption = 'Tour'
            DataBinding.FieldName = 'TourCode'
            Options.Editing = False
            Options.Grouping = False
            Width = 55
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxGridTicketDBBandedTableView1PaxName: TcxGridDBBandedColumn
            Caption = 'Pax'
            DataBinding.FieldName = 'PaxName'
            Options.Editing = False
            Options.Grouping = False
            Width = 74
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cxGridTicketDBBandedTableView1QuotationNo: TcxGridDBBandedColumn
            Caption = 'Qtn No.'
            DataBinding.FieldName = 'QuotationNo'
            Options.Editing = False
            Options.Grouping = False
            Width = 58
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object cxGridTicketDBBandedTableView1TrainNo: TcxGridDBBandedColumn
            Caption = 'Train No'
            DataBinding.FieldName = 'TrainNo'
            Options.Filtering = False
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object cxGridTicketDBBandedTableView1TicketString: TcxGridDBBandedColumn
            Caption = 'String'
            DataBinding.FieldName = 'TicketString'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 217
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object cxGridTicketDBBandedTableView1TravelDate: TcxGridDBBandedColumn
            Caption = 'Travel Date'
            DataBinding.FieldName = 'TravelDate'
            Options.Editing = False
            Options.Grouping = False
            Width = 83
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object cxGridTicketDBBandedTableView1RequestedOn: TcxGridDBBandedColumn
            Caption = 'Requested On'
            DataBinding.FieldName = 'RequestedOn'
            Options.Editing = False
            Options.Grouping = False
            Width = 99
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object cxGridTicketDBBandedTableView1BookingDate: TcxGridDBBandedColumn
            Caption = 'Booking Date'
            DataBinding.FieldName = 'BookingDate'
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object cxGridTicketDBBandedTableView1Remarks: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Remarks'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 146
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object cxGridTicketDBBandedTableView1Phone: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Phone'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 72
            Position.BandIndex = 0
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
          object cxGridTicketDBBandedTableView1Mode: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Mode'
            Visible = False
            GroupIndex = 0
            Options.Editing = False
            Position.BandIndex = 0
            Position.ColIndex = 13
            Position.RowIndex = 0
          end
          object cxGridTicketDBBandedTableView1Contact: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Contact'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 14
            Position.RowIndex = 0
          end
        end
        object cxGridTicketLevel1: TcxGridLevel
          GridView = cxGridTicketDBBandedTableView1
        end
      end
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 120
    Top = 520
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
    object ExpansAll1: TMenuItem
      Caption = 'Expand All'
      OnClick = ExpansAll1Click
    end
    object CollapseAll1: TMenuItem
      Caption = 'Collapse All'
      OnClick = CollapseAll1Click
    end
  end
  object SaveDialog: TSaveDialog
    Left = 163
    Top = 521
  end
  object dxComponentPrinter: TdxComponentPrinter
    CurrentLink = dxComponentPrinterLink1
    Version = 0
    Left = 196
    Top = 521
    object dxComponentPrinterLink1: TdxGridReportLink
      Active = True
      Component = cxGridMail
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
      ReportDocument.CreationDate = 42954.460866296290000000
      OptionsFormatting.UseNativeStyles = True
      OptionsOnEveryPage.Footers = False
      OptionsOnEveryPage.Headers = False
      OptionsOnEveryPage.Caption = False
      OptionsOnEveryPage.FilterBar = False
      OptionsView.Caption = False
      BuiltInReportLink = True
    end
  end
  object MailStatusSds: TSQLDataSet
    CommandText = 
      'SELECT qa.QuoAccommodation_id, a.City, a.organisation, '#39'('#39'+coale' +
      'sce(a.areaCode,'#39#39')+ '#39') '#39' + a.Phone AS Phone, q.TourCode, q.PaxNa' +
      'me, q.QuotationNo, '#13#10'  u.uid, qa.AccString, qa.DateIn, qa.Reques' +
      'tedOn, qa.Remarks,'#13#10' dbo.fn_GetContact(a.Addressbook_id) AS Cont' +
      'act, qa.Quotations_id'#13#10'FROM QuoAccommodation qa '#13#10'LEFT JOIN Quot' +
      'ations q ON qa.Quotations_id = q.Quotations_id'#13#10'LEFT JOIN Addres' +
      'sbook a ON qa.HotelAddressbook_id = a.Addressbook_id'#13#10'LEFT JOIN ' +
      'AdmUsers u ON q.AdmUsers_id = u.AdmUsers_id'#13#10'WHERE DateIn <= '#39'01' +
      '/01/2009'#39#13#10'/*AND qa.RequestedOn IS NOT NULL*/'#13#10'AND qa.ConfirmedO' +
      'n IS NULL'#13#10'AND qa.DateIn > GETDATE()'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 504
    Top = 224
  end
  object MailStatusDsp: TDataSetProvider
    DataSet = MailStatusSds
    Left = 534
    Top = 224
  end
  object MailStatusCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'MailStatusDsp'
    Left = 568
    Top = 224
    object MailStatusCdsQuoAccommodation_id: TIntegerField
      FieldName = 'QuoAccommodation_id'
    end
    object MailStatusCdsCity: TStringField
      FieldName = 'City'
    end
    object MailStatusCdsorganisation: TStringField
      FieldName = 'organisation'
      Size = 60
    end
    object MailStatusCdsTourCode: TStringField
      FieldName = 'TourCode'
      Size = 10
    end
    object MailStatusCdsPaxName: TStringField
      FieldName = 'PaxName'
      Size = 100
    end
    object MailStatusCdsQuotationNo: TIntegerField
      FieldName = 'QuotationNo'
    end
    object MailStatusCdsuid: TStringField
      FieldName = 'uid'
      Size = 8
    end
    object MailStatusCdsAccString: TStringField
      FieldName = 'AccString'
      Size = 200
    end
    object MailStatusCdsDateIn: TSQLTimeStampField
      FieldName = 'DateIn'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object MailStatusCdsRequestedOn: TSQLTimeStampField
      FieldName = 'RequestedOn'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object MailStatusCdsRemarks: TStringField
      FieldName = 'Remarks'
      Size = 200
    end
    object MailStatusCdsPhone: TStringField
      FieldName = 'Phone'
      Size = 113
    end
    object MailStatusCdsContact: TStringField
      FieldName = 'Contact'
      Size = 100
    end
    object MailStatusCdsQuotations_id: TIntegerField
      FieldName = 'Quotations_id'
    end
  end
  object MailStatusDs: TDataSource
    DataSet = MailStatusCds
    Left = 600
    Top = 224
  end
  object CxStyleRepository1: TcxStyleRepository
    Left = 640
    Top = 40
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
  end
  object MailStatusTicketSds: TSQLDataSet
    CommandText = 
      'SELECT qt.QuoTickets_id, a.organisation, '#39'('#39'+coalesce(a.areaCode' +
      ','#39#39')+ '#39') '#39' + a.Phone AS Phone, q.TourCode, q.PaxName, q.Quotatio' +
      'nNo, '#13#10'  u.uid, qt.TicketString, qt.TravelDate, qt.RequestedOn, ' +
      'qt.Remarks,'#13#10't.Details as Mode, dbo.fn_GetContact(a.Addressbook_' +
      'id) AS Contact,'#13#10'DATEADD(day, -90, qt.TravelDate) AS BookingDate' +
      ', qt.Quotations_id,'#13#10'qt.TrainNo'#13#10'FROM QuoTickets qt'#13#10'LEFT JOIN Q' +
      'uotations q ON qt.Quotations_id = q.Quotations_id'#13#10'LEFT JOIN Add' +
      'ressbook a ON qt.AgentAddressbook_id = a.Addressbook_id'#13#10'LEFT JO' +
      'IN AdmUsers u ON q.AdmUsers_id = u.AdmUsers_id'#13#10'LEFT JOIN Ticket' +
      's t ON qt.Tickets_id = t.Tickets_id'#13#10'WHERE TravelDate <= '#39'01/01/' +
      '2009'#39#13#10'/*AND qt.RequestedOn IS NOT NULL*/'#13#10'AND qt.ConfirmedOn IS' +
      ' NULL'#13#10'AND qt.TravelDate > GETDATE()'#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 504
    Top = 264
  end
  object MailStatusTicketDsp: TDataSetProvider
    DataSet = MailStatusTicketSds
    Left = 534
    Top = 264
  end
  object MailStatusTicketCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'MailStatusTicketDsp'
    Left = 568
    Top = 264
    object MailStatusTicketCdsQuoTickets_id: TIntegerField
      FieldName = 'QuoTickets_id'
    end
    object MailStatusTicketCdsorganisation: TStringField
      FieldName = 'organisation'
      Size = 60
    end
    object MailStatusTicketCdsPhone: TStringField
      FieldName = 'Phone'
      Size = 100
    end
    object MailStatusTicketCdsTourCode: TStringField
      FieldName = 'TourCode'
      Size = 10
    end
    object MailStatusTicketCdsPaxName: TStringField
      FieldName = 'PaxName'
      Size = 100
    end
    object MailStatusTicketCdsQuotationNo: TIntegerField
      FieldName = 'QuotationNo'
    end
    object MailStatusTicketCdsuid: TStringField
      FieldName = 'uid'
      Size = 8
    end
    object MailStatusTicketCdsTicketString: TStringField
      FieldName = 'TicketString'
      Size = 200
    end
    object MailStatusTicketCdsTravelDate: TSQLTimeStampField
      FieldName = 'TravelDate'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object MailStatusTicketCdsRequestedOn: TSQLTimeStampField
      FieldName = 'RequestedOn'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object MailStatusTicketCdsRemarks: TStringField
      FieldName = 'Remarks'
      Size = 200
    end
    object MailStatusTicketCdsMode: TStringField
      FieldName = 'Mode'
      Size = 15
    end
    object MailStatusTicketCdsContact: TStringField
      FieldName = 'Contact'
      Size = 100
    end
    object MailStatusTicketCdsBookingDate: TSQLTimeStampField
      FieldName = 'BookingDate'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object MailStatusTicketCdsQuotations_id: TIntegerField
      FieldName = 'Quotations_id'
    end
    object MailStatusTicketCdsTrainNo: TStringField
      FieldName = 'TrainNo'
      Size = 10
    end
  end
  object MailStatusTicketDs: TDataSource
    DataSet = MailStatusTicketCds
    Left = 600
    Top = 264
  end
  object PopupMenu2: TPopupMenu
    Left = 316
    Top = 205
    object UpdateString1: TMenuItem
      Caption = 'Update String'
      OnClick = UpdateString1Click
    end
  end
end
