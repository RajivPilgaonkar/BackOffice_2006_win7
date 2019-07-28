inherited QuoFixedRateTranspModuleModifyForm: TQuoFixedRateTranspModuleModifyForm
  Left = 300
  Top = 33
  Width = 882
  Caption = 'Module Transport'
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited GroupBox1: TcxGroupBox
    Caption = 'Services'
    Width = 874
    inherited CustomMasterCxGrid: TcxGrid
      Width = 868
      inherited CustomMasterCxGridDBTableView1: TcxGridDBTableView
        DataController.KeyFieldNames = 'QuoFixedRatesTranspModules_id'
        OptionsData.Deleting = False
        Styles.Background = nil
        Styles.ContentEven = nil
        Styles.ContentOdd = nil
        Styles.Header = nil
        object CustomMasterCxGridDBTableView1QuoFixedRatesCars_id: TcxGridDBColumn
          DataBinding.FieldName = 'QuoFixedRatesCars_id'
          Visible = False
          Options.Editing = False
        end
        object CustomMasterCxGridDBTableView1ServiceCities_id: TcxGridDBColumn
          DataBinding.FieldName = 'ServiceCities_id'
          Visible = False
          Options.Editing = False
        end
        object CustomMasterCxGridDBTableView1Wef: TcxGridDBColumn
          DataBinding.FieldName = 'Wef'
          Width = 106
        end
        object CustomMasterCxGridDBTableView1Wet: TcxGridDBColumn
          DataBinding.FieldName = 'Wet'
          Width = 122
        end
        object CustomMasterCxGridDBTableView1Vehicles_id: TcxGridDBColumn
          Caption = 'Vehicle'
          DataBinding.FieldName = 'Vehicles_id'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'Vehicles_id'
          Properties.ListColumns = <
            item
              FieldName = 'Vehicle'
            end>
          Properties.ListSource = BackOfficeDataModule.VehicleDS
          Width = 205
        end
        object CustomMasterCxGridDBTableView1Cost: TcxGridDBColumn
          DataBinding.FieldName = 'Cost'
        end
        object CustomMasterCxGridDBTableView1Currencies_id: TcxGridDBColumn
          Caption = 'Currency'
          DataBinding.FieldName = 'Currencies_id'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'currencies_id'
          Properties.ListColumns = <
            item
              FieldName = 'currencycode'
            end>
          Properties.ListSource = BackOfficeDataModule.CurrenciesDS
        end
      end
    end
  end
  inherited Panel1: TPanel
    Width = 874
    inherited KeyIdDbText: TDBText
      Left = 720
      DataField = 'QuoFixedRatesTranspModules_id'
    end
    inherited SearchLbl: TcxLabel
      Visible = False
    end
    inherited SearchEdit: TcxTextEdit
      Visible = False
    end
    inherited CloseBtn: TcxButton
      Left = 792
    end
  end
  inherited Panel2: TPanel
    Width = 874
    object Label2: TLabel
      Left = 16
      Top = 16
      Width = 42
      Height = 13
      Caption = 'Module'
      Transparent = True
    end
    object Label3: TLabel
      Left = 708
      Top = 16
      Width = 24
      Height = 13
      Caption = 'Wef'
      Transparent = True
    end
    object cxModuleLCMB: TcxLookupComboBox
      Left = 65
      Top = 14
      Properties.DropDownWidth = 500
      Properties.KeyFieldNames = 'FixedItin_id'
      Properties.ListColumns = <
        item
          FieldName = 'Title'
        end>
      Properties.ListSource = FixedItinDs
      Properties.OnEditValueChanged = cxModuleLCMBPropertiesEditValueChanged
      TabOrder = 0
      Width = 268
    end
    object cxDateEdit: TcxDateEdit
      Left = 740
      Top = 14
      Properties.OnEditValueChanged = cxDateEditPropertiesEditValueChanged
      TabOrder = 1
      Width = 121
    end
  end
  inherited MasterSDS: TSQLDataSet
    CommandText = 
      'SELECT * FROM QuoFixedRatesTranspModules'#13#10'WHERE FixedItin_id = :' +
      'FixedItin_id'#13#10'AND Wef >= :Wef'#13#10
    CommandType = ctQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'FixedItin_id'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'Wef'
        ParamType = ptInput
      end>
    Top = 112
  end
  inherited DataSetProvider: TDataSetProvider
    Left = 72
    Top = 112
  end
  inherited MasterDS: TDataSource
    Left = 96
    Top = 112
  end
  inherited MasterCds: TClientDataSet
    AfterInsert = MasterCdsAfterInsert
    Left = 112
    Top = 112
    object MasterCdsQuoFixedRatesTranspModules_id: TIntegerField
      FieldName = 'QuoFixedRatesTranspModules_id'
    end
    object MasterCdsFixedItin_id: TIntegerField
      FieldName = 'FixedItin_id'
    end
    object MasterCdsWef: TSQLTimeStampField
      FieldName = 'Wef'
    end
    object MasterCdsCurrencies_id: TIntegerField
      FieldName = 'Currencies_id'
    end
    object MasterCdsVehicles_id: TIntegerField
      FieldName = 'Vehicles_id'
    end
    object MasterCdsCost: TFMTBCDField
      FieldName = 'Cost'
      Precision = 18
      Size = 4
    end
  end
  object FixedItinSds: TSQLDataSet
    CommandText = 'SELECT * FROM FixedItin'#13#10'ORDER BY Title'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 336
    Top = 8
  end
  object FixedItinDsp: TDataSetProvider
    DataSet = FixedItinSds
    Left = 352
    Top = 8
  end
  object FixedItinCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FixedItinDsp'
    Left = 368
    Top = 8
    object FixedItinCdsFixedItin_id: TIntegerField
      FieldName = 'FixedItin_id'
    end
    object FixedItinCdsTitle: TStringField
      FieldName = 'Title'
      Size = 254
    end
  end
  object FixedItinDs: TDataSource
    DataSet = FixedItinCds
    Left = 384
    Top = 8
  end
end
