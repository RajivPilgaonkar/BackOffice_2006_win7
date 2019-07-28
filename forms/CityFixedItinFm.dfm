inherited CityFixedItinForm: TCityFixedItinForm
  Width = 558
  Height = 601
  Caption = 'City Fixed Itineraries'
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 550
    object CityNameLabel: TLabel
      Left = 16
      Top = 16
      Width = 85
      Height = 13
      Caption = 'CityNameLabel'
      Transparent = True
    end
  end
  inherited Panel2: TPanel
    Top = 526
    Width = 550
    inherited cxButtonClose: TcxButton
      Left = 384
    end
    inherited cxDBLabelKeyId: TcxDBLabel
      Left = 308
    end
  end
  inherited Panel3: TPanel
    Width = 550
    Height = 485
    inherited cxPageControl1: TcxPageControl
      Width = 548
      Height = 483
      ClientRectBottom = 477
      ClientRectRight = 542
      inherited cxTabSheet1: TcxTabSheet
        Caption = 'City Fixed Itineraries'
        inherited cxGrid1: TcxGrid
          Width = 539
          Height = 451
          inherited cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
            DataController.KeyFieldNames = 'CityFixedItin_id'
            object cxGrid1DBBandedTableView1CityFixedItin_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'CityFixedItin_id'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Width = 132
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1Cities_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Cities_id'
              Visible = False
              VisibleForCustomization = False
              Width = 132
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1FixedItin_id: TcxGridDBBandedColumn
              Caption = 'Fixed Itineraries'
              DataBinding.FieldName = 'FixedItin_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'FixedItin_id'
              Properties.ListColumns = <
                item
                  FieldName = 'Title'
                end>
              Properties.ListSource = FixedItinDs
              Options.SortByDisplayText = isbtOn
              SortIndex = 0
              SortOrder = soAscending
              Width = 506
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
          end
        end
      end
    end
  end
  inherited MasterSds: TSQLDataSet
    CommandText = 'SELECT * FROM CityFixedItin'#13#10'WHERE Cities_id = :Cities_id'
    CommandType = ctQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'Cities_id'
        ParamType = ptInput
      end>
    Left = 368
    Top = 400
  end
  inherited MasterDsp: TDataSetProvider
    Left = 398
    Top = 400
  end
  inherited MasterCds: TClientDataSet
    AfterInsert = MasterCdsAfterInsert
    Left = 431
    Top = 400
    object MasterCdsCityFixedItin_id: TIntegerField
      FieldName = 'CityFixedItin_id'
    end
    object MasterCdsCities_id: TIntegerField
      FieldName = 'Cities_id'
    end
    object MasterCdsFixedItin_id: TIntegerField
      FieldName = 'FixedItin_id'
    end
  end
  inherited MasterDs: TDataSource
    Left = 461
    Top = 400
  end
  object FixedItinCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FixedItinDsp'
    BeforeInsert = MasterCdsBeforeInsert
    BeforeEdit = MasterCdsBeforeEdit
    BeforePost = MasterCdsBeforePost
    AfterPost = MasterCdsAfterPost
    BeforeDelete = MasterCdsBeforeDelete
    AfterDelete = MasterCdsAfterDelete
    Left = 152
    Top = 112
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
    Left = 120
    Top = 112
  end
  object FixedItinDsp: TDataSetProvider
    DataSet = FixedItinSds
    Left = 80
    Top = 112
  end
  object FixedItinSds: TSQLDataSet
    CommandText = 'SELECT FixedItin_id, Title '#13#10'FROM FixedItin'#13#10'ORDER BY Title'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 48
    Top = 112
  end
end
