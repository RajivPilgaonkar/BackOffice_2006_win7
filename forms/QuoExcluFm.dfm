inherited QuoExcluForm: TQuoExcluForm
  Left = 469
  Top = 66
  Caption = 'QuoExcluForm'
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Color = 10136548
  end
  inherited Panel2: TPanel
    inherited cxDBLabelKeyId_Master: TcxDBLabel
      DataBinding.DataField = 'QuoExclusions_id'
    end
    inherited cxDBLabelKeyId_Detail: TcxDBLabel
      DataBinding.DataField = 'QuoExclusionDetails_id'
    end
  end
  inherited Panel3: TPanel
    inherited cxPageControl1: TcxPageControl
      inherited cxTabSheet1: TcxTabSheet
        inherited cxGrid1: TcxGrid
          inherited cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
            object cxGrid1DBBandedTableView1QuoExclusions_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'QuoExclusions_id'
              Visible = False
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
              DataBinding.FieldName = 'SrNo'
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid2DBBandedTableView1Display: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Display'
              Width = 77
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
          end
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
  end
  inherited DetailSds: TSQLDataSet
    CommandText = 
      'SELECT * FROM QuoExclusionDetails WHERE QuoExclusions_id = :QuoE' +
      'xclusions_id'
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
    object DetailCdsSrNo: TIntegerField
      FieldName = 'SrNo'
    end
    object DetailCdsDisplay: TBooleanField
      FieldName = 'Display'
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
end
