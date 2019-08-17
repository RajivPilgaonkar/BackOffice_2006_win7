inherited UpdateBookingForm: TUpdateBookingForm
  Left = 302
  Top = 152
  Width = 550
  Height = 340
  Caption = 'UpdateBookingForm'
  FormStyle = fsNormal
  Position = poMainFormCenter
  Visible = False
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 517
    Height = 258
    Color = 15451300
    object Label2: TLabel
      Left = 5
      Top = 19
      Width = 50
      Height = 13
      Caption = 'Principal'
    end
    object Label3: TLabel
      Left = 5
      Top = 41
      Width = 57
      Height = 13
      Caption = 'Web User'
    end
    object Label8: TLabel
      Left = 5
      Top = 63
      Width = 44
      Height = 13
      Caption = 'Country'
    end
    object Label6: TLabel
      Left = 5
      Top = 86
      Width = 60
      Height = 13
      Caption = 'Reference'
    end
    object Label1: TLabel
      Left = 218
      Top = 63
      Width = 51
      Height = 13
      Caption = 'Currency'
    end
    object Label4: TLabel
      Left = 6
      Top = 108
      Width = 40
      Height = 13
      Caption = 'History'
    end
    object Label5: TLabel
      Left = 6
      Top = 180
      Width = 34
      Height = 13
      Caption = 'Notes'
    end
    object AgentLCB: TcxDBLookupComboBox
      Left = 70
      Top = 13
      DataBinding.DataField = 'addressbook_id'
      DataBinding.DataSource = MasterDS
      Properties.ClearKey = 46
      Properties.DropDownWidth = 300
      Properties.KeyFieldNames = 'Addressbook_id'
      Properties.ListColumns = <
        item
          FieldName = 'Organisation'
        end>
      Properties.ListSource = BackOfficeDataModule.PrinAgentDS
      Style.Color = 16247513
      TabOrder = 0
      Width = 270
    end
    object cxDBLookupComboBox2: TcxDBLookupComboBox
      Left = 70
      Top = 36
      DataBinding.DataField = 'web_users_id'
      DataBinding.DataSource = MasterDS
      Properties.ClearKey = 46
      Properties.DropDownWidth = 250
      Properties.KeyFieldNames = 'web_users_id'
      Properties.ListColumns = <
        item
          FieldName = 'web_user'
        end>
      Properties.ListSource = BackOfficeDataModule.WebUsersDS
      Style.Color = 16247513
      TabOrder = 1
      Width = 270
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox
      Left = 70
      Top = 59
      DataBinding.DataField = 'countries_id'
      DataBinding.DataSource = MasterDS
      Properties.ClearKey = 46
      Properties.DropDownWidth = 200
      Properties.KeyFieldNames = 'countries_id'
      Properties.ListColumns = <
        item
          FieldName = 'country'
        end>
      Properties.ListSource = BackOfficeDataModule.CountriesDS
      Style.Color = 16247513
      TabOrder = 2
      Width = 146
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 70
      Top = 82
      DataBinding.DataField = 'reference'
      DataBinding.DataSource = MasterDS
      Style.Color = 16247513
      TabOrder = 3
      Width = 145
    end
    object cxDBLookupComboBox4: TcxDBLookupComboBox
      Left = 272
      Top = 59
      DataBinding.DataField = 'currencies_id'
      DataBinding.DataSource = MasterDS
      Properties.ClearKey = 46
      Properties.DropDownWidth = 200
      Properties.KeyFieldNames = 'currencies_id'
      Properties.ListColumns = <
        item
          FieldName = 'currency'
        end>
      Properties.ListSource = BackOfficeDataModule.CurrenciesDS
      Style.Color = 16247513
      TabOrder = 4
      Width = 152
    end
    object cxDBMemo1: TcxDBMemo
      Left = 70
      Top = 107
      DataBinding.DataField = 'history'
      DataBinding.DataSource = MasterDS
      Style.Color = 16247513
      TabOrder = 5
      Height = 69
      Width = 459
    end
    object cxDBMemo2: TcxDBMemo
      Left = 70
      Top = 180
      DataBinding.DataField = 'notes'
      DataBinding.DataSource = MasterDS
      Style.Color = 16247513
      TabOrder = 6
      Height = 69
      Width = 460
    end
  end
  inherited Panel2: TPanel
    Top = 258
    Width = 517
    Height = 46
    inherited KeyIdDBText: TDBText
      Left = 9
      Top = 6
    end
    object cxButton1: TcxButton
      Left = 232
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Update'
      ModalResult = 1
      TabOrder = 0
      OnClick = cxButton1Click
    end
    object cxButton2: TcxButton
      Left = 448
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Close'
      ModalResult = 1
      TabOrder = 1
      OnClick = cxButton2Click
    end
  end
  inherited MasterSds: TSQLDataSet
    CommandText = 'select * from bookings'
    CommandType = ctQuery
    Left = 360
    Top = 264
  end
  inherited MasterDsp: TDataSetProvider
    UpdateMode = upWhereKeyOnly
    Left = 392
    Top = 264
  end
  inherited MasterDS: TDataSource
    Left = 456
    Top = 264
  end
  inherited MasterCDS: TClientDataSet
    Active = True
    IndexFieldNames = 'bookings_id'
    MasterFields = 'bookings_id'
    Left = 424
    Top = 264
    object MasterCDSbookings_id: TIntegerField
      FieldName = 'bookings_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object MasterCDSbooked: TSQLTimeStampField
      FieldName = 'booked'
    end
    object MasterCDSaddressbook_id: TIntegerField
      FieldName = 'addressbook_id'
    end
    object MasterCDSreference: TStringField
      FieldName = 'reference'
      Size = 50
    end
    object MasterCDSconfirmed: TSQLTimeStampField
      FieldName = 'confirmed'
    end
    object MasterCDShistory: TMemoField
      FieldName = 'history'
      BlobType = ftMemo
    end
    object MasterCDScancelled: TSQLTimeStampField
      FieldName = 'cancelled'
    end
    object MasterCDSnotes: TMemoField
      FieldName = 'notes'
      BlobType = ftMemo
    end
    object MasterCDStravellingwith_bookings_id: TIntegerField
      FieldName = 'travellingwith_bookings_id'
    end
    object MasterCDSbookingsclients_id: TIntegerField
      FieldName = 'bookingsclients_id'
    end
    object MasterCDScountries_id: TIntegerField
      FieldName = 'countries_id'
    end
    object MasterCDScreated: TSQLTimeStampField
      FieldName = 'created'
    end
    object MasterCDSsessionid: TStringField
      FieldName = 'sessionid'
      Size = 50
    end
    object MasterCDScurrencies_id: TIntegerField
      FieldName = 'currencies_id'
    end
    object MasterCDSweb_bookings_id: TIntegerField
      FieldName = 'web_bookings_id'
    end
    object MasterCDSweb_users_id: TIntegerField
      FieldName = 'web_users_id'
    end
  end
end
