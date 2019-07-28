object WebPymtStatusForm: TWebPymtStatusForm
  Left = 117
  Top = 67
  Width = 940
  Height = 646
  Caption = 'WebPymtStatusForm'
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
    Width = 924
    Height = 48
    Align = alTop
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 567
    Width = 924
    Height = 41
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
      Left = 104
      Top = 8
      Width = 161
      Height = 25
      Caption = 'Read Payments (local dir)'
      TabOrder = 1
      OnClick = cxButton2Click
    end
    object cxButton6: TcxButton
      Left = 304
      Top = 8
      Width = 161
      Height = 25
      Caption = 'Read Payments (Server)'
      TabOrder = 2
      OnClick = cxButton6Click
    end
  end
  object cxPageControl: TcxPageControl
    Left = 0
    Top = 48
    Width = 924
    Height = 519
    ActivePage = cxTabSheetPymtRecd
    Align = alClient
    TabOrder = 2
    ClientRectBottom = 513
    ClientRectLeft = 3
    ClientRectRight = 918
    ClientRectTop = 26
    object cxTabSheetPymtStatus: TcxTabSheet
      Caption = 'Pymt Status'
      ImageIndex = 0
      object cxGridPymt: TcxGrid
        Left = 0
        Top = 0
        Width = 915
        Height = 487
        Align = alClient
        TabOrder = 0
        object cxGridDBTableView2: TcxGridDBTableView
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
        object cxGridPymtDBBandedTableView1: TcxGridDBBandedTableView
          PopupMenu = PopupMenu2
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = PymtStatusDs
          DataController.KeyFieldNames = 'Quotations_id'
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Format = '#,##0'
              Kind = skSum
              Position = spFooter
              Column = cxGridPymtDBBandedTableView1DueNowAmt
            end
            item
              Format = '#,##0'
              Kind = skSum
              Position = spFooter
              Column = cxGridPymtDBBandedTableView1DueOnDateAmt
            end>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.CellHints = True
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.Footer = True
          OptionsView.GroupFooters = gfVisibleWhenExpanded
          Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
          Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
          Bands = <
            item
              Width = 906
            end>
          object cxGridPymtDBBandedTableView1Quotations_id: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Quotations_id'
            Visible = False
            Options.Editing = False
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridPymtDBBandedTableView1PaxName: TcxGridDBBandedColumn
            Caption = 'Pax'
            DataBinding.FieldName = 'PaxName'
            Options.Editing = False
            Width = 193
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGridPymtDBBandedTableView1QuotationNo: TcxGridDBBandedColumn
            Caption = 'Quo No'
            DataBinding.FieldName = 'QuotationNo'
            Options.Editing = False
            Width = 53
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGridPymtDBBandedTableView1StartDate: TcxGridDBBandedColumn
            Caption = 'Start Date'
            DataBinding.FieldName = 'StartDate'
            Options.Editing = False
            Width = 98
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxGridPymtDBBandedTableView1QuotationAmt: TcxGridDBBandedColumn
            Caption = 'Quotation'
            DataBinding.FieldName = 'QuotationAmt'
            Options.Editing = False
            Width = 79
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cxGridPymtDBBandedTableView1AdvanceAmt: TcxGridDBBandedColumn
            Caption = 'Advance'
            DataBinding.FieldName = 'AdvanceAmt'
            Options.Editing = False
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object cxGridPymtDBBandedTableView1BalanceAmt: TcxGridDBBandedColumn
            Caption = 'Balance'
            DataBinding.FieldName = 'BalanceAmt'
            Options.Editing = False
            Width = 74
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object cxGridPymtDBBandedTableView1RecdAmt: TcxGridDBBandedColumn
            Caption = 'Recd'
            DataBinding.FieldName = 'RecdAmt'
            Options.Editing = False
            Width = 60
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object cxGridPymtDBBandedTableView1DueNowAmt: TcxGridDBBandedColumn
            Caption = 'Due Now'
            DataBinding.FieldName = 'DueNowAmt'
            Options.Editing = False
            Width = 65
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object cxGridPymtDBBandedTableView1DueOnDateAmt: TcxGridDBBandedColumn
            Caption = 'Due Later'
            DataBinding.FieldName = 'DueOnDateAmt'
            Options.Editing = False
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object cxGridPymtDBBandedTableView1DueDate: TcxGridDBBandedColumn
            Caption = 'Due Date'
            DataBinding.FieldName = 'DueDate'
            Options.Editing = False
            Width = 65
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object cxGridPymtDBBandedTableView1CurrencyCode: TcxGridDBBandedColumn
            Caption = 'Currency'
            DataBinding.FieldName = 'CurrencyCode'
            Visible = False
            GroupIndex = 0
            Options.Editing = False
            Width = 63
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
        end
        object cxGridPymtLevel1: TcxGridLevel
          GridView = cxGridPymtDBBandedTableView1
        end
      end
    end
    object cxTabSheetPymtRecd: TcxTabSheet
      Caption = 'Payments'
      ImageIndex = 1
      object cxGridRecd: TcxGrid
        Left = 0
        Top = 46
        Width = 915
        Height = 441
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
        object cxGridRecdDBBandedTableView1: TcxGridDBBandedTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = PymtRecdDs
          DataController.KeyFieldNames = 'QuoReceipts_id'
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Format = '#,##0'
              Kind = skSum
              Position = spFooter
              Column = cxGridRecdDBBandedTableView1RecdAmt
            end>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.CellHints = True
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.Footer = True
          OptionsView.GroupFooters = gfVisibleWhenExpanded
          Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
          Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
          Bands = <
            item
              Width = 906
            end>
          object cxGridRecdDBBandedTableView1QuoReceipts_id: TcxGridDBBandedColumn
            DataBinding.FieldName = 'QuoReceipts_id'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridRecdDBBandedTableView1Quotations_id: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Quotations_id'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGridRecdDBBandedTableView1PaymentTimeStamp: TcxGridDBBandedColumn
            Caption = 'Pymt Date'
            DataBinding.FieldName = 'PaymentTimeStamp'
            Width = 89
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGridRecdDBBandedTableView1PaxName: TcxGridDBBandedColumn
            Caption = 'Pax'
            DataBinding.FieldName = 'PaxName'
            Width = 106
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxGridRecdDBBandedTableView1QuotationNo: TcxGridDBBandedColumn
            Caption = 'Quo No'
            DataBinding.FieldName = 'QuotationNo'
            Width = 60
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cxGridRecdDBBandedTableView1StartDate: TcxGridDBBandedColumn
            Caption = 'Start Date'
            DataBinding.FieldName = 'StartDate'
            Width = 63
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object cxGridRecdDBBandedTableView1RecdAmt: TcxGridDBBandedColumn
            Caption = 'Recd Amt'
            DataBinding.FieldName = 'RecdAmt'
            Width = 81
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object cxGridRecdDBBandedTableView1CurrencyCode: TcxGridDBBandedColumn
            Caption = 'Currency'
            DataBinding.FieldName = 'CurrencyCode'
            Visible = False
            GroupIndex = 0
            Width = 53
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object cxGridRecdDBBandedTableView1UploadId: TcxGridDBBandedColumn
            DataBinding.FieldName = 'UploadId'
            Width = 90
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object cxGridRecdDBBandedTableView1PaymentId: TcxGridDBBandedColumn
            DataBinding.FieldName = 'PaymentId'
            Width = 94
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object cxGridRecdDBBandedTableView1PaymentHdfcId: TcxGridDBBandedColumn
            DataBinding.FieldName = 'PaymentHdfcId'
            Width = 87
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object cxGridRecdDBBandedTableView1TransactionHdfcId: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TransactionHdfcId'
            Width = 92
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object cxGridRecdDBBandedTableView1ReferenceHdfcId: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ReferenceHdfcId'
            Width = 91
            Position.BandIndex = 0
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
        end
        object cxGridRecdLevel1: TcxGridLevel
          GridView = cxGridRecdDBBandedTableView1
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 915
        Height = 46
        Align = alTop
        TabOrder = 1
        object cxGroupBox1: TcxGroupBox
          Left = 10
          Top = 1
          TabOrder = 0
          Height = 42
          Width = 343
          object Label1: TLabel
            Left = 7
            Top = 24
            Width = 50
            Height = 13
            Caption = 'Between'
            Transparent = True
          end
          object Label2: TLabel
            Left = 188
            Top = 23
            Width = 22
            Height = 13
            Caption = 'and'
            Transparent = True
          end
          object cxFromDateEdit: TcxDateEdit
            Left = 63
            Top = 20
            Style.Color = 16777192
            TabOrder = 0
            Width = 121
          end
          object cxToDateEdit: TcxDateEdit
            Left = 215
            Top = 20
            Style.Color = 16777192
            TabOrder = 1
            Width = 121
          end
        end
        object cxButton4: TcxButton
          Left = 362
          Top = 18
          Width = 41
          Height = 25
          Hint = 'Previous Month'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
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
          Left = 410
          Top = 18
          Width = 41
          Height = 25
          Hint = 'Next Month'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
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
        object cxButton3: TcxButton
          Left = 472
          Top = 18
          Width = 127
          Height = 25
          Caption = 'Refresh'
          TabOrder = 3
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
      end
    end
  end
  object PymtStatusSds: TSQLDataSet
    CommandText = 'exec [p_WebPymtStatus]'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 504
    Top = 224
  end
  object PymtStatusDsp: TDataSetProvider
    DataSet = PymtStatusSds
    Left = 534
    Top = 224
  end
  object PymtStatusCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PymtStatusDsp'
    Left = 568
    Top = 224
    object PymtStatusCdsQuotations_id: TIntegerField
      FieldName = 'Quotations_id'
    end
    object PymtStatusCdsPaxName: TStringField
      FieldName = 'PaxName'
      Size = 100
    end
    object PymtStatusCdsQuotationNo: TIntegerField
      FieldName = 'QuotationNo'
    end
    object PymtStatusCdsStartDate: TSQLTimeStampField
      FieldName = 'StartDate'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object PymtStatusCdsQuotationAmt: TFMTBCDField
      FieldName = 'QuotationAmt'
      DisplayFormat = '#,##0'
      Precision = 18
      Size = 4
    end
    object PymtStatusCdsAdvanceAmt: TFMTBCDField
      FieldName = 'AdvanceAmt'
      DisplayFormat = '#,##0'
      Precision = 18
      Size = 4
    end
    object PymtStatusCdsBalanceAmt: TFMTBCDField
      FieldName = 'BalanceAmt'
      DisplayFormat = '#,##0'
      Precision = 19
      Size = 4
    end
    object PymtStatusCdsRecdAmt: TFMTBCDField
      FieldName = 'RecdAmt'
      DisplayFormat = '#,##0'
      Precision = 18
      Size = 4
    end
    object PymtStatusCdsDueNowAmt: TFMTBCDField
      FieldName = 'DueNowAmt'
      DisplayFormat = '#,##0'
      Precision = 19
      Size = 4
    end
    object PymtStatusCdsDueOnDateAmt: TFMTBCDField
      FieldName = 'DueOnDateAmt'
      DisplayFormat = '#,##0'
      Precision = 21
      Size = 4
    end
    object PymtStatusCdsDueDate: TSQLTimeStampField
      FieldName = 'DueDate'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object PymtStatusCdsCurrencyCode: TStringField
      FieldName = 'CurrencyCode'
      FixedChar = True
      Size = 3
    end
  end
  object PymtStatusDs: TDataSource
    DataSet = PymtStatusCds
    Left = 600
    Top = 224
  end
  object PopupMenu1: TPopupMenu
    Left = 120
    Top = 576
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
    object ResetAllPayments1: TMenuItem
      Caption = 'Reset All Payments'
    end
  end
  object SaveDialog: TSaveDialog
    Left = 163
    Top = 577
  end
  object dxComponentPrinter: TdxComponentPrinter
    CurrentLink = dxComponentPrinterLink1
    Version = 0
    Left = 196
    Top = 577
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
      ReportDocument.CreationDate = 40590.613458657400000000
      OptionsFormatting.UseNativeStyles = True
      OptionsOnEveryPage.Footers = False
      OptionsOnEveryPage.Headers = False
      OptionsOnEveryPage.Caption = False
      OptionsOnEveryPage.FilterBar = False
      OptionsView.Caption = False
      BuiltInReportLink = True
    end
  end
  object OpenDialog: TOpenDialog
    Left = 203
    Top = 208
  end
  object PymtRecdSds: TSQLDataSet
    CommandText = 
      'SELECT qr.QuoReceipts_id, q.Quotations_id, q.PaxName, q.Quotatio' +
      'nNo, q.StartDate, '#13#10'         c.CurrencyCode, qr.UploadId, qr.Pay' +
      'mentId, qr.PaymentHdfcId, '#13#10'         qr.TransactionHdfcId, qr.Re' +
      'ferenceHdfcId, qr.PaymentTimeStamp,'#13#10'         qr.RecdAmt'#13#10'    FR' +
      'OM QuoReceipts qr '#13#10'         INNER JOIN Quotations q ON qr.Quota' +
      'tions_id = q.Quotations_id'#13#10'         LEFT JOIN QuoPrint qp ON q.' +
      'Quotations_id = qp.Quotations_id'#13#10'         LEFT JOIN Currencies ' +
      'c ON q.Currencies_id = c.Currencies_id'#13#10'   WHERE qr.PaymentTimeS' +
      'tamp BETWEEN :FromDate AND DATEADD(mi, -1, DATEADD(day, 1, :ToDa' +
      'te))'#13#10'   ORDER BY q.QuotationDate, q.QuotationNo'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDateTime
        Name = 'FromDate'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'ToDate'
        ParamType = ptInput
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 504
    Top = 264
  end
  object PymtRecdDsp: TDataSetProvider
    DataSet = PymtRecdSds
    Left = 534
    Top = 264
  end
  object PymtRecdCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PymtRecdDsp'
    Left = 568
    Top = 264
    object PymtRecdCdsQuoReceipts_id: TIntegerField
      FieldName = 'QuoReceipts_id'
    end
    object PymtRecdCdsQuotations_id: TIntegerField
      FieldName = 'Quotations_id'
    end
    object PymtRecdCdsPaxName: TStringField
      FieldName = 'PaxName'
      Size = 100
    end
    object PymtRecdCdsQuotationNo: TIntegerField
      FieldName = 'QuotationNo'
    end
    object PymtRecdCdsStartDate: TSQLTimeStampField
      FieldName = 'StartDate'
    end
    object PymtRecdCdsCurrencyCode: TStringField
      FieldName = 'CurrencyCode'
      FixedChar = True
      Size = 3
    end
    object PymtRecdCdsUploadId: TStringField
      FieldName = 'UploadId'
      Size = 50
    end
    object PymtRecdCdsPaymentId: TStringField
      FieldName = 'PaymentId'
      Size = 50
    end
    object PymtRecdCdsPaymentHdfcId: TStringField
      FieldName = 'PaymentHdfcId'
      Size = 50
    end
    object PymtRecdCdsTransactionHdfcId: TStringField
      FieldName = 'TransactionHdfcId'
      Size = 50
    end
    object PymtRecdCdsReferenceHdfcId: TStringField
      FieldName = 'ReferenceHdfcId'
      Size = 50
    end
    object PymtRecdCdsPaymentTimeStamp: TSQLTimeStampField
      FieldName = 'PaymentTimeStamp'
    end
    object PymtRecdCdsRecdAmt: TFMTBCDField
      FieldName = 'RecdAmt'
      Precision = 18
      Size = 4
    end
  end
  object PymtRecdDs: TDataSource
    DataSet = PymtRecdCds
    Left = 600
    Top = 264
  end
  object PopupMenu2: TPopupMenu
    Left = 179
    Top = 250
    object Receipts1: TMenuItem
      Caption = 'Receipts'
      OnClick = Receipts1Click
    end
  end
end
