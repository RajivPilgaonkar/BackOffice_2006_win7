inherited CategoriesForm: TCategoriesForm
  Width = 706
  Height = 579
  Caption = 'Categories'
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 690
  end
  inherited Panel2: TPanel
    Top = 500
    Width = 690
    inherited cxButtonClose: TcxButton
      Left = 482
    end
    inherited cxDBLabelKeyId: TcxDBLabel
      Left = 406
    end
  end
  inherited Panel3: TPanel
    Width = 690
    Height = 459
    inherited cxPageControl1: TcxPageControl
      Width = 688
      Height = 457
      ClientRectBottom = 451
      ClientRectRight = 682
      inherited cxTabSheet1: TcxTabSheet
        Caption = 'Categories'
        inherited cxGrid1: TcxGrid
          Width = 679
          Height = 425
          inherited cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
            DataController.KeyFieldNames = 'categories_id'
            object cxGrid1DBBandedTableView1Categories_id: TcxGridDBBandedColumn
              Caption = 'Categories_id'
              DataBinding.FieldName = 'categories_id'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1Category: TcxGridDBBandedColumn
              Caption = 'Category'
              DataBinding.FieldName = 'category'
              Options.Filtering = False
              SortIndex = 0
              SortOrder = soAscending
              Width = 182
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1Description: TcxGridDBBandedColumn
              Caption = 'Description'
              DataBinding.FieldName = 'description'
              Options.Filtering = False
              SortIndex = 1
              SortOrder = soAscending
              Width = 291
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1OrderNo: TcxGridDBBandedColumn
              Caption = 'Order No'
              DataBinding.FieldName = 'OrderNo'
              Visible = False
              Options.Filtering = False
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1InclHotelReport: TcxGridDBBandedColumn
              Caption = 'Incl Hotel Rpt'
              DataBinding.FieldName = 'InclHotelReport'
              Width = 88
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1OrderHotelReport: TcxGridDBBandedColumn
              Caption = 'Order (Hotel Rpt)'
              DataBinding.FieldName = 'OrderHotelReport'
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
    CommandText = 'categories'
  end
  inherited MasterCds: TClientDataSet
    AfterInsert = MasterCdsAfterInsert
    object MasterCdscategory: TStringField
      FieldName = 'category'
      Size = 5
    end
    object MasterCdsdescription: TStringField
      FieldName = 'description'
      Size = 30
    end
    object MasterCdscategories_id: TIntegerField
      FieldName = 'categories_id'
    end
    object MasterCdsOrderNo: TIntegerField
      FieldName = 'OrderNo'
    end
    object MasterCdsInclHotelReport: TBooleanField
      FieldName = 'InclHotelReport'
    end
    object MasterCdsOrderHotelReport: TIntegerField
      FieldName = 'OrderHotelReport'
    end
    object MasterCdsModifiedByUsers_id: TIntegerField
      FieldName = 'ModifiedByUsers_id'
    end
    object MasterCdsModifiedOn: TSQLTimeStampField
      FieldName = 'ModifiedOn'
    end
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
