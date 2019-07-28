inherited TrainExtraChargesForm: TTrainExtraChargesForm
  Caption = 'Train Extra Charges'
  OldCreateOrder = True
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Height = 57
    object Label1: TLabel
      Left = 4
      Top = 9
      Width = 34
      Height = 13
      Caption = 'Agent'
      Transparent = True
    end
    object Label2: TLabel
      Left = 416
      Top = 32
      Width = 24
      Height = 13
      Caption = 'Wef'
      Transparent = True
    end
    object SpeedButton1: TSpeedButton
      Left = 669
      Top = 31
      Width = 23
      Height = 22
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333303
        333333333333337FF3333333333333903333333333333377FF33333333333399
        03333FFFFFFFFF777FF3000000999999903377777777777777FF0FFFF0999999
        99037F3337777777777F0FFFF099999999907F3FF777777777770F00F0999999
        99037F773777777777730FFFF099999990337F3FF777777777330F00FFFFF099
        03337F773333377773330FFFFFFFF09033337F3FF3FFF77733330F00F0000003
        33337F773777777333330FFFF0FF033333337F3FF7F3733333330F08F0F03333
        33337F7737F7333333330FFFF003333333337FFFF77333333333000000333333
        3333777777333333333333333333333333333333333333333333}
      NumGlyphs = 2
      OnClick = SpeedButton1Click
    end
    object cxAgentLCMB: TcxLookupComboBox
      Left = 78
      Top = 9
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
      Properties.ListSource = AgentDs
      Properties.OnEditValueChanged = cxAgentLCMBPropertiesEditValueChanged
      TabOrder = 0
      Width = 300
    end
    object cxWefLCMB: TcxLookupComboBox
      Left = 510
      Top = 31
      Properties.KeyFieldNames = 'wef'
      Properties.ListColumns = <
        item
          FieldName = 'wef'
        end>
      Properties.ListSource = WefDS
      Properties.OnEditValueChanged = cxWefLCMBPropertiesEditValueChanged
      TabOrder = 3
      Width = 154
    end
    object cxLabel1: TcxLabel
      Left = 416
      Top = 9
      Caption = 'Train Category'
      Transparent = True
    end
    object cxLabel3: TcxLabel
      Left = 4
      Top = 32
      Caption = 'Supplement'
      Transparent = True
    end
    object cxTrainCategoryLCMB: TcxLookupComboBox
      Left = 510
      Top = 9
      Properties.KeyFieldNames = 'traincategories_id'
      Properties.ListColumns = <
        item
          FieldName = 'category'
        end>
      Properties.ListSource = TrainCategoryDs
      Properties.OnEditValueChanged = cxTrainCategoryLCMBPropertiesEditValueChanged
      TabOrder = 1
      Width = 300
    end
    object cxSupplementLCMB: TcxLookupComboBox
      Left = 78
      Top = 31
      Properties.DropDownWidth = 400
      Properties.KeyFieldNames = 'supplements_id'
      Properties.ListColumns = <
        item
          MinWidth = 300
          FieldName = 'supplement'
        end
        item
          Caption = 'Distance Based'
          MinWidth = 100
          FieldName = 'DistanceBased'
        end>
      Properties.ListSource = SupplementDs
      Properties.OnEditValueChanged = cxSupplementLCMBPropertiesEditValueChanged
      TabOrder = 2
      Width = 300
    end
  end
  inherited Panel3: TPanel
    Top = 57
    Height = 421
    inherited cxPageControl1: TcxPageControl
      Height = 419
      ClientRectBottom = 413
      inherited cxTabSheet1: TcxTabSheet
        Caption = 'Train Extra Charges'
        inherited cxGrid1: TcxGrid
          Height = 387
          inherited cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
            DataController.KeyFieldNames = 'TrainExtraCharges_id'
            object cxGrid1DBBandedTableView1TrainExtraCharges_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'TrainExtraCharges_id'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1Class_id: TcxGridDBBandedColumn
              Caption = 'Class'
              DataBinding.FieldName = 'Class_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.DropDownWidth = 300
              Properties.KeyFieldNames = 'Class_id'
              Properties.ListColumns = <
                item
                  Width = 200
                  FieldName = 'Class'
                end
                item
                  Width = 100
                  FieldName = 'Code'
                end>
              Properties.ListSource = ClassDs
              Options.Filtering = False
              Options.SortByDisplayText = isbtOn
              SortIndex = 0
              SortOrder = soAscending
              Width = 212
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1Wef: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Wef'
              Width = 138
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1Wet: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Wet'
              Width = 125
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1DistanceFrom: TcxGridDBBandedColumn
              Caption = 'From'
              DataBinding.FieldName = 'DistanceFrom'
              Options.Filtering = False
              SortIndex = 1
              SortOrder = soAscending
              Width = 115
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1DistanceTo: TcxGridDBBandedColumn
              Caption = 'To'
              DataBinding.FieldName = 'DistanceTo'
              Width = 104
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1Cost: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Cost'
              Options.Filtering = False
              Width = 96
              Position.BandIndex = 0
              Position.ColIndex = 6
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
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1ModifiedOn: TcxGridDBBandedColumn
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
    CommandText = 
      'SELECT * FROM TrainExtraCharges'#13#10'WHERE Addressbook_id = :Address' +
      'book_id'#13#10'AND TrainCategories_id = :TrainCategories_id'#13#10'AND Suppl' +
      'ements_id = :Supplements_id'#13#10'AND Wef = :Wef'
    CommandType = ctQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'Addressbook_id'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'TrainCategories_id'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Supplements_id'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'Wef'
        ParamType = ptInput
      end>
  end
  inherited MasterCds: TClientDataSet
    AfterInsert = MasterCdsAfterInsert
    object MasterCdsTrainExtraCharges_id: TIntegerField
      FieldName = 'TrainExtraCharges_id'
    end
    object MasterCdsAddressbook_id: TIntegerField
      FieldName = 'Addressbook_id'
    end
    object MasterCdsTrainCategories_id: TIntegerField
      FieldName = 'TrainCategories_id'
    end
    object MasterCdsSupplements_id: TIntegerField
      FieldName = 'Supplements_id'
    end
    object MasterCdsClass_id: TIntegerField
      FieldName = 'Class_id'
    end
    object MasterCdsWef: TSQLTimeStampField
      FieldName = 'Wef'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object MasterCdsWet: TSQLTimeStampField
      FieldName = 'Wet'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object MasterCdsDistanceFrom: TIntegerField
      FieldName = 'DistanceFrom'
    end
    object MasterCdsDistanceTo: TIntegerField
      FieldName = 'DistanceTo'
    end
    object MasterCdsCost: TFMTBCDField
      FieldName = 'Cost'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 0
    end
    object MasterCdsModifiedByUsers_id: TIntegerField
      FieldName = 'ModifiedByUsers_id'
    end
    object MasterCdsModifiedOn: TSQLTimeStampField
      FieldName = 'ModifiedOn'
    end
  end
  object AgentSds: TSQLDataSet
    CommandText = 'SELECT * FROM dbo.fn_addressbook(2,'#39'A'#39')'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 144
    Top = 3
  end
  object AgentDsp: TDataSetProvider
    DataSet = AgentSds
    UpdateMode = upWhereKeyOnly
    Left = 174
    Top = 3
  end
  object AgentCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'AgentDsp'
    BeforeInsert = MasterCdsBeforeInsert
    BeforeEdit = MasterCdsBeforeEdit
    BeforePost = MasterCdsBeforePost
    AfterPost = MasterCdsAfterPost
    BeforeDelete = MasterCdsBeforeDelete
    AfterDelete = MasterCdsAfterDelete
    Left = 207
    Top = 3
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
    object AgentCdsPostalCode: TStringField
      FieldName = 'PostalCode'
      Size = 10
    end
  end
  object AgentDs: TDataSource
    DataSet = AgentCds
    Left = 237
    Top = 3
  end
  object WefSds: TSQLDataSet
    CommandText = 
      'SELECT DISTINCT Wef '#13#10'FROM TrainExtraCharges'#13#10'WHERE Addressbook_' +
      'id = :Addressbook_id'#13#10'AND TrainCategories_id = :TrainCategories_' +
      'id '#13#10'AND Supplements_id = :Supplements_id '#13#10'ORDER BY Wef DESC'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Addressbook_id'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'TrainCategories_id'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Supplements_id'
        ParamType = ptInput
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 544
    Top = 27
  end
  object WefDsp: TDataSetProvider
    DataSet = WefSds
    Left = 560
    Top = 27
  end
  object WefCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'WefDsp'
    Left = 576
    Top = 27
    object WefCdsWef: TSQLTimeStampField
      FieldName = 'Wef'
    end
  end
  object WefDS: TDataSource
    DataSet = WefCds
    Left = 592
    Top = 27
  end
  object TrainCategorySds: TSQLDataSet
    CommandText = 'select * from TrainCategories order by Category'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 744
    Top = 9
  end
  object TrainCategoryDsp: TDataSetProvider
    DataSet = TrainCategorySds
    Left = 760
    Top = 9
  end
  object TrainCategoryCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'TrainCategoryDsp'
    Left = 776
    Top = 9
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
    Left = 792
    Top = 9
  end
  object SupplementSds: TSQLDataSet
    CommandText = 'SELECT * FROM Supplements'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 304
    Top = 34
  end
  object SupplementDsp: TDataSetProvider
    DataSet = SupplementSds
    Left = 320
    Top = 34
  end
  object SupplementCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'SupplementDsp'
    Left = 336
    Top = 34
    object SupplementCdssupplements_id: TIntegerField
      FieldName = 'supplements_id'
    end
    object SupplementCdssupplement: TStringField
      FieldName = 'supplement'
      Size = 50
    end
    object SupplementCdsDistanceBased: TBooleanField
      FieldName = 'DistanceBased'
    end
  end
  object SupplementDs: TDataSource
    DataSet = SupplementCds
    Left = 352
    Top = 34
  end
  object ClassSds: TSQLDataSet
    CommandText = 
      'SELECT tcc.TrainCategories_id, tcc.Class_id, c.Class, c.Code'#13#10'FR' +
      'OM TrainCategoryClasses tcc'#13#10'LEFT JOIN Class c ON tcc.Class_id =' +
      ' c.Class_id'#13#10'WHERE tcc.TrainCategories_id = :TrainCategories_id'
    DataSource = TrainCategoryDs
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'traincategories_id'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 304
    Top = 146
  end
  object ClassDsp: TDataSetProvider
    DataSet = ClassSds
    Left = 320
    Top = 146
  end
  object ClassCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'TrainCategories_id'
    MasterFields = 'traincategories_id'
    MasterSource = TrainCategoryDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'ClassDsp'
    Left = 336
    Top = 146
    object ClassCdsTrainCategories_id: TIntegerField
      FieldName = 'TrainCategories_id'
    end
    object ClassCdsClass_id: TIntegerField
      FieldName = 'Class_id'
    end
    object ClassCdsClass: TStringField
      FieldName = 'Class'
      Size = 30
    end
    object ClassCdsCode: TStringField
      FieldName = 'Code'
      Size = 5
    end
  end
  object ClassDs: TDataSource
    DataSet = ClassCds
    Left = 352
    Top = 146
  end
  object UsersSds: TSQLDataSet
    CommandText = 'SELECT AdmUsers_id, uid'#13#10'FROM AdmUsers'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 576
    Top = 154
  end
  object UsersDsp: TDataSetProvider
    DataSet = UsersSds
    Left = 590
    Top = 155
  end
  object UsersCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'UsersDsp'
    Left = 608
    Top = 154
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
    Left = 620
    Top = 154
  end
end
