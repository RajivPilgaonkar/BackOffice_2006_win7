inherited TrainsForm: TTrainsForm
  Left = 197
  Top = 46
  Width = 917
  Height = 640
  Caption = 'Trains'
  OldCreateOrder = True
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Splitter1: TSplitter
    Top = 146
    Width = 901
  end
  inherited Panel1: TPanel
    Width = 901
  end
  inherited Panel2: TPanel
    Top = 556
    Width = 901
    Height = 46
    inherited cxButtonUtilities: TcxButton
      DropDownMenu = PopupMenu1
    end
    inherited cxDBLabelKeyId_Master: TcxDBLabel
      Left = 759
    end
    inherited cxButtonClose: TcxButton
      Left = 827
    end
    inherited cxDBLabelKeyId_Detail1: TcxDBLabel
      Left = 760
    end
    inherited cxDBLabelKeyId_Detail2: TcxDBLabel
      Left = 688
    end
    object cxRadioGroup: TcxRadioGroup
      Left = 96
      Top = 3
      Caption = 'Search By'
      Properties.Columns = 2
      Properties.Items = <
        item
          Caption = 'Train No.'
          Value = True
        end
        item
          Caption = 'Train Name'
          Value = 'False'
        end>
      ItemIndex = 0
      Style.Edges = []
      TabOrder = 5
      Height = 38
      Width = 185
    end
    object cxSearchEdit: TcxTextEdit
      Left = 292
      Top = 22
      TabOrder = 6
      OnKeyPress = cxSearchEditKeyPress
      Width = 117
    end
    object cxDBNavigator1: TcxDBNavigator
      Left = 416
      Top = 17
      Width = 264
      Height = 24
      Buttons.Refresh.Visible = True
      Buttons.SaveBookmark.Visible = False
      Buttons.GotoBookmark.Visible = False
      Buttons.Filter.Visible = False
      DataSource = MasterDs
      TabOrder = 7
    end
  end
  inherited Panel3: TPanel
    Width = 901
    Height = 105
    inherited cxPageControl1: TcxPageControl
      Width = 899
      Height = 103
      ClientRectBottom = 97
      ClientRectRight = 893
      inherited cxTabSheet1: TcxTabSheet
        Caption = 'Trains'
        object Label1: TLabel
          Left = 6
          Top = 6
          Width = 50
          Height = 13
          Caption = 'Train No'
          Transparent = True
        end
        object Label2: TLabel
          Left = 6
          Top = 27
          Width = 24
          Height = 13
          Caption = 'Wef'
          Transparent = True
        end
        object Label3: TLabel
          Left = 6
          Top = 48
          Width = 34
          Height = 13
          Caption = 'Agent'
          Transparent = True
        end
        object Label4: TLabel
          Left = 274
          Top = 6
          Width = 66
          Height = 13
          Caption = 'Train Name'
          Transparent = True
        end
        object Label5: TLabel
          Left = 274
          Top = 27
          Width = 24
          Height = 13
          Caption = 'Wet'
          Transparent = True
        end
        object Label6: TLabel
          Left = 587
          Top = 6
          Width = 51
          Height = 13
          Caption = 'Category'
          Transparent = True
        end
        object Label7: TLabel
          Left = 587
          Top = 27
          Width = 72
          Height = 13
          Caption = 'Operates On'
          Transparent = True
        end
        object cxTrainNoEdit: TcxDBTextEdit
          Left = 73
          Top = 2
          DataBinding.DataField = 'trainno'
          DataBinding.DataSource = MasterDs
          Style.Color = clWindow
          TabOrder = 0
          Width = 160
        end
        object cxWefDateEdit: TcxDBDateEdit
          Left = 73
          Top = 23
          DataBinding.DataField = 'wef'
          DataBinding.DataSource = MasterDs
          Style.Color = clWindow
          TabOrder = 1
          Width = 160
        end
        object cxAgentLcmb: TcxDBLookupComboBox
          Left = 73
          Top = 45
          DataBinding.DataField = 'addressbook_id'
          DataBinding.DataSource = MasterDs
          Properties.DropDownWidth = 250
          Properties.KeyFieldNames = 'Addressbook_id'
          Properties.ListColumns = <
            item
              FieldName = 'Organisation'
            end>
          Properties.ListSource = AgentDS
          Style.Color = clWindow
          TabOrder = 2
          Width = 280
        end
        object cxTrainNameEdit: TcxDBTextEdit
          Left = 351
          Top = 2
          DataBinding.DataField = 'trainname'
          DataBinding.DataSource = MasterDs
          Style.Color = clWindow
          TabOrder = 3
          Width = 223
        end
        object cxWetDateEdit: TcxDBDateEdit
          Left = 351
          Top = 23
          DataBinding.DataField = 'wet'
          DataBinding.DataSource = MasterDs
          Style.Color = clWindow
          TabOrder = 4
          Width = 160
        end
        object cxTrainCategoriesLCmb: TcxDBLookupComboBox
          Left = 670
          Top = 2
          DataBinding.DataField = 'traincategories_id'
          DataBinding.DataSource = MasterDs
          Properties.DropDownWidth = 160
          Properties.KeyFieldNames = 'traincategories_id'
          Properties.ListColumns = <
            item
              FieldName = 'category'
            end>
          Properties.ListSource = TrainCategoriesDS
          Style.Color = clWindow
          TabOrder = 5
          Width = 160
        end
        object cxOperatesOnEdit: TcxDBTextEdit
          Left = 670
          Top = 23
          DataBinding.DataField = 'DaysName'
          DataBinding.DataSource = MasterDs
          Style.Color = clWindow
          TabOrder = 6
          Width = 160
        end
        object cxUpdateDaysBtn: TcxButton
          Left = 588
          Top = 43
          Width = 244
          Height = 25
          Caption = 'Update Days Of Operation'
          TabOrder = 7
          OnClick = cxUpdateDaysBtnClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333300000003
            33333333777777733333333330CCC03333333333F7777733F3333330330C0330
            33333337337773373333333333303333333333F33337333333F3303333333333
            3033373333333333373333333333333333333F3333333333333F033333333333
            3303733333333333337333333333333333333F3333333333333F033333333333
            3303733333333333FF7333333333333000333FFFFF33333777FF000003333307
            B70377777F333377777F09990333330BBB0377777F333377777F099903333307
            B70377777F3333777773099903333330003377777F3333377733000003333330
            3333777773F3F3F7333333333030303333333333373737333333}
          NumGlyphs = 2
        end
        object cxButton1: TcxButton
          Left = 834
          Top = 23
          Width = 28
          Height = 19
          Caption = '---'
          TabOrder = 8
          OnClick = cxButton1Click
        end
        object cxDBCheckBox1: TcxDBCheckBox
          Left = 377
          Top = 46
          Caption = 'Superfast'
          DataBinding.DataField = 'SF'
          DataBinding.DataSource = MasterDs
          TabOrder = 9
          Transparent = True
          Width = 121
        end
      end
    end
  end
  inherited Panel4: TPanel
    Top = 154
    Width = 901
    Height = 402
    inherited Splitter2: TSplitter
      Left = 240
      Height = 400
    end
    inherited cxPageControl2: TcxPageControl
      Width = 239
      Height = 400
      ClientRectBottom = 394
      ClientRectRight = 233
      inherited cxTabSheet2: TcxTabSheet
        Caption = 'Available Classes'
        inherited cxGrid2: TcxGrid
          Width = 230
          Height = 368
          inherited cxGrid2DBBandedTableView1: TcxGridDBBandedTableView
            DataController.KeyFieldNames = 'trainavailableclass_id'
            object cxGrid2DBBandedTableView1TrainAvailableClass_id: TcxGridDBBandedColumn
              Caption = 'TrainAvailableClass_id'
              DataBinding.FieldName = 'trainavailableclass_id'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid2DBBandedTableView1Class_id: TcxGridDBBandedColumn
              Caption = 'Class'
              DataBinding.FieldName = 'class_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.DropDownWidth = 200
              Properties.KeyFieldNames = 'Class_id'
              Properties.ListColumns = <
                item
                  FieldName = 'class'
                end>
              Properties.ListSource = ClassDs
              Width = 200
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid2DBBandedTableView1Flag1: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Flag1'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              VisibleForCustomization = False
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
          end
        end
      end
    end
    inherited cxPageControl3: TcxPageControl
      Left = 243
      Width = 657
      Height = 400
      ClientRectBottom = 394
      ClientRectRight = 651
      inherited cxTabSheet3: TcxTabSheet
        Caption = 'Train Details'
        inherited cxGrid3: TcxGrid
          Width = 648
          Height = 368
          inherited cxGridDBBandedTableView1: TcxGridDBBandedTableView
            PopupMenu = PopupMenu2
            DataController.KeyFieldNames = 'traindetails_id'
            object cxGridDBBandedTableView1TrainDetails_id: TcxGridDBBandedColumn
              Caption = 'TrainDetails_id'
              DataBinding.FieldName = 'traindetails_id'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1Kms: TcxGridDBBandedColumn
              Caption = 'Kms'
              DataBinding.FieldName = 'kms'
              Options.Filtering = False
              SortIndex = 0
              SortOrder = soAscending
              Width = 59
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1TrainStations_id: TcxGridDBBandedColumn
              Caption = 'Train Station'
              DataBinding.FieldName = 'trainstations_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.DropDownWidth = 300
              Properties.KeyFieldNames = 'trainstations_id'
              Properties.ListColumns = <
                item
                  Width = 200
                  FieldName = 'Station'
                end
                item
                  Width = 100
                  FieldName = 'City'
                end>
              Properties.ListSource = TrainStationDs
              Properties.OnEditValueChanged = cxGridDBBandedTableView1TrainStations_idPropertiesEditValueChanged
              Options.Filtering = False
              Width = 146
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1Cities_id: TcxGridDBBandedColumn
              Caption = 'City'
              DataBinding.FieldName = 'cities_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.DropDownWidth = 150
              Properties.KeyFieldNames = 'cities_id'
              Properties.ListColumns = <
                item
                  FieldName = 'city'
                end>
              Properties.ListSource = CitiesDS
              Options.Filtering = False
              Width = 125
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1Arrival: TcxGridDBBandedColumn
              Caption = 'Arrival'
              DataBinding.FieldName = 'arrival'
              PropertiesClassName = 'TcxTimeEditProperties'
              Properties.TimeFormat = tfHourMin
              Properties.UseCtrlIncrement = True
              Options.Filtering = False
              Width = 81
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1Departure: TcxGridDBBandedColumn
              Caption = 'Departure'
              DataBinding.FieldName = 'departure'
              PropertiesClassName = 'TcxTimeEditProperties'
              Properties.TimeFormat = tfHourMin
              Properties.UseCtrlIncrement = True
              Options.Filtering = False
              Width = 79
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1Duration: TcxGridDBBandedColumn
              DataBinding.FieldName = 'duration'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              VisibleForCustomization = False
              Position.BandIndex = 0
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1Nights: TcxGridDBBandedColumn
              Caption = 'Nights'
              DataBinding.FieldName = 'nights'
              Options.Filtering = False
              Position.BandIndex = 0
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1DayOfOperation: TcxGridDBBandedColumn
              DataBinding.FieldName = 'dayofoperation'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              VisibleForCustomization = False
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
    CommandText = 'trains'
    Left = 168
  end
  inherited MasterDsp: TDataSetProvider
    Left = 198
  end
  inherited MasterCds: TClientDataSet
    OnCalcFields = MasterCdsCalcFields
    Left = 231
    object MasterCdstrainno: TStringField
      FieldName = 'trainno'
      FixedChar = True
      Size = 10
    end
    object MasterCdstrainname: TStringField
      FieldName = 'trainname'
      Size = 100
    end
    object MasterCdstraincategories_id: TIntegerField
      FieldName = 'traincategories_id'
    end
    object MasterCdswef: TSQLTimeStampField
      FieldName = 'wef'
    end
    object MasterCdswet: TSQLTimeStampField
      FieldName = 'wet'
    end
    object MasterCdstrains_id: TIntegerField
      FieldName = 'trains_id'
    end
    object MasterCdsdayofoperation: TSmallintField
      FieldName = 'dayofoperation'
    end
    object MasterCdsaddressbook_id: TIntegerField
      FieldName = 'addressbook_id'
    end
    object MasterCdsFlag1: TIntegerField
      FieldName = 'Flag1'
    end
    object MasterCdsRecUpdatedOn: TSQLTimeStampField
      FieldName = 'RecUpdatedOn'
    end
    object MasterCdsSchUpdatedOn: TSQLTimeStampField
      FieldName = 'SchUpdatedOn'
    end
    object MasterCdsDaysName: TStringField
      FieldKind = fkCalculated
      FieldName = 'DaysName'
      Size = 100
      Calculated = True
    end
    object MasterCdsSF: TBooleanField
      FieldName = 'SF'
    end
  end
  inherited MasterDs: TDataSource
    Left = 261
  end
  inherited Detail1Sds: TSQLDataSet
    CommandText = 'trainavailableclass'
    DataSource = MasterDs
    Left = 322
  end
  inherited Detail1Dsp: TDataSetProvider
    Left = 352
  end
  inherited Detail1Cds: TClientDataSet
    IndexFieldNames = 'trains_id'
    MasterFields = 'trains_id'
    MasterSource = MasterDs
    PacketRecords = 0
    Left = 385
    object Detail1Cdstrainavailableclass_id: TIntegerField
      FieldName = 'trainavailableclass_id'
    end
    object Detail1Cdstrains_id: TIntegerField
      FieldName = 'trains_id'
    end
    object Detail1Cdsclass_id: TIntegerField
      FieldName = 'class_id'
    end
    object Detail1CdsFlag1: TIntegerField
      FieldName = 'Flag1'
    end
  end
  inherited Detail1Ds: TDataSource
    Left = 415
  end
  inherited Detail2Sds: TSQLDataSet
    CommandText = 'traindetails'
    DataSource = MasterDs
  end
  inherited Detail2Cds: TClientDataSet
    IndexFieldNames = 'trains_id'
    MasterFields = 'trains_id'
    MasterSource = MasterDs
    PacketRecords = 0
    AfterInsert = Detail2CdsAfterInsert
    object Detail2Cdstraindetails_id: TIntegerField
      FieldName = 'traindetails_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object Detail2Cdsdeparture: TSQLTimeStampField
      FieldName = 'departure'
    end
    object Detail2Cdsarrival: TSQLTimeStampField
      FieldName = 'arrival'
    end
    object Detail2Cdskms: TIntegerField
      FieldName = 'kms'
    end
    object Detail2Cdstrainstations_id: TIntegerField
      FieldName = 'trainstations_id'
    end
    object Detail2Cdscities_id: TIntegerField
      FieldName = 'cities_id'
    end
    object Detail2Cdstrains_id: TIntegerField
      FieldName = 'trains_id'
    end
    object Detail2Cdsduration: TStringField
      FieldName = 'duration'
      Size = 254
    end
    object Detail2Cdsnights: TIntegerField
      FieldName = 'nights'
    end
    object Detail2Cdsdayofoperation: TSmallintField
      FieldName = 'dayofoperation'
    end
    object Detail2CdsFlag1: TIntegerField
      FieldName = 'Flag1'
    end
    object Detail2CdsNights2: TIntegerField
      FieldName = 'Nights2'
    end
    object Detail2CdsTrainStationLookUp: TStringField
      FieldKind = fkLookup
      FieldName = 'TrainStationLookUp'
      LookupDataSet = TrainStationCds
      LookupKeyFields = 'trainstations_id'
      LookupResultField = 'station'
      KeyFields = 'trainstations_id'
      Size = 100
      Lookup = True
    end
  end
  object AgentCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'AgentDsp'
    Left = 223
    Top = 103
    object AgentCdsAddressbook_id: TIntegerField
      FieldName = 'Addressbook_id'
    end
    object AgentCdsOrganisation: TStringField
      FieldName = 'Organisation'
      Size = 254
    end
    object AgentCdsCity: TStringField
      FieldName = 'City'
      Size = 100
    end
    object AgentCdsCities_id: TIntegerField
      FieldName = 'Cities_id'
    end
    object AgentCdsContact: TStringField
      FieldName = 'Contact'
      Size = 254
    end
  end
  object AgentDS: TDataSource
    DataSet = AgentCds
    Left = 239
    Top = 103
  end
  object AgentDsp: TDataSetProvider
    DataSet = AgentSds
    Left = 207
    Top = 103
  end
  object AgentSds: TSQLDataSet
    CommandText = 'SELECT * FROM dbo.fn_AddressBook(2,'#39'A'#39')'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 191
    Top = 103
  end
  object TrainCategoriesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'TrainCategoriesDsp'
    Left = 736
    Top = 51
    object TrainCategoriesCdstraincategories_id: TIntegerField
      FieldName = 'traincategories_id'
    end
    object TrainCategoriesCdscategory: TStringField
      FieldName = 'category'
      Size = 50
    end
    object TrainCategoriesCdsdefaultorder: TIntegerField
      FieldName = 'defaultorder'
    end
    object TrainCategoriesCdssectorfare: TBooleanField
      FieldName = 'sectorfare'
    end
  end
  object TrainCategoriesSds: TSQLDataSet
    CommandText = 'SELECT * FROM TrainCategories ORDER BY Category'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 691
    Top = 53
  end
  object TrainCategoriesDsp: TDataSetProvider
    DataSet = TrainCategoriesSds
    Left = 712
    Top = 51
  end
  object TrainCategoriesDS: TDataSource
    DataSet = TrainCategoriesCds
    Left = 760
    Top = 51
  end
  object ClassCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ClassDsp'
    Left = 96
    Top = 320
    object ClassCdsClass_id: TIntegerField
      FieldName = 'Class_id'
    end
    object ClassCdsclass: TStringField
      FieldName = 'class'
      Size = 30
    end
    object ClassCdscode: TStringField
      FieldName = 'code'
      Size = 5
    end
    object ClassCdstickets_id: TIntegerField
      FieldName = 'tickets_id'
    end
  end
  object ClassDs: TDataSource
    DataSet = ClassCds
    Left = 128
    Top = 320
  end
  object ClassDsp: TDataSetProvider
    DataSet = ClassSds
    Left = 72
    Top = 323
  end
  object ClassSds: TSQLDataSet
    CommandText = 
      'SELECT Class_id, Class, Code, Tickets_id FROM Class ORDER BY Cla' +
      'ss'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 56
    Top = 320
  end
  object TrainStationCds: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'TrainStationDsp'
    Left = 456
    Top = 248
    object TrainStationCdsTrainStations_id: TIntegerField
      FieldName = 'TrainStations_id'
    end
    object TrainStationCdsStation: TStringField
      FieldName = 'Station'
      Size = 50
    end
    object TrainStationCdsCity: TStringField
      FieldName = 'City'
      Size = 50
    end
    object TrainStationCdsCities_id: TIntegerField
      FieldName = 'Cities_id'
    end
  end
  object TrainStationSds: TSQLDataSet
    CommandText = 
      'SELECT t.TrainStations_id, t.Station, t.Cities_id, c.City'#13#10'FROM ' +
      'TrainStations t'#13#10'LEFT JOIN Cities c ON t.Cities_id = c.Cities_id' +
      #13#10'ORDER BY t.Station, c.City'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 424
    Top = 248
  end
  object TrainStationDsp: TDataSetProvider
    DataSet = TrainStationSds
    Left = 440
    Top = 248
  end
  object TrainStationDs: TDataSource
    DataSet = TrainStationCds
    Left = 480
    Top = 248
  end
  object CitiesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CitiesDsp'
    Left = 344
    Top = 256
    object CitiesCdscities_id: TIntegerField
      FieldName = 'cities_id'
    end
    object CitiesCdscity: TStringField
      FieldName = 'city'
      Size = 50
    end
    object CitiesCdscountry: TStringField
      FieldName = 'country'
      Size = 50
    end
    object CitiesCdsstate: TStringField
      FieldName = 'state'
      Size = 50
    end
  end
  object CitiesDS: TDataSource
    DataSet = CitiesCds
    Left = 368
    Top = 256
  end
  object CitiesDsp: TDataSetProvider
    DataSet = CitiesSds
    Left = 328
    Top = 256
  end
  object CitiesSds: TSQLDataSet
    CommandText = 
      'SELECT Cities_id, City, State, Country'#13#10'FROM Cities c '#13#10'LEFT JOI' +
      'N States s ON c.States_id = s.States_id'#13#10'LEFT JOIN Countries ON ' +
      'c.Countries_id = Countries.Countries_id'#13#10'ORDER BY City'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 312
    Top = 256
  end
  object PopupMenu1: TPopupMenu
    Left = 52
    Top = 556
    object CopyTrains1: TMenuItem
      Caption = 'Copy Trains'
      OnClick = CopyTrains1Click
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 264
    Top = 225
    object UpdateallStationswiththesamenametothisCityCode1: TMenuItem
      Caption = 'Update all Stations with the same name to this City'
      OnClick = UpdateallStationswiththesamenametothisCityCode1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object RemoveallCitiesforthisStation1: TMenuItem
      Caption = 'Remove all City Codes for  this Station'
      OnClick = RemoveallCitiesforthisStation1Click
    end
  end
end
