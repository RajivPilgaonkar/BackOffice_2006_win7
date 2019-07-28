inherited ElemAccCostForm: TElemAccCostForm
  Left = 333
  Top = 78
  Width = 498
  Caption = 'Accommodation (1-10)'
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 482
  end
  inherited Panel2: TPanel
    Width = 482
    inherited cxButtonClose: TcxButton
      Left = 408
    end
    inherited cxDBLabelKeyId: TcxDBLabel
      Left = 332
      DataBinding.DataField = 'ElemAccommodationCosts_id'
    end
    inherited cxButtonUtilities: TcxButton
      Visible = False
    end
  end
  inherited Panel3: TPanel
    Width = 482
    inherited cxPageControl1: TcxPageControl
      Width = 480
      ClientRectRight = 474
      inherited cxTabSheet1: TcxTabSheet
        inherited cxGrid1: TcxGrid
          Width = 471
          inherited cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
            DataController.KeyFieldNames = 'ElemAccommodationCosts_id'
            OptionsData.Appending = False
            OptionsData.Deleting = False
            OptionsData.Inserting = False
            object cxGrid1DBBandedTableView1ElemAccommodationCosts_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'ElemAccommodationCosts_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1ElemAccommodation_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'ElemAccommodation_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1NumPax: TcxGridDBBandedColumn
              Caption = 'Num Pax'
              DataBinding.FieldName = 'NumPax'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              SortIndex = 0
              SortOrder = soAscending
              Width = 114
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1Cost: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Cost'
              HeaderAlignmentHorz = taRightJustify
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1SystemCost: TcxGridDBBandedColumn
              Caption = 'System Cost'
              DataBinding.FieldName = 'SystemCost'
              Visible = False
              HeaderAlignmentHorz = taRightJustify
              Options.Editing = False
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
    CommandText = 
      'SELECT * FROM ElemAccommodationCosts'#13#10'WHERE ElemAccommodation_id' +
      ' = :ElemAccommodation_id'
    CommandType = ctQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'ElemAccommodation_id'
        ParamType = ptInput
      end>
  end
  inherited MasterCds: TClientDataSet
    AfterInsert = MasterCdsAfterInsert
    object MasterCdsNumPax: TIntegerField
      FieldName = 'NumPax'
    end
    object MasterCdsCost: TFMTBCDField
      FieldName = 'Cost'
      DisplayFormat = '#,##0'
      Precision = 18
      Size = 4
    end
    object MasterCdsElemAccommodationCosts_id: TIntegerField
      FieldName = 'ElemAccommodationCosts_id'
    end
    object MasterCdsElemAccommodation_id: TIntegerField
      FieldName = 'ElemAccommodation_id'
    end
    object MasterCdsSystemCost: TFMTBCDField
      FieldName = 'SystemCost'
      DisplayFormat = '#,##0'
      Precision = 18
      Size = 2
    end
  end
  inherited PopupMenu1: TPopupMenu
    Left = 41
    Top = 439
    object UpdateCosts1: TMenuItem
      Caption = 'Update Costs'
      OnClick = UpdateCosts1Click
    end
  end
end
