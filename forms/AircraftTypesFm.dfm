inherited AircraftTypesForm: TAircraftTypesForm
  Left = 597
  Top = 51
  Width = 478
  Height = 484
  Caption = 'Aircraft Types'
  OldCreateOrder = True
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 462
  end
  inherited Panel2: TPanel
    Top = 405
    Width = 462
    inherited cxButtonClose: TcxButton
      Left = 336
    end
    inherited cxDBLabelKeyId: TcxDBLabel
      Left = 260
    end
  end
  inherited Panel3: TPanel
    Width = 462
    Height = 364
    inherited cxPageControl1: TcxPageControl
      Width = 460
      Height = 362
      ClientRectBottom = 356
      ClientRectRight = 454
      inherited cxTabSheet1: TcxTabSheet
        Caption = 'Aircraft Types'
        inherited cxGrid1: TcxGrid
          Width = 451
          Height = 330
          inherited cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
            DataController.KeyFieldNames = 'aircrafttypes_id'
            object cxGrid1DBBandedTableView1aircrafttypes_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'aircrafttypes_id'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Width = 168
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1aircraft: TcxGridDBBandedColumn
              Caption = 'Aircraft'
              DataBinding.FieldName = 'aircraft'
              Options.Filtering = False
              SortIndex = 0
              SortOrder = soAscending
              Width = 397
              Position.BandIndex = 0
              Position.ColIndex = 1
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
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1ModifiedOn: TcxGridDBBandedColumn
              Caption = 'Modified On'
              DataBinding.FieldName = 'ModifiedOn'
              Visible = False
              Options.Editing = False
              Width = 80
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
          end
        end
      end
    end
  end
  inherited MasterSds: TSQLDataSet
    CommandText = 'aircrafttypes'
  end
  inherited MasterCds: TClientDataSet
    object MasterCdsaircrafttypes_id: TIntegerField
      FieldName = 'aircrafttypes_id'
    end
    object MasterCdsaircraft: TStringField
      FieldName = 'aircraft'
      Size = 10
    end
    object MasterCdsModifiedByUsers_id: TIntegerField
      FieldName = 'ModifiedByUsers_id'
    end
    object MasterCdsModifiedOn: TSQLTimeStampField
      FieldName = 'ModifiedOn'
    end
  end
  inherited PopupMenu1: TPopupMenu
    Left = 65
    Top = 383
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
