inherited QuoPaxChangeForm: TQuoPaxChangeForm
  Caption = 'Pax Change'
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel3: TPanel
    inherited cxPageControl1: TcxPageControl
      inherited cxTabSheet1: TcxTabSheet
        inherited cxGrid1: TcxGrid
          inherited cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
            object cxGrid1DBBandedTableView1QuoPax_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'QuoPax_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1Quotations_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Quotations_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1Wef: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Wef'
              PropertiesClassName = 'TcxDateEditProperties'
              Properties.InputKind = ikMask
              Properties.SaveTime = False
              Properties.ShowTime = False
              Width = 134
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1WefTime: TcxGridDBBandedColumn
              Caption = 'Time'
              DataBinding.FieldName = 'Wef'
              PropertiesClassName = 'TcxTimeEditProperties'
              Properties.TimeFormat = tfHourMin
              Properties.UseCtrlIncrement = True
              Width = 56
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1NumPax: TcxGridDBBandedColumn
              Caption = 'Num Pax'
              DataBinding.FieldName = 'NumPax'
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1NumSingles: TcxGridDBBandedColumn
              Caption = 'Singles'
              DataBinding.FieldName = 'NumSingles'
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1NumDoubles: TcxGridDBBandedColumn
              Caption = 'Doubles'
              DataBinding.FieldName = 'NumDoubles'
              Position.BandIndex = 0
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1NumTriples: TcxGridDBBandedColumn
              Caption = 'Triples'
              DataBinding.FieldName = 'NumTriples'
              Position.BandIndex = 0
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1NumTwins: TcxGridDBBandedColumn
              Caption = 'Twins'
              DataBinding.FieldName = 'NumTwins'
              Position.BandIndex = 0
              Position.ColIndex = 8
              Position.RowIndex = 0
            end
          end
        end
      end
    end
  end
  inherited MasterSds: TSQLDataSet
    CommandText = 'SELECT * FROM QuoPax'#13#10'WHERE Quotations_id = :Quotations_id'
    CommandType = ctQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'Quotations_id'
        ParamType = ptInput
      end>
  end
  inherited MasterCds: TClientDataSet
    AfterInsert = MasterCdsAfterInsert
    object MasterCdsQuoPax_id: TIntegerField
      FieldName = 'QuoPax_id'
    end
    object MasterCdsQuotations_id: TIntegerField
      FieldName = 'Quotations_id'
    end
    object MasterCdsWef: TSQLTimeStampField
      FieldName = 'Wef'
    end
    object MasterCdsNumPax: TIntegerField
      FieldName = 'NumPax'
    end
    object MasterCdsNumSingles: TIntegerField
      FieldName = 'NumSingles'
    end
    object MasterCdsNumDoubles: TIntegerField
      FieldName = 'NumDoubles'
    end
    object MasterCdsNumTriples: TIntegerField
      FieldName = 'NumTriples'
    end
    object MasterCdsNumTwins: TIntegerField
      FieldName = 'NumTwins'
    end
  end
end
