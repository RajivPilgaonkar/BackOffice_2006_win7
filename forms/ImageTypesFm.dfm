inherited ImageTypesForm: TImageTypesForm
  Left = 396
  Top = 142
  Width = 478
  Height = 484
  Caption = 'Image Types'
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
      DataBinding.DataField = 'imagetypes_id'
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
        Caption = 'Image Types'
        inherited cxGrid1: TcxGrid
          Width = 451
          Height = 330
          inherited cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
            DataController.KeyFieldNames = 'imagetypes_id'
            object cxGrid1DBBandedTableView1imagetypes_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'imagetypes_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1imagetype: TcxGridDBBandedColumn
              Caption = 'Image Type'
              DataBinding.FieldName = 'imagetype'
              SortIndex = 0
              SortOrder = soAscending
              Width = 382
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
    CommandText = 'ImageTypes'
  end
  inherited MasterCds: TClientDataSet
    object MasterCdsimagetypes_id: TIntegerField
      FieldName = 'imagetypes_id'
    end
    object MasterCdsimagetype: TStringField
      FieldName = 'imagetype'
      Size = 32
    end
  end
  inherited PopupMenu1: TPopupMenu
    Left = 65
    Top = 383
  end
end
