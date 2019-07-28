inherited QuoFixedRateAccForm: TQuoFixedRateAccForm
  Left = 105
  Top = 209
  Caption = 'Accommodation (1-10)'
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    inherited cxDBLabelKeyId: TcxDBLabel
      DataBinding.DataField = 'QuoFixedRatesAccCosts_id'
    end
  end
  inherited Panel3: TPanel
    inherited cxPageControl1: TcxPageControl
      inherited cxTabSheet1: TcxTabSheet
        inherited cxGrid1: TcxGrid
          inherited cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
            DataController.KeyFieldNames = 'QuoFixedRatesAccCosts_id'
            OptionsData.Appending = False
            OptionsData.Inserting = False
            object cxGrid1DBBandedTableView1QuoFixedRatesAccCosts_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'QuoFixedRatesAccCosts_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1QuoFixedRatesAccommodation_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'QuoFixedRatesAccommodation_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1NumPax: TcxGridDBBandedColumn
              Caption = 'Num Pax'
              DataBinding.FieldName = 'NumPax'
              SortIndex = 0
              SortOrder = soAscending
              Width = 114
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1Cost: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Cost'
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
    CommandText = 
      'SELECT * FROM QuoFixedRatesAccCosts'#13#10'WHERE QuoFixedRatesAccommod' +
      'ation_id = :QuoFixedRatesAccommodation_id'
    CommandType = ctQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'QuoFixedRatesAccommodation_id'
        ParamType = ptInput
      end>
  end
  inherited MasterCds: TClientDataSet
    AfterInsert = MasterCdsAfterInsert
    object MasterCdsQuoFixedRatesAccCosts_id: TIntegerField
      FieldName = 'QuoFixedRatesAccCosts_id'
    end
    object MasterCdsQuoFixedRatesAccommodation_id: TIntegerField
      FieldName = 'QuoFixedRatesAccommodation_id'
    end
    object MasterCdsNumPax: TIntegerField
      FieldName = 'NumPax'
    end
    object MasterCdsCost: TFMTBCDField
      FieldName = 'Cost'
      Precision = 18
      Size = 4
    end
  end
  inherited PopupMenu1: TPopupMenu
    Left = 433
    Top = 351
    object UpdateCosts1: TMenuItem
      Caption = 'Update Costs'
      OnClick = UpdateCosts1Click
    end
  end
end
