inherited EntryTax2Form: TEntryTax2Form
  Left = 144
  Top = 112
  Width = 958
  Caption = 'Entry Tax'
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 942
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 31
      Height = 13
      Caption = 'State'
      Transparent = True
    end
    object Label2: TLabel
      Left = 448
      Top = 16
      Width = 24
      Height = 13
      Caption = 'Wef'
      Transparent = True
    end
    object SpeedButton1: TSpeedButton
      Left = 638
      Top = 13
      Width = 23
      Height = 22
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
        3333333777333777FF33339993707399933333773337F3777FF3399933000339
        9933377333777F3377F3399333707333993337733337333337FF993333333333
        399377F33333F333377F993333303333399377F33337FF333373993333707333
        333377F333777F333333993333101333333377F333777F3FFFFF993333000399
        999377FF33777F77777F3993330003399993373FF3777F37777F399933000333
        99933773FF777F3F777F339993707399999333773F373F77777F333999999999
        3393333777333777337333333999993333333333377777333333}
      NumGlyphs = 2
      OnClick = SpeedButton1Click
    end
    object cxStateLCMB: TcxLookupComboBox
      Left = 53
      Top = 14
      Properties.DropDownWidth = 400
      Properties.KeyFieldNames = 'states_id'
      Properties.ListColumns = <
        item
          FieldName = 'state'
        end>
      Properties.ListSource = StateDs
      Properties.OnEditValueChanged = cxAgentLCMBPropertiesEditValueChanged
      TabOrder = 0
      Width = 356
    end
    object cxWefLCMB: TcxLookupComboBox
      Left = 485
      Top = 14
      Properties.DropDownWidth = 400
      Properties.KeyFieldNames = 'wef'
      Properties.ListColumns = <
        item
          FieldName = 'wef'
        end>
      Properties.ListSource = WefDS
      Properties.OnEditValueChanged = cxWefLCMBPropertiesEditValueChanged
      TabOrder = 1
      Width = 148
    end
  end
  inherited Panel2: TPanel
    Width = 942
    inherited cxButtonClose: TcxButton
      Left = 848
    end
    inherited cxDBLabelKeyId: TcxDBLabel
      Left = 772
      DataBinding.DataField = 'EntryTaxes_id'
    end
  end
  inherited Panel3: TPanel
    Width = 942
    inherited cxPageControl1: TcxPageControl
      Width = 940
      ClientRectRight = 934
      inherited cxTabSheet1: TcxTabSheet
        Caption = 'Entry Tax'
        inherited cxGrid1: TcxGrid
          Width = 931
          inherited cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
            DataController.KeyFieldNames = 'EntryTaxes_id'
            object cxGrid1DBBandedTableView1EntryTaxes_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'EntryTaxes_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1States_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'States_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1wef: TcxGridDBBandedColumn
              Caption = 'Wef'
              DataBinding.FieldName = 'wef'
              Width = 105
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1wet: TcxGridDBBandedColumn
              Caption = 'Wet'
              DataBinding.FieldName = 'wet'
              Width = 103
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1Vehicles_id: TcxGridDBBandedColumn
              Caption = 'Vehicle'
              DataBinding.FieldName = 'Vehicles_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'Vehicles_id'
              Properties.ListColumns = <
                item
                  FieldName = 'Vehicle'
                end>
              Properties.ListSource = VehicleDS
              Width = 153
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1EntryTax: TcxGridDBBandedColumn
              Caption = 'Entry Tax'
              DataBinding.FieldName = 'EntryTax'
              Width = 101
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1EmptyEntryTax: TcxGridDBBandedColumn
              Caption = 'Empty Entry Tax'
              DataBinding.FieldName = 'EmptyEntryTax'
              Width = 112
              Position.BandIndex = 0
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1EntryValidityDays: TcxGridDBBandedColumn
              Caption = 'Entry Validity (Days)'
              DataBinding.FieldName = 'EntryValidityDays'
              Width = 128
              Position.BandIndex = 0
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1EntryTaxPerSeat: TcxGridDBBandedColumn
              Caption = 'Entry Tax Per Seat'
              DataBinding.FieldName = 'EntryTaxPerSeat'
              Width = 129
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
    CommandText = 
      'SELECT * FROM EntryTaxes'#13#10'WHERE Wef = :Wef'#13#10'AND States_id = :Sta' +
      'tes_id'
    CommandType = ctQuery
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'Wef'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'States_id'
        ParamType = ptInput
      end>
  end
  inherited MasterCds: TClientDataSet
    AfterInsert = MasterCdsAfterInsert
    object MasterCdsEntryTaxes_id: TIntegerField
      FieldName = 'EntryTaxes_id'
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
      Size = 4
    end
    object MasterCdsEmptyEntryTax: TFMTBCDField
      FieldName = 'EmptyEntryTax'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object MasterCdsEntryValidityDays: TIntegerField
      FieldName = 'EntryValidityDays'
      DisplayFormat = '#,##0'
    end
    object MasterCdsEntryTaxPerSeat: TFMTBCDField
      FieldName = 'EntryTaxPerSeat'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
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
  object WefSds: TSQLDataSet
    CommandText = 
      'SELECT DISTINCT States_id, Wef FROM EntryTaxes'#13#10'WHERE States_id ' +
      '= :States_id'#13#10'ORDER BY Wef DESC'
    DataSource = StateDs
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'states_id'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 528
    Top = 3
  end
  object WefDsp: TDataSetProvider
    DataSet = WefSds
    Left = 544
    Top = 3
  end
  object WefCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'States_id'
    MasterFields = 'states_id'
    MasterSource = StateDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'WefDsp'
    Left = 560
    Top = 3
    object WefCdswef: TSQLTimeStampField
      FieldName = 'wef'
    end
    object WefCdsStates_id: TIntegerField
      FieldName = 'States_id'
    end
  end
  object WefDS: TDataSource
    DataSet = WefCds
    Left = 576
    Top = 3
  end
  object StateSds: TSQLDataSet
    CommandText = 'SELECT states_id, state'#13#10'FROM states'#13#10'ORDER BY state'
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
  object VehicleSds: TSQLDataSet
    CommandText = 'select Vehicles_id, Vehicle from Vehicles'#13#10'ORDER BY Vehicle'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 480
    Top = 264
  end
  object VehicleDsp: TDataSetProvider
    DataSet = VehicleSds
    Left = 496
    Top = 264
  end
  object VehicleCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'VehicleDsp'
    Left = 512
    Top = 264
    object VehicleCdsVehicles_id: TIntegerField
      FieldName = 'Vehicles_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object VehicleCdsVehicle: TStringField
      FieldName = 'Vehicle'
      Size = 35
    end
  end
  object VehicleDS: TDataSource
    DataSet = VehicleCds
    Left = 528
    Top = 264
  end
end
