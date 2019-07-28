inherited TourEditForm: TTourEditForm
  Left = 445
  Top = 75
  Height = 287
  Caption = ''
  FormStyle = fsNormal
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    Top = 208
    inherited cxDBLabelKeyId: TcxDBLabel
      DataBinding.DataField = 'tourcodes_id'
    end
    inherited cxDBNavigator1: TcxDBNavigator
      Width = 132
      Buttons.First.Visible = False
      Buttons.PriorPage.Visible = False
      Buttons.Prior.Visible = False
      Buttons.Next.Visible = False
      Buttons.NextPage.Visible = False
      Buttons.Last.Visible = False
      Buttons.Insert.Visible = False
      Buttons.Delete.Visible = False
      Buttons.SaveBookmark.Visible = False
      Buttons.GotoBookmark.Visible = False
      Buttons.Filter.Visible = False
      DataSource = MasterDs
    end
  end
  inherited Panel3: TPanel
    Height = 167
    inherited cxPageControl1: TcxPageControl
      Height = 165
      ClientRectBottom = 159
      inherited cxTabSheet1: TcxTabSheet
        Caption = 'Tour Code'
        object Label6: TLabel
          Left = 5
          Top = 10
          Width = 60
          Height = 13
          Caption = 'Tour Code'
          Transparent = True
        end
        object Label1: TLabel
          Left = 5
          Top = 30
          Width = 33
          Height = 13
          Caption = 'Name'
          Transparent = True
        end
        object Label3: TLabel
          Left = 5
          Top = 70
          Width = 85
          Height = 13
          Caption = 'Transfer Agent'
          Transparent = True
        end
        object Label4: TLabel
          Left = 5
          Top = 50
          Width = 22
          Height = 13
          Caption = 'City'
          Transparent = True
        end
        object Label5: TLabel
          Left = 5
          Top = 110
          Width = 64
          Height = 13
          Caption = 'No of Days'
          Transparent = True
        end
        object Label7: TLabel
          Left = 5
          Top = 90
          Width = 31
          Height = 13
          Caption = 'Hotel'
          Transparent = True
        end
        object cxDBTextEdit4: TcxDBTextEdit
          Left = 98
          Top = 7
          DataBinding.DataField = 'tourcode'
          DataBinding.DataSource = MasterDs
          Style.Color = clWindow
          TabOrder = 0
          Width = 95
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 98
          Top = 27
          DataBinding.DataField = 'tour'
          DataBinding.DataSource = MasterDs
          Style.Color = clWindow
          TabOrder = 1
          Width = 431
        end
        object cxDBCheckBox1: TcxDBCheckBox
          Left = 679
          Top = 0
          Caption = 'FIT'
          DataBinding.DataField = 'fit'
          DataBinding.DataSource = MasterDs
          TabOrder = 6
          Transparent = True
          Width = 112
        end
        object cxDBCheckBox2: TcxDBCheckBox
          Left = 679
          Top = 16
          Caption = 'Tailor Made'
          DataBinding.DataField = 'tailormade'
          DataBinding.DataSource = MasterDs
          TabOrder = 7
          Transparent = True
          Width = 112
        end
        object cxDBCheckBox3: TcxDBCheckBox
          Left = 679
          Top = 32
          Caption = 'Active'
          DataBinding.DataField = 'active'
          DataBinding.DataSource = MasterDs
          TabOrder = 8
          Transparent = True
          Width = 112
        end
        object cxDBLookupComboBox2: TcxDBLookupComboBox
          Left = 98
          Top = 67
          DataBinding.DataField = 'agent_addressbook_id'
          DataBinding.DataSource = MasterDs
          Properties.KeyFieldNames = 'Addressbook_id'
          Properties.ListColumns = <
            item
              FieldName = 'Organisation'
            end>
          Properties.ListSource = AgentDS
          Properties.ReadOnly = True
          TabOrder = 3
          Width = 430
        end
        object cxDBLookupComboBox3: TcxDBLookupComboBox
          Left = 98
          Top = 47
          DataBinding.DataField = 'cities_id'
          DataBinding.DataSource = MasterDs
          Properties.KeyFieldNames = 'Cities_id'
          Properties.ListColumns = <
            item
              FieldName = 'City'
            end>
          Properties.ListSource = CitiesDs
          TabOrder = 2
          Width = 175
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 98
          Top = 107
          DataBinding.DataField = 'noofdays'
          DataBinding.DataSource = MasterDs
          Style.Color = clWindow
          TabOrder = 5
          Width = 95
        end
        object cxDBLookupComboBox4: TcxDBLookupComboBox
          Left = 98
          Top = 87
          DataBinding.DataField = 'hotel_addressbook_id'
          DataBinding.DataSource = MasterDs
          Properties.KeyFieldNames = 'Addressbook_id'
          Properties.ListColumns = <
            item
              FieldName = 'Organisation'
            end>
          Properties.ListSource = HotelDs
          Properties.ReadOnly = True
          TabOrder = 4
          Width = 430
        end
        object cxDBCheckBox4: TcxDBCheckBox
          Left = 679
          Top = 48
          Caption = 'Single Constituent'
          DataBinding.DataField = 'singleconstituent'
          DataBinding.DataSource = MasterDs
          TabOrder = 9
          Transparent = True
          Width = 130
        end
        object cxAgentButton: TcxButton
          Left = 530
          Top = 67
          Width = 24
          Height = 19
          TabOrder = 10
          OnClick = cxAgentButtonClick
        end
        object cxHotelButton: TcxButton
          Left = 530
          Top = 88
          Width = 24
          Height = 19
          TabOrder = 11
          OnClick = cxHotelButtonClick
        end
      end
    end
  end
  inherited MasterSds: TSQLDataSet
    CommandText = 'SELECT * FROM TourCodes'#13#10'WHERE TourCodes_id = :TourCodes_id'
    CommandType = ctQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'TourCodes_id'
        ParamType = ptInput
      end>
  end
  inherited MasterCds: TClientDataSet
    AfterInsert = MasterCdsAfterInsert
    object MasterCdstourcodes_id: TIntegerField
      FieldName = 'tourcodes_id'
    end
    object MasterCdstourcode: TStringField
      FieldName = 'tourcode'
      Size = 10
    end
    object MasterCdstour: TStringField
      FieldName = 'tour'
      Size = 50
    end
    object MasterCdsfit: TBooleanField
      FieldName = 'fit'
    end
    object MasterCdsnoofdays: TIntegerField
      FieldName = 'noofdays'
    end
    object MasterCdsagent_addressbook_id: TIntegerField
      FieldName = 'agent_addressbook_id'
    end
    object MasterCdshotel_addressbook_id: TIntegerField
      FieldName = 'hotel_addressbook_id'
    end
    object MasterCdstailormade: TBooleanField
      FieldName = 'tailormade'
    end
    object MasterCdssingleconstituent: TBooleanField
      FieldName = 'singleconstituent'
    end
    object MasterCdsactive: TBooleanField
      FieldName = 'active'
    end
    object MasterCdscities_id: TIntegerField
      FieldName = 'cities_id'
    end
    object MasterCdsitinerary_en: TMemoField
      FieldName = 'itinerary_en'
      BlobType = ftMemo
    end
    object MasterCdsfactfinder_en: TMemoField
      FieldName = 'factfinder_en'
      BlobType = ftMemo
    end
    object MasterCdstravelstyles_id: TIntegerField
      FieldName = 'travelstyles_id'
    end
  end
  object AgentSds: TSQLDataSet
    CommandText = 'SELECT * FROM dbo.fn_addressbook(2,'#39'A'#39')'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 584
    Top = 104
  end
  object AgentDsp: TDataSetProvider
    DataSet = AgentSds
    Left = 600
    Top = 104
  end
  object AgentCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'AgentDsp'
    Left = 616
    Top = 104
    object IntegerField3: TIntegerField
      FieldName = 'Addressbook_id'
    end
    object StringField4: TStringField
      FieldName = 'Organisation'
      Size = 254
    end
    object StringField5: TStringField
      FieldName = 'City'
      Size = 100
    end
    object AgentCdsCities_id: TIntegerField
      FieldName = 'Cities_id'
    end
  end
  object AgentDS: TDataSource
    DataSet = AgentCds
    Left = 632
    Top = 104
  end
  object CitiesSds: TSQLDataSet
    CommandText = 'SELECT Cities_id, City FROM Cities'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 584
    Top = 132
  end
  object CitiesDsp: TDataSetProvider
    DataSet = CitiesSds
    Left = 600
    Top = 132
  end
  object CitiesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CitiesDsp'
    Left = 616
    Top = 132
    object CitiesCdsCities_id: TIntegerField
      FieldName = 'Cities_id'
    end
    object CitiesCdsCity: TStringField
      FieldName = 'City'
      Size = 50
    end
  end
  object CitiesDs: TDataSource
    DataSet = CitiesCds
    Left = 632
    Top = 132
  end
  object HotelSds: TSQLDataSet
    CommandText = 'SELECT * FROM dbo.fn_addressbook(2,'#39'H'#39')'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 584
    Top = 164
  end
  object HotelDsp: TDataSetProvider
    DataSet = HotelSds
    Left = 600
    Top = 164
  end
  object HotelCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'HotelDsp'
    Left = 616
    Top = 164
    object HotelCdsAddressbook_id: TIntegerField
      FieldName = 'Addressbook_id'
    end
    object HotelCdsOrganisation: TStringField
      FieldName = 'Organisation'
      Size = 254
    end
    object HotelCdsCity: TStringField
      FieldName = 'City'
      Size = 100
    end
    object HotelCdsCities_id: TIntegerField
      FieldName = 'Cities_id'
    end
  end
  object HotelDs: TDataSource
    DataSet = HotelCds
    Left = 632
    Top = 164
  end
end
