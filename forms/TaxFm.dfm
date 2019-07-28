inherited TaxForm: TTaxForm
  Left = 195
  Top = 82
  Width = 576
  Caption = 'Taxes'
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 560
  end
  inherited Panel2: TPanel
    Width = 560
    inherited cxButtonClose: TcxButton
      Left = 480
    end
    inherited cxDBLabelKeyId: TcxDBLabel
      Left = 404
      DataBinding.DataField = 'tax'
    end
  end
  inherited Panel3: TPanel
    Width = 560
    inherited cxPageControl1: TcxPageControl
      Width = 558
      ClientRectRight = 552
      inherited cxTabSheet1: TcxTabSheet
        Caption = 'Taxes'
        inherited cxGrid1: TcxGrid
          Width = 549
          inherited cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
            object cxGrid1DBBandedTableView1taxes_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'taxes_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1tax: TcxGridDBBandedColumn
              Caption = 'Tax'
              DataBinding.FieldName = 'tax'
              SortIndex = 0
              SortOrder = soAscending
              Width = 438
              Position.BandIndex = 0
              Position.ColIndex = 1
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
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1ModifiedOn: TcxGridDBBandedColumn
              Caption = 'Modified On'
              DataBinding.FieldName = 'ModifiedOn'
              Visible = False
              Options.Editing = False
              Width = 80
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
    CommandText = 'taxes'
  end
  inherited MasterCds: TClientDataSet
    object MasterCdstaxes_id: TIntegerField
      FieldName = 'taxes_id'
    end
    object MasterCdstax: TStringField
      FieldName = 'tax'
      Size = 50
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
