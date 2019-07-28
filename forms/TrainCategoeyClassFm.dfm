inherited TrainCategoeyClassForm: TTrainCategoeyClassForm
  Left = 559
  Top = 22
  Width = 614
  Caption = 'Train Category Classes'
  PixelsPerInch = 96
  TextHeight = 13
  inherited GroupBox1: TcxGroupBox
    Width = 606
    inherited CustomMasterCxGrid: TcxGrid
      Width = 600
      inherited CustomMasterCxGridDBTableView1: TcxGridDBTableView
        DataController.KeyFieldNames = 'TrainCategoryClasses_id'
        Styles.Background = nil
        Styles.Header = nil
        object CustomMasterCxGridDBTableView1TrainCategoryClasses_id: TcxGridDBColumn
          DataBinding.FieldName = 'TrainCategoryClasses_id'
          Visible = False
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          VisibleForCustomization = False
        end
        object CustomMasterCxGridDBTableView1TrainCategories_id: TcxGridDBColumn
          DataBinding.FieldName = 'TrainCategories_id'
          Visible = False
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          VisibleForCustomization = False
        end
        object CustomMasterCxGridDBTableView1Class_id: TcxGridDBColumn
          Caption = 'Available Class'
          DataBinding.FieldName = 'Class_id'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'Class_id'
          Properties.ListColumns = <
            item
              FieldName = 'class'
            end>
          Properties.ListSource = BackOfficeDataModule.ClassDs
          Width = 404
        end
      end
    end
  end
  inherited Panel1: TPanel
    Width = 606
    inherited KeyIdDbText: TDBText
      Left = 439
      Top = 13
      DataField = 'TrainCategoryClasses_id'
    end
    inherited CloseBtn: TcxButton
      Left = 512
    end
  end
  inherited Panel2: TPanel
    Width = 606
    object cxLabel1: TcxLabel
      Left = 8
      Top = 11
      Caption = 'Train Category'
    end
    object cxLookupComboBox1: TcxLookupComboBox
      Left = 102
      Top = 10
      Properties.KeyFieldNames = 'traincategories_id'
      Properties.ListColumns = <
        item
          FieldName = 'category'
        end>
      Properties.ListSource = TrainCategoryDs
      TabOrder = 1
      Width = 315
    end
  end
  inherited MasterSDS: TSQLDataSet
    CommandText = 
      'SELECT * FROM TrainCategoryClasses WHERE TrainCategories_id = :T' +
      'rainCategories_id'
    CommandType = ctQuery
    DataSource = TrainCategoryDs
    Params = <
      item
        DataType = ftInteger
        Name = 'TrainCategories_id'
        ParamType = ptInput
      end>
  end
  inherited MasterCds: TClientDataSet
    IndexFieldNames = 'TrainCategories_id'
    MasterFields = 'traincategories_id'
    MasterSource = TrainCategoryDs
    PacketRecords = 0
    object MasterCdsTrainCategoryClasses_id: TIntegerField
      FieldName = 'TrainCategoryClasses_id'
    end
    object MasterCdsTrainCategories_id: TIntegerField
      FieldName = 'TrainCategories_id'
    end
    object MasterCdsClass_id: TIntegerField
      FieldName = 'Class_id'
    end
  end
  object TrainCategorySds: TSQLDataSet
    CommandText = 'select * from TrainCategories order by Category'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 432
    Top = 8
  end
  object TrainCategoryDsp: TDataSetProvider
    DataSet = TrainCategorySds
    Left = 464
    Top = 8
  end
  object TrainCategoryCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'TrainCategoryDsp'
    Left = 496
    Top = 8
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
    Left = 528
    Top = 8
  end
end
