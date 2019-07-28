inherited TrainCategoryClassForm: TTrainCategoryClassForm
  Left = 244
  Top = 109
  Width = 554
  Height = 587
  Caption = 'Train Category Class'
  OldCreateOrder = True
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 538
    Height = 44
    object cxLabel1: TcxLabel
      Left = 8
      Top = 11
      Caption = 'Train Category'
      Transparent = True
    end
    object cxTrainCategoryLCMB: TcxLookupComboBox
      Left = 102
      Top = 10
      Properties.KeyFieldNames = 'traincategories_id'
      Properties.ListColumns = <
        item
          FieldName = 'category'
        end>
      Properties.ListSource = TrainCategoryDs
      Properties.OnEditValueChanged = cxTrainCategoryLCMBPropertiesEditValueChanged
      TabOrder = 0
      Width = 315
    end
  end
  inherited Panel2: TPanel
    Top = 508
    Width = 538
    inherited cxButtonClose: TcxButton
      Left = 448
    end
    inherited cxDBLabelKeyId: TcxDBLabel
      Left = 372
    end
  end
  inherited Panel3: TPanel
    Top = 44
    Width = 538
    Height = 464
    inherited cxPageControl1: TcxPageControl
      Width = 536
      Height = 462
      ClientRectBottom = 456
      ClientRectRight = 530
      inherited cxTabSheet1: TcxTabSheet
        Caption = 'Train Category Class'
        inherited cxGrid1: TcxGrid
          Width = 527
          Height = 430
          inherited cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
            DataController.KeyFieldNames = 'TrainCategoryClasses_id'
            object cxGrid1DBBandedTableView1TrainCategoryClasses_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'TrainCategoryClasses_id'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1TrainCategories_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'TrainCategories_id'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              VisibleForCustomization = False
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1Class_id: TcxGridDBBandedColumn
              Caption = 'Available Class'
              DataBinding.FieldName = 'Class_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.DropDownWidth = 200
              Properties.KeyFieldNames = 'Class_id'
              Properties.ListColumns = <
                item
                  FieldName = 'class'
                end>
              Properties.ListSource = ClassDs
              SortIndex = 0
              SortOrder = soAscending
              Width = 425
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
  inherited MasterSds: TSQLDataSet
    CommandText = 
      'SELECT * FROM TrainCategoryClasses '#13#10'WHERE TrainCategories_id = ' +
      ':TrainCategories_id'
    CommandType = ctQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'TrainCategories_id'
        ParamType = ptInput
      end>
    Left = 344
    Top = 416
  end
  inherited MasterDsp: TDataSetProvider
    Left = 374
    Top = 416
  end
  inherited MasterCds: TClientDataSet
    AfterInsert = MasterCdsAfterInsert
    Left = 407
    Top = 416
    object MasterCdsTrainCategoryClasses_id: TIntegerField
      FieldName = 'TrainCategoryClasses_id'
    end
    object MasterCdsTrainCategories_id: TIntegerField
      FieldName = 'TrainCategories_id'
    end
    object MasterCdsClass_id: TIntegerField
      FieldName = 'Class_id'
    end
    object MasterCdsModifiedByUsers_id: TIntegerField
      FieldName = 'ModifiedByUsers_id'
    end
    object MasterCdsModifiedOn: TSQLTimeStampField
      FieldName = 'ModifiedOn'
    end
  end
  inherited MasterDs: TDataSource
    Left = 437
    Top = 416
  end
  object TrainCategorySds: TSQLDataSet
    CommandText = 'select * from TrainCategories order by Category'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 368
    Top = 32
  end
  object TrainCategoryDsp: TDataSetProvider
    DataSet = TrainCategorySds
    Left = 400
    Top = 32
  end
  object TrainCategoryCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'TrainCategoryDsp'
    Left = 432
    Top = 32
    object TrainCategoryCdstraincategories_id: TIntegerField
      FieldName = 'traincategories_id'
    end
    object TrainCategoryCdscategory: TStringField
      FieldName = 'category'
      Size = 50
    end
  end
  object TrainCategoryDs: TDataSource
    DataSet = TrainCategoryCds
    Left = 464
    Top = 32
  end
  object ClassDs: TDataSource
    DataSet = ClassCds
    Left = 88
    Top = 104
  end
  object ClassCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ClassDsp'
    Left = 56
    Top = 104
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
  object ClassDsp: TDataSetProvider
    DataSet = ClassSds
    Left = 33
    Top = 106
  end
  object ClassSds: TSQLDataSet
    CommandText = 'SELECT * FROM Class WHERE Tickets_id = 2'#13#10'ORDER BY Class'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 16
    Top = 104
  end
  object UsersSds: TSQLDataSet
    CommandText = 'SELECT AdmUsers_id, uid'#13#10'FROM AdmUsers'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 400
    Top = 146
  end
  object UsersDsp: TDataSetProvider
    DataSet = UsersSds
    Left = 414
    Top = 147
  end
  object UsersCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'UsersDsp'
    Left = 432
    Top = 146
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
    Left = 444
    Top = 146
  end
end
