inherited EntryTaxForm: TEntryTaxForm
  Left = 460
  Top = 12
  Width = 865
  Height = 672
  Caption = 'Entry Tax'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited GroupBox1: TcxGroupBox
    Top = 61
    TabOrder = 1
    Height = 532
    Width = 849
    inherited CustomMasterCxGrid: TcxGrid
      Width = 843
      Height = 511
      inherited CustomMasterCxGridDBTableView1: TcxGridDBTableView
        DataController.KeyFieldNames = 'EntryTaxes_id'
        OptionsView.Indicator = True
        Styles.Background = nil
        Styles.Header = nil
        object CustomMasterCxGridDBTableView1EntryTaxes_id: TcxGridDBColumn
          DataBinding.FieldName = 'EntryTaxes_id'
          Visible = False
        end
        object CustomMasterCxGridDBTableView1States_id: TcxGridDBColumn
          DataBinding.FieldName = 'States_id'
          Visible = False
          Options.Filtering = False
          Options.Grouping = False
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
          Options.Filtering = False
          Options.Grouping = False
          Width = 165
        end
        object CustomMasterCxGridDBTableView1EntryTax: TcxGridDBColumn
          Caption = 'Entry Tax'
          DataBinding.FieldName = 'EntryTax'
          Options.Filtering = False
          Options.Grouping = False
          Width = 107
        end
        object CustomMasterCxGridDBTableView1EmptyEntryTax: TcxGridDBColumn
          Caption = 'Empty Entry Tax'
          DataBinding.FieldName = 'EmptyEntryTax'
          Options.Filtering = False
          Options.Grouping = False
          Width = 112
        end
        object CustomMasterCxGridDBTableView1EntryValidityDays: TcxGridDBColumn
          Caption = 'Entry Validity (Days)'
          DataBinding.FieldName = 'EntryValidityDays'
          Options.Filtering = False
          Options.Grouping = False
          Width = 131
        end
        object CustomMasterCxGridDBTableView1EntryTaxPerSeat: TcxGridDBColumn
          Caption = 'Entry Tax Per Seat'
          DataBinding.FieldName = 'EntryTaxPerSeat'
          Options.Filtering = False
          Options.Grouping = False
          Width = 122
        end
        object CustomMasterCxGridDBTableView1Wef: TcxGridDBColumn
          DataBinding.FieldName = 'wef'
          Options.Filtering = False
          Options.Grouping = False
          Width = 80
        end
        object CustomMasterCxGridDBTableView1Wet: TcxGridDBColumn
          DataBinding.FieldName = 'wet'
          Options.Filtering = False
          Options.Grouping = False
          Width = 80
        end
      end
    end
  end
  inherited Panel1: TPanel
    Top = 593
    Width = 849
    TabOrder = 2
    inherited KeyIdDbText: TDBText
      Left = 688
      Top = 15
      DataField = 'EntryTaxes_id'
    end
    inherited SearchLbl: TcxLabel
      Visible = False
    end
    inherited SearchEdit: TcxTextEdit
      Visible = False
    end
    inherited CloseBtn: TcxButton
      Left = 764
      Top = 7
    end
    object BitBtn1: TBitBtn
      Left = 240
      Top = 8
      Width = 75
      Height = 25
      Caption = 'BitBtn1'
      TabOrder = 3
      OnClick = BitBtn1Click
    end
  end
  inherited Panel2: TPanel
    Width = 849
    Height = 61
    TabOrder = 0
    object GroupBox2: TcxGroupBox
      Left = 4
      Top = 3
      Caption = 'Select State'
      TabOrder = 0
      Height = 49
      Width = 257
      object cxStateLCMB: TcxLookupComboBox
        Left = 8
        Top = 23
        Properties.DropDownWidth = 300
        Properties.KeyFieldNames = 'states_id'
        Properties.ListColumns = <
          item
            FieldName = 'state'
          end>
        Properties.ListSource = StateDs
        Properties.ValidateOnEnter = False
        Properties.OnEditValueChanged = cxStateLCMBPropertiesEditValueChanged
        EditValue = 0
        Style.Color = 16247513
        TabOrder = 0
        OnExit = cxStateLCMBExit
        Width = 241
      end
    end
    object GroupBox3: TcxGroupBox
      Left = 374
      Top = 4
      Caption = 'With Effect From'
      TabOrder = 1
      Height = 48
      Width = 215
      object cxWefLCMB: TcxLookupComboBox
        Left = 7
        Top = 23
        Properties.DropDownListStyle = lsEditList
        Properties.KeyFieldNames = 'wef'
        Properties.ListColumns = <
          item
            FieldName = 'wef'
          end>
        Properties.ListSource = WefDS
        Properties.ValidateOnEnter = False
        Properties.OnEditValueChanged = cxWefLCMBPropertiesEditValueChanged
        EditValue = 0
        Style.Color = 16247513
        TabOrder = 0
        OnEnter = cxWefLCMBEnter
        OnExit = cxWefLCMBExit
        OnKeyPress = cxWefLCMBKeyPress
        Width = 126
      end
      object cxButtonUpdate: TcxButton
        Left = 139
        Top = 22
        Width = 71
        Height = 20
        Caption = 'Update'
        TabOrder = 1
        OnClick = cxButtonUpdateClick
      end
    end
  end
  inherited MasterSDS: TSQLDataSet
    CommandText = 'EntryTaxes'
    Top = 144
  end
  inherited DataSetProvider: TDataSetProvider
    Left = 64
    Top = 144
  end
  inherited MasterDS: TDataSource
    Left = 80
    Top = 144
  end
  inherited MasterCds: TClientDataSet
    Filtered = True
    AfterInsert = MasterCdsAfterInsert
    Left = 88
    Top = 144
    object MasterCdsEntryTaxes_id: TIntegerField
      FieldName = 'EntryTaxes_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object MasterCdsStates_id: TIntegerField
      FieldName = 'States_id'
    end
    object MasterCdsVehicles_id: TIntegerField
      FieldName = 'Vehicles_id'
    end
    object MasterCdsEntryTax: TFMTBCDField
      FieldName = 'EntryTax'
      DisplayFormat = '#,##0.00'
      Precision = 18
    end
    object MasterCdsEmptyEntryTax: TFMTBCDField
      FieldName = 'EmptyEntryTax'
      DisplayFormat = '#,##0.00'
      Precision = 18
    end
    object MasterCdsEntryValidityDays: TIntegerField
      FieldName = 'EntryValidityDays'
    end
    object MasterCdsEntryTaxPerSeat: TFMTBCDField
      FieldName = 'EntryTaxPerSeat'
      DisplayFormat = '#,##0.00'
      Precision = 18
    end
    object MasterCdswef: TSQLTimeStampField
      FieldName = 'wef'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object MasterCdswet: TSQLTimeStampField
      FieldName = 'wet'
      DisplayFormat = 'dd/mm/yyyy'
    end
  end
  object StateSds: TSQLDataSet
    CommandText = 'select states_id, state'#13#10'from states'#13#10'order by state'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 312
    Top = 16
  end
  object StateDsp: TDataSetProvider
    DataSet = StateSds
    Left = 328
    Top = 16
  end
  object StateCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'StateDsp'
    Left = 344
    Top = 16
    object StateCdsstates_id: TIntegerField
      FieldName = 'states_id'
    end
    object StateCdsstate: TStringField
      FieldName = 'state'
      Size = 50
    end
  end
  object StateDs: TDataSource
    DataSet = StateCds
    Left = 360
    Top = 16
  end
  object WefSds: TSQLDataSet
    CommandText = 'select distinct wef from EntryTaxes order by wef desc'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 736
    Top = 11
  end
  object WefDsp: TDataSetProvider
    DataSet = WefSds
    Left = 752
    Top = 11
  end
  object WefCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'WefDsp'
    Left = 768
    Top = 11
    object WefCdswef: TSQLTimeStampField
      FieldName = 'wef'
      DisplayFormat = 'dd/mm/yyyy'
    end
  end
  object WefDS: TDataSource
    DataSet = WefCds
    Left = 784
    Top = 11
  end
end
