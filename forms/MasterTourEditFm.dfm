inherited MasterTourEditForm: TMasterTourEditForm
  Left = 38
  Top = 172
  Height = 294
  Caption = ''
  FormStyle = fsNormal
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    Top = 215
    inherited cxDBLabelKeyId: TcxDBLabel
      DataBinding.DataField = 'masters_id'
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
    Height = 174
    inherited cxPageControl1: TcxPageControl
      Height = 172
      ClientRectBottom = 166
      inherited cxTabSheet1: TcxTabSheet
        Caption = 'Master Code'
        object Label6: TLabel
          Left = 5
          Top = 10
          Width = 72
          Height = 13
          Caption = 'Master Code'
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
        object Label2: TLabel
          Left = 5
          Top = 50
          Width = 87
          Height = 13
          Caption = 'Principal Agent'
          Transparent = True
        end
        object Label3: TLabel
          Left = 5
          Top = 90
          Width = 49
          Height = 13
          Caption = 'LP Bank'
          Transparent = True
        end
        object Label4: TLabel
          Left = 4
          Top = 70
          Width = 41
          Height = 13
          Caption = 'LP City'
          Transparent = True
        end
        object Label5: TLabel
          Left = 5
          Top = 110
          Width = 42
          Height = 13
          Caption = 'LP Day'
          Transparent = True
        end
        object cxDBTextEdit4: TcxDBTextEdit
          Left = 98
          Top = 7
          DataBinding.DataField = 'mastercode'
          DataBinding.DataSource = MasterDs
          Style.Color = clWindow
          TabOrder = 0
          Width = 95
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 98
          Top = 27
          DataBinding.DataField = 'name'
          DataBinding.DataSource = MasterDs
          Style.Color = clWindow
          TabOrder = 1
          Width = 431
        end
        object cxDBCheckBox1: TcxDBCheckBox
          Left = 697
          Top = 0
          Caption = 'FIT'
          DataBinding.DataField = 'fit'
          DataBinding.DataSource = MasterDs
          TabOrder = 6
          Transparent = True
          Width = 112
        end
        object cxDBCheckBox2: TcxDBCheckBox
          Left = 697
          Top = 16
          Caption = 'Tailor Made'
          DataBinding.DataField = 'tailormade'
          DataBinding.DataSource = MasterDs
          TabOrder = 7
          Transparent = True
          Width = 112
        end
        object cxDBCheckBox3: TcxDBCheckBox
          Left = 697
          Top = 32
          Caption = 'Active'
          DataBinding.DataField = 'active'
          DataBinding.DataSource = MasterDs
          TabOrder = 8
          Transparent = True
          Width = 112
        end
        object cxDBCheckBox4: TcxDBCheckBox
          Left = 697
          Top = 48
          Caption = 'Domestic'
          DataBinding.DataField = 'Domestic'
          DataBinding.DataSource = MasterDs
          TabOrder = 9
          Transparent = True
          Width = 112
        end
        object cxDBLookupComboBox1: TcxDBLookupComboBox
          Left = 99
          Top = 47
          DataBinding.DataField = 'addressbook_id'
          DataBinding.DataSource = MasterDs
          Properties.DropDownWidth = 400
          Properties.KeyFieldNames = 'Addressbook_id'
          Properties.ListColumns = <
            item
              Width = 300
              FieldName = 'Organisation'
            end
            item
              Width = 100
              FieldName = 'City'
            end>
          Properties.ListSource = PrinAgentDS
          TabOrder = 2
          Width = 430
        end
        object cxDBLookupComboBox2: TcxDBLookupComboBox
          Left = 99
          Top = 87
          DataBinding.DataField = 'LpBanks_id'
          DataBinding.DataSource = MasterDs
          Properties.KeyFieldNames = 'Addressbook_id'
          Properties.ListColumns = <
            item
              FieldName = 'Organisation'
            end>
          Properties.ListSource = BankDs
          Properties.ReadOnly = True
          TabOrder = 4
          Width = 430
        end
        object cxDBLookupComboBox3: TcxDBLookupComboBox
          Left = 98
          Top = 67
          DataBinding.DataField = 'LpCities_id'
          DataBinding.DataSource = MasterDs
          Properties.KeyFieldNames = 'Cities_id'
          Properties.ListColumns = <
            item
              FieldName = 'City'
            end>
          Properties.ListSource = CitiesDs
          TabOrder = 3
          Width = 175
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 98
          Top = 107
          DataBinding.DataField = 'LpDay'
          DataBinding.DataSource = MasterDs
          Style.Color = clWindow
          TabOrder = 5
          Width = 95
        end
        object cxBankButton: TcxButton
          Left = 531
          Top = 87
          Width = 24
          Height = 19
          TabOrder = 10
          OnClick = cxBankButtonClick
        end
      end
    end
  end
  inherited MasterSds: TSQLDataSet
    CommandText = 'SELECT * FROM Masters'#13#10'WHERE Masters_id = :Masters_id'
    CommandType = ctQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'Masters_id'
        ParamType = ptInput
      end>
  end
  inherited MasterCds: TClientDataSet
    AfterInsert = MasterCdsAfterInsert
    object MasterCdsmastercode: TStringField
      FieldName = 'mastercode'
      Size = 50
    end
    object MasterCdsname: TStringField
      FieldName = 'name'
      Size = 50
    end
    object MasterCdsfit: TBooleanField
      FieldName = 'fit'
    end
    object MasterCdsnoofdays: TIntegerField
      FieldName = 'noofdays'
    end
    object MasterCdstailormade: TBooleanField
      FieldName = 'tailormade'
    end
    object MasterCdsactive: TBooleanField
      FieldName = 'active'
    end
    object MasterCdsmasters_id: TIntegerField
      FieldName = 'masters_id'
    end
    object MasterCdsaddressbook_id: TIntegerField
      FieldName = 'addressbook_id'
    end
    object MasterCdscompanies_id: TIntegerField
      FieldName = 'companies_id'
    end
    object MasterCdsDomestic: TBooleanField
      FieldName = 'Domestic'
    end
    object MasterCdsLpDay: TIntegerField
      FieldName = 'LpDay'
    end
    object MasterCdsLpCities_id: TIntegerField
      FieldName = 'LpCities_id'
    end
    object MasterCdsLpBanks_id: TIntegerField
      FieldName = 'LpBanks_id'
    end
    object MasterCdsMasterCategories_id: TIntegerField
      FieldName = 'MasterCategories_id'
    end
  end
  object PrinAgentSds: TSQLDataSet
    CommandText = 'SELECT * FROM dbo.fn_addressbook(2,'#39'OA'#39')'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 584
    Top = 104
  end
  object PrinAgentDsp: TDataSetProvider
    DataSet = PrinAgentSds
    Left = 600
    Top = 104
  end
  object PrinAgentCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PrinAgentDsp'
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
  end
  object PrinAgentDS: TDataSource
    DataSet = PrinAgentCds
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
  object BankSds: TSQLDataSet
    CommandText = 'SELECT * FROM dbo.fn_addressbook(2,'#39'B'#39')'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 584
    Top = 164
  end
  object BankDsp: TDataSetProvider
    DataSet = BankSds
    Left = 600
    Top = 164
  end
  object BankCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'BankDsp'
    Left = 616
    Top = 164
    object BankCdsAddressbook_id: TIntegerField
      FieldName = 'Addressbook_id'
    end
    object BankCdsOrganisation: TStringField
      FieldName = 'Organisation'
      Size = 254
    end
    object BankCdsCity: TStringField
      FieldName = 'City'
      Size = 100
    end
    object BankCdsCities_id: TIntegerField
      FieldName = 'Cities_id'
    end
  end
  object BankDs: TDataSource
    DataSet = BankCds
    Left = 632
    Top = 164
  end
end
