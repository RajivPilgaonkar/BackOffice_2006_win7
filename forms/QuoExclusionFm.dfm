inherited QuoExclusionForm: TQuoExclusionForm
  Left = 337
  Top = 52
  Caption = 'Quotation Exclusions'
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Color = 10136548
  end
  inherited Panel3: TPanel
    inherited cxPageControl1: TcxPageControl
      inherited cxTabSheet1: TcxTabSheet
        inherited cxGrid1: TcxGrid
          inherited cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
            PopupMenu = PopupMenu1
            DataController.KeyFieldNames = 'QuoExclusions_id'
            object cxGrid1DBBandedTableView1QuoExclusions_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'QuoExclusions_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1SrNo: TcxGridDBBandedColumn
              Caption = 'Sr No'
              DataBinding.FieldName = 'SrNo'
              SortIndex = 0
              SortOrder = soAscending
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1QuoExclusion: TcxGridDBBandedColumn
              Caption = 'Exclusion'
              DataBinding.FieldName = 'QuoExclusion'
              Width = 519
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
    inherited cxPageControl2: TcxPageControl
      inherited cxTabSheet2: TcxTabSheet
        inherited cxGrid2: TcxGrid
          Height = 216
          inherited cxGrid2DBBandedTableView1: TcxGridDBBandedTableView
            DataController.KeyFieldNames = 'QuoExclusionDetails_id'
            object cxGrid2DBBandedTableView1QuoExclusionDetails_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'QuoExclusionDetails_id'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid2DBBandedTableView1QuoExclusions_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'QuoExclusions_id'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid2DBBandedTableView1SrNo: TcxGridDBBandedColumn
              Caption = 'Sr No'
              DataBinding.FieldName = 'SrNo'
              SortIndex = 0
              SortOrder = soAscending
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid2DBBandedTableView1Display: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Display'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Width = 62
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxGrid2DBBandedTableView1QuoExclusionDetail: TcxGridDBBandedColumn
              Caption = 'Details'
              DataBinding.FieldName = 'QuoExclusionDetail'
              PropertiesClassName = 'TcxMemoProperties'
              Properties.ReadOnly = True
              Width = 640
              Position.BandIndex = 0
              Position.ColIndex = 3
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
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object cxGrid2DBBandedTableView1ModifiedOn: TcxGridDBBandedColumn
              Caption = 'Modified On'
              DataBinding.FieldName = 'ModifiedOn'
              Visible = False
              Options.Editing = False
              Width = 80
              Position.BandIndex = 0
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
          end
        end
        object cxDBMemo1: TcxDBMemo
          Left = 0
          Top = 216
          Align = alBottom
          DataBinding.DataField = 'QuoExclusionDetail'
          DataBinding.DataSource = DetailDs
          TabOrder = 1
          Height = 89
          Width = 842
        end
      end
    end
  end
  inherited MasterSds: TSQLDataSet
    CommandText = 'SELECT * FROM QuoExclusions'
    CommandType = ctQuery
  end
  inherited MasterCds: TClientDataSet
    AfterInsert = MasterCdsAfterInsert
    object MasterCdsQuoExclusions_id: TIntegerField
      FieldName = 'QuoExclusions_id'
    end
    object MasterCdsQuoExclusion: TStringField
      FieldName = 'QuoExclusion'
      Size = 100
    end
    object MasterCdsSrNo: TIntegerField
      FieldName = 'SrNo'
    end
    object MasterCdsModifiedByUsers_id: TIntegerField
      FieldName = 'ModifiedByUsers_id'
    end
    object MasterCdsModifiedOn: TSQLTimeStampField
      FieldName = 'ModifiedOn'
    end
  end
  inherited DetailSds: TSQLDataSet
    CommandText = 
      'SELECT * FROM QuoExclusionDetails'#13#10'WHERE QuoExclusions_id = :Quo' +
      'Exclusions_id'
    CommandType = ctQuery
    DataSource = MasterDs
    Params = <
      item
        DataType = ftInteger
        Name = 'QuoExclusions_id'
        ParamType = ptInput
        Size = 4
      end>
  end
  inherited DetailCds: TClientDataSet
    IndexFieldNames = 'QuoExclusions_id'
    MasterFields = 'QuoExclusions_id'
    MasterSource = MasterDs
    PacketRecords = 0
    AfterInsert = DetailCdsAfterInsert
    object DetailCdsQuoExclusionDetails_id: TIntegerField
      FieldName = 'QuoExclusionDetails_id'
    end
    object DetailCdsQuoExclusions_id: TIntegerField
      FieldName = 'QuoExclusions_id'
    end
    object DetailCdsQuoExclusionDetail: TMemoField
      FieldName = 'QuoExclusionDetail'
      BlobType = ftMemo
    end
    object DetailCdsSrNo: TIntegerField
      FieldName = 'SrNo'
    end
    object DetailCdsDisplay: TBooleanField
      FieldName = 'Display'
    end
    object DetailCdsModifiedByUsers_id: TIntegerField
      FieldName = 'ModifiedByUsers_id'
    end
    object DetailCdsModifiedOn: TSQLTimeStampField
      FieldName = 'ModifiedOn'
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 108
    Top = 164
    object AgentExclusions1: TMenuItem
      Caption = 'Agent Exclusions'
      OnClick = AgentExclusions1Click
    end
  end
  object UsersSds: TSQLDataSet
    CommandText = 'SELECT AdmUsers_id, uid'#13#10'FROM AdmUsers'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 488
    Top = 10
  end
  object UsersDsp: TDataSetProvider
    DataSet = UsersSds
    Left = 502
    Top = 11
  end
  object UsersCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'UsersDsp'
    Left = 520
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
    Left = 532
    Top = 10
  end
end
