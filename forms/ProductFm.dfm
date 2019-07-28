inherited ProductForm: TProductForm
  Left = 162
  Top = 147
  Height = 601
  Caption = 'ProductForm'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    TabOrder = 2
  end
  inherited Panel2: TPanel
    Top = 526
    object KeyIDText: TDBText
      Left = 710
      Top = 11
      Width = 65
      Height = 17
      DataField = 'products_id'
      DataSource = Detail1DS
    end
    object CloseBtn: TcxButton
      Left = 808
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Close'
      TabOrder = 0
      OnClick = CloseBtnClick
    end
    object cxDBNavigator1: TcxDBNavigator
      Left = 469
      Top = 8
      Width = 200
      Height = 25
      Buttons.PriorPage.Visible = False
      Buttons.NextPage.Visible = False
      Buttons.SaveBookmark.Visible = False
      Buttons.GotoBookmark.Visible = False
      Buttons.Filter.Visible = False
      DataSource = Detail1DS
      TabOrder = 1
    end
  end
  object cxGroupBox1: TcxGroupBox [2]
    Left = 0
    Top = 41
    Align = alClient
    Caption = ' Products Master '
    ParentColor = False
    Style.Color = 15451300
    TabOrder = 0
    Height = 485
    Width = 930
    object TypeLbl: TLabel
      Left = 18
      Top = 26
      Width = 29
      Height = 13
      Caption = 'Type'
      Transparent = True
    end
    object AgentLbl: TLabel
      Left = 18
      Top = 73
      Width = 34
      Height = 13
      Caption = 'Agent'
      Transparent = True
    end
    object HotelLbl: TLabel
      Left = 275
      Top = 73
      Width = 31
      Height = 13
      Caption = 'Hotel'
      Transparent = True
    end
    object FromCityLbl: TLabel
      Left = 18
      Top = 49
      Width = 53
      Height = 13
      Caption = 'From City'
      Transparent = True
    end
    object ToCityLbl: TLabel
      Left = 275
      Top = 49
      Width = 41
      Height = 13
      Caption = 'To City'
      Transparent = True
    end
    object cxGrid1: TcxGrid
      Left = 3
      Top = 103
      Width = 924
      Height = 379
      Align = alBottom
      TabOrder = 5
      object cxGrid1DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        NavigatorButtons.First.Visible = True
        NavigatorButtons.PriorPage.Visible = True
        NavigatorButtons.Prior.Visible = True
        NavigatorButtons.Next.Visible = True
        NavigatorButtons.NextPage.Visible = True
        NavigatorButtons.Last.Visible = True
        NavigatorButtons.Insert.Visible = True
        NavigatorButtons.Delete.Visible = True
        NavigatorButtons.Edit.Visible = True
        NavigatorButtons.Post.Visible = True
        NavigatorButtons.Cancel.Visible = True
        NavigatorButtons.Refresh.Visible = True
        NavigatorButtons.SaveBookmark.Visible = True
        NavigatorButtons.GotoBookmark.Visible = True
        NavigatorButtons.Filter.Visible = True
        DataController.DataSource = Detail1DS
        DataController.KeyFieldNames = 'products_id'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsData.Appending = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
        Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
        object cxGrid1DBTableView1wef: TcxGridDBColumn
          Caption = 'WEF'
          DataBinding.FieldName = 'wef'
          PropertiesClassName = 'TcxDateEditProperties'
          Width = 82
        end
        object cxGrid1DBTableView1wet: TcxGridDBColumn
          Caption = 'WET'
          DataBinding.FieldName = 'wet'
          PropertiesClassName = 'TcxDateEditProperties'
          Width = 84
        end
        object cxGrid1DBTableView1roomtypes_id: TcxGridDBColumn
          Caption = 'RoomType'
          DataBinding.FieldName = 'roomtypes_id'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'roomtypes_id'
          Properties.ListColumns = <
            item
              FieldName = 'roomtype'
            end>
          Properties.ListSource = BackOfficeDataModule.RoomTypeDs
          Options.Filtering = False
          Options.Grouping = False
          Width = 105
        end
        object cxGrid1DBTableView1roomsizes_id: TcxGridDBColumn
          Caption = 'RoomSize'
          DataBinding.FieldName = 'roomsizes_id'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'roomsizes_id'
          Properties.ListColumns = <
            item
              FieldName = 'roomsize'
            end>
          Properties.ListSource = BackOfficeDataModule.RoomSizeDS
          Options.Filtering = False
          Options.Grouping = False
          Width = 85
        end
        object cxGrid1DBTableView1mealplans_id: TcxGridDBColumn
          Caption = 'MealPlan'
          DataBinding.FieldName = 'mealplans_id'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'mealplans_id'
          Properties.ListColumns = <
            item
              FieldName = 'plan'
            end
            item
              Caption = 'mealplan'
              FieldName = 'mealplan'
            end>
          Properties.ListSource = BackOfficeDataModule.MealPlanDs
          Options.Filtering = False
          Options.Grouping = False
          Width = 87
        end
        object cxGrid1DBTableView1tickets_id: TcxGridDBColumn
          Caption = 'Ticket'
          DataBinding.FieldName = 'tickets_id'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'tickets_id'
          Properties.ListColumns = <
            item
              FieldName = 'details'
            end>
          Properties.ListSource = BackOfficeDataModule.TicketsDS
          Options.Filtering = False
          Options.Grouping = False
          Width = 73
        end
        object cxGrid1DBTableView1services_id: TcxGridDBColumn
          Caption = 'Service'
          DataBinding.FieldName = 'services_id'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.DropDownWidth = 500
          Properties.KeyFieldNames = 'Services_id'
          Properties.ListColumns = <
            item
              MinWidth = 150
              FieldName = 'Service'
            end
            item
              MinWidth = 250
              FieldName = 'Description'
            end
            item
              MinWidth = 100
              FieldName = 'Active'
            end>
          Properties.ListSource = BackOfficeDataModule.ServicesDS
          Options.Filtering = False
          Options.Grouping = False
          Width = 195
        end
        object cxGrid1DBTableView1currencies_id: TcxGridDBColumn
          Caption = 'Currency'
          DataBinding.FieldName = 'currencies_id'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'currencies_id'
          Properties.ListColumns = <
            item
              FieldName = 'currency'
            end>
          Properties.ListSource = BackOfficeDataModule.CurrenciesDS
          Options.Filtering = False
          Options.Grouping = False
          Width = 92
        end
        object cxGrid1DBTableView1cost: TcxGridDBColumn
          Caption = 'Cost'
          DataBinding.FieldName = 'cost'
          Options.Filtering = False
          Options.Grouping = False
          Width = 91
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object TypeLCmb: TcxLookupComboBox
      Left = 77
      Top = 21
      Properties.KeyFieldNames = 'ProductTypes_id'
      Properties.ListColumns = <
        item
          FieldName = 'Description'
        end>
      Properties.ListSource = MasterDS
      Properties.OnChange = TypeLCmbPropertiesChange
      Style.Color = 16247513
      TabOrder = 0
      OnKeyPress = TypeLCmbKeyPress
      Width = 173
    end
    object FromCityLCmb: TcxLookupComboBox
      Left = 76
      Top = 46
      Properties.ClearKey = 46
      Properties.KeyFieldNames = 'cities_id'
      Properties.ListColumns = <
        item
          Caption = 'City'
          FieldName = 'city'
        end
        item
          Caption = 'Country'
          FieldName = 'country'
        end>
      Properties.ListSource = BackOfficeDataModule.CitiesDS
      Properties.OnEditValueChanged = FromCityLCmbPropertiesEditValueChanged
      Style.Color = 16247513
      TabOrder = 1
      OnKeyPress = FromCityLCmbKeyPress
      Width = 173
    end
    object ToCityLCmb: TcxLookupComboBox
      Left = 330
      Top = 46
      Properties.ClearKey = 46
      Properties.KeyFieldNames = 'cities_id'
      Properties.ListColumns = <
        item
          Caption = 'City'
          FieldName = 'city'
        end
        item
          Caption = 'Country'
          FieldName = 'country'
        end>
      Properties.ListSource = BackOfficeDataModule.CitiesDS
      Properties.OnEditValueChanged = ToCityLCmbPropertiesEditValueChanged
      Style.Color = 16247513
      TabOrder = 2
      OnKeyPress = ToCityLCmbKeyPress
      Width = 173
    end
    object AgentLCmb: TcxLookupComboBox
      Left = 76
      Top = 70
      Properties.ClearKey = 46
      Properties.KeyFieldNames = 'Addressbook_id'
      Properties.ListColumns = <
        item
          FieldName = 'Organisation'
        end>
      Properties.ListSource = AgentDs
      Properties.OnEditValueChanged = AgentLCmbPropertiesEditValueChanged
      Style.Color = 16247513
      TabOrder = 3
      OnKeyPress = AgentLCmbKeyPress
      Width = 173
    end
    object HotelLCmb: TcxLookupComboBox
      Left = 331
      Top = 70
      Properties.ClearKey = 46
      Properties.KeyFieldNames = 'Addressbook_id'
      Properties.ListColumns = <
        item
          FieldName = 'Organisation'
        end>
      Properties.ListSource = HotelDs
      Properties.OnEditValueChanged = HotelLCmbPropertiesEditValueChanged
      Style.Color = 16247513
      TabOrder = 4
      OnKeyPress = HotelLCmbKeyPress
      Width = 173
    end
  end
  inherited MasterSds: TSQLDataSet
    CommandText = 
      'SELECT ProductTypes_id, Description FROM ProductTypes'#13#10'ORDER BY ' +
      'Description'#13#10#13#10
    Left = 80
    Top = 8
  end
  inherited MasterDataSetProvider: TDataSetProvider
    UpdateMode = upWhereKeyOnly
    Left = 112
    Top = 8
  end
  inherited MasterDS: TDataSource
    Left = 144
    Top = 8
  end
  inherited MasterCds: TClientDataSet
    Left = 176
    Top = 8
    object MasterCdsProductTypes_id: TIntegerField
      FieldName = 'ProductTypes_id'
    end
    object MasterCdsDescription: TStringField
      FieldName = 'Description'
      Size = 50
    end
  end
  inherited Detail1Sds: TSQLDataSet
    CommandText = 'SELECT * FROM Products WHERE (1=1)'
    MaxBlobSize = -1
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 368
    Top = 8
  end
  inherited Detail1DataSetProvider: TDataSetProvider
    DataSet = Detail1Sds
    UpdateMode = upWhereKeyOnly
    Left = 400
    Top = 8
  end
  inherited Detail1DS: TDataSource
    DataSet = Detail1Cds
    Left = 432
    Top = 8
  end
  inherited Detail1Cds: TClientDataSet
    Filtered = True
    AfterInsert = Detail1CdsAfterInsert
    Left = 464
    Top = 8
    object Detail1Cdsproducts_id: TIntegerField
      FieldName = 'products_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object Detail1Cdsaddressbook_id: TIntegerField
      FieldName = 'addressbook_id'
    end
    object Detail1Cdsroomtypes_id: TIntegerField
      FieldName = 'roomtypes_id'
    end
    object Detail1Cdsroomsizes_id: TIntegerField
      FieldName = 'roomsizes_id'
    end
    object Detail1Cdswef: TSQLTimeStampField
      FieldName = 'wef'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object Detail1Cdswet: TSQLTimeStampField
      FieldName = 'wet'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object Detail1Cdscost: TBCDField
      FieldName = 'cost'
      DisplayFormat = '#,##0.00'
      Precision = 10
      Size = 2
    end
    object Detail1Cdsagent_addressbook_id: TIntegerField
      FieldName = 'agent_addressbook_id'
    end
    object Detail1Cdsmealplans_id: TIntegerField
      FieldName = 'mealplans_id'
    end
    object Detail1Cdsproducttypes_id: TIntegerField
      FieldName = 'producttypes_id'
    end
    object Detail1Cdscurrencies_id: TIntegerField
      FieldName = 'currencies_id'
    end
    object Detail1Cdsproduct: TStringField
      FieldName = 'product'
      Size = 50
    end
    object Detail1Cdsdivisions_id: TIntegerField
      FieldName = 'divisions_id'
    end
    object Detail1Cdsfromcities_id: TIntegerField
      FieldName = 'fromcities_id'
    end
    object Detail1Cdstocities_id: TIntegerField
      FieldName = 'tocities_id'
    end
    object Detail1Cdstickets_id: TIntegerField
      FieldName = 'tickets_id'
    end
    object Detail1Cdsservices_id: TIntegerField
      FieldName = 'services_id'
    end
  end
  object AgentSds: TSQLDataSet
    CommandText = 'SELECT * FROM fn_Addressbook(2,'#39'A'#39') '#13#10#13#10
    DataSource = BackOfficeDataModule.CitiesDS
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 520
    Top = 80
  end
  object AgentDsp: TDataSetProvider
    DataSet = AgentSds
    Left = 552
    Top = 80
  end
  object AgentDs: TDataSource
    DataSet = AgentCds
    Left = 584
    Top = 80
  end
  object AgentCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'AgentDsp'
    BeforeInsert = Detail1CdsBeforeInsert
    BeforeEdit = Detail1CdsBeforeEdit
    BeforePost = Detail1CdsBeforePost
    AfterPost = Detail1CdsAfterPost
    BeforeDelete = Detail1CdsBeforeDelete
    AfterDelete = Detail1CdsAfterDelete
    Left = 616
    Top = 80
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
  object HotelSds: TSQLDataSet
    CommandText = 
      'SELECT * FROM fn_Addressbook(2,'#39'H'#39') WHERE Cities_id = :Cities_id' +
      #13#10#13#10
    DataSource = BackOfficeDataModule.CitiesDS
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'cities_id'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 520
    Top = 112
  end
  object HotelDsp: TDataSetProvider
    DataSet = HotelSds
    Left = 552
    Top = 112
  end
  object HotelDs: TDataSource
    DataSet = HotelCds
    Left = 584
    Top = 112
  end
  object HotelCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'Cities_id'
    MasterFields = 'cities_id'
    MasterSource = BackOfficeDataModule.CitiesDS
    PacketRecords = 0
    Params = <>
    ProviderName = 'HotelDsp'
    BeforeInsert = Detail1CdsBeforeInsert
    BeforeEdit = Detail1CdsBeforeEdit
    BeforePost = Detail1CdsBeforePost
    AfterPost = Detail1CdsAfterPost
    BeforeDelete = Detail1CdsBeforeDelete
    AfterDelete = Detail1CdsAfterDelete
    Left = 616
    Top = 112
    object IntegerField1: TIntegerField
      FieldName = 'Addressbook_id'
    end
    object StringField1: TStringField
      FieldName = 'Organisation'
      Size = 254
    end
    object StringField2: TStringField
      FieldName = 'City'
      Size = 100
    end
    object IntegerField2: TIntegerField
      FieldName = 'Cities_id'
    end
    object StringField3: TStringField
      FieldName = 'Contact'
      Size = 254
    end
  end
end
