inherited Gstr2Form: TGstr2Form
  Left = 102
  Top = 141
  Width = 1218
  Height = 598
  Caption = 'GSTR2'
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 1202
    Height = 52
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 41
      Height = 13
      Caption = 'Vendor'
      Transparent = True
    end
    object Label3: TLabel
      Left = 409
      Top = 9
      Width = 59
      Height = 13
      Caption = 'From Date'
      Transparent = True
    end
    object Label2: TLabel
      Left = 409
      Top = 31
      Width = 47
      Height = 13
      Caption = 'To Date'
      Transparent = True
    end
    object Label4: TLabel
      Left = 919
      Top = 19
      Width = 73
      Height = 13
      Caption = 'GSTR2 Date'
      Transparent = True
    end
    object SpeedButton1: TSpeedButton
      Left = 362
      Top = 12
      Width = 23
      Height = 22
      Hint = 'Refresh Vendor List'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        555555555555555555555555555555555555555555FF55555555555559055555
        55555555577FF5555555555599905555555555557777F5555555555599905555
        555555557777FF5555555559999905555555555777777F555555559999990555
        5555557777777FF5555557990599905555555777757777F55555790555599055
        55557775555777FF5555555555599905555555555557777F5555555555559905
        555555555555777FF5555555555559905555555555555777FF55555555555579
        05555555555555777FF5555555555557905555555555555777FF555555555555
        5990555555555555577755555555555555555555555555555555}
      NumGlyphs = 2
      OnClick = SpeedButton1Click
    end
    object cxVendorLcmb: TcxLookupComboBox
      Left = 62
      Top = 14
      Properties.KeyFieldNames = 'Addressbook_id'
      Properties.ListColumns = <
        item
          FieldName = 'Organisation'
        end>
      Properties.ListSource = VendorDs
      Properties.OnEditValueChanged = cxVendorLcmbPropertiesEditValueChanged
      TabOrder = 0
      Width = 299
    end
    object cxButton1: TcxButton
      Left = 609
      Top = 11
      Width = 75
      Height = 25
      Caption = 'Filter'
      TabOrder = 1
      OnClick = cxButton1Click
    end
    object cxFromDateEdit: TcxDateEdit
      Left = 473
      Top = 6
      TabOrder = 2
      Width = 121
    end
    object cxToDateEdit: TcxDateEdit
      Left = 473
      Top = 28
      TabOrder = 3
      Width = 121
    end
    object cxGstr2Date: TcxDateEdit
      Left = 999
      Top = 16
      Properties.ReadOnly = True
      TabOrder = 4
      Width = 121
    end
    object cxButton2: TcxButton
      Left = 1125
      Top = 11
      Width = 23
      Height = 25
      Hint = 'Previous Month'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = cxButton2Click
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
    object cxButton3: TcxButton
      Left = 1152
      Top = 11
      Width = 25
      Height = 25
      Hint = 'Next Month'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      OnClick = cxButton3Click
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
  inherited Panel2: TPanel
    Top = 519
    Width = 1202
    inherited cxButtonClose: TcxButton
      Left = 1048
      Top = 7
    end
    inherited cxDBLabelKeyId: TcxDBLabel
      Left = 972
      Top = 10
      DataBinding.DataField = 't_id'
    end
  end
  inherited Panel3: TPanel
    Top = 52
    Width = 1202
    Height = 467
    inherited cxPageControl1: TcxPageControl
      Width = 1200
      Height = 465
      ClientRectBottom = 459
      ClientRectRight = 1194
      inherited cxTabSheet1: TcxTabSheet
        Caption = 'Invoices'
        inherited cxGrid1: TcxGrid
          Width = 1191
          Height = 433
          inherited cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
            PopupMenu = PopupMenu2
            OnDblClick = cxGrid1DBBandedTableView1DblClick
            DataController.KeyFieldNames = 't_id'
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '#,##0.00'
                Kind = skSum
                Column = cxGrid1DBBandedTableView1BillAmt
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                Column = cxGrid1DBBandedTableView1I_GST
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                Column = cxGrid1DBBandedTableView1C_GST
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                Column = cxGrid1DBBandedTableView1S_GST
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                Column = cxGrid1DBBandedTableView1TaxableValue
              end>
            OptionsData.Appending = False
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.Footer = True
            object cxGrid1DBBandedTableView1t_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 't_id'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1organisation: TcxGridDBBandedColumn
              Caption = 'Vendor'
              DataBinding.FieldName = 'organisation'
              Width = 189
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1accounts_id: TcxGridDBBandedColumn
              Caption = 'Accounts_id'
              DataBinding.FieldName = 'accounts_id'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              HeaderAlignmentHorz = taCenter
              Width = 91
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1transactiondate: TcxGridDBBandedColumn
              Caption = 'Acc. Trs. Date'
              DataBinding.FieldName = 'transactiondate'
              Width = 94
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1billno: TcxGridDBBandedColumn
              Caption = 'Bill No'
              DataBinding.FieldName = 'billno'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              HeaderAlignmentHorz = taCenter
              Width = 98
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1BillPeriod: TcxGridDBBandedColumn
              Caption = 'Bill Period'
              DataBinding.FieldName = 'BillPeriod'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              HeaderAlignmentHorz = taCenter
              Width = 97
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1InternetPaymentNo: TcxGridDBBandedColumn
              Caption = 'Internet Payment No'
              DataBinding.FieldName = 'InternetPaymentNo'
              Width = 124
              Position.BandIndex = 0
              Position.ColIndex = 13
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1BillAmt: TcxGridDBBandedColumn
              Caption = 'Invoice Amt'
              DataBinding.FieldName = 'BillAmt'
              Width = 100
              Position.BandIndex = 0
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1GstApproveDate: TcxGridDBBandedColumn
              Caption = 'Gstr2 Date'
              DataBinding.FieldName = 'GstApproveDate'
              Visible = False
              Width = 96
              Position.BandIndex = 0
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1GstPeriod: TcxGridDBBandedColumn
              Caption = 'Reco Gst Period'
              DataBinding.FieldName = 'GstPeriod'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              HeaderAlignmentHorz = taCenter
              Width = 97
              Position.BandIndex = 0
              Position.ColIndex = 9
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1I_GST: TcxGridDBBandedColumn
              DataBinding.FieldName = 'I_GST'
              Width = 90
              Position.BandIndex = 0
              Position.ColIndex = 10
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1C_GST: TcxGridDBBandedColumn
              DataBinding.FieldName = 'C_GST'
              Width = 83
              Position.BandIndex = 0
              Position.ColIndex = 11
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1S_GST: TcxGridDBBandedColumn
              DataBinding.FieldName = 'S_GST'
              Width = 100
              Position.BandIndex = 0
              Position.ColIndex = 12
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1TaxableValue: TcxGridDBBandedColumn
              Caption = 'Taxable Value'
              DataBinding.FieldName = 'TaxableValue'
              Width = 102
              Position.BandIndex = 0
              Position.ColIndex = 8
              Position.RowIndex = 0
            end
          end
        end
      end
    end
  end
  inherited MasterSds: TSQLDataSet
    CommandText = 'exec p_Gstr2 :FromDate, :ToDate, :Addresbook_id, 1, null'
    CommandType = ctQuery
    Params = <
      item
        DataType = ftDate
        Name = 'FromDate'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'ToDate'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Addresbook_id'
        ParamType = ptInput
      end>
    Left = 360
    Top = 368
  end
  inherited MasterDsp: TDataSetProvider
    Left = 390
    Top = 368
  end
  inherited MasterCds: TClientDataSet
    Left = 423
    Top = 368
    object MasterCdst_id: TIntegerField
      FieldName = 't_id'
    end
    object MasterCdsorganisation: TStringField
      FieldName = 'organisation'
      Size = 100
    end
    object MasterCdsaccounts_id: TIntegerField
      FieldName = 'accounts_id'
    end
    object MasterCdstransactiondate: TSQLTimeStampField
      FieldName = 'transactiondate'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object MasterCdsbillno: TStringField
      FieldName = 'billno'
      Size = 50
    end
    object MasterCdsInternetPaymentNo: TStringField
      FieldName = 'InternetPaymentNo'
      Size = 50
    end
    object MasterCdsGstApproveDate: TSQLTimeStampField
      FieldName = 'GstApproveDate'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object MasterCdsBillAmt: TFMTBCDField
      FieldName = 'BillAmt'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object MasterCdsGstPeriod: TStringField
      FieldName = 'GstPeriod'
      Size = 10
    end
    object MasterCdsBillPeriod: TStringField
      FieldName = 'BillPeriod'
      Size = 10
    end
    object MasterCdsI_GST: TFMTBCDField
      FieldName = 'I_GST'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object MasterCdsC_GST: TFMTBCDField
      FieldName = 'C_GST'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object MasterCdsS_GST: TFMTBCDField
      FieldName = 'S_GST'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object MasterCdsTaxableValue: TFMTBCDField
      FieldName = 'TaxableValue'
      DisplayFormat = '#,##0.00'
      Precision = 21
      Size = 2
    end
  end
  inherited MasterDs: TDataSource
    Left = 453
    Top = 368
  end
  inherited PopupMenu1: TPopupMenu
    Top = 519
    object GSTR2ReconciliationReportExcel1: TMenuItem
      Caption = 'GSTR2 Reconciliation Report (Excel)'
      OnClick = GSTR2ReconciliationReportExcel1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object GSTR21: TMenuItem
      Caption = 'GSTR2'
      object Export1: TMenuItem
        Caption = 'Export CSV files (Unreconciled)'
        OnClick = Export1Click
      end
      object ExportCSVFilesAll1: TMenuItem
        Caption = 'Export CSV Files (All)'
        OnClick = ExportCSVFilesAll1Click
      end
    end
  end
  object VendorSds: TSQLDataSet
    CommandText = 'exec p_Gstr2 :FromDate, :ToDate, null, 2, null'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'FromDate'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'ToDate'
        ParamType = ptInput
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 104
    Top = 16
  end
  object VendorDsp: TDataSetProvider
    DataSet = VendorSds
    Left = 120
    Top = 16
  end
  object VendorCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'VendorDsp'
    Left = 136
    Top = 16
    object VendorCdsAddressbook_id: TIntegerField
      FieldName = 'Addressbook_id'
    end
    object VendorCdsOrganisation: TStringField
      FieldName = 'Organisation'
      Size = 82
    end
  end
  object VendorDs: TDataSource
    DataSet = VendorCds
    Left = 144
    Top = 16
  end
  object CurrencyCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CurrencyDsp'
    Left = 48
    Top = 160
    object CurrencyCdscurrencycode: TStringField
      FieldName = 'currencycode'
      FixedChar = True
      Size = 3
    end
    object CurrencyCdscurrencies_id: TIntegerField
      FieldName = 'currencies_id'
    end
  end
  object CurrencyDS: TDataSource
    DataSet = CurrencyCds
    Left = 64
    Top = 160
  end
  object CurrencyDsp: TDataSetProvider
    DataSet = CurrencySds
    Left = 32
    Top = 160
  end
  object CurrencySds: TSQLDataSet
    CommandText = 'SELECT * FROM Currencies'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 16
    Top = 160
  end
  object PlaceOfSupplyDS: TDataSource
    DataSet = PlaceOfSupplyCds
    Left = 64
    Top = 232
  end
  object PlaceOfSupplyCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PlaceOfSupplyDsp'
    Left = 48
    Top = 232
  end
  object PlaceOfSupplyDsp: TDataSetProvider
    DataSet = PlaceOfSupplySds
    Left = 32
    Top = 232
  end
  object PlaceOfSupplySds: TSQLDataSet
    CommandText = 
      'SELECT PlaceOfSupply FROM PlaceOfSupply'#13#10'ORDER BY PlaceOfSupply'#13 +
      #10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 16
    Top = 232
  end
  object PopupMenu2: TPopupMenu
    Left = 372
    Top = 132
    object SetGstr2Date1: TMenuItem
      Caption = 'Set As Reconciled'
      OnClick = SetGstr2Date1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object UndoReconciliation1: TMenuItem
      Caption = 'Undo Reconciliation'
      OnClick = UndoReconciliation1Click
    end
  end
  object scExcelExport: TscExcelExport
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
    Left = 392
    Top = 104
  end
end
