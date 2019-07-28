inherited SupplementChargesForm: TSupplementChargesForm
  Left = 442
  Top = 25
  Caption = 'Supplementary Charges'
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 34
      Height = 13
      Caption = 'Agent'
      Transparent = True
    end
    object Label2: TLabel
      Left = 448
      Top = 16
      Width = 24
      Height = 13
      Caption = 'Wef'
      Transparent = True
    end
    object SpeedButton1: TSpeedButton
      Left = 638
      Top = 13
      Width = 23
      Height = 22
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
        3333333777333777FF33339993707399933333773337F3777FF3399933000339
        9933377333777F3377F3399333707333993337733337333337FF993333333333
        399377F33333F333377F993333303333399377F33337FF333373993333707333
        333377F333777F333333993333101333333377F333777F3FFFFF993333000399
        999377FF33777F77777F3993330003399993373FF3777F37777F399933000333
        99933773FF777F3F777F339993707399999333773F373F77777F333999999999
        3393333777333777337333333999993333333333377777333333}
      NumGlyphs = 2
      OnClick = SpeedButton1Click
    end
    object cxAgentLCMB: TcxLookupComboBox
      Left = 53
      Top = 14
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
      Width = 356
    end
    object cxWefLCMB: TcxLookupComboBox
      Left = 485
      Top = 14
      Properties.DropDownWidth = 400
      Properties.KeyFieldNames = 'wef'
      Properties.ListColumns = <
        item
          FieldName = 'wef'
        end>
      Properties.ListSource = WefDS
      Properties.OnEditValueChanged = cxWefLCMBPropertiesEditValueChanged
      TabOrder = 1
      Width = 148
    end
  end
  inherited Panel2: TPanel
    inherited cxDBLabelKeyId: TcxDBLabel
      DataBinding.DataField = 'supplementarycharges_id'
    end
  end
  inherited Panel3: TPanel
    inherited cxPageControl1: TcxPageControl
      inherited cxTabSheet1: TcxTabSheet
        Caption = 'Supplementary Charges'
        inherited cxGrid1: TcxGrid
          inherited cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
            object cxGrid1DBBandedTableView1supplementarycharges_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'supplementarycharges_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1class_id: TcxGridDBBandedColumn
              Caption = 'Class'
              DataBinding.FieldName = 'class_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.DropDownWidth = 300
              Properties.KeyFieldNames = 'class_id'
              Properties.ListColumns = <
                item
                  Width = 100
                  FieldName = 'code'
                end
                item
                  Width = 200
                  FieldName = 'class'
                end>
              Properties.ListSource = ClassDs
              SortIndex = 1
              SortOrder = soAscending
              Width = 174
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1minimumkm: TcxGridDBBandedColumn
              Caption = 'Min Km.'
              DataBinding.FieldName = 'minimumkm'
              Width = 112
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1supplements_id: TcxGridDBBandedColumn
              Caption = 'Supplement'
              DataBinding.FieldName = 'supplements_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'supplements_id'
              Properties.ListColumns = <
                item
                  FieldName = 'supplement'
                end>
              Properties.ListSource = SuppDs
              SortIndex = 2
              SortOrder = soAscending
              Width = 125
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1addressbook_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'addressbook_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1wef: TcxGridDBBandedColumn
              Caption = 'Wef'
              DataBinding.FieldName = 'wef'
              SortIndex = 0
              SortOrder = soAscending
              Width = 114
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1wet: TcxGridDBBandedColumn
              Caption = 'Wet'
              DataBinding.FieldName = 'wet'
              Width = 127
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1cost: TcxGridDBBandedColumn
              Caption = 'Cost'
              DataBinding.FieldName = 'cost'
              Width = 115
              Position.BandIndex = 0
              Position.ColIndex = 7
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
              Position.ColIndex = 8
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1ModifiedOn: TcxGridDBBandedColumn
              Caption = 'Modified On'
              DataBinding.FieldName = 'ModifiedOn'
              Visible = False
              Options.Editing = False
              Width = 80
              Position.BandIndex = 0
              Position.ColIndex = 9
              Position.RowIndex = 0
            end
          end
        end
      end
    end
  end
  inherited MasterSds: TSQLDataSet
    CommandText = 
      'SELECT * FROM SupplementaryCharges'#13#10'WHERE Wef = :Wef'#13#10'AND Addres' +
      'sbook_id = :Addressbook_id'
    CommandType = ctQuery
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'Wef'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Addressbook_id'
        ParamType = ptInput
      end>
  end
  inherited MasterCds: TClientDataSet
    AfterInsert = MasterCdsAfterInsert
    object MasterCdssupplementarycharges_id: TIntegerField
      FieldName = 'supplementarycharges_id'
    end
    object MasterCdsclass_id: TIntegerField
      FieldName = 'class_id'
    end
    object MasterCdsminimumkm: TIntegerField
      FieldName = 'minimumkm'
      DisplayFormat = '#,##0'
    end
    object MasterCdssupplements_id: TIntegerField
      FieldName = 'supplements_id'
    end
    object MasterCdsaddressbook_id: TIntegerField
      FieldName = 'addressbook_id'
    end
    object MasterCdswef: TSQLTimeStampField
      FieldName = 'wef'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object MasterCdswet: TSQLTimeStampField
      FieldName = 'wet'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object MasterCdscost: TBCDField
      FieldName = 'cost'
      DisplayFormat = '#,##0.00'
      Precision = 10
      Size = 2
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
    Left = 112
    Top = 8
  end
  object AgentDsp: TDataSetProvider
    DataSet = AgentSds
    UpdateMode = upWhereKeyOnly
    Left = 142
    Top = 8
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
    Left = 175
    Top = 8
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
    Left = 205
    Top = 8
  end
  object WefSds: TSQLDataSet
    CommandText = 
      'SELECT DISTINCT Addressbook_id, Wef FROM SupplementaryCharges'#13#10'W' +
      'HERE Addressbook_id = :Addressbook_id'#13#10'ORDER BY Wef DESC'
    DataSource = AgentDs
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Addressbook_id'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 528
    Top = 3
  end
  object WefDsp: TDataSetProvider
    DataSet = WefSds
    Left = 544
    Top = 3
  end
  object WefCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'Addressbook_id'
    MasterFields = 'Addressbook_id'
    MasterSource = AgentDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'WefDsp'
    Left = 560
    Top = 3
    object WefCdswef: TSQLTimeStampField
      FieldName = 'wef'
    end
    object WefCdsAddressbook_id: TIntegerField
      FieldName = 'Addressbook_id'
    end
  end
  object WefDS: TDataSource
    DataSet = WefCds
    Left = 576
    Top = 3
  end
  object ClassSds: TSQLDataSet
    CommandText = 'SELECT * FROM Class'#13#10'WHERE Tickets_id = 2'#13#10'ORDER BY Class'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 520
    Top = 131
  end
  object ClassDsp: TDataSetProvider
    DataSet = ClassSds
    Left = 536
    Top = 131
  end
  object ClassCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ClassDsp'
    Left = 552
    Top = 131
    object ClassCdsclass_id: TIntegerField
      FieldName = 'class_id'
    end
    object ClassCdsclass: TStringField
      FieldName = 'class'
      Size = 30
    end
    object ClassCdscode: TStringField
      FieldName = 'code'
      Size = 5
    end
  end
  object ClassDs: TDataSource
    DataSet = ClassCds
    Left = 568
    Top = 131
  end
  object SuppSds: TSQLDataSet
    CommandText = 'SELECT * FROM Supplements'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 520
    Top = 171
  end
  object SuppDsp: TDataSetProvider
    DataSet = SuppSds
    Left = 536
    Top = 171
  end
  object SuppCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'SuppDsp'
    Left = 552
    Top = 171
    object SuppCdssupplements_id: TIntegerField
      FieldName = 'supplements_id'
    end
    object SuppCdssupplement: TStringField
      FieldName = 'supplement'
      Size = 50
    end
    object SuppCdsDistanceBased: TBooleanField
      FieldName = 'DistanceBased'
    end
  end
  object SuppDs: TDataSource
    DataSet = SuppCds
    Left = 568
    Top = 171
  end
  object UsersSds: TSQLDataSet
    CommandText = 'SELECT AdmUsers_id, uid'#13#10'FROM AdmUsers'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 704
    Top = 130
  end
  object UsersDsp: TDataSetProvider
    DataSet = UsersSds
    Left = 718
    Top = 131
  end
  object UsersCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'UsersDsp'
    Left = 736
    Top = 130
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
    Left = 748
    Top = 130
  end
end
