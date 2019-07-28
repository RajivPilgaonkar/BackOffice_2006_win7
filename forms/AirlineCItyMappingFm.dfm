inherited AirlineCityMappingForm: TAirlineCityMappingForm
  Left = 391
  Top = 150
  Width = 511
  Height = 558
  Caption = 'Airline City Mapping'
  OldCreateOrder = True
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 503
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
    Top = 483
    Width = 503
    inherited cxButtonClose: TcxButton
      Left = 384
    end
    inherited cxDBLabelKeyId: TcxDBLabel
      Left = 308
    end
  end
  inherited Panel3: TPanel
    Width = 503
    Height = 442
    inherited cxPageControl1: TcxPageControl
      Width = 501
      Height = 440
      ClientRectBottom = 434
      ClientRectRight = 495
      inherited cxTabSheet1: TcxTabSheet
        Caption = 'Airline City Mapping'
        inherited cxGrid1: TcxGrid
          Width = 492
          Height = 408
          inherited cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
            DataController.KeyFieldNames = 'AirlineCityMappings_id'
            object cxGrid1DBBandedTableView1AirlineCityMappings_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'AirlineCityMappings_id'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Width = 176
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1AirlineCity: TcxGridDBBandedColumn
              Caption = 'Airline City'
              DataBinding.FieldName = 'AirlineCity'
              SortIndex = 0
              SortOrder = soAscending
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1Cities_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Cities_id'
              Visible = False
              VisibleForCustomization = False
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
    CommandText = 'SELECT * FROM AirlineCityMapping '#13#10'WHERE Cities_id = :Cities_id'
    CommandType = ctQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'Cities_id'
        ParamType = ptInput
      end>
    Left = 288
    Top = 392
  end
  inherited MasterDsp: TDataSetProvider
    Left = 318
    Top = 392
  end
  inherited MasterCds: TClientDataSet
    AfterInsert = MasterCdsAfterInsert
    Left = 351
    Top = 392
    object MasterCdsAirlineCityMappings_id: TIntegerField
      FieldName = 'AirlineCityMappings_id'
    end
    object MasterCdsAirlineCity: TStringField
      FieldName = 'AirlineCity'
      Size = 50
    end
    object MasterCdsCities_id: TIntegerField
      FieldName = 'Cities_id'
    end
  end
  inherited MasterDs: TDataSource
    Left = 381
    Top = 392
  end
end
