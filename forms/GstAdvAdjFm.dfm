inherited GstAdvAdjForm: TGstAdvAdjForm
  Left = 52
  Top = 32
  Width = 1215
  Height = 688
  Caption = 'Gst Advances & Adjustments'
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Splitter1: TSplitter
    Top = 321
    Width = 1199
  end
  inherited Panel1: TPanel
    Width = 1199
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 36
      Height = 13
      Caption = 'Month'
      Transparent = True
    end
    object Label2: TLabel
      Left = 272
      Top = 16
      Width = 27
      Height = 13
      Caption = 'Year'
      Transparent = True
    end
    object cxMonthLcmb: TcxLookupComboBox
      Left = 62
      Top = 14
      Properties.KeyFieldNames = 'Months_id'
      Properties.ListColumns = <
        item
          FieldName = 'MonthShortName'
        end>
      Properties.ListSource = MonthDS
      Properties.OnEditValueChanged = cxMonthLcmbPropertiesEditValueChanged
      TabOrder = 0
      Width = 131
    end
    object cxYearEdit: TcxTextEdit
      Left = 312
      Top = 14
      Properties.OnEditValueChanged = cxYearEditPropertiesEditValueChanged
      TabOrder = 1
      OnExit = cxYearEditExit
      Width = 58
    end
    object cxButton1: TcxButton
      Left = 408
      Top = 11
      Width = 75
      Height = 25
      Caption = 'Filter'
      TabOrder = 2
      OnClick = cxButton1Click
    end
  end
  inherited Panel2: TPanel
    Top = 609
    Width = 1199
    inherited cxButtonUtilities: TcxButton
      DropDownMenu = PopupMenu1
    end
  end
  inherited Panel3: TPanel
    Width = 1199
    Height = 280
    inherited cxPageControl1: TcxPageControl
      Width = 1197
      Height = 278
      ClientRectBottom = 272
      ClientRectRight = 1191
      inherited cxTabSheet1: TcxTabSheet
        inherited cxGrid1: TcxGrid
          Width = 1188
          Height = 246
          inherited cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
            object cxGrid1DBBandedTableView1Advances_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Advances_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1Months_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Months_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1YearRef: TcxGridDBBandedColumn
              DataBinding.FieldName = 'YearRef'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1Selected: TcxGridDBBandedColumn
              Caption = 'Select'
              DataBinding.FieldName = 'Selected'
              Width = 48
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1TransactionDate: TcxGridDBBandedColumn
              Caption = 'Date'
              DataBinding.FieldName = 'TransactionDate'
              Options.Editing = False
              Width = 83
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1Party: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Party'
              Options.Editing = False
              Width = 129
              Position.BandIndex = 0
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1Details: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Details'
              Options.Editing = False
              Width = 178
              Position.BandIndex = 0
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1Currencies_id: TcxGridDBBandedColumn
              Caption = 'Currency'
              DataBinding.FieldName = 'Currencies_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'currencies_id'
              Properties.ListColumns = <
                item
                  FieldName = 'currencycode'
                end>
              Properties.ListSource = CurrencyDS
              Options.Editing = False
              Width = 64
              Position.BandIndex = 0
              Position.ColIndex = 8
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1Forex: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Forex'
              Options.Editing = False
              Width = 78
              Position.BandIndex = 0
              Position.ColIndex = 9
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1ExchRate: TcxGridDBBandedColumn
              Caption = 'Exch Rate'
              DataBinding.FieldName = 'ExchRate'
              Options.Editing = False
              Width = 68
              Position.BandIndex = 0
              Position.ColIndex = 10
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1AdvAmt: TcxGridDBBandedColumn
              Caption = 'Advance'
              DataBinding.FieldName = 'AdvAmt'
              Options.Editing = False
              Width = 85
              Position.BandIndex = 0
              Position.ColIndex = 11
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1Ledgers_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Ledgers_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 12
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1Accounts_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Accounts_id'
              Options.Editing = False
              Width = 91
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1Rate: TcxGridDBBandedColumn
              Caption = 'GST (%)'
              DataBinding.FieldName = 'Rate'
              Width = 68
              Position.BandIndex = 0
              Position.ColIndex = 13
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1PlaceOfSupply: TcxGridDBBandedColumn
              Caption = 'Place Of Supply'
              DataBinding.FieldName = 'PlaceOfSupply'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'PlaceOfSupply'
              Properties.ListColumns = <
                item
                  FieldName = 'PlaceOfSupply'
                end>
              Properties.ListSource = PlaceOfSupplyDS
              Width = 105
              Position.BandIndex = 0
              Position.ColIndex = 14
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1I_GST: TcxGridDBBandedColumn
              DataBinding.FieldName = 'I_GST'
              Options.Editing = False
              Width = 76
              Position.BandIndex = 0
              Position.ColIndex = 15
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1C_GST: TcxGridDBBandedColumn
              DataBinding.FieldName = 'C_GST'
              Options.Editing = False
              Width = 87
              Position.BandIndex = 0
              Position.ColIndex = 16
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1S_GST: TcxGridDBBandedColumn
              DataBinding.FieldName = 'S_GST'
              Options.Editing = False
              Width = 68
              Position.BandIndex = 0
              Position.ColIndex = 17
              Position.RowIndex = 0
            end
          end
        end
      end
    end
  end
  inherited Panel4: TPanel
    Top = 329
    Width = 1199
    Height = 280
    inherited cxPageControl2: TcxPageControl
      Width = 1197
      Height = 278
      ClientRectBottom = 272
      ClientRectRight = 1191
      inherited cxTabSheet2: TcxTabSheet
        inherited cxGrid2: TcxGrid
          Width = 1188
          Height = 246
          inherited cxGrid2DBBandedTableView1: TcxGridDBBandedTableView
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '#,##0.00'
                Kind = skSum
                Column = cxGrid2DBBandedTableView1AdjAmt
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                Column = cxGrid2DBBandedTableView1I_GST
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                Column = cxGrid2DBBandedTableView1C_GST
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                Column = cxGrid2DBBandedTableView1S_GST
              end>
            OptionsView.Footer = True
            object cxGrid2DBBandedTableView1AdvancesAdj_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'AdvancesAdj_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid2DBBandedTableView1Advances_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Advances_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid2DBBandedTableView1AdjDate: TcxGridDBBandedColumn
              Caption = 'Adj Date'
              DataBinding.FieldName = 'AdjDate'
              Width = 129
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid2DBBandedTableView1AdjAmt: TcxGridDBBandedColumn
              Caption = 'Adj Amt'
              DataBinding.FieldName = 'AdjAmt'
              Width = 107
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGrid2DBBandedTableView1I_GST: TcxGridDBBandedColumn
              DataBinding.FieldName = 'I_GST'
              Width = 117
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxGrid2DBBandedTableView1C_GST: TcxGridDBBandedColumn
              DataBinding.FieldName = 'C_GST'
              Width = 114
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object cxGrid2DBBandedTableView1S_GST: TcxGridDBBandedColumn
              DataBinding.FieldName = 'S_GST'
              Width = 113
              Position.BandIndex = 0
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
          end
        end
      end
    end
  end
  inherited MasterSds: TSQLDataSet
    CommandText = 
      'SELECT * FROM Advances'#13#10'WHERE Months_id = :Months_id'#13#10'AND YearRe' +
      'f = :YearRef'
    CommandType = ctQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'Months_id'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'YearRef'
        ParamType = ptInput
      end>
    Left = 72
    Top = 120
  end
  inherited MasterDsp: TDataSetProvider
    Left = 102
    Top = 120
  end
  inherited MasterCds: TClientDataSet
    Left = 135
    Top = 120
    object MasterCdsAdvances_id: TIntegerField
      FieldName = 'Advances_id'
    end
    object MasterCdsMonths_id: TIntegerField
      FieldName = 'Months_id'
    end
    object MasterCdsYearRef: TIntegerField
      FieldName = 'YearRef'
    end
    object MasterCdsTransactionDate: TSQLTimeStampField
      FieldName = 'TransactionDate'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object MasterCdsParty: TStringField
      FieldName = 'Party'
      Size = 100
    end
    object MasterCdsDetails: TStringField
      FieldName = 'Details'
      Size = 200
    end
    object MasterCdsCurrencies_id: TIntegerField
      FieldName = 'Currencies_id'
    end
    object MasterCdsForex: TFMTBCDField
      FieldName = 'Forex'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object MasterCdsExchRate: TFMTBCDField
      FieldName = 'ExchRate'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object MasterCdsAdvAmt: TFMTBCDField
      FieldName = 'AdvAmt'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object MasterCdsLedgers_id: TIntegerField
      FieldName = 'Ledgers_id'
    end
    object MasterCdsAccounts_id: TIntegerField
      FieldName = 'Accounts_id'
    end
    object MasterCdsRate: TFMTBCDField
      FieldName = 'Rate'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object MasterCdsPlaceOfSupply: TStringField
      FieldName = 'PlaceOfSupply'
      Size = 50
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
    object MasterCdsSelected: TBooleanField
      FieldName = 'Selected'
    end
  end
  inherited MasterDs: TDataSource
    Left = 165
    Top = 120
  end
  inherited DetailSds: TSQLDataSet
    CommandText = 'SELECT * FROM AdvancesAdj'#13#10'WHERE Advances_id= :Advances_id'
    CommandType = ctQuery
    DataSource = MasterDs
    Params = <
      item
        DataType = ftInteger
        Name = 'Advances_id'
        ParamType = ptInput
      end>
    Left = 224
    Top = 368
  end
  inherited DetailDsp: TDataSetProvider
    Left = 254
    Top = 368
  end
  inherited DetailCds: TClientDataSet
    IndexFieldNames = 'Advances_id'
    MasterFields = 'Advances_id'
    MasterSource = MasterDs
    PacketRecords = 0
    Left = 287
    Top = 368
    object DetailCdsAdvancesAdj_id: TIntegerField
      FieldName = 'AdvancesAdj_id'
    end
    object DetailCdsAdvances_id: TIntegerField
      FieldName = 'Advances_id'
    end
    object DetailCdsAdjDate: TSQLTimeStampField
      FieldName = 'AdjDate'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object DetailCdsAdjAmt: TFMTBCDField
      FieldName = 'AdjAmt'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object DetailCdsI_GST: TFMTBCDField
      FieldName = 'I_GST'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object DetailCdsC_GST: TFMTBCDField
      FieldName = 'C_GST'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object DetailCdsS_GST: TFMTBCDField
      FieldName = 'S_GST'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
  end
  inherited DetailDs: TDataSource
    Left = 317
    Top = 368
  end
  object MonthSds: TSQLDataSet
    CommandText = 
      'SELECT Months_id, MonthShortName'#13#10'FROM Months'#13#10'ORDER BY Months_i' +
      'd'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 160
    Top = 8
  end
  object MonthDsp: TDataSetProvider
    DataSet = MonthSds
    Left = 176
    Top = 8
  end
  object MonthCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'MonthDsp'
    Left = 192
    Top = 8
    object MonthCdsMonths_id: TIntegerField
      FieldName = 'Months_id'
    end
    object MonthCdsMonthShortName: TStringField
      FieldName = 'MonthShortName'
      Size = 4
    end
  end
  object MonthDS: TDataSource
    DataSet = MonthCds
    Left = 208
    Top = 8
  end
  object CurrencySds: TSQLDataSet
    CommandText = 'SELECT * FROM Currencies'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 72
    Top = 176
  end
  object CurrencyDsp: TDataSetProvider
    DataSet = CurrencySds
    Left = 96
    Top = 176
  end
  object CurrencyCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CurrencyDsp'
    Left = 112
    Top = 176
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
    Left = 144
    Top = 176
  end
  object PlaceOfSupplySds: TSQLDataSet
    CommandText = 
      'SELECT PlaceOfSupply FROM PlaceOfSupply'#13#10'ORDER BY PlaceOfSupply'#13 +
      #10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 24
    Top = 296
  end
  object PlaceOfSupplyDsp: TDataSetProvider
    DataSet = PlaceOfSupplySds
    Left = 40
    Top = 296
  end
  object PlaceOfSupplyCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PlaceOfSupplyDsp'
    Left = 56
    Top = 296
  end
  object PlaceOfSupplyDS: TDataSource
    DataSet = PlaceOfSupplyCds
    Left = 72
    Top = 296
  end
  object PopupMenu1: TPopupMenu
    Left = 89
    Top = 543
    object GenerateAdvances1: TMenuItem
      Caption = 'Generate Advances'
      OnClick = GenerateAdvances1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object InsertAccountsid1: TMenuItem
      Caption = 'Insert Accounts_id'
      OnClick = InsertAccountsid1Click
    end
  end
end
