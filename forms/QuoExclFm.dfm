inherited QuoExclForm: TQuoExclForm
  Left = 291
  Top = 43
  Caption = 'Quotation Exclusions'
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    inherited cxButtonUtilities: TcxButton
      DropDownMenu = PopupMenu1
    end
    inherited cxDBLabelKeyId_Master: TcxDBLabel
      DataBinding.DataField = 'QuoExcl_id'
    end
  end
  inherited Panel3: TPanel
    inherited cxPageControl1: TcxPageControl
      ParentColor = False
      inherited cxTabSheet1: TcxTabSheet
        inherited cxGrid1: TcxGrid
          inherited cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
            PopupMenu = PopupMenu1
            DataController.KeyFieldNames = 'QuoExclusions_id'
            OptionsData.Appending = False
            OptionsData.Inserting = False
            object cxGrid1DBBandedTableView1QuoExcl_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'QuoExcl_id'
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
          end
        end
      end
    end
  end
  inherited Panel4: TPanel
    inherited cxPageControl2: TcxPageControl
      inherited cxTabSheet2: TcxTabSheet
        inherited cxGrid2: TcxGrid
          inherited cxGrid2DBBandedTableView1: TcxGridDBBandedTableView
            DataController.KeyFieldNames = 'QuoExclusionDetails_id'
            OptionsData.Appending = False
            OptionsData.Inserting = False
            object cxGrid2DBBandedTableView1QuoExclDetails_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'QuoExclDetails_id'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid2DBBandedTableView1QuoExcl_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'QuoExcl_id'
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
            object cxGrid2DBBandedTableView1QuoExclusionDetail: TcxGridDBBandedColumn
              Caption = 'Detail'
              DataBinding.FieldName = 'QuoExclusionDetail'
              PropertiesClassName = 'TcxMemoProperties'
              Width = 686
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGrid2DBBandedTableView1Display: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Display'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Width = 55
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
    CommandText = 'SELECT * FROM QuoExcl WHERE Quotations_id = :Quotations_id'
    CommandType = ctQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'Quotations_id'
        ParamType = ptInput
      end>
  end
  inherited MasterCds: TClientDataSet
    object MasterCdsQuoExcl_id: TIntegerField
      FieldName = 'QuoExcl_id'
    end
    object MasterCdsQuotations_id: TIntegerField
      FieldName = 'Quotations_id'
    end
    object MasterCdsQuoExclusions_id: TIntegerField
      FieldName = 'QuoExclusions_id'
    end
    object MasterCdsSrNo: TIntegerField
      FieldName = 'SrNo'
    end
    object MasterCdsQuoExclusion: TStringField
      FieldName = 'QuoExclusion'
      Size = 100
    end
  end
  inherited DetailSds: TSQLDataSet
    CommandText = 'SELECT * FROM QuoExclDetails'#13#10'WHERE QuoExcl_id = :QuoExcl_id'
    CommandType = ctQuery
    DataSource = MasterDs
    Params = <
      item
        DataType = ftInteger
        Name = 'QuoExcl_id'
        ParamType = ptInput
        Size = 4
      end>
  end
  inherited DetailCds: TClientDataSet
    IndexFieldNames = 'QuoExcl_id'
    MasterFields = 'QuoExcl_id'
    MasterSource = MasterDs
    PacketRecords = 0
    object DetailCdsQuoExclDetails_id: TIntegerField
      FieldName = 'QuoExclDetails_id'
    end
    object DetailCdsQuoExcl_id: TIntegerField
      FieldName = 'QuoExcl_id'
    end
    object DetailCdsQuoExclusionDetails_id: TIntegerField
      FieldName = 'QuoExclusionDetails_id'
    end
    object DetailCdsSrNo: TIntegerField
      FieldName = 'SrNo'
    end
    object DetailCdsDisplay: TBooleanField
      FieldName = 'Display'
    end
    object DetailCdsQuoExclusionDetail: TMemoField
      FieldName = 'QuoExclusionDetail'
      BlobType = ftMemo
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 108
    Top = 164
    object AgentExclusions1: TMenuItem
      Caption = 'Refresh'
      OnClick = AgentExclusions1Click
    end
  end
  object QuoExclusionSds: TSQLDataSet
    CommandText = 'SELECT * FROM QuoExclusions'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 248
    Top = 96
  end
  object QuoExclusionDsp: TDataSetProvider
    DataSet = QuoExclusionSds
    UpdateMode = upWhereKeyOnly
    Left = 278
    Top = 96
  end
  object QuoExclusionCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'QuoExclusionDsp'
    BeforeInsert = MasterCdsBeforeInsert
    BeforeEdit = MasterCdsBeforeEdit
    BeforePost = MasterCdsBeforePost
    AfterPost = MasterCdsAfterPost
    BeforeDelete = MasterCdsBeforeDelete
    AfterDelete = MasterCdsAfterDelete
    Left = 311
    Top = 96
    object QuoExclusionCdsQuoExclusions_id: TIntegerField
      FieldName = 'QuoExclusions_id'
    end
    object QuoExclusionCdsQuoExclusion: TStringField
      FieldName = 'QuoExclusion'
      Size = 100
    end
    object QuoExclusionCdsSrNo: TIntegerField
      FieldName = 'SrNo'
    end
  end
  object QuoExclusionDs: TDataSource
    DataSet = QuoExclusionCds
    Left = 341
    Top = 96
  end
  object QuoExclusionDetailsSds: TSQLDataSet
    CommandText = 'SELECT * FROM QuoExclusionDetails'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 256
    Top = 152
  end
  object QuoExclusionDetailsDsp: TDataSetProvider
    DataSet = QuoExclusionDetailsSds
    UpdateMode = upWhereKeyOnly
    Left = 286
    Top = 152
  end
  object QuoExclusionDetailsCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'QuoExclusionDetailsDsp'
    BeforeInsert = MasterCdsBeforeInsert
    BeforeEdit = MasterCdsBeforeEdit
    BeforePost = MasterCdsBeforePost
    AfterPost = MasterCdsAfterPost
    BeforeDelete = MasterCdsBeforeDelete
    AfterDelete = MasterCdsAfterDelete
    Left = 319
    Top = 152
    object QuoExclusionDetailsCdsQuoExclusionDetails_id: TIntegerField
      FieldName = 'QuoExclusionDetails_id'
    end
    object QuoExclusionDetailsCdsQuoExclusions_id: TIntegerField
      FieldName = 'QuoExclusions_id'
    end
    object QuoExclusionDetailsCdsQuoExclusionDetail: TMemoField
      FieldName = 'QuoExclusionDetail'
      BlobType = ftMemo
    end
    object QuoExclusionDetailsCdsSrNo: TIntegerField
      FieldName = 'SrNo'
    end
    object QuoExclusionDetailsCdsDisplay: TBooleanField
      FieldName = 'Display'
    end
  end
  object QuoExclusionDetailsDs: TDataSource
    DataSet = QuoExclusionDetailsCds
    Left = 349
    Top = 152
  end
end
