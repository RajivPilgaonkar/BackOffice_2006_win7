inherited QuoBookingClientsForm: TQuoBookingClientsForm
  Left = 72
  Top = 322
  Width = 973
  Caption = 'QuoBookingClientsForm'
  PixelsPerInch = 96
  TextHeight = 13
  inherited GroupBox1: TcxGroupBox
    Width = 957
    inherited CustomMasterCxGrid: TcxGrid
      Width = 951
      inherited CustomMasterCxGridDBTableView1: TcxGridDBTableView
        OptionsBehavior.CellHints = True
        OptionsCustomize.ColumnsQuickCustomization = True
        Styles.Background = nil
        Styles.Header = nil
        object CustomMasterCxGridDBTableView1QuoBookingsClients_id: TcxGridDBColumn
          DataBinding.FieldName = 'QuoBookingsClients_id'
          Visible = False
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
        end
        object CustomMasterCxGridDBTableView1Quotations_id: TcxGridDBColumn
          DataBinding.FieldName = 'Quotations_id'
          Visible = False
          Options.Filtering = False
          Options.Grouping = False
        end
        object CustomMasterCxGridDBTableView1Name: TcxGridDBColumn
          DataBinding.FieldName = 'Name'
          Options.Filtering = False
          Options.Grouping = False
          Width = 93
        end
        object CustomMasterCxGridDBTableView1Male: TcxGridDBColumn
          Caption = 'Sex'
          DataBinding.FieldName = 'Male'
          PropertiesClassName = 'TcxComboBoxProperties'
          Properties.DropDownRows = 2
          Properties.Items.Strings = (
            'Mr.'
            'Ms.')
          Options.Filtering = False
          Options.Grouping = False
        end
        object CustomMasterCxGridDBTableView1DateofBirth: TcxGridDBColumn
          Caption = 'Date Of Birth'
          DataBinding.FieldName = 'DateofBirth'
          Options.Filtering = False
          Options.Grouping = False
          Width = 97
        end
        object CustomMasterCxGridDBTableView1PassportNo: TcxGridDBColumn
          Caption = 'Passport No'
          DataBinding.FieldName = 'PassportNo'
          Options.Filtering = False
          Options.Grouping = False
          Width = 93
        end
        object CustomMasterCxGridDBTableView1DateOfIssue: TcxGridDBColumn
          Caption = 'Date Of Issue'
          DataBinding.FieldName = 'DateOfIssue'
          Options.Filtering = False
          Options.Grouping = False
          Width = 100
        end
        object CustomMasterCxGridDBTableView1PlaceOfIssue: TcxGridDBColumn
          Caption = 'Place Of Issue'
          DataBinding.FieldName = 'PlaceOfIssue'
          Options.Filtering = False
          Options.Grouping = False
          Width = 99
        end
        object CustomMasterCxGridDBTableView1ValidTo: TcxGridDBColumn
          Caption = 'Valid To'
          DataBinding.FieldName = 'ValidTo'
          Options.Filtering = False
          Options.Grouping = False
          Width = 112
        end
        object CustomMasterCxGridDBTableView1Countries_id: TcxGridDBColumn
          Caption = 'Nationality'
          DataBinding.FieldName = 'Countries_id'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.DropDownWidth = 300
          Properties.KeyFieldNames = 'countries_id'
          Properties.ListColumns = <
            item
              FieldName = 'country'
            end>
          Properties.ListSource = CountriesDS
          Options.Filtering = False
          Options.Grouping = False
        end
        object CustomMasterCxGridDBTableView1SingleSupplement: TcxGridDBColumn
          Caption = 'Single Supplement'
          DataBinding.FieldName = 'SingleSupplement'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Options.Filtering = False
          Options.Grouping = False
          Width = 84
        end
        object CustomMasterCxGridDBTableView1resident_countries_id: TcxGridDBColumn
          Caption = 'Resident Of'
          DataBinding.FieldName = 'resident_countries_id'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.DropDownWidth = 300
          Properties.KeyFieldNames = 'countries_id'
          Properties.ListColumns = <
            item
              FieldName = 'country'
            end>
          Properties.ListSource = CountriesDS
          Options.Filtering = False
          Options.Grouping = False
        end
        object CustomMasterCxGridDBTableView1LeadPaxOrder: TcxGridDBColumn
          Caption = 'Lead Pax Order'
          DataBinding.FieldName = 'LeadPaxOrder'
          Options.Filtering = False
          Options.Grouping = False
        end
        object CustomMasterCxGridDBTableView1Email: TcxGridDBColumn
          DataBinding.FieldName = 'Email'
          Visible = False
          Width = 80
        end
        object CustomMasterCxGridDBTableView1TravelEmail: TcxGridDBColumn
          Caption = 'Travel Email'
          DataBinding.FieldName = 'TravelEmail'
          Visible = False
          Width = 80
        end
        object CustomMasterCxGridDBTableView1PreferredPhone: TcxGridDBColumn
          Caption = 'Preferred Phone'
          DataBinding.FieldName = 'PreferredPhone'
          Visible = False
          Width = 80
        end
        object CustomMasterCxGridDBTableView1EmergencyContact: TcxGridDBColumn
          Caption = 'Emergency Contact'
          DataBinding.FieldName = 'EmergencyContact'
          Visible = False
          Width = 80
        end
        object CustomMasterCxGridDBTableView1EmergengyEmail: TcxGridDBColumn
          Caption = 'Emergency Email'
          DataBinding.FieldName = 'EmergencyEmail'
          Visible = False
          Width = 80
        end
        object CustomMasterCxGridDBTableView1EmergencyHomePhone: TcxGridDBColumn
          Caption = 'Emergency Home Phone'
          DataBinding.FieldName = 'EmergencyHomePhone'
          Visible = False
          Width = 80
        end
        object CustomMasterCxGridDBTableView1EmergencyMobilePhone: TcxGridDBColumn
          Caption = 'Emergency Mobile Phone'
          DataBinding.FieldName = 'EmergencyMobilePhone'
          Visible = False
          Width = 80
        end
        object CustomMasterCxGridDBTableView1PaxPassportName: TcxGridDBColumn
          Caption = 'Passport Name'
          DataBinding.FieldName = 'PaxPassportName'
          Width = 200
        end
        object CustomMasterCxGridDBTableView1StartDate: TcxGridDBColumn
          Caption = 'Start Date'
          DataBinding.FieldName = 'StartDate'
          Width = 90
        end
        object CustomMasterCxGridDBTableView1StartTime: TcxGridDBColumn
          Caption = 'Time'
          DataBinding.FieldName = 'StartDate'
          PropertiesClassName = 'TcxTimeEditProperties'
          Properties.TimeFormat = tfHourMin
          Properties.UseCtrlIncrement = True
          Width = 51
        end
        object CustomMasterCxGridDBTableView1EndDate: TcxGridDBColumn
          Caption = 'End Date'
          DataBinding.FieldName = 'EndDate'
          Width = 80
        end
        object CustomMasterCxGridDBTableView1EndTime: TcxGridDBColumn
          Caption = 'Time'
          DataBinding.FieldName = 'EndDate'
          PropertiesClassName = 'TcxTimeEditProperties'
          Properties.TimeFormat = tfHourMin
          Properties.UseCtrlIncrement = True
          Width = 48
        end
      end
    end
  end
  inherited Panel1: TPanel
    Width = 957
    inherited KeyIdDbText: TDBText
      Left = 800
    end
    inherited SearchLbl: TcxLabel
      Visible = False
    end
    inherited SearchEdit: TcxTextEdit
      Visible = False
    end
    inherited CloseBtn: TcxButton
      Left = 880
    end
  end
  inherited Panel2: TPanel
    Width = 957
  end
  inherited MasterSDS: TSQLDataSet
    CommandText = 'QuoBookingsClients'
  end
  inherited MasterCds: TClientDataSet
    AfterInsert = MasterCdsAfterInsert
    object MasterCdsQuoBookingsClients_id: TIntegerField
      FieldName = 'QuoBookingsClients_id'
    end
    object MasterCdsQuotations_id: TIntegerField
      FieldName = 'Quotations_id'
    end
    object MasterCdsName2: TStringField
      FieldName = 'Name'
    end
    object MasterCdsDateofBirth: TSQLTimeStampField
      FieldName = 'DateofBirth'
    end
    object MasterCdsPassportNo: TStringField
      FieldName = 'PassportNo'
    end
    object MasterCdsDateOfIssue: TSQLTimeStampField
      FieldName = 'DateOfIssue'
    end
    object MasterCdsPlaceOfIssue: TStringField
      FieldName = 'PlaceOfIssue'
      Size = 50
    end
    object MasterCdsValidTo: TSQLTimeStampField
      FieldName = 'ValidTo'
    end
    object MasterCdsCountries_id: TIntegerField
      FieldName = 'Countries_id'
    end
    object MasterCdsRoomNo: TIntegerField
      FieldName = 'RoomNo'
    end
    object MasterCdsMale: TBooleanField
      FieldName = 'Male'
      DisplayValues = 'Mr.;Ms.'
    end
    object MasterCdsSingleSupplement: TBooleanField
      FieldName = 'SingleSupplement'
    end
    object MasterCdsresident_countries_id: TIntegerField
      FieldName = 'resident_countries_id'
    end
    object MasterCdsLeadPaxOrder: TIntegerField
      FieldName = 'LeadPaxOrder'
    end
    object MasterCdsEmail: TStringField
      FieldName = 'Email'
      Size = 100
    end
    object MasterCdsTravelEmail: TStringField
      FieldName = 'TravelEmail'
      Size = 50
    end
    object MasterCdsPreferredPhone: TStringField
      FieldName = 'PreferredPhone'
      Size = 50
    end
    object MasterCdsEmergencyContact: TStringField
      FieldName = 'EmergencyContact'
      Size = 50
    end
    object MasterCdsEmergencyEmail: TStringField
      FieldName = 'EmergencyEmail'
      Size = 50
    end
    object MasterCdsEmergencyHomePhone: TStringField
      FieldName = 'EmergencyHomePhone'
      Size = 50
    end
    object MasterCdsEmergencyMobilePhone: TStringField
      FieldName = 'EmergencyMobilePhone'
      Size = 50
    end
    object MasterCdsPaxPassportName: TStringField
      FieldName = 'PaxPassportName'
      Size = 100
    end
    object MasterCdsStartDate: TSQLTimeStampField
      FieldName = 'StartDate'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object MasterCdsEndDate: TSQLTimeStampField
      FieldName = 'EndDate'
      DisplayFormat = 'dd/mm/yyyy'
    end
  end
  object CountriesSds: TSQLDataSet
    CommandText = 'select countries_id, country'#13#10'from countries c'#13#10'order by country'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 392
    Top = 136
  end
  object CountriesDsp: TDataSetProvider
    DataSet = CountriesSds
    Left = 408
    Top = 136
  end
  object CountriesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CountriesDsp'
    Left = 424
    Top = 136
    object CountriesCdscountries_id: TIntegerField
      FieldName = 'countries_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CountriesCdscountry: TStringField
      FieldName = 'country'
      Size = 50
    end
  end
  object CountriesDS: TDataSource
    DataSet = CountriesCds
    Left = 440
    Top = 136
  end
end
