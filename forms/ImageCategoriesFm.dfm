inherited ImageCategoriesForm: TImageCategoriesForm
  Left = 396
  Top = 142
  Width = 478
  Height = 484
  Caption = 'Image Categories'
  OldCreateOrder = True
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 462
  end
  inherited Panel2: TPanel
    Top = 405
    Width = 462
    inherited cxButtonClose: TcxButton
      Left = 336
    end
    inherited cxDBLabelKeyId: TcxDBLabel
      Left = 260
      DataBinding.DataField = 'imagecategories_id'
    end
  end
  inherited Panel3: TPanel
    Width = 462
    Height = 364
    inherited cxPageControl1: TcxPageControl
      Width = 460
      Height = 362
      ClientRectBottom = 356
      ClientRectRight = 454
      inherited cxTabSheet1: TcxTabSheet
        Caption = 'Image Categories'
        inherited cxGrid1: TcxGrid
          Width = 451
          Height = 330
          inherited cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
            DataController.KeyFieldNames = 'imagecategories_id'
            object cxGrid1DBBandedTableView1imagecategories_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'imagecategories_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1imagecategory: TcxGridDBBandedColumn
              Caption = 'Image Category'
              DataBinding.FieldName = 'imagecategory'
              SortIndex = 0
              SortOrder = soAscending
              Width = 405
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
    CommandText = 'ImageCategories'
  end
  inherited MasterCds: TClientDataSet
    object MasterCdsimagecategories_id: TIntegerField
      FieldName = 'imagecategories_id'
    end
    object MasterCdsimagecategory: TStringField
      FieldName = 'imagecategory'
      Size = 32
    end
  end
  inherited PopupMenu1: TPopupMenu
    Left = 65
    Top = 383
  end
end
