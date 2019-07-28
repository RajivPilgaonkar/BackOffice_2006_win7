inherited RoomTypesForm: TRoomTypesForm
  Left = 320
  Top = 173
  Width = 524
  Height = 489
  Caption = 'Room Types'
  OldCreateOrder = True
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 508
  end
  inherited Panel2: TPanel
    Top = 410
    Width = 508
    inherited cxButtonClose: TcxButton
      Left = 408
    end
    inherited cxDBLabelKeyId: TcxDBLabel
      Left = 332
    end
  end
  inherited Panel3: TPanel
    Width = 508
    Height = 369
    inherited cxPageControl1: TcxPageControl
      Width = 506
      Height = 367
      ClientRectBottom = 361
      ClientRectRight = 500
      inherited cxTabSheet1: TcxTabSheet
        Caption = 'Room Types'
        inherited cxGrid1: TcxGrid
          Width = 497
          Height = 335
          inherited cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
            DataController.KeyFieldNames = 'roomtypes_id'
            object cxGrid1DBBandedTableView1roomtypes_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'roomtypes_id'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1roomtype: TcxGridDBBandedColumn
              Caption = 'Room Type'
              DataBinding.FieldName = 'roomtype'
              Options.Filtering = False
              SortIndex = 0
              SortOrder = soAscending
              Width = 310
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1ac: TcxGridDBBandedColumn
              Caption = 'AC Applicable'
              DataBinding.FieldName = 'ac'
              Options.Filtering = False
              Width = 113
              Position.BandIndex = 0
              Position.ColIndex = 2
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
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1ModifiedOn: TcxGridDBBandedColumn
              Caption = 'Modified On'
              DataBinding.FieldName = 'ModifiedOn'
              Visible = False
              Options.Editing = False
              Width = 80
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
          end
        end
      end
    end
  end
  inherited MasterSds: TSQLDataSet
    CommandText = 'roomtypes'
  end
  inherited MasterCds: TClientDataSet
    AfterInsert = MasterCdsAfterInsert
    object MasterCdsroomtypes_id: TIntegerField
      FieldName = 'roomtypes_id'
    end
    object MasterCdsroomtype: TStringField
      FieldName = 'roomtype'
      Size = 50
    end
    object MasterCdsac: TBooleanField
      FieldName = 'ac'
    end
    object MasterCdsModifiedByUsers_id: TIntegerField
      FieldName = 'ModifiedByUsers_id'
    end
    object MasterCdsModifiedOn: TSQLTimeStampField
      FieldName = 'ModifiedOn'
    end
  end
  inherited PopupMenu1: TPopupMenu
    Top = 415
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
