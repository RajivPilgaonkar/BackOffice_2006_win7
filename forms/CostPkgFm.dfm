inherited CostPkgForm: TCostPkgForm
  Left = 142
  Top = 189
  Height = 328
  Caption = 'Packages'
  FormStyle = fsMDIChild
  Position = poScreenCenter
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited SpeedButton1: TSpeedButton
      OnClick = SpeedButton1Click
    end
    inherited cxCityLcmb: TcxLookupComboBox
      Properties.OnEditValueChanged = cxCityLcmbPropertiesEditValueChanged
      TabOrder = 0
    end
    inherited cxPackageLcmb: TcxLookupComboBox
      Properties.KeyFieldNames = 'Packages_id'
      Properties.ListColumns = <
        item
          FieldName = 'Package'
        end>
      Properties.ListSource = PackageDs
      Properties.OnEditValueChanged = cxPackageLcmbPropertiesEditValueChanged
      TabOrder = 1
    end
    inherited cxWefLCMB: TcxLookupComboBox
      Properties.OnEditValueChanged = cxWefLCMBPropertiesEditValueChanged
      TabOrder = 3
    end
    inherited cxAgentLcmb: TcxLookupComboBox
      Properties.ListColumns = <
        item
          FieldName = 'Organisation'
        end>
      Properties.ListSource = AgentDs
      TabOrder = 2
    end
  end
  inherited Panel2: TPanel
    Top = 259
    inherited cxButtonUtilities: TcxButton
      DropDownMenu = PopupMenu1
    end
  end
  inherited Panel5: TPanel
    Height = 226
    inherited Splitter4: TSplitter
      Height = 224
    end
    inherited Panel8: TPanel
      Height = 224
      inherited cxPageControl1: TcxPageControl
        Height = 222
        ClientRectBottom = 216
        inherited cxTabSheet1: TcxTabSheet
          object cxGrid1: TcxGrid
            Left = 0
            Top = 0
            Width = 889
            Height = 190
            Align = alClient
            TabOrder = 0
            object cxGridDBBandedTableView1: TcxGridDBBandedTableView
              NavigatorButtons.ConfirmDelete = False
              DataController.DataSource = MasterDs
              DataController.KeyFieldNames = 'costpackages_id'
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
              Styles.Background = BackOfficeDataModule.cxStyleLightBlueBackground
              Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
              Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
              Bands = <
                item
                end>
              object cxGridDBBandedTableView1costpackages_id: TcxGridDBBandedColumn
                DataBinding.FieldName = 'costpackages_id'
                Visible = False
                Options.Editing = False
                Position.BandIndex = 0
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object cxGridDBBandedTableView1packages_id: TcxGridDBBandedColumn
                DataBinding.FieldName = 'packages_id'
                Visible = False
                Options.Editing = False
                Position.BandIndex = 0
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
              object cxGridDBBandedTableView1addressbook_id: TcxGridDBBandedColumn
                DataBinding.FieldName = 'addressbook_id'
                Visible = False
                Options.Editing = False
                Position.BandIndex = 0
                Position.ColIndex = 2
                Position.RowIndex = 0
              end
              object cxGridDBBandedTableView1wef: TcxGridDBBandedColumn
                Caption = 'Wef'
                DataBinding.FieldName = 'wef'
                Width = 121
                Position.BandIndex = 0
                Position.ColIndex = 3
                Position.RowIndex = 0
              end
              object cxGridDBBandedTableView1wet: TcxGridDBBandedColumn
                Caption = 'Wet'
                DataBinding.FieldName = 'wet'
                Width = 120
                Position.BandIndex = 0
                Position.ColIndex = 4
                Position.RowIndex = 0
              end
              object cxGridDBBandedTableView1commission: TcxGridDBBandedColumn
                DataBinding.FieldName = 'commission'
                Visible = False
                Position.BandIndex = 0
                Position.ColIndex = 5
                Position.RowIndex = 0
              end
              object cxGridDBBandedTableView1available: TcxGridDBBandedColumn
                DataBinding.FieldName = 'available'
                Visible = False
                Options.Editing = False
                Position.BandIndex = 0
                Position.ColIndex = 6
                Position.RowIndex = 0
              end
              object cxGridDBBandedTableView1FromPax: TcxGridDBBandedColumn
                Caption = 'From Pax'
                DataBinding.FieldName = 'FromPax'
                SortIndex = 0
                SortOrder = soAscending
                Position.BandIndex = 0
                Position.ColIndex = 7
                Position.RowIndex = 0
              end
              object cxGridDBBandedTableView1ToPax: TcxGridDBBandedColumn
                Caption = 'To Pax'
                DataBinding.FieldName = 'ToPax'
                Position.BandIndex = 0
                Position.ColIndex = 8
                Position.RowIndex = 0
              end
              object cxGridDBBandedTableView1Cost: TcxGridDBBandedColumn
                DataBinding.FieldName = 'Cost'
                Position.BandIndex = 0
                Position.ColIndex = 9
                Position.RowIndex = 0
              end
              object cxGridDBBandedTableView1currencies_id: TcxGridDBBandedColumn
                Caption = 'Currency'
                DataBinding.FieldName = 'currencies_id'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.KeyFieldNames = 'Currencies_id'
                Properties.ListColumns = <
                  item
                    FieldName = 'CurrencyCode'
                  end>
                Properties.ListSource = CurrencyDs
                Position.BandIndex = 0
                Position.ColIndex = 10
                Position.RowIndex = 0
              end
            end
            object cxGridLevel1: TcxGridLevel
              GridView = cxGridDBBandedTableView1
            end
          end
        end
      end
    end
    inherited Panel9: TPanel
      Height = 224
      inherited cxPageControl5: TcxPageControl
        Height = 222
        ClientRectBottom = 216
      end
    end
  end
  inherited MasterCds: TClientDataSet
    AfterInsert = MasterCdsAfterInsert
    object MasterCdsFromPax: TIntegerField
      FieldName = 'FromPax'
    end
    object MasterCdsToPax: TIntegerField
      FieldName = 'ToPax'
    end
    object MasterCdsCost: TFMTBCDField
      FieldName = 'Cost'
      Precision = 18
      Size = 4
    end
    object MasterCdscurrencies_id: TIntegerField
      FieldName = 'currencies_id'
    end
  end
  object CurrencySds: TSQLDataSet
    CommandText = 'select Currencies_id, CurrencyCode, Currency from currencies'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 448
    Top = 98
  end
  object CurrencyDsp: TDataSetProvider
    DataSet = CurrencySds
    Left = 472
    Top = 98
  end
  object CurrencyCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CurrencyDsp'
    Left = 488
    Top = 98
    object CurrencyCdsCurrencies_id: TIntegerField
      FieldName = 'Currencies_id'
    end
    object CurrencyCdsCurrencyCode: TStringField
      FieldName = 'CurrencyCode'
      FixedChar = True
      Size = 3
    end
    object CurrencyCdsCurrency: TStringField
      FieldName = 'Currency'
      Size = 50
    end
  end
  object CurrencyDs: TDataSource
    DataSet = CurrencyCds
    Left = 504
    Top = 98
  end
  object PopupMenu1: TPopupMenu
    Left = 136
    Top = 200
    object CarHirePerKmPriceList1: TMenuItem
      Caption = 'Packages Price List'
    end
  end
end
