inherited ElemSightCostForm: TElemSightCostForm
  Left = 253
  Top = 107
  Width = 899
  Caption = 'Sightseeing (1-10)'
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 883
  end
  inherited Panel2: TPanel
    Width = 883
    inherited cxButtonClose: TcxButton
      Left = 800
    end
    inherited cxDBLabelKeyId: TcxDBLabel
      Left = 724
      DataBinding.DataField = 'ElemServicesCosts_id'
    end
    inherited cxButtonUtilities: TcxButton
      Visible = False
    end
  end
  inherited Panel3: TPanel
    Width = 883
    inherited cxPageControl1: TcxPageControl
      Width = 881
      ClientRectRight = 875
      inherited cxTabSheet1: TcxTabSheet
        inherited cxGrid1: TcxGrid
          Width = 872
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
              Width = 160
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1Cost: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Cost'
              HeaderAlignmentHorz = taRightJustify
              Options.Editing = False
              Width = 93
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1TransportCost: TcxGridDBBandedColumn
              Caption = 'Transport'
              DataBinding.FieldName = 'TransportCost'
              HeaderAlignmentHorz = taRightJustify
              Width = 99
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1MiscCost: TcxGridDBBandedColumn
              Caption = 'Misc'
              DataBinding.FieldName = 'MiscCost'
              HeaderAlignmentHorz = taRightJustify
              Width = 87
              Position.BandIndex = 0
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1GuideCost: TcxGridDBBandedColumn
              Caption = 'Guide'
              DataBinding.FieldName = 'GuideCost'
              HeaderAlignmentHorz = taRightJustify
              Width = 79
              Position.BandIndex = 0
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1EntranceFees: TcxGridDBBandedColumn
              Caption = 'Entrance Fees'
              DataBinding.FieldName = 'EntranceFees'
              HeaderAlignmentHorz = taRightJustify
              Width = 99
              Position.BandIndex = 0
              Position.ColIndex = 8
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1SystemCost: TcxGridDBBandedColumn
              Caption = 'System Cost'
              DataBinding.FieldName = 'SystemCost'
              HeaderAlignmentHorz = taRightJustify
              Options.Editing = False
              Width = 89
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
    object MasterCdsEntranceFees: TFMTBCDField
      FieldName = 'EntranceFees'
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
    Left = 664
    Top = 184
  end
  object VehicleDsp: TDataSetProvider
    DataSet = VehicleSds
    Left = 680
    Top = 184
  end
  object VehicleCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'VehicleDsp'
    Left = 696
    Top = 184
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
    Left = 712
    Top = 184
  end
  object CurrenciesSds: TSQLDataSet
    CommandText = 
      'SELECT Currencies_id, Currency FROM Currencies'#13#10'ORDER BY Currenc' +
      'y'#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 656
    Top = 248
  end
  object CurrenciesDsp: TDataSetProvider
    DataSet = CurrenciesSds
    Left = 672
    Top = 251
  end
  object CurrenciesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CurrenciesDsp'
    Left = 696
    Top = 248
    object CurrenciesCdsCurrencies_id: TIntegerField
      FieldName = 'Currencies_id'
    end
    object CurrenciesCdsCurrency: TStringField
      FieldName = 'Currency'
      Size = 50
    end
  end
  object CurrenciesDs: TDataSource
    DataSet = CurrenciesCds
    Left = 720
    Top = 248
  end
end
