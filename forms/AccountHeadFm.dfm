inherited AccountHeadForm: TAccountHeadForm
  Left = 459
  Top = 67
  Caption = 'Account Heads'
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Splitter1: TSplitter
    Top = 281
    Height = 9
  end
  inherited Panel2: TPanel
    inherited cxDBLabelKeyId_Master: TcxDBLabel
      DataBinding.DataField = 'folios_id'
    end
    inherited cxDBLabelKeyId_Detail: TcxDBLabel
      DataBinding.DataField = 'accountheads_id'
    end
  end
  inherited Panel3: TPanel
    Height = 240
    inherited cxPageControl1: TcxPageControl
      Height = 238
      ClientRectBottom = 232
      inherited cxTabSheet1: TcxTabSheet
        Caption = 'Folios'
        inherited cxGrid1: TcxGrid
          Height = 206
          inherited cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
            DataController.DetailKeyFieldNames = 'folios_id'
            object cxGrid1DBBandedTableView1folios_id: TcxGridDBBandedColumn
              Caption = 'Folios_id'
              DataBinding.FieldName = 'folios_id'
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1folio: TcxGridDBBandedColumn
              Caption = 'Folio No'
              DataBinding.FieldName = 'folio'
              SortIndex = 0
              SortOrder = soAscending
              Width = 125
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1foliocategories_id: TcxGridDBBandedColumn
              Caption = 'Folio Category'
              DataBinding.FieldName = 'foliocategories_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'FolioCategories_id'
              Properties.ListColumns = <
                item
                  FieldName = 'Description'
                end>
              Properties.ListSource = FolioCategoriesDs
              Width = 342
              Position.BandIndex = 0
              Position.ColIndex = 2
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
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1ModifiedOn: TcxGridDBBandedColumn
              Caption = 'Modified On'
              DataBinding.FieldName = 'ModifiedOn'
              Visible = False
              Options.Editing = False
              Width = 80
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
          end
        end
      end
    end
  end
  inherited Panel4: TPanel
    Top = 290
    Height = 290
    inherited cxPageControl2: TcxPageControl
      Height = 288
      ClientRectBottom = 282
      inherited cxTabSheet2: TcxTabSheet
        Caption = 'Account Heads'
        inherited cxGrid2: TcxGrid
          Height = 256
          inherited cxGrid2DBBandedTableView1: TcxGridDBBandedTableView
            DataController.DetailKeyFieldNames = 'accountheads_id'
            object cxGrid2DBBandedTableView1accountheads_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'accountheads_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid2DBBandedTableView1accountheadsno: TcxGridDBBandedColumn
              Caption = 'Account Head'
              DataBinding.FieldName = 'accountheadsno'
              SortIndex = 0
              SortOrder = soAscending
              Width = 125
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid2DBBandedTableView1description: TcxGridDBBandedColumn
              Caption = 'Description'
              DataBinding.FieldName = 'description'
              Options.Filtering = False
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid2DBBandedTableView1folios_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'folios_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGrid2DBBandedTableView1companies_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'companies_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxGrid2DBBandedTableView1addressbook_id: TcxGridDBBandedColumn
              Caption = 'Addressbook'
              DataBinding.FieldName = 'addressbook_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.DropDownWidth = 300
              Properties.KeyFieldNames = 'Addressbook_id'
              Properties.ListColumns = <
                item
                  MinWidth = 200
                  FieldName = 'Organisation'
                end
                item
                  MinWidth = 100
                  FieldName = 'City'
                end>
              Properties.ListSource = AddressbookDs
              Width = 255
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object cxGrid2DBBandedTableView1active: TcxGridDBBandedColumn
              DataBinding.FieldName = 'active'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object cxGrid2DBBandedTableView1ModifiedByUsers_id: TcxGridDBBandedColumn
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
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
            object cxGrid2DBBandedTableView1ModifiedOn: TcxGridDBBandedColumn
              Caption = 'Modified On'
              DataBinding.FieldName = 'ModifiedOn'
              Visible = False
              Options.Editing = False
              Width = 80
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
    CommandText = 'SELECT * FROM Folios'
    CommandType = ctQuery
  end
  inherited MasterCds: TClientDataSet
    object MasterCdsfolios_id: TIntegerField
      FieldName = 'folios_id'
    end
    object MasterCdsfolio: TStringField
      FieldName = 'folio'
      Size = 50
    end
    object MasterCdsfoliocategories_id: TIntegerField
      FieldName = 'foliocategories_id'
    end
    object MasterCdsModifiedByUsers_id: TIntegerField
      FieldName = 'ModifiedByUsers_id'
    end
    object MasterCdsModifiedOn: TSQLTimeStampField
      FieldName = 'ModifiedOn'
    end
  end
  inherited DetailSds: TSQLDataSet
    CommandText = 'SELECT * FROM AccountHeads'#13#10'WHERE Folios_id = :Folios_id'
    CommandType = ctQuery
    DataSource = MasterDs
    Params = <
      item
        DataType = ftInteger
        Name = 'folios_id'
        ParamType = ptInput
        Size = 4
      end>
  end
  inherited DetailCds: TClientDataSet
    IndexFieldNames = 'folios_id'
    MasterFields = 'folios_id'
    MasterSource = MasterDs
    PacketRecords = 0
    AfterInsert = DetailCdsAfterInsert
    object DetailCdsaccountheads_id: TIntegerField
      FieldName = 'accountheads_id'
    end
    object DetailCdsaccountheadsno: TIntegerField
      FieldName = 'accountheadsno'
    end
    object DetailCdsdescription: TStringField
      FieldName = 'description'
      Size = 50
    end
    object DetailCdsfolios_id: TIntegerField
      FieldName = 'folios_id'
    end
    object DetailCdscompanies_id: TIntegerField
      FieldName = 'companies_id'
    end
    object DetailCdsaddressbook_id: TIntegerField
      FieldName = 'addressbook_id'
    end
    object DetailCdsactive: TBooleanField
      FieldName = 'active'
    end
    object DetailCdsModifiedByUsers_id: TIntegerField
      FieldName = 'ModifiedByUsers_id'
    end
    object DetailCdsModifiedOn: TSQLTimeStampField
      FieldName = 'ModifiedOn'
    end
  end
  object FolioCategoriesSds: TSQLDataSet
    CommandText = 
      'SELECT FolioCategories_id, Description FROM FolioCategories'#13#10'ORD' +
      'ER BY Description'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 304
    Top = 128
  end
  object FolioCategoriesDsp: TDataSetProvider
    DataSet = FolioCategoriesSds
    UpdateMode = upWhereKeyOnly
    Left = 334
    Top = 128
  end
  object FolioCategoriesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FolioCategoriesDsp'
    BeforeInsert = MasterCdsBeforeInsert
    BeforeEdit = MasterCdsBeforeEdit
    BeforePost = MasterCdsBeforePost
    AfterPost = MasterCdsAfterPost
    BeforeDelete = MasterCdsBeforeDelete
    AfterDelete = MasterCdsAfterDelete
    Left = 367
    Top = 128
    object FolioCategoriesCdsFolioCategories_id: TIntegerField
      FieldName = 'FolioCategories_id'
    end
    object FolioCategoriesCdsDescription: TStringField
      FieldName = 'Description'
      Size = 50
    end
  end
  object FolioCategoriesDs: TDataSource
    DataSet = FolioCategoriesCds
    Left = 397
    Top = 128
  end
  object AddressbookSds: TSQLDataSet
    CommandText = 'select * from dbo.fn_addressbook(3,'#39#39')'#13#10'order by organisation'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 528
    Top = 376
    object IntegerField5: TIntegerField
      FieldName = 'Addressbook_id'
    end
    object StringField8: TStringField
      FieldName = 'Organisation'
      Size = 254
    end
    object StringField9: TStringField
      FieldName = 'City'
      Size = 100
    end
  end
  object AddressbookDsp: TDataSetProvider
    DataSet = AddressbookSds
    Left = 560
    Top = 376
  end
  object AddressbookCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'AddressbookDsp'
    Left = 592
    Top = 376
    object AddressbookCdsAddressbook_id: TIntegerField
      FieldName = 'Addressbook_id'
    end
    object AddressbookCdsOrganisation: TStringField
      FieldName = 'Organisation'
      Size = 254
    end
    object AddressbookCdsCity: TStringField
      FieldName = 'City'
      Size = 100
    end
  end
  object AddressbookDs: TDataSource
    DataSet = AddressbookCds
    Left = 624
    Top = 376
  end
  object UsersSds: TSQLDataSet
    CommandText = 'SELECT AdmUsers_id, uid'#13#10'FROM AdmUsers'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 616
    Top = 98
  end
  object UsersDsp: TDataSetProvider
    DataSet = UsersSds
    Left = 630
    Top = 99
  end
  object UsersCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'UsersDsp'
    Left = 648
    Top = 98
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
    Left = 660
    Top = 98
  end
end
