inherited QuoModulesForm: TQuoModulesForm
  Left = 162
  Top = 33
  Width = 1090
  Height = 663
  Caption = 'QuoModules'
  OldCreateOrder = True
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 1074
    object cxTrialLabel: TcxLabel
      Left = 432
      Top = 11
      Caption = 'TRIAL AREA'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Transparent = True
    end
  end
  inherited Panel2: TPanel
    Top = 588
    Width = 1074
    Height = 37
    object DBText1: TDBText [0]
      Left = 899
      Top = 12
      Width = 65
      Height = 17
      DataField = 'QuoModules_id'
      DataSource = MasterDS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label1: TLabel [1]
      Left = 128
      Top = 11
      Width = 173
      Height = 13
      Caption = '<Focus on Grid && F2 to insert>'
      Transparent = True
    end
    inherited cxCloseBtn: TcxButton
      Left = 978
      Top = 5
    end
    object cxButton1: TcxButton
      Left = 5
      Top = 5
      Width = 65
      Height = 25
      Caption = 'Utilities'
      TabOrder = 1
      DropDownMenu = PopupMenu2
      Kind = cxbkDropDownButton
    end
    object cxSearchTextEdit: TcxTextEdit
      Left = 648
      Top = 8
      TabOrder = 2
      OnKeyPress = cxSearchTextEditKeyPress
      Width = 121
    end
    object cxSearchGB: TcxRadioGroup
      Left = 381
      Top = 1
      Caption = 'Search'
      Properties.Columns = 5
      Properties.Items = <
        item
          Caption = 'No.'
        end
        item
          Caption = 'Name'
        end
        item
          Caption = 'ID'
        end
        item
          Caption = 'Code'
        end>
      ItemIndex = 0
      TabOrder = 3
      Height = 33
      Width = 256
    end
  end
  object Panel3: TPanel [2]
    Left = 0
    Top = 41
    Width = 1074
    Height = 547
    Align = alClient
    TabOrder = 2
    object cxGroupBox1: TcxGroupBox
      Left = 1
      Top = 1
      Align = alTop
      Caption = 'Quotation'
      TabOrder = 0
      Height = 138
      Width = 1072
      object cxDBNavigator1: TcxDBNavigator
        Left = 751
        Top = 92
        Width = 220
        Height = 22
        Buttons.PriorPage.Enabled = False
        Buttons.PriorPage.Visible = False
        Buttons.NextPage.Enabled = False
        Buttons.NextPage.Visible = False
        Buttons.SaveBookmark.Visible = False
        Buttons.GotoBookmark.Visible = False
        Buttons.Filter.Visible = False
        DataSource = MasterDS
        LookAndFeel.NativeStyle = True
        TabOrder = 12
      end
      object cxLabel4: TcxLabel
        Left = 27
        Top = 50
        Caption = 'Lead Name'
        Transparent = True
      end
      object cxLabel2: TcxLabel
        Left = 209
        Top = 28
        Caption = 'Quotation No.'
        Transparent = True
      end
      object cxLabel1: TcxLabel
        Left = 6
        Top = 28
        Caption = 'Quotation Date'
        Transparent = True
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 293
        Top = 27
        DataBinding.DataField = 'QuotationNo'
        DataBinding.DataSource = MasterDS
        Style.Color = 16247513
        TabOrder = 1
        Width = 100
      end
      object TourDateEdit: TcxDBDateEdit
        Left = 98
        Top = 27
        DataBinding.DataField = 'QuotationDate'
        DataBinding.DataSource = MasterDS
        Properties.ShowTime = False
        Style.Color = 16247513
        TabOrder = 0
        Width = 101
      end
      object cxDBTextEdit3: TcxDBTextEdit
        Left = 98
        Top = 49
        DataBinding.DataField = 'PaxName'
        DataBinding.DataSource = MasterDS
        Style.Color = 16247513
        TabOrder = 2
        Width = 406
      end
      object cxLabel3: TcxLabel
        Left = 512
        Top = 51
        Caption = 'Num Pax'
        Transparent = True
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 575
        Top = 49
        DataBinding.DataField = 'NumPax'
        DataBinding.DataSource = MasterDS
        Style.Color = 16247513
        TabOrder = 3
        Width = 68
      end
      object cxLabel5: TcxLabel
        Left = 24
        Top = 72
        Caption = 'Arrival Date'
        Transparent = True
      end
      object cxDBDateEdit1: TcxDBDateEdit
        Left = 98
        Top = 71
        DataBinding.DataField = 'ArrivalDate'
        DataBinding.DataSource = MasterDS
        Properties.ShowTime = False
        Style.Color = 16247513
        TabOrder = 4
        Width = 101
      end
      object cxLabel6: TcxLabel
        Left = 205
        Top = 72
        Caption = 'Singles'
        Transparent = True
      end
      object cxDBTextEdit4: TcxDBTextEdit
        Left = 253
        Top = 71
        DataBinding.DataField = 'NumSingles'
        DataBinding.DataSource = MasterDS
        Style.Color = 16247513
        TabOrder = 5
        Width = 41
      end
      object cxLabel7: TcxLabel
        Left = 304
        Top = 72
        Caption = 'Doubles'
        Transparent = True
      end
      object cxDBTextEdit5: TcxDBTextEdit
        Left = 368
        Top = 71
        DataBinding.DataField = 'NumDoubles'
        DataBinding.DataSource = MasterDS
        Style.Color = 16247513
        TabOrder = 6
        Width = 41
      end
      object cxLabel8: TcxLabel
        Left = 416
        Top = 72
        Caption = 'Triples'
        Transparent = True
      end
      object cxDBTextEdit6: TcxDBTextEdit
        Left = 463
        Top = 71
        DataBinding.DataField = 'NumTriples'
        DataBinding.DataSource = MasterDS
        Style.Color = 16247513
        TabOrder = 7
        Width = 41
      end
      object cxLabel9: TcxLabel
        Left = 683
        Top = 72
        Caption = 'Tour Code'
        Transparent = True
      end
      object cxDBTextEdit7: TcxDBTextEdit
        Left = 749
        Top = 70
        DataBinding.DataField = 'TourCode'
        DataBinding.DataSource = MasterDS
        Style.Color = 16247513
        TabOrder = 8
        Width = 68
      end
      object cxLabel10: TcxLabel
        Left = 303
        Top = 94
        Caption = 'Currency'
        Transparent = True
      end
      object cxDBLookupComboBox1: TcxDBLookupComboBox
        Left = 367
        Top = 94
        DataBinding.DataField = 'currencies_id'
        DataBinding.DataSource = MasterDS
        Properties.DropDownWidth = 230
        Properties.KeyFieldNames = 'currencies_id'
        Properties.ListColumns = <
          item
            MinWidth = 80
            FieldName = 'currencycode'
          end
          item
            MinWidth = 150
            Width = 150
            FieldName = 'currency'
          end>
        Properties.ListSource = BackOfficeDataModule.CurrenciesDS
        Style.Color = 16247513
        TabOrder = 10
        Width = 137
      end
      object cxLabel13: TcxLabel
        Left = 826
        Top = 70
        Caption = 'Tour Date'
        Transparent = True
      end
      object cxDBDateEdit3: TcxDBDateEdit
        Left = 889
        Top = 70
        DataBinding.DataField = 'TourDate'
        DataBinding.DataSource = MasterDS
        Properties.ShowTime = False
        Style.Color = 16247513
        TabOrder = 9
        Width = 101
      end
      object cxLabel14: TcxLabel
        Left = 512
        Top = 94
        Caption = 'Agent'
        Transparent = True
      end
      object cxDBLookupComboBox2: TcxDBLookupComboBox
        Left = 575
        Top = 93
        DataBinding.DataField = 'PrincipalAgents_id'
        DataBinding.DataSource = MasterDS
        Properties.DropDownWidth = 400
        Properties.KeyFieldNames = 'Addressbook_id'
        Properties.ListColumns = <
          item
            MinWidth = 300
            Width = 300
            FieldName = 'Organisation'
          end
          item
            MinWidth = 100
            Width = 100
            FieldName = 'City'
          end>
        Properties.ListSource = BackOfficeDataModule.PrinAgentDS
        Style.Color = 16247513
        TabOrder = 11
        Width = 170
      end
      object cxDBCheckBox1: TcxDBCheckBox
        Left = 952
        Top = 24
        Caption = 'Cancelled'
        DataBinding.DataField = 'Cancelled'
        DataBinding.DataSource = MasterDS
        TabOrder = 25
        Transparent = True
        Width = 121
      end
      object cxLabel11: TcxLabel
        Left = 41
        Top = 117
        Caption = 'Remarks'
        Transparent = True
      end
      object cxDBTextEdit8: TcxDBTextEdit
        Left = 98
        Top = 116
        DataBinding.DataField = 'Remarks'
        DataBinding.DataSource = MasterDS
        Style.Color = 16247513
        TabOrder = 27
        Width = 647
      end
      object cxLabel12: TcxLabel
        Left = 512
        Top = 72
        Caption = 'Twins'
        Transparent = True
      end
      object cxDBTextEdit9: TcxDBTextEdit
        Left = 575
        Top = 71
        DataBinding.DataField = 'NumTwins'
        DataBinding.DataSource = MasterDS
        Style.Color = 16247513
        TabOrder = 29
        Width = 41
      end
    end
    object cxGridMaster: TcxGrid
      Left = 1
      Top = 139
      Width = 1072
      Height = 407
      Align = alClient
      TabOrder = 1
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
      object cxGridMasterDBBandedTableView1: TcxGridDBBandedTableView
        PopupMenu = PopupMenu1
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = Detail1DS
        DataController.KeyFieldNames = 'QuoModuleDetails_id'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '#,##0.00'
            Kind = skSum
            Column = cxGridMasterDBBandedTableView1Cost
          end
          item
            Format = '#,##0.00'
            Kind = skSum
            Column = cxGridMasterDBBandedTableView1ServTaxAmt
          end
          item
            Format = '#,##0.00'
            Kind = skSum
            Column = cxGridMasterDBBandedTableView1TotalAmt
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.CellHints = True
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.FocusCellOnCycle = True
        OptionsCustomize.ColumnHiding = True
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Appending = True
        OptionsSelection.InvertSelect = False
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
        Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
        Styles.OnGetContentStyle = cxGridMasterDBBandedTableView1StylesGetContentStyle
        Bands = <
          item
            Width = 1200
          end>
        object cxGridMasterDBBandedTableView1MainOrderNo: TcxGridDBBandedColumn
          Caption = 'Main Order No'
          DataBinding.FieldName = 'MainOrderNo'
          Options.Sorting = False
          SortIndex = 0
          SortOrder = soAscending
          Width = 35
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGridMasterDBBandedTableView1SubOrderNo: TcxGridDBBandedColumn
          Caption = 'Sub Order No'
          DataBinding.FieldName = 'SubOrderNo'
          Options.Sorting = False
          SortIndex = 1
          SortOrder = soAscending
          Width = 36
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cxGridMasterDBBandedTableView1QuoModuleDetails_id: TcxGridDBBandedColumn
          DataBinding.FieldName = 'QuoModuleDetails_id'
          Visible = False
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Options.Sorting = False
          SortIndex = 3
          SortOrder = soAscending
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object cxGridMasterDBBandedTableView1QuoModuleDetails: TcxGridDBBandedColumn
          Caption = 'Book Element'
          DataBinding.FieldName = 'QuoModuleDetails'
          Options.Filtering = False
          Options.Grouping = False
          Options.Sorting = False
          Width = 266
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object cxGridMasterDBBandedTableView1ParentFixedItin_id: TcxGridDBBandedColumn
          Caption = 'Linked To'
          DataBinding.FieldName = 'ParentFixedItin_id'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'FixedItin_id'
          Properties.ListColumns = <
            item
              FieldName = 'Title'
            end>
          Properties.ListSource = FixedItinDs
          Options.Sorting = False
          Width = 113
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object cxGridMasterDBBandedTableView1DayNo: TcxGridDBBandedColumn
          Caption = 'Day No'
          DataBinding.FieldName = 'DayNo'
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Options.Sorting = False
          Width = 38
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object cxGridMasterDBBandedTableView1QuoModules_id: TcxGridDBBandedColumn
          DataBinding.FieldName = 'QuoModules_id'
          Visible = False
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Options.Sorting = False
          Position.BandIndex = 0
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object cxGridMasterDBBandedTableView1DateIn: TcxGridDBBandedColumn
          Caption = 'Start Date'
          DataBinding.FieldName = 'DateIn'
          Options.Filtering = False
          Options.Grouping = False
          Options.Sorting = False
          SortIndex = 2
          SortOrder = soAscending
          Width = 98
          Position.BandIndex = 0
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object cxGridMasterDBBandedTableView1DateOut: TcxGridDBBandedColumn
          Caption = 'End Date'
          DataBinding.FieldName = 'DateOut'
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Options.Sorting = False
          Width = 107
          Position.BandIndex = 0
          Position.ColIndex = 8
          Position.RowIndex = 0
        end
        object cxGridMasterDBBandedTableView1DayFrom: TcxGridDBBandedColumn
          Caption = 'Day From'
          DataBinding.FieldName = 'DayFrom'
          Options.Sorting = False
          Width = 39
          Position.BandIndex = 0
          Position.ColIndex = 9
          Position.RowIndex = 0
        end
        object cxGridMasterDBBandedTableView1DayTill: TcxGridDBBandedColumn
          Caption = 'Day Till'
          DataBinding.FieldName = 'DayTill'
          Options.Sorting = False
          Width = 37
          Position.BandIndex = 0
          Position.ColIndex = 10
          Position.RowIndex = 0
        end
        object cxGridMasterDBBandedTableView1Nights: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Nights'
          Options.Filtering = False
          Options.Grouping = False
          Options.Sorting = False
          Width = 41
          Position.BandIndex = 0
          Position.ColIndex = 11
          Position.RowIndex = 0
        end
        object cxGridMasterDBBandedTableView1FixedItin_id: TcxGridDBBandedColumn
          DataBinding.FieldName = 'FixedItin_id'
          Visible = False
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Options.Sorting = False
          Position.BandIndex = 0
          Position.ColIndex = 12
          Position.RowIndex = 0
        end
        object cxGridMasterDBBandedTableView1Tickets_id: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Tickets_id'
          Visible = False
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Options.Sorting = False
          Position.BandIndex = 0
          Position.ColIndex = 13
          Position.RowIndex = 0
        end
        object cxGridMasterDBBandedTableView1FromCities_id: TcxGridDBBandedColumn
          DataBinding.FieldName = 'FromCities_id'
          Visible = False
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Options.Sorting = False
          Position.BandIndex = 0
          Position.ColIndex = 14
          Position.RowIndex = 0
        end
        object cxGridMasterDBBandedTableView1ToCities_id: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ToCities_id'
          Visible = False
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Options.Sorting = False
          Position.BandIndex = 0
          Position.ColIndex = 15
          Position.RowIndex = 0
        end
        object cxGridMasterDBBandedTableView1Services_id: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Services_id'
          Visible = False
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Options.Sorting = False
          Position.BandIndex = 0
          Position.ColIndex = 16
          Position.RowIndex = 0
        end
        object cxGridMasterDBBandedTableView1Rate: TcxGridDBBandedColumn
          Caption = 'Unit Price'
          DataBinding.FieldName = 'Rate'
          Options.Filtering = False
          Options.Grouping = False
          Options.Sorting = False
          Width = 61
          Position.BandIndex = 0
          Position.ColIndex = 17
          Position.RowIndex = 0
        end
        object cxGridMasterDBBandedTableView1Qty: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Qty'
          Options.Filtering = False
          Options.Grouping = False
          Options.Sorting = False
          Width = 30
          Position.BandIndex = 0
          Position.ColIndex = 18
          Position.RowIndex = 0
        end
        object cxGridMasterDBBandedTableView1Cost: TcxGridDBBandedColumn
          Caption = 'Amount'
          DataBinding.FieldName = 'Cost'
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Options.Sorting = False
          Width = 78
          Position.BandIndex = 0
          Position.ColIndex = 19
          Position.RowIndex = 0
        end
        object cxGridMasterDBBandedTableView1TrsType: TcxGridDBBandedColumn
          DataBinding.FieldName = 'TrsType'
          Visible = False
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Options.Sorting = False
          Position.BandIndex = 0
          Position.ColIndex = 20
          Position.RowIndex = 0
        end
        object cxGridMasterDBBandedTableView1HotelAddressbook_id: TcxGridDBBandedColumn
          DataBinding.FieldName = 'HotelAddressbook_id'
          Visible = False
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Options.Sorting = False
          Position.BandIndex = 0
          Position.ColIndex = 21
          Position.RowIndex = 0
        end
        object cxGridMasterDBBandedTableView1TransferTypes_id: TcxGridDBBandedColumn
          DataBinding.FieldName = 'TransferTypes_id'
          Visible = False
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Options.Sorting = False
          Position.BandIndex = 0
          Position.ColIndex = 22
          Position.RowIndex = 0
        end
        object cxGridMasterDBBandedTableView1GroupOrderNo: TcxGridDBBandedColumn
          DataBinding.FieldName = 'GroupOrderNo'
          Visible = False
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Options.Sorting = False
          Position.BandIndex = 0
          Position.ColIndex = 23
          Position.RowIndex = 0
        end
        object cxGridMasterDBBandedTableView1RecType: TcxGridDBBandedColumn
          DataBinding.FieldName = 'RecType'
          Visible = False
          Options.Editing = False
          Options.Sorting = False
          Position.BandIndex = 0
          Position.ColIndex = 24
          Position.RowIndex = 0
        end
        object cxGridMasterDBBandedTableView1CancelPerc: TcxGridDBBandedColumn
          Caption = 'Cancel %'
          DataBinding.FieldName = 'CancelPerc'
          Options.Filtering = False
          Options.Grouping = False
          Width = 59
          Position.BandIndex = 0
          Position.ColIndex = 25
          Position.RowIndex = 0
        end
        object cxGridMasterDBBandedTableView1ServTaxPerc: TcxGridDBBandedColumn
          Caption = 'GST (%)'
          DataBinding.FieldName = 'ServTaxPerc'
          Visible = False
          Options.Filtering = False
          Options.Grouping = False
          Width = 80
          Position.BandIndex = 0
          Position.ColIndex = 26
          Position.RowIndex = 0
        end
        object cxGridMasterDBBandedTableView1ServTaxAmt: TcxGridDBBandedColumn
          Caption = 'GST Amt'
          DataBinding.FieldName = 'ServTaxAmt'
          Visible = False
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Width = 80
          Position.BandIndex = 0
          Position.ColIndex = 27
          Position.RowIndex = 0
        end
        object cxGridMasterDBBandedTableView1TotalAmt: TcxGridDBBandedColumn
          Caption = 'Total Amt'
          DataBinding.FieldName = 'TotalAmt'
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Width = 73
          Position.BandIndex = 0
          Position.ColIndex = 28
          Position.RowIndex = 0
        end
        object cxGridMasterDBBandedTableView1RateAfterServTax: TcxGridDBBandedColumn
          DataBinding.FieldName = 'RateAfterServTax'
          Visible = False
          Options.Editing = False
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 29
          Position.RowIndex = 0
        end
        object cxGridMasterDBBandedTableView1PlaceOfSupplyLine: TcxGridDBBandedColumn
          Caption = 'Place of Supply'
          DataBinding.FieldName = 'PlaceOfSupplyLine'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'PlaceOfSupply'
          Properties.ListColumns = <
            item
              FieldName = 'PlaceOfSupply'
            end>
          Properties.ListSource = PlaceOfSupplyDs
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 30
          Position.RowIndex = 0
        end
      end
      object cxGridMasterLevel1: TcxGridLevel
        GridView = cxGridMasterDBBandedTableView1
      end
    end
  end
  inherited MasterSds: TSQLDataSet
    CommandText = 'QuoModules'
    Left = 280
    Top = 8
  end
  inherited MasterDataSetProvider: TDataSetProvider
    Left = 304
    Top = 8
  end
  inherited MasterDS: TDataSource
    Left = 336
    Top = 8
  end
  inherited MasterCds: TClientDataSet
    AfterInsert = MasterCdsAfterInsert
    Left = 320
    Top = 8
    object MasterCdsQuoModules_id: TIntegerField
      FieldName = 'QuoModules_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object MasterCdsQuotationDate: TSQLTimeStampField
      FieldName = 'QuotationDate'
    end
    object MasterCdsQuotationNo: TIntegerField
      FieldName = 'QuotationNo'
    end
    object MasterCdsQuotationYearRef: TIntegerField
      FieldName = 'QuotationYearRef'
    end
    object MasterCdsPaxName: TStringField
      FieldName = 'PaxName'
      Size = 100
    end
    object MasterCdsTrial: TIntegerField
      FieldName = 'Trial'
    end
    object MasterCdsNumPax: TIntegerField
      FieldName = 'NumPax'
    end
    object MasterCdsArrivalDate: TSQLTimeStampField
      FieldName = 'ArrivalDate'
    end
    object MasterCdsNumSingles: TIntegerField
      FieldName = 'NumSingles'
    end
    object MasterCdsNumDoubles: TIntegerField
      FieldName = 'NumDoubles'
    end
    object MasterCdsNumTriples: TIntegerField
      FieldName = 'NumTriples'
    end
    object MasterCdsTourCode: TStringField
      FieldName = 'TourCode'
      Size = 10
    end
    object MasterCdscurrencies_id: TIntegerField
      FieldName = 'currencies_id'
    end
    object MasterCdsTourDate: TSQLTimeStampField
      FieldName = 'TourDate'
    end
    object MasterCdsPrincipalAgents_id: TIntegerField
      FieldName = 'PrincipalAgents_id'
    end
    object MasterCdsCancelled: TBooleanField
      FieldName = 'Cancelled'
    end
    object MasterCdsRemarks: TStringField
      FieldName = 'Remarks'
      Size = 254
    end
    object MasterCdsNumTwins: TIntegerField
      FieldName = 'NumTwins'
    end
  end
  inherited Detail1Sds: TSQLDataSet
    CommandText = 
      'select * from QuoModuleDetails'#13#10'WHERE QuoModules_id = :QuoModule' +
      's_id'
    CommandType = ctQuery
    DataSource = MasterDS
    Params = <
      item
        DataType = ftInteger
        Name = 'QuoModules_id'
        ParamType = ptInput
        Size = 4
      end>
    Left = 512
    Top = 464
  end
  inherited Detail1DataSetProvider: TDataSetProvider
    Left = 544
    Top = 464
  end
  inherited Detail1DS: TDataSource
    Left = 608
    Top = 464
  end
  inherited Detail1Cds: TClientDataSet
    IndexFieldNames = 'QuoModules_id;DateIn'
    MasterFields = 'QuoModules_id'
    MasterSource = MasterDS
    PacketRecords = 0
    AfterInsert = Detail1CdsAfterInsert
    OnCalcFields = Detail1CdsCalcFields
    Left = 576
    Top = 464
    object Detail1CdsQuoModuleDetails_id: TIntegerField
      FieldName = 'QuoModuleDetails_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object Detail1CdsQuoModules_id: TIntegerField
      FieldName = 'QuoModules_id'
    end
    object Detail1CdsDateIn: TSQLTimeStampField
      FieldName = 'DateIn'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object Detail1CdsDateOut: TSQLTimeStampField
      FieldName = 'DateOut'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object Detail1CdsFixedItin_id: TIntegerField
      FieldName = 'FixedItin_id'
    end
    object Detail1CdsTickets_id: TIntegerField
      FieldName = 'Tickets_id'
    end
    object Detail1CdsFromCities_id: TIntegerField
      FieldName = 'FromCities_id'
    end
    object Detail1CdsToCities_id: TIntegerField
      FieldName = 'ToCities_id'
    end
    object Detail1CdsServices_id: TIntegerField
      FieldName = 'Services_id'
    end
    object Detail1CdsCost: TFMTBCDField
      FieldName = 'Cost'
      DisplayFormat = '#,##0.00'
      Precision = 18
    end
    object Detail1CdsTrsType: TIntegerField
      FieldName = 'TrsType'
    end
    object Detail1CdsHotelAddressbook_id: TIntegerField
      FieldName = 'HotelAddressbook_id'
    end
    object Detail1CdsTransferTypes_id: TIntegerField
      FieldName = 'TransferTypes_id'
    end
    object Detail1CdsQty: TFMTBCDField
      FieldName = 'Qty'
      DisplayFormat = '#,##0.00'
      Precision = 18
    end
    object Detail1CdsRate: TFMTBCDField
      FieldName = 'Rate'
      DisplayFormat = '#,##0.00'
      Precision = 18
    end
    object Detail1CdsQuoModuleDetails: TStringField
      FieldName = 'QuoModuleDetails'
      Size = 200
    end
    object Detail1CdsNights: TIntegerField
      FieldName = 'Nights'
      DisplayFormat = '#,##0'
    end
    object Detail1CdsTrainNo: TStringField
      FieldName = 'TrainNo'
      Size = 10
    end
    object Detail1CdsP2P: TIntegerField
      FieldName = 'P2P'
    end
    object Detail1CdsGroupOrderNo: TIntegerField
      FieldName = 'GroupOrderNo'
    end
    object Detail1CdsDayNo: TIntegerField
      FieldName = 'DayNo'
    end
    object Detail1CdsDayFrom: TStringField
      FieldKind = fkCalculated
      FieldName = 'DayFrom'
      Calculated = True
    end
    object Detail1CdsDayTill: TStringField
      FieldKind = fkCalculated
      FieldName = 'DayTill'
      Calculated = True
    end
    object Detail1CdsMainOrderNo: TIntegerField
      FieldName = 'MainOrderNo'
    end
    object Detail1CdsSubOrderNo: TIntegerField
      FieldName = 'SubOrderNo'
    end
    object Detail1CdsParentFixedItin_id: TIntegerField
      FieldName = 'ParentFixedItin_id'
    end
    object Detail1CdsRecType: TIntegerField
      FieldName = 'RecType'
    end
    object Detail1CdsFlightNo: TStringField
      FieldName = 'FlightNo'
      Size = 50
    end
    object Detail1CdsCancelPerc: TFMTBCDField
      FieldName = 'CancelPerc'
      DisplayFormat = '#,##0%'
      Precision = 18
      Size = 4
    end
    object Detail1CdsServTaxPerc: TFMTBCDField
      FieldName = 'ServTaxPerc'
      DisplayFormat = '#,##0.000'
      Precision = 18
      Size = 4
    end
    object Detail1CdsServTaxAmt: TFMTBCDField
      FieldName = 'ServTaxAmt'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object Detail1CdsTotalAmt: TFMTBCDField
      FieldName = 'TotalAmt'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object Detail1CdsRateAfterServTax: TFMTBCDField
      FieldName = 'RateAfterServTax'
      Precision = 18
      Size = 4
    end
    object Detail1CdsPlaceOfSupplyLine: TStringField
      FieldName = 'PlaceOfSupplyLine'
      Size = 50
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 256
    Top = 248
    object Insert1: TMenuItem
      Caption = 'Insert'
      ShortCut = 113
      OnClick = Insert1Click
    end
    object InsertNewModules1: TMenuItem
      Caption = 'Insert (New Modules)'
      ShortCut = 114
      OnClick = InsertNewModules1Click
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object WorkB1: TMenuItem
      Caption = 'Work Backwards from Total Amt'
      OnClick = WorkB1Click
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 72
    Top = 560
    object MenuItem1: TMenuItem
      Caption = 'Book Clients'
      Visible = False
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object PrintInvoice1: TMenuItem
      Caption = 'Print Quotation'
      Visible = False
      OnClick = PrintInvoice1Click
    end
    object SaveAsExcel1: TMenuItem
      Caption = 'Save As Excel'
      Visible = False
      object ServiceTaxperInvoice1: TMenuItem
        Caption = 'Service Tax per Invoice Format'
        Visible = False
        OnClick = ServiceTaxperInvoice1Click
      end
      object ServiceTaxperItemFormat1: TMenuItem
        Caption = 'Service Tax per Item Format'
        OnClick = ServiceTaxperItemFormat1Click
      end
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object SaveAsExcel2: TMenuItem
      Caption = 'Save As Excel'
      OnClick = SaveAsExcel2Click
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object Refresh1: TMenuItem
      Caption = 'Refresh'
      OnClick = Refresh1Click
    end
  end
  object CxStyleRepository1: TcxStyleRepository
    Left = 648
    Top = 24
    PixelsPerInch = 96
    object cxStyleGreen: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 12320733
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -7
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object cxStyleBlue: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 16766935
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -7
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
    object cxStyleRed: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 13559807
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -7
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object cxStyleYellow: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 9961471
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
    object cxStyleGrey: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 14408667
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
  end
  object FixedItinSds: TSQLDataSet
    CommandText = 
      'SELECT q.FixedItin_id, f.Title, q.QuoModules_id'#13#10'FROM QuoModuleD' +
      'etails q INNER JOIN FixedItin f ON q.FixedItin_id = f.FixedItin_' +
      'id'#13#10'WHERE q.QuoModules_id = :QuoModules_id'
    DataSource = MasterDS
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'QuoModules_id'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 704
    Top = 24
  end
  object FixedItinDsp: TDataSetProvider
    DataSet = FixedItinSds
    UpdateMode = upWhereKeyOnly
    Left = 736
    Top = 24
  end
  object FixedItinCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'QuoModules_id'
    MasterFields = 'QuoModules_id'
    MasterSource = MasterDS
    PacketRecords = 0
    Params = <>
    ProviderName = 'FixedItinDsp'
    Left = 768
    Top = 24
    object FixedItinCdsFixedItin_id: TIntegerField
      FieldName = 'FixedItin_id'
    end
    object FixedItinCdsTitle: TStringField
      FieldName = 'Title'
      Size = 254
    end
    object FixedItinCdsQuoModules_id: TIntegerField
      FieldName = 'QuoModules_id'
    end
  end
  object FixedItinDs: TDataSource
    DataSet = FixedItinCds
    Left = 800
    Top = 24
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
    Left = 120
    Top = 297
  end
  object PlaceOfSupplySds: TSQLDataSet
    CommandText = 'SELECT * FROM PlaceOfSupply'#13#10'ORDER BY PlaceOfSupply'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 634
    Top = 263
  end
  object PlaceOfSupplyDsp: TDataSetProvider
    DataSet = PlaceOfSupplySds
    Left = 648
    Top = 264
  end
  object PlaceOfSupplyCds: TClientDataSet
    Aggregates = <>
    Filtered = True
    Params = <>
    ProviderName = 'PlaceOfSupplyDsp'
    Left = 664
    Top = 264
  end
  object PlaceOfSupplyDs: TDataSource
    DataSet = PlaceOfSupplyCds
    Left = 678
    Top = 264
  end
end
