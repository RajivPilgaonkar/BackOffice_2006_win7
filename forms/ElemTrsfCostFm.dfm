inherited ElemTrsfCostForm: TElemTrsfCostForm
  Left = 354
  Top = 99
  Width = 932
  Height = 594
  Caption = 'Transfers (1-10)'
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 916
  end
  inherited Panel2: TPanel
    Top = 515
    Width = 916
    inherited cxButtonClose: TcxButton
      Left = 624
    end
    inherited cxDBLabelKeyId: TcxDBLabel
      Left = 548
      DataBinding.DataField = 'ElemServicesCosts_id'
    end
    inherited cxButtonUtilities: TcxButton
      Visible = False
    end
  end
  inherited Panel3: TPanel
    Width = 916
    Height = 474
    inherited cxPageControl1: TcxPageControl
      Width = 914
      Height = 472
      ClientRectBottom = 466
      ClientRectRight = 908
      inherited cxTabSheet1: TcxTabSheet
        inherited cxGrid1: TcxGrid
          Width = 905
          Height = 440
          inherited cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
            DataController.KeyFieldNames = 'ElemServicesCosts_id'
            OptionsData.Appending = False
            OptionsData.Deleting = False
            OptionsData.Inserting = False
            object cxGrid1DBBandedTableView1ElemServicesCosts_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'ElemServicesCosts_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1ElemServices_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'ElemServices_id'
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
              Position.BandIndex = 0
              Position.ColIndex = 2
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
              Width = 204
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1Cost: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Cost'
              HeaderAlignmentHorz = taRightJustify
              Options.Editing = False
              Width = 83
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1TransportCost: TcxGridDBBandedColumn
              Caption = 'Transport Cost'
              DataBinding.FieldName = 'TransportCost'
              HeaderAlignmentHorz = taRightJustify
              Width = 116
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1MiscCost: TcxGridDBBandedColumn
              Caption = 'Misc Cost'
              DataBinding.FieldName = 'MiscCost'
              Visible = False
              HeaderAlignmentHorz = taRightJustify
              Width = 92
              Position.BandIndex = 0
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1GuideCost: TcxGridDBBandedColumn
              Caption = 'Guide Cost'
              DataBinding.FieldName = 'GuideCost'
              Visible = False
              HeaderAlignmentHorz = taRightJustify
              Width = 92
              Position.BandIndex = 0
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1EntranceFees: TcxGridDBBandedColumn
              Caption = 'Entrance Fees'
              DataBinding.FieldName = 'EntranceFees'
              Visible = False
              HeaderAlignmentHorz = taRightJustify
              Width = 99
              Position.BandIndex = 0
              Position.ColIndex = 8
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1SystemCost: TcxGridDBBandedColumn
              Caption = 'System Cost'
              DataBinding.FieldName = 'SystemCost'
              Visible = False
              HeaderAlignmentHorz = taRightJustify
              Options.Editing = False
              Width = 93
              Position.BandIndex = 0
              Position.ColIndex = 9
              Position.RowIndex = 0
            end
          end
        end
      end
    end
  end
  inherited MasterSds: TSQLDataSet
    CommandText = 
      'SELECT * FROM ElemServicesCosts'#13#10'WHERE ElemServices_id = :ElemSe' +
      'rvices_id'
    CommandType = ctQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'ElemServices_id'
        ParamType = ptInput
      end>
  end
  inherited MasterCds: TClientDataSet
    AfterInsert = MasterCdsAfterInsert
    object MasterCdsElemServicesCosts_id: TIntegerField
      FieldName = 'ElemServicesCosts_id'
    end
    object MasterCdsElemServices_id: TIntegerField
      FieldName = 'ElemServices_id'
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
    object MasterCdsVehicles_id: TIntegerField
      FieldName = 'Vehicles_id'
    end
    object MasterCdsSystemCost: TFMTBCDField
      FieldName = 'SystemCost'
      DisplayFormat = '#,##0'
      Precision = 18
      Size = 2
    end
    object MasterCdsTransportCost: TFMTBCDField
      FieldName = 'TransportCost'
      OnChange = MasterCdsTransportCostChange
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object MasterCdsMiscCost: TFMTBCDField
      FieldName = 'MiscCost'
      OnChange = MasterCdsMiscCostChange
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object MasterCdsGuideCost: TFMTBCDField
      FieldName = 'GuideCost'
      OnChange = MasterCdsGuideCostChange
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object MasterCdsEntranceFees: TFMTBCDField
      FieldName = 'EntranceFees'
      OnChange = MasterCdsEntranceFeesChange
      DisplayFormat = '#,##0.00'
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
      'SELECT DISTINCT cs.Addressbook_id, cst.Vehicles_id, v.Vehicle, v' +
      '.Pax'#13#10'FROM CostServicesTransport cst'#13#10'     INNER JOIN CostServic' +
      'es cs ON cst.CostService_id = cs.CostServices_id'#13#10'LEFT JOIN Vehi' +
      'cles v ON cst.Vehicles_id = v.Vehicles_id'#13#10'WHERE cs.Addressbook_' +
      'id = :Addressbook_id'#13#10'ORDER BY v.Vehicle'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Addressbook_id'
        ParamType = ptInput
        Size = 4
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
    object VehicleCdsPax: TIntegerField
      FieldName = 'Pax'
    end
  end
  object VehicleDs: TDataSource
    DataSet = VehicleCds
    Left = 648
    Top = 208
  end
end
