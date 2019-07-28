inherited ElemCityGroupsCostForm: TElemCityGroupsCostForm
  Left = 399
  Top = 16
  Width = 723
  Caption = 'Costs (1-10)'
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 707
  end
  inherited Panel2: TPanel
    Width = 707
    inherited cxButtonClose: TcxButton
      Left = 624
    end
    inherited cxDBLabelKeyId: TcxDBLabel
      Left = 548
      DataBinding.DataField = 'ElemCityGroupsCosts_id'
    end
    inherited cxButtonUtilities: TcxButton
      Visible = False
    end
  end
  inherited Panel3: TPanel
    Width = 707
    inherited cxPageControl1: TcxPageControl
      Width = 705
      ClientRectRight = 699
      inherited cxTabSheet1: TcxTabSheet
        inherited cxGrid1: TcxGrid
          Width = 696
          inherited cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
            DataController.KeyFieldNames = 'ElemCityGroupsCosts_id'
            OptionsData.Appending = False
            OptionsData.Deleting = False
            OptionsData.Inserting = False
            object cxGrid1DBBandedTableView1ElemInterCitiesCosts_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'ElemInterCitiesCosts_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1ElemInterCities_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'ElemInterCities_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1NumPax: TcxGridDBBandedColumn
              Caption = 'Pax'
              DataBinding.FieldName = 'NumPax'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              SortIndex = 0
              SortOrder = soAscending
              Width = 52
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1Cost: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Cost'
              HeaderAlignmentHorz = taRightJustify
              Options.Editing = False
              Width = 100
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1CostTransport: TcxGridDBBandedColumn
              Caption = 'Transport Cost'
              DataBinding.FieldName = 'CostTransport'
              HeaderAlignmentHorz = taRightJustify
              Width = 103
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1CostEscort: TcxGridDBBandedColumn
              Caption = 'Escort Cost'
              DataBinding.FieldName = 'CostEscort'
              HeaderAlignmentHorz = taRightJustify
              Width = 88
              Position.BandIndex = 0
              Position.ColIndex = 6
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
              Properties.ListSource = VehicleDs
              Width = 177
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1SystemCost: TcxGridDBBandedColumn
              Caption = 'System Cost'
              DataBinding.FieldName = 'SystemCost'
              Visible = False
              HeaderAlignmentHorz = taRightJustify
              Options.Editing = False
              Width = 99
              Position.BandIndex = 0
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
          end
        end
      end
    end
  end
  inherited MasterSds: TSQLDataSet
    CommandText = 
      'SELECT * FROM ElemCityGroupsCosts'#13#10'WHERE ElemCityGroups_id = :El' +
      'emCityGroups_id'
    CommandType = ctQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'ElemCityGroups_id'
        ParamType = ptInput
      end>
  end
  inherited MasterCds: TClientDataSet
    AfterInsert = MasterCdsAfterInsert
    object MasterCdsElemCityGroupsCosts_id: TIntegerField
      FieldName = 'ElemCityGroupsCosts_id'
    end
    object MasterCdsElemCityGroups_id: TIntegerField
      FieldName = 'ElemCityGroups_id'
    end
    object MasterCdsNumPax: TIntegerField
      FieldName = 'NumPax'
    end
    object MasterCdsCost: TFMTBCDField
      FieldName = 'Cost'
      DisplayFormat = '#,##0'
      Precision = 18
      Size = 4
    end
    object MasterCdsCostEscort: TFMTBCDField
      FieldName = 'CostEscort'
      OnChange = MasterCdsCostEscortChange
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object MasterCdsCostTransport: TFMTBCDField
      FieldName = 'CostTransport'
      OnChange = MasterCdsCostTransportChange
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object MasterCdsVehicles_id: TIntegerField
      FieldName = 'Vehicles_id'
    end
    object MasterCdsCurrencies_id: TIntegerField
      FieldName = 'Currencies_id'
    end
    object MasterCdsSystemCost: TFMTBCDField
      FieldName = 'SystemCost'
      DisplayFormat = '#,##0'
      Precision = 18
      Size = 2
    end
  end
  inherited PopupMenu1: TPopupMenu
    Left = 433
    Top = 351
  end
  object VehicleSds: TSQLDataSet
    CommandText = 
      'SELECT DISTINCT ch.Addressbook_id, ch.Vehicles_id, v.Vehicle'#13#10'FR' +
      'OM CarHireGroupCosts ch'#13#10'LEFT JOIN Vehicles v ON ch.Vehicles_id ' +
      '= v.Vehicles_id'#13#10'WHERE ch.Addressbook_id = :Addressbook_id'#13#10'ORDE' +
      'R BY v.Vehicle'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'Addressbook_id'
        ParamType = ptInput
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 600
    Top = 208
  end
  object VehicleDsp: TDataSetProvider
    DataSet = VehicleSds
    Left = 616
    Top = 208
  end
  object VehicleCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'VehicleDsp'
    Left = 632
    Top = 208
    object VehicleCdsAddressbook_id: TIntegerField
      FieldName = 'Addressbook_id'
    end
    object VehicleCdsVehicles_id: TIntegerField
      FieldName = 'Vehicles_id'
    end
    object VehicleCdsVehicle: TStringField
      FieldName = 'Vehicle'
      Size = 35
    end
  end
  object VehicleDs: TDataSource
    DataSet = VehicleCds
    Left = 648
    Top = 208
  end
end
