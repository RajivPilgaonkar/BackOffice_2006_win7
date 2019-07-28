inherited MasterCategoriesForm: TMasterCategoriesForm
  Left = 310
  Top = 161
  Width = 496
  Height = 542
  Caption = 'Master Categories'
  OldCreateOrder = True
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 488
  end
  inherited Panel2: TPanel
    Top = 467
    Width = 488
    inherited cxButtonClose: TcxButton
      Left = 360
    end
    inherited cxDBLabelKeyId: TcxDBLabel
      Left = 284
    end
    inherited cxButtonUtilities: TcxButton
      Visible = False
    end
  end
  inherited Panel3: TPanel
    Width = 488
    Height = 426
    inherited cxPageControl1: TcxPageControl
      Width = 486
      Height = 424
      ClientRectBottom = 418
      ClientRectRight = 480
      inherited cxTabSheet1: TcxTabSheet
        Caption = 'Master Categories'
        inherited cxGrid1: TcxGrid
          Width = 477
          Height = 392
          inherited cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
            DataController.KeyFieldNames = 'MasterCategories_id'
            object cxGrid1DBBandedTableView1MasterCategories_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'MasterCategories_id'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Width = 158
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1MasterCategory: TcxGridDBBandedColumn
              Caption = 'Master Category'
              DataBinding.FieldName = 'MasterCategory'
              Options.Filtering = False
              Options.Sorting = False
              SortIndex = 0
              SortOrder = soAscending
              Width = 444
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
          end
        end
      end
    end
  end
  inherited MasterSds: TSQLDataSet
    CommandText = 'MasterCategories'
  end
  inherited MasterCds: TClientDataSet
    object MasterCdsMasterCategories_id: TIntegerField
      FieldName = 'MasterCategories_id'
    end
    object MasterCdsMasterCategory: TStringField
      FieldName = 'MasterCategory'
    end
  end
end
