inherited PackageDayActivityForm: TPackageDayActivityForm
  Left = 110
  Top = 27
  Width = 1250
  Height = 695
  Caption = 'Day Activity'
  Position = poScreenCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 1234
    object cxCityLabel: TcxLabel
      Left = 10
      Top = 13
      Caption = 'cxCityLabel'
    end
  end
  inherited Panel2: TPanel
    Top = 616
    Width = 1234
  end
  inherited cxPageControl1: TcxPageControl
    Width = 1234
    Height = 575
    ClientRectBottom = 569
    ClientRectRight = 1228
    inherited cxTabSheetTickets: TcxTabSheet
      inherited Panel3: TPanel
        Width = 1225
      end
      inherited Panel4: TPanel
        Top = 502
        Width = 1225
        inherited cxDBLabelKeyId_Tickets: TcxDBLabel
          DataBinding.DataField = 'PackagesTickets_id'
          DataBinding.DataSource = TicketsDs
        end
      end
      inherited cxGrid1: TcxGrid
        Width = 1225
        Height = 461
        inherited cxGridDBBandedTableView1: TcxGridDBBandedTableView
          DataController.DataSource = TicketsDs
          DataController.KeyFieldNames = 'PackagesTickets_id'
          OptionsView.BandHeaders = True
          Bands = <
            item
              Width = 601
            end
            item
              Caption = 'Flight/Train'
              Width = 328
            end>
          object cxGridDBBandedTableView1PackagesTickets_id: TcxGridDBBandedColumn
            DataBinding.FieldName = 'PackagesTickets_id'
            Visible = False
            Options.Editing = False
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView1Packages_id: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Packages_id'
            Visible = False
            Options.Editing = False
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView1DayNo: TcxGridDBBandedColumn
            Caption = 'Day No'
            DataBinding.FieldName = 'DayNo'
            Width = 49
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView1Tickets_id: TcxGridDBBandedColumn
            Caption = 'Mode'
            DataBinding.FieldName = 'Tickets_id'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'tickets_id'
            Properties.ListColumns = <
              item
                FieldName = 'details'
              end>
            Properties.ListSource = ModesDs
            Width = 98
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView1From_Cities_id: TcxGridDBBandedColumn
            Caption = 'From City'
            DataBinding.FieldName = 'From_Cities_id'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownWidth = 300
            Properties.KeyFieldNames = 'Cities_id'
            Properties.ListColumns = <
              item
                FieldName = 'City'
              end>
            Properties.ListSource = CitiesDs
            Width = 116
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView1To_Cities_id: TcxGridDBBandedColumn
            Caption = 'To City'
            DataBinding.FieldName = 'To_Cities_id'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownWidth = 300
            Properties.KeyFieldNames = 'Cities_id'
            Properties.ListColumns = <
              item
                FieldName = 'City'
              end>
            Properties.ListSource = CitiesDs
            Width = 116
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView1Nights: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Nights'
            Width = 135
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView1FlightNo: TcxGridDBBandedColumn
            Caption = 'Flight No'
            DataBinding.FieldName = 'FlightNo'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = cxGridDBBandedTableView1FlightNoPropertiesButtonClick
            Width = 131
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView1ClassLookup: TcxGridDBBandedColumn
            Caption = 'Class'
            DataBinding.FieldName = 'ClassLookup'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = cxGridDBBandedTableView1Class_idPropertiesButtonClick
            Width = 197
            Position.BandIndex = 1
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView1StartTime: TcxGridDBBandedColumn
            Caption = 'Start Time'
            DataBinding.FieldName = 'StartTime'
            PropertiesClassName = 'TcxTimeEditProperties'
            Properties.TimeFormat = tfHourMin
            Width = 87
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
        end
      end
    end
    inherited cxTabSheetAcc: TcxTabSheet
      inherited Panel5: TPanel
        Top = 502
        Width = 1225
        inherited cxDBLabelKeyId_Acc: TcxDBLabel
          DataBinding.DataField = 'PackagesAccommodation_id'
          DataBinding.DataSource = AccDs
        end
      end
      inherited cxGrid2: TcxGrid
        Top = 32
        Width = 1225
        Height = 470
        inherited cxGridDBBandedTableView2: TcxGridDBBandedTableView
          DataController.DataSource = AccDs
          DataController.KeyFieldNames = 'PackagesAccommodation_id'
          object cxGridDBBandedTableView2PackagesAccommodation_id: TcxGridDBBandedColumn
            DataBinding.FieldName = 'PackagesAccommodation_id'
            Visible = False
            Options.Editing = False
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView2Packages_id: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Packages_id'
            Visible = False
            Options.Editing = False
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView2DayIn: TcxGridDBBandedColumn
            Caption = 'Day In'
            DataBinding.FieldName = 'DayIn'
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView2Cities_id: TcxGridDBBandedColumn
            Caption = 'City'
            DataBinding.FieldName = 'Cities_id'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'Cities_id'
            Properties.ListColumns = <
              item
                FieldName = 'City'
              end>
            Properties.ListSource = CitiesDs
            Width = 159
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView2HotelAddressbook_id: TcxGridDBBandedColumn
            Caption = 'Hotel'
            DataBinding.FieldName = 'HotelLookup'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = cxGridDBBandedTableView2HotelAddressbook_idPropertiesButtonClick
            Width = 294
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView2AC: TcxGridDBBandedColumn
            DataBinding.FieldName = 'AC'
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView2RoomTypes_id: TcxGridDBBandedColumn
            Caption = 'Room Type'
            DataBinding.FieldName = 'RoomTypeLookup'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = cxGridDBBandedTableView2RoomTypes_idPropertiesButtonClick
            Width = 126
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView2MealPlans_id: TcxGridDBBandedColumn
            Caption = 'Meal Plan'
            DataBinding.FieldName = 'MealPlans_id'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'mealplans_id'
            Properties.ListColumns = <
              item
                FieldName = 'plan'
              end>
            Properties.ListSource = MealPlanDs
            Width = 119
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView2Nights: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Nights'
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
        end
      end
      object Panel8: TPanel
        Left = 0
        Top = 0
        Width = 1225
        Height = 32
        Align = alTop
        TabOrder = 2
      end
    end
    inherited cxTabSheetSs: TcxTabSheet
      inherited Panel6: TPanel
        Top = 502
        Width = 1225
        inherited cxDBLabelKeyId_Ss: TcxDBLabel
          DataBinding.DataField = 'PackagesServices_id'
          DataBinding.DataSource = SsDs
        end
      end
      inherited cxGrid3: TcxGrid
        Top = 32
        Width = 1225
        Height = 470
        inherited cxGridDBBandedTableView3: TcxGridDBBandedTableView
          DataController.DataSource = SsDs
          DataController.KeyFieldNames = 'PackagesServices_id'
          object cxGridDBBandedTableView3PackagesServices_id: TcxGridDBBandedColumn
            DataBinding.FieldName = 'PackagesServices_id'
            Visible = False
            Options.Editing = False
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView3Packages_id: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Packages_id'
            Visible = False
            Options.Editing = False
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView3DayNo: TcxGridDBBandedColumn
            Caption = 'Day No'
            DataBinding.FieldName = 'DayNo'
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView3Cities_id: TcxGridDBBandedColumn
            Caption = 'City'
            DataBinding.FieldName = 'Cities_id'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'Cities_id'
            Properties.ListColumns = <
              item
                FieldName = 'City'
              end>
            Properties.ListSource = CitiesDs
            Width = 130
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView3AgentAddressbook_id: TcxGridDBBandedColumn
            Caption = 'Agent'
            DataBinding.FieldName = 'AgentAddressbookLookup'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = cxGridDBBandedTableView3AgentAddressbook_idPropertiesButtonClick
            Width = 211
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView3ServiceCities_id: TcxGridDBBandedColumn
            Caption = 'Service City'
            DataBinding.FieldName = 'ServiceCitiesLookup'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = cxGridDBBandedTableView3ServiceCities_idPropertiesButtonClick
            Width = 123
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView3Services_id: TcxGridDBBandedColumn
            Caption = 'Service'
            DataBinding.FieldName = 'ServicesLookup'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = cxGridDBBandedTableView3Services_idPropertiesButtonClick
            Width = 179
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView3StartTime: TcxGridDBBandedColumn
            Caption = 'Start Time'
            DataBinding.FieldName = 'StartTime'
            PropertiesClassName = 'TcxTimeEditProperties'
            Properties.TimeFormat = tfHourMin
            Properties.UseCtrlIncrement = True
            Options.Filtering = False
            Width = 69
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView3Guide: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Guide'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Options.Filtering = False
            Width = 47
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView3Transport: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Transport'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Options.Filtering = False
            Width = 68
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView3EntranceFees: TcxGridDBBandedColumn
            Caption = 'Entrance Fees'
            DataBinding.FieldName = 'EntranceFees'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Options.Filtering = False
            Width = 88
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView3Vehicles_id: TcxGridDBBandedColumn
            Caption = 'Vehicle'
            DataBinding.FieldName = 'Vehicles_id'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'Vehicles_id'
            Properties.ListColumns = <
              item
                FieldName = 'Vehicle'
              end>
            Properties.ListSource = VehicleDs
            Options.Filtering = False
            Width = 127
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
        end
      end
      object Panel9: TPanel
        Left = 0
        Top = 0
        Width = 1225
        Height = 32
        Align = alTop
        TabOrder = 2
      end
    end
    inherited cxTabSheetTrsf: TcxTabSheet
      inherited Panel7: TPanel
        Top = 502
        Width = 1225
        inherited cxDBLabelKeyId_Transfers: TcxDBLabel
          DataBinding.DataField = 'PackagesServices_id'
          DataBinding.DataSource = TransfersDs
        end
      end
      inherited cxGrid4: TcxGrid
        Top = 32
        Width = 1225
        Height = 470
        inherited cxGridDBBandedTableView4: TcxGridDBBandedTableView
          DataController.DataSource = TransfersDs
          DataController.KeyFieldNames = 'PackagesServices_id'
          object cxGridDBBandedTableView4PackagesServices_id: TcxGridDBBandedColumn
            DataBinding.FieldName = 'PackagesServices_id'
            Visible = False
            Options.Editing = False
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView4Packages_id: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Packages_id'
            Visible = False
            Options.Editing = False
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView4DayNo: TcxGridDBBandedColumn
            Caption = 'Day No'
            DataBinding.FieldName = 'DayNo'
            Width = 51
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView4Cities_id: TcxGridDBBandedColumn
            Caption = 'City'
            DataBinding.FieldName = 'Cities_id'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'Cities_id'
            Properties.ListColumns = <
              item
                FieldName = 'City'
              end>
            Properties.ListSource = CitiesDs
            Width = 165
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView4AgentAddressbook_id: TcxGridDBBandedColumn
            Caption = 'Agent'
            DataBinding.FieldName = 'AgentAddressbookLookup'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = cxGridDBBandedTableView4AgentAddressbook_idPropertiesButtonClick
            Width = 175
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView4ServiceCities_id: TcxGridDBBandedColumn
            Caption = 'Service City'
            DataBinding.FieldName = 'ServiceCitiesLookup'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = cxGridDBBandedTableView4ServiceCities_idPropertiesButtonClick
            Width = 152
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView4Services_id: TcxGridDBBandedColumn
            Caption = 'Service'
            DataBinding.FieldName = 'ServicesLookup'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = cxGridDBBandedTableView4Services_idPropertiesButtonClick
            Width = 297
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView4StartTime: TcxGridDBBandedColumn
            Caption = 'Start Time'
            DataBinding.FieldName = 'StartTime'
            PropertiesClassName = 'TcxTimeEditProperties'
            Properties.TimeFormat = tfHourMin
            Properties.UseCtrlIncrement = True
            Width = 96
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView4Vehicles_id: TcxGridDBBandedColumn
            Caption = 'Vehicle'
            DataBinding.FieldName = 'Vehicles_id'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'Vehicles_id'
            Properties.ListColumns = <
              item
                FieldName = 'Vehicle'
              end>
            Properties.ListSource = VehicleDs
            Width = 162
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView4AC: TcxGridDBBandedColumn
            DataBinding.FieldName = 'AC'
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
        end
      end
      object Panel10: TPanel
        Left = 0
        Top = 0
        Width = 1225
        Height = 32
        Align = alTop
        TabOrder = 2
      end
    end
  end
  inherited TicketsCds: TClientDataSet
    AfterInsert = TicketsCdsAfterInsert
    object TicketsCdsClassLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'ClassLookup'
      LookupDataSet = ClassCds
      LookupKeyFields = 'Class_id'
      LookupResultField = 'class'
      KeyFields = 'Class_id'
      Size = 30
      Lookup = True
    end
    object TicketsCdsNights: TIntegerField
      FieldName = 'Nights'
    end
    object TicketsCdsStartTime: TSQLTimeStampField
      FieldName = 'StartTime'
    end
  end
  inherited AccCds: TClientDataSet
    AfterInsert = AccCdsAfterInsert
    inherited AccCdsHotelAddressbook_id: TIntegerField
      OnChange = AccCdsHotelAddressbook_idChange
    end
    object AccCdsRoomTypeLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'RoomTypeLookup'
      LookupDataSet = RoomTypeCds
      LookupKeyFields = 'roomtypes_id'
      LookupResultField = 'roomtype'
      KeyFields = 'RoomTypes_id'
      Lookup = True
    end
    object AccCdsHotelLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'HotelLookup'
      LookupDataSet = HotelCds
      LookupKeyFields = 'Addressbook_id'
      LookupResultField = 'Organisation'
      KeyFields = 'HotelAddressbook_id'
      Size = 100
      Lookup = True
    end
  end
  inherited SsSds: TSQLDataSet
    Params = <
      item
        DataType = ftInteger
        Name = 'Packages_id'
        ParamType = ptInput
        Value = 34
      end>
  end
  inherited SsCds: TClientDataSet
    AfterInsert = SsCdsAfterInsert
    object SsCdsAgentAddressbookLookup: TStringField [11]
      FieldKind = fkLookup
      FieldName = 'AgentAddressbookLookup'
      LookupDataSet = AgentCds
      LookupKeyFields = 'Addressbook_id'
      LookupResultField = 'Organisation'
      KeyFields = 'AgentAddressbook_id'
      Size = 100
      Lookup = True
    end
    object SsCdsServicesLookup: TStringField [12]
      FieldKind = fkLookup
      FieldName = 'ServicesLookup'
      LookupDataSet = ServicesCds
      LookupKeyFields = 'Services_id'
      LookupResultField = 'Description'
      KeyFields = 'Services_id'
      Size = 100
      Lookup = True
    end
    object SsCdsServiceCitiesLookup: TStringField [14]
      FieldKind = fkLookup
      FieldName = 'ServiceCitiesLookup'
      LookupDataSet = CitiesCds
      LookupKeyFields = 'Cities_id'
      LookupResultField = 'City'
      KeyFields = 'ServiceCities_id'
      Size = 100
      Lookup = True
    end
  end
  inherited TransfersCds: TClientDataSet
    AfterInsert = TransfersCdsAfterInsert
    inherited TransfersCdsPackagesServices_id: TIntegerField [0]
    end
    inherited TransfersCdsDayNo: TIntegerField [2]
    end
    object TransfersCdsServiceCities_id: TIntegerField
      FieldName = 'ServiceCities_id'
    end
    object TransfersCdsServiceCitiesLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'ServiceCitiesLookup'
      LookupDataSet = CitiesCds
      LookupKeyFields = 'Cities_id'
      LookupResultField = 'City'
      KeyFields = 'ServiceCities_id'
      Size = 100
      Lookup = True
    end
    object TransfersCdsServicesLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'ServicesLookup'
      LookupDataSet = ServicesCds
      LookupKeyFields = 'Services_id'
      LookupResultField = 'Description'
      KeyFields = 'Services_id'
      Size = 100
      Lookup = True
    end
    object TransfersCdsAgentAddressbookLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'AgentAddressbookLookup'
      LookupDataSet = AgentCds
      LookupKeyFields = 'Addressbook_id'
      LookupResultField = 'Organisation'
      KeyFields = 'AgentAddressbook_id'
      Size = 100
      Lookup = True
    end
  end
  object ModesSds: TSQLDataSet
    CommandText = 'select tickets_id, details from tickets order by details'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 808
    Top = 163
  end
  object ModesDsp: TDataSetProvider
    DataSet = ModesSds
    Left = 824
    Top = 163
  end
  object ModesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ModesDsp'
    Left = 840
    Top = 163
    object IntegerField1: TIntegerField
      FieldName = 'tickets_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TicketsCdsdetails: TStringField
      FieldName = 'details'
      Size = 15
    end
  end
  object ModesDs: TDataSource
    DataSet = ModesCds
    Left = 856
    Top = 163
  end
  object CitiesSds: TSQLDataSet
    CommandText = 
      'SELECT c.Cities_id, c.City'#13#10'FROM Cities c'#13#10'WHERE Countries_id IN' +
      ' (200,8)'#13#10'ORDER BY c.City'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 808
    Top = 198
  end
  object CitiesDsp: TDataSetProvider
    DataSet = CitiesSds
    Left = 822
    Top = 199
  end
  object CitiesCds: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'CitiesDsp'
    Left = 840
    Top = 198
    object CitiesCdsCities_id: TIntegerField
      FieldName = 'Cities_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CitiesCdsCity: TStringField
      FieldName = 'City'
      Size = 50
    end
  end
  object CitiesDs: TDataSource
    DataSet = CitiesCds
    Left = 852
    Top = 198
  end
  object ClassSds: TSQLDataSet
    CommandText = 'SELECT Class_id, class, tickets_id FROM class '#13#10'ORDER BY class'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 808
    Top = 240
  end
  object ClassDsp: TDataSetProvider
    DataSet = ClassSds
    Left = 822
    Top = 241
  end
  object ClassCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ClassDsp'
    Left = 840
    Top = 240
    object ClassCdsClass_id: TIntegerField
      FieldName = 'Class_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object ClassCdsclass: TStringField
      FieldName = 'class'
      Size = 30
    end
    object ClassCdstickets_id: TIntegerField
      FieldName = 'tickets_id'
    end
  end
  object ClassDs: TDataSource
    DataSet = ClassCds
    Left = 852
    Top = 240
  end
  object TrainStationSds: TSQLDataSet
    CommandText = 'select * from trainstations'#13#10'order by station'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 808
    Top = 272
  end
  object TrainStationDsp: TDataSetProvider
    DataSet = TrainStationSds
    Left = 824
    Top = 272
  end
  object TrainStationCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'TrainStationDsp'
    Left = 840
    Top = 272
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
    Left = 856
    Top = 272
  end
  object AgentSds: TSQLDataSet
    CommandText = 'select * from dbo.fn_addressbook(2,'#39'A'#39')'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 808
    Top = 312
  end
  object AgentDsp: TDataSetProvider
    DataSet = AgentSds
    Left = 824
    Top = 312
  end
  object AgentCds: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'AgentDsp'
    Left = 840
    Top = 312
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
    Left = 856
    Top = 312
  end
  object VehicleSds: TSQLDataSet
    CommandText = 
      'SELECT Vehicles_id, Vehicle FROM Vehicles '#13#10'WHERE Vehicles_id > ' +
      '0 ORDER BY Vehicle'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 808
    Top = 352
  end
  object VehicleDsp: TDataSetProvider
    DataSet = VehicleSds
    Left = 822
    Top = 353
  end
  object VehicleCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'VehicleDsp'
    Left = 840
    Top = 354
    object VehicleCdsVehicles_id: TIntegerField
      FieldName = 'Vehicles_id'
    end
    object VehicleCdsVehicle: TStringField
      FieldName = 'Vehicle'
      Size = 35
    end
  end
  object VehicleDs: TDataSource
    DataSet = VehicleCds
    Left = 852
    Top = 355
  end
  object RoomTypeSds: TSQLDataSet
    CommandText = 'SELECT * FROM RoomTypes'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 976
    Top = 200
  end
  object RoomTypeDsp: TDataSetProvider
    DataSet = RoomTypeSds
    Left = 992
    Top = 200
  end
  object RoomTypeCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'RoomTypeDsp'
    Left = 1008
    Top = 200
    object RoomTypeCdsroomtypes_id: TIntegerField
      FieldName = 'roomtypes_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object RoomTypeCdsroomtype: TStringField
      FieldName = 'roomtype'
      Size = 50
    end
    object RoomTypeCdsac: TBooleanField
      FieldName = 'ac'
    end
  end
  object RoomTypeDs: TDataSource
    DataSet = RoomTypeCds
    Left = 1024
    Top = 200
  end
  object MealPlanSds: TSQLDataSet
    CommandText = 'SELECT * FROM MealPlans'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 976
    Top = 240
  end
  object MealPlanDsp: TDataSetProvider
    DataSet = MealPlanSds
    Left = 992
    Top = 240
  end
  object MealPlanCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'MealPlanDsp'
    Left = 1008
    Top = 240
    object MealPlanCdsmealplans_id: TIntegerField
      FieldName = 'mealplans_id'
    end
    object MealPlanCdsmealplan: TStringField
      FieldName = 'mealplan'
      Size = 15
    end
    object MealPlanCdsplan: TStringField
      FieldName = 'plan'
      FixedChar = True
      Size = 3
    end
  end
  object MealPlanDs: TDataSource
    DataSet = MealPlanCds
    Left = 1024
    Top = 240
  end
  object HotelSds: TSQLDataSet
    CommandText = 'SELECT * FROM fn_Addressbook (2,'#39'H'#39')'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 976
    Top = 160
  end
  object HotelDsp: TDataSetProvider
    DataSet = HotelSds
    Left = 992
    Top = 160
  end
  object HotelCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'HotelDsp'
    Left = 1008
    Top = 160
    object HotelCdsAddressbook_id: TIntegerField
      FieldName = 'Addressbook_id'
    end
    object HotelCdsOrganisation: TStringField
      FieldName = 'Organisation'
      Size = 254
    end
  end
  object HotelDs: TDataSource
    DataSet = HotelCds
    Left = 1024
    Top = 160
  end
  object ServicesSds: TSQLDataSet
    CommandText = 
      'SELECT Services_id, Service, Description, Active FROM Services'#13#10 +
      'ORDER BY Service'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 976
    Top = 280
  end
  object ServicesDsp: TDataSetProvider
    DataSet = ServicesSds
    Left = 992
    Top = 280
  end
  object ServicesCds: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'ServicesDSP'
    Left = 1008
    Top = 280
    object ServicesCdsServices_id: TIntegerField
      FieldName = 'Services_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object ServicesCdsService: TStringField
      FieldName = 'Service'
      Size = 25
    end
    object ServicesCdsDescription: TStringField
      FieldName = 'Description'
      Size = 100
    end
    object ServicesCdsActive: TBooleanField
      FieldName = 'Active'
    end
  end
  object ServicesDs: TDataSource
    DataSet = ServicesCds
    Left = 1024
    Top = 280
  end
end
