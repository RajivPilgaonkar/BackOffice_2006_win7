inherited AutomobilesForm: TAutomobilesForm
  Caption = 'Automobiles'
  OldCreateOrder = True
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel3: TPanel
    inherited cxPageControl1: TcxPageControl
      inherited cxTabSheet1: TcxTabSheet
        Caption = 'Automobiles'
        inherited cxGrid1: TcxGrid
          inherited cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
            DataController.KeyFieldNames = 'vehicles_id'
            object cxGrid1DBBandedTableView1vehicles_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'vehicles_id'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1vehicle: TcxGridDBBandedColumn
              Caption = 'Automobile'
              DataBinding.FieldName = 'vehicle'
              Options.Filtering = False
              SortIndex = 0
              SortOrder = soAscending
              Width = 231
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1pax: TcxGridDBBandedColumn
              Caption = 'Pax'
              DataBinding.FieldName = 'pax'
              Options.Filtering = False
              Options.Sorting = False
              Width = 77
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1vehiclecategories_id: TcxGridDBBandedColumn
              Caption = 'Category'
              DataBinding.FieldName = 'vehiclecategories_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'VehicleCategories_id'
              Properties.ListColumns = <
                item
                  FieldName = 'Category'
                end>
              Properties.ListSource = VehicleCatDS
              Options.Sorting = False
              Width = 89
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1vehicle_plural: TcxGridDBBandedColumn
              Caption = 'Automobile Plural'
              DataBinding.FieldName = 'vehicle_plural'
              Options.Filtering = False
              Options.Sorting = False
              Width = 139
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1SeatingCapacity: TcxGridDBBandedColumn
              Caption = 'Seating Capacity'
              DataBinding.FieldName = 'SeatingCapacity'
              Options.Filtering = False
              Options.Sorting = False
              Width = 137
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1image: TcxGridDBBandedColumn
              Caption = 'Image'
              DataBinding.FieldName = 'image'
              Options.Filtering = False
              Options.Sorting = False
              Width = 118
              Position.BandIndex = 0
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1ModifiedByUsers_id: TcxGridDBBandedColumn
              Caption = 'Modified By'
              DataBinding.FieldName = 'ModifiedByUsers_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'AdmUsers_id'
              Properties.ListColumns = <
                item
                  FieldName = 'uid'
                end>
              Properties.ListSource = UsersDs
              Visible = False
              Options.Editing = False
              Width = 80
              Position.BandIndex = 0
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1ModifiedOn: TcxGridDBBandedColumn
              Caption = 'Modified On'
              DataBinding.FieldName = 'ModifiedOn'
              Visible = False
              Options.Editing = False
              Width = 80
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
    CommandText = 'vehicles'
  end
  inherited MasterCds: TClientDataSet
    object MasterCdsvehicles_id: TIntegerField
      FieldName = 'vehicles_id'
    end
    object MasterCdsvehicle: TStringField
      FieldName = 'vehicle'
      Size = 35
    end
    object MasterCdspax: TIntegerField
      FieldName = 'pax'
    end
    object MasterCdsvehiclecategories_id: TIntegerField
      FieldName = 'vehiclecategories_id'
    end
    object MasterCdsimage: TStringField
      FieldName = 'image'
    end
    object MasterCdsvehicle_plural: TStringField
      FieldName = 'vehicle_plural'
      Size = 35
    end
    object MasterCdsSeatingCapacity: TIntegerField
      FieldName = 'SeatingCapacity'
    end
    object MasterCdsModifiedByUsers_id: TIntegerField
      FieldName = 'ModifiedByUsers_id'
    end
    object MasterCdsModifiedOn: TSQLTimeStampField
      FieldName = 'ModifiedOn'
    end
  end
  object VehicleCatSds: TSQLDataSet
    CommandText = 
      'select VehicleCategories_id, Category from VehicleCategories'#13#10'OR' +
      'DER BY Category'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 240
    Top = 280
  end
  object VehicleCatDsp: TDataSetProvider
    DataSet = VehicleCatSds
    Left = 256
    Top = 280
  end
  object VehicleCatCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'VehicleCatDsp'
    Left = 272
    Top = 280
    object VehicleCatCdsVehicleCategories_id: TIntegerField
      FieldName = 'VehicleCategories_id'
    end
    object VehicleCatCdsCategory: TStringField
      FieldName = 'Category'
      Size = 50
    end
  end
  object VehicleCatDS: TDataSource
    DataSet = VehicleCatCds
    Left = 288
    Top = 280
  end
  object UsersSds: TSQLDataSet
    CommandText = 'SELECT AdmUsers_id, uid'#13#10'FROM AdmUsers'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 192
    Top = 10
  end
  object UsersDsp: TDataSetProvider
    DataSet = UsersSds
    Left = 206
    Top = 11
  end
  object UsersCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'UsersDsp'
    Left = 224
    Top = 10
    object UsersCdsAdmUsers_id: TIntegerField
      FieldName = 'AdmUsers_id'
    end
    object UsersCdsuid: TStringField
      FieldName = 'uid'
      Size = 8
    end
  end
  object UsersDs: TDataSource
    DataSet = UsersCds
    Left = 236
    Top = 10
  end
end
