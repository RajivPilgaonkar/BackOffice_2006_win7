inherited DefaultHotelsForm: TDefaultHotelsForm
  Left = 214
  Top = 112
  Width = 759
  Height = 566
  Caption = 'Default Hotels'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited GroupBox1: TcxGroupBox
    Height = 446
    Width = 743
    inherited CustomMasterCxGrid: TcxGrid
      Width = 737
      Height = 425
      inherited CustomMasterCxGridDBTableView1: TcxGridDBTableView
        DataController.KeyFieldNames = 'DefaultHotels_id'
        OptionsData.Appending = False
        OptionsData.Deleting = False
        OptionsData.Inserting = False
        OptionsView.Indicator = True
        Styles.Background = nil
        Styles.Header = nil
        object CustomMasterCxGridDBTableView1DefaultHotels_id: TcxGridDBColumn
          DataBinding.FieldName = 'DefaultHotels_id'
          Visible = False
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
        end
        object CustomMasterCxGridDBTableView1Addressbook_id: TcxGridDBColumn
          Caption = 'Hotel'
          DataBinding.FieldName = 'Addressbook_id'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'Addressbook_id'
          Properties.ListColumns = <
            item
              FieldName = 'Organisation'
            end>
          Properties.ListSource = HoteDS
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Width = 160
        end
        object CustomMasterCxGridDBTableView1Cities_id: TcxGridDBColumn
          DataBinding.FieldName = 'Cities_id'
          Visible = False
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
        end
        object CustomMasterCxGridDBTableView1DefaultBudget: TcxGridDBColumn
          Caption = 'Default Budget'
          DataBinding.FieldName = 'DefaultBudget'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Visible = False
          Options.Filtering = False
          Options.Grouping = False
          Width = 93
        end
        object CustomMasterCxGridDBTableView1DefaultModerate: TcxGridDBColumn
          Caption = 'Default Moderate'
          DataBinding.FieldName = 'DefaultModerate'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Visible = False
          Options.Filtering = False
          Options.Grouping = False
          Width = 106
        end
        object CustomMasterCxGridDBTableView1DefaultStd: TcxGridDBColumn
          Caption = 'Default Std'
          DataBinding.FieldName = 'DefaultStandard'
          Options.Filtering = False
          Options.Grouping = False
          Width = 83
        end
        object CustomMasterCxGridDBTableView1DefaultComfortable: TcxGridDBColumn
          Caption = 'Default Comfortable'
          DataBinding.FieldName = 'DefaultComfortable'
          Width = 89
        end
        object CustomMasterCxGridDBTableView1DefaultSuperior: TcxGridDBColumn
          Caption = 'Default Superior'
          DataBinding.FieldName = 'DefaultSuperior'
          Options.Filtering = False
          Options.Grouping = False
          Width = 104
        end
        object CustomMasterCxGridDBTableView1DefaultLuxury: TcxGridDBColumn
          Caption = 'Default Luxury'
          DataBinding.FieldName = 'DefaultLuxury'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Options.Filtering = False
          Options.Grouping = False
          Width = 87
        end
        object CustomMasterCxGridDBTableView1DefaultTopOfLine: TcxGridDBColumn
          Caption = 'Default Top Of The Line'
          DataBinding.FieldName = 'DefaultTopOfLine'
          Options.Filtering = False
          Options.Grouping = False
          Width = 148
        end
      end
    end
  end
  inherited Panel1: TPanel
    Top = 487
    Width = 743
    inherited KeyIdDbText: TDBText
      Left = 555
      Top = 13
      DataField = 'DefaultHotels_id'
    end
    inherited SearchLbl: TcxLabel
      Visible = False
    end
    inherited SearchEdit: TcxTextEdit
      Visible = False
    end
    inherited CloseBtn: TcxButton
      Left = 634
    end
  end
  inherited Panel2: TPanel
    Width = 743
  end
  inherited MasterSDS: TSQLDataSet
    CommandText = 'DefaultHotels'
    Left = 208
    Top = 8
  end
  inherited DataSetProvider: TDataSetProvider
    Left = 224
    Top = 8
  end
  inherited MasterDS: TDataSource
    Left = 264
    Top = 8
  end
  inherited MasterCds: TClientDataSet
    Left = 248
    Top = 8
    object MasterCdsDefaultHotels_id: TIntegerField
      FieldName = 'DefaultHotels_id'
    end
    object MasterCdsAddressbook_id: TIntegerField
      FieldName = 'Addressbook_id'
    end
    object MasterCdsCities_id: TIntegerField
      FieldName = 'Cities_id'
    end
    object MasterCdsDefaultBudget: TBooleanField
      FieldName = 'DefaultBudget'
    end
    object MasterCdsDefaultModerate: TBooleanField
      FieldName = 'DefaultModerate'
    end
    object MasterCdsDefaultLuxury: TBooleanField
      FieldName = 'DefaultLuxury'
    end
    object MasterCdsDefaultSuperior: TBooleanField
      FieldName = 'DefaultSuperior'
    end
    object MasterCdsDefaultStandard: TBooleanField
      FieldName = 'DefaultStandard'
    end
    object MasterCdsDefaultTopOfLine: TBooleanField
      FieldName = 'DefaultTopOfLine'
    end
    object MasterCdsDefaultComfortable: TBooleanField
      FieldName = 'DefaultComfortable'
    end
  end
  object HotelSds: TSQLDataSet
    CommandText = 'select * from dbo.fn_addressbook(2,'#39'H'#39')'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 416
    Top = 8
  end
  object HotelDsp: TDataSetProvider
    DataSet = HotelSds
    Left = 432
    Top = 8
  end
  object HotelCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'HotelDsp'
    Left = 448
    Top = 8
    object IntegerField4: TIntegerField
      FieldName = 'Addressbook_id'
    end
    object StringField6: TStringField
      FieldName = 'Organisation'
      Size = 254
    end
    object StringField7: TStringField
      FieldName = 'City'
      Size = 100
    end
  end
  object HoteDS: TDataSource
    DataSet = HotelCds
    Left = 464
    Top = 8
  end
end
