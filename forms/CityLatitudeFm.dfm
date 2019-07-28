inherited CityLatitudeForm: TCityLatitudeForm
  Width = 803
  Height = 563
  Caption = 'City Latitude'
  OldCreateOrder = True
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 787
  end
  inherited Panel2: TPanel
    Top = 484
    Width = 787
    inherited cxButtonClose: TcxButton
      Left = 712
    end
    inherited cxDBLabelKeyId: TcxDBLabel
      Left = 636
    end
  end
  inherited Panel3: TPanel
    Width = 787
    Height = 443
    inherited cxPageControl1: TcxPageControl
      Width = 785
      Height = 441
      ClientRectBottom = 435
      ClientRectRight = 779
      inherited cxTabSheet1: TcxTabSheet
        Caption = 'City Latitude'
        inherited cxGrid1: TcxGrid
          Width = 776
          Height = 409
          inherited cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
            DataController.KeyFieldNames = 'cities_id'
            OptionsData.Appending = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            object cxGrid1DBBandedTableView1Cities_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'cities_id'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1City: TcxGridDBBandedColumn
              Caption = 'City'
              DataBinding.FieldName = 'city'
              Options.Editing = False
              SortIndex = 0
              SortOrder = soAscending
              Width = 272
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1Latitude: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Latitude'
              Options.Filtering = False
              Width = 116
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1Longitude: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Longitude'
              Options.Filtering = False
              Width = 104
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1FilterField: TcxGridDBBandedColumn
              Caption = 'Country'
              DataBinding.FieldName = 'FilterField'
              Options.Editing = False
              Width = 172
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1NightHalt: TcxGridDBBandedColumn
              Caption = 'Night Halt'
              DataBinding.FieldName = 'nighthalt'
              Options.Editing = False
              Width = 80
              Position.BandIndex = 0
              Position.ColIndex = 5
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
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1ModifiedOn: TcxGridDBBandedColumn
              Caption = 'Modified On'
              DataBinding.FieldName = 'ModifiedOn'
              Visible = False
              Options.Editing = False
              Width = 80
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
    CommandText = 'cities'
    Left = 544
    Top = 400
  end
  inherited MasterDsp: TDataSetProvider
    Left = 574
    Top = 400
  end
  inherited MasterCds: TClientDataSet
    Left = 607
    Top = 400
    object MasterCdscitycode: TStringField
      FieldName = 'citycode'
      FixedChar = True
      Size = 4
    end
    object MasterCdscity: TStringField
      FieldName = 'city'
      Size = 50
    end
    object MasterCdscountries_id: TIntegerField
      FieldName = 'countries_id'
    end
    object MasterCdsoneliner: TStringField
      FieldName = 'oneliner'
      Size = 250
    end
    object MasterCdsgeneralinfo: TMemoField
      FieldName = 'generalinfo'
      BlobType = ftMemo
    end
    object MasterCdsgettingthere: TMemoField
      FieldName = 'gettingthere'
      BlobType = ftMemo
    end
    object MasterCdswhattosee: TMemoField
      FieldName = 'whattosee'
      BlobType = ftMemo
    end
    object MasterCdsexcursions: TMemoField
      FieldName = 'excursions'
      BlobType = ftMemo
    end
    object MasterCdscourier: TBooleanField
      FieldName = 'courier'
    end
    object MasterCdswriteup: TMemoField
      FieldName = 'writeup'
      BlobType = ftMemo
    end
    object MasterCdsnighthalt: TBooleanField
      FieldName = 'nighthalt'
    end
    object MasterCdspic1: TStringField
      FieldName = 'pic1'
      Size = 255
    end
    object MasterCdspic2: TStringField
      FieldName = 'pic2'
      Size = 255
    end
    object MasterCdscities_id: TIntegerField
      FieldName = 'cities_id'
    end
    object MasterCdsstates_id: TIntegerField
      FieldName = 'states_id'
    end
    object MasterCdsbestairporta_cities_id: TIntegerField
      FieldName = 'bestairporta_cities_id'
    end
    object MasterCdsbestairportb_cities_id: TIntegerField
      FieldName = 'bestairportb_cities_id'
    end
    object MasterCdsbestairportc_cities_id: TIntegerField
      FieldName = 'bestairportc_cities_id'
    end
    object MasterCdsbeststationa_cities_id: TIntegerField
      FieldName = 'beststationa_cities_id'
    end
    object MasterCdsbeststationb_cities_id: TIntegerField
      FieldName = 'beststationb_cities_id'
    end
    object MasterCdsbeststationc_cities_id: TIntegerField
      FieldName = 'beststationc_cities_id'
    end
    object MasterCdsbestcarhirea_cities_id: TIntegerField
      FieldName = 'bestcarhirea_cities_id'
    end
    object MasterCdsbestcarhireb_cities_id: TIntegerField
      FieldName = 'bestcarhireb_cities_id'
    end
    object MasterCdsbestcarhirec_cities_id: TIntegerField
      FieldName = 'bestcarhirec_cities_id'
    end
    object MasterCdsairport: TBooleanField
      FieldName = 'airport'
    end
    object MasterCdsrailway: TBooleanField
      FieldName = 'railway'
    end
    object MasterCdsBudgetHotels_id: TIntegerField
      FieldName = 'BudgetHotels_id'
    end
    object MasterCdsLuxuryHotels_id: TIntegerField
      FieldName = 'LuxuryHotels_id'
    end
    object MasterCdsDefaultDays: TIntegerField
      FieldName = 'DefaultDays'
    end
    object MasterCdsWebWriteUp: TMemoField
      FieldName = 'WebWriteUp'
      BlobType = ftMemo
    end
    object MasterCdsLatitude: TFMTBCDField
      FieldName = 'Latitude'
      Precision = 18
      Size = 9
    end
    object MasterCdsLongitude: TFMTBCDField
      FieldName = 'Longitude'
      Precision = 18
      Size = 9
    end
    object MasterCdsFilterField: TStringField
      FieldName = 'FilterField'
      Size = 50
    end
    object MasterCdsurl: TStringField
      FieldName = 'url'
      Size = 100
    end
    object MasterCdsMeta_Descr: TMemoField
      FieldName = 'Meta_Descr'
      BlobType = ftMemo
    end
    object MasterCdsMeta_Title: TStringField
      FieldName = 'Meta_Title'
      Size = 256
    end
    object MasterCdsMeta_Keywords: TStringField
      FieldName = 'Meta_Keywords'
      Size = 256
    end
    object MasterCdsDisplay: TBooleanField
      FieldName = 'Display'
    end
    object MasterCdsWebCityCode: TStringField
      FieldName = 'WebCityCode'
      Size = 3
    end
    object MasterCdsModifiedByUsers_id: TIntegerField
      FieldName = 'ModifiedByUsers_id'
    end
    object MasterCdsModifiedOn: TSQLTimeStampField
      FieldName = 'ModifiedOn'
    end
  end
  inherited MasterDs: TDataSource
    Left = 637
    Top = 400
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
