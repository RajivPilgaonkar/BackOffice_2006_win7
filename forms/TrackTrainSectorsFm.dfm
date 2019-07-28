inherited TrackTrainSectorsForm: TTrackTrainSectorsForm
  Left = 255
  Top = 82
  Width = 606
  Height = 586
  Caption = 'Track Train Sectors'
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 590
  end
  inherited Panel2: TPanel
    Top = 507
    Width = 590
    inherited cxButtonClose: TcxButton
      Left = 384
    end
    inherited cxDBLabelKeyId: TcxDBLabel
      Left = 308
    end
  end
  inherited Panel3: TPanel
    Width = 590
    Height = 466
    inherited cxPageControl1: TcxPageControl
      Width = 588
      Height = 464
      ClientRectBottom = 458
      ClientRectRight = 582
      inherited cxTabSheet1: TcxTabSheet
        Caption = 'Track Train Sectors'
        inherited cxGrid1: TcxGrid
          Width = 579
          Height = 432
          inherited cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
            DataController.KeyFieldNames = 'TrainTrackSectors_id'
            object cxGrid1DBBandedTableView1TrainTrackSectors_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'TrainTrackSectors_id'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1TrainNo: TcxGridDBBandedColumn
              Caption = 'Train No'
              DataBinding.FieldName = 'TrainNo'
              SortIndex = 0
              SortOrder = soAscending
              Width = 161
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1FromTrainStations_id: TcxGridDBBandedColumn
              Caption = 'From Station'
              DataBinding.FieldName = 'FromTrainStationsLookUp'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = cxGrid1DBBandedTableView1FromTrainStations_idPropertiesButtonClick
              Options.Sorting = False
              Width = 180
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1ToTrainStations_id: TcxGridDBBandedColumn
              Caption = 'To Station'
              DataBinding.FieldName = 'ToTrainStationsLookUp'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = cxGrid1DBBandedTableView1ToTrainStations_idPropertiesButtonClick
              Options.Sorting = False
              Width = 201
              Position.BandIndex = 0
              Position.ColIndex = 3
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
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1ModifiedOn: TcxGridDBBandedColumn
              Caption = 'Modified On'
              DataBinding.FieldName = 'ModifiedOn'
              Visible = False
              Options.Editing = False
              Width = 80
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
          end
        end
      end
    end
  end
  inherited MasterSds: TSQLDataSet
    CommandText = 'TrainTrackSectors'
    Left = 416
    Top = 416
  end
  inherited MasterDsp: TDataSetProvider
    Left = 446
    Top = 416
  end
  inherited MasterCds: TClientDataSet
    Left = 479
    Top = 416
    object MasterCdsTrainTrackSectors_id: TIntegerField
      FieldName = 'TrainTrackSectors_id'
    end
    object MasterCdsTrainNo: TStringField
      FieldName = 'TrainNo'
      Size = 10
    end
    object MasterCdsFromTrainStations_id: TIntegerField
      FieldName = 'FromTrainStations_id'
    end
    object MasterCdsToTrainStations_id: TIntegerField
      FieldName = 'ToTrainStations_id'
    end
    object MasterCdsFromTrainStationsLookUp: TStringField
      FieldKind = fkLookup
      FieldName = 'FromTrainStationsLookUp'
      LookupDataSet = TrainStationCds
      LookupKeyFields = 'trainstations_id'
      LookupResultField = 'stationname'
      KeyFields = 'FromTrainStations_id'
      Size = 100
      Lookup = True
    end
    object MasterCdsToTrainStationsLookUp: TStringField
      FieldKind = fkLookup
      FieldName = 'ToTrainStationsLookUp'
      LookupDataSet = TrainStationCds
      LookupKeyFields = 'trainstations_id'
      LookupResultField = 'stationname'
      KeyFields = 'ToTrainStations_id'
      Size = 100
      Lookup = True
    end
    object MasterCdsModifiedByUsers_id: TIntegerField
      FieldName = 'ModifiedByUsers_id'
    end
    object MasterCdsModifiedOn: TSQLTimeStampField
      FieldName = 'ModifiedOn'
    end
  end
  inherited MasterDs: TDataSource
    Left = 509
    Top = 416
  end
  inherited PopupMenu1: TPopupMenu
    Left = 57
    Top = 495
  end
  object TrainStationSds: TSQLDataSet
    CommandText = 'select * from trainstations'#13#10'order by station'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 168
    Top = 184
  end
  object TrainStationDsp: TDataSetProvider
    DataSet = TrainStationSds
    Left = 184
    Top = 184
  end
  object TrainStationCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'TrainStationDsp'
    Left = 200
    Top = 184
    object TrainStationCdstrainstations_id: TIntegerField
      FieldName = 'trainstations_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TrainStationCdsstation: TStringField
      FieldName = 'station'
      Size = 50
    end
    object TrainStationCdsrailwaycode: TStringField
      FieldName = 'railwaycode'
    end
    object TrainStationCdsstationname: TStringField
      FieldName = 'stationname'
      Size = 50
    end
    object TrainStationCdscities_id: TIntegerField
      FieldName = 'cities_id'
    end
    object TrainStationCdsin_use: TBooleanField
      FieldName = 'in_use'
    end
  end
  object TrainStationDs: TDataSource
    DataSet = TrainStationCds
    Left = 216
    Top = 184
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
