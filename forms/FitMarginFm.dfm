inherited FitMarginForm: TFitMarginForm
  Width = 710
  Height = 550
  Caption = 'Fit Margin'
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 702
  end
  inherited Panel2: TPanel
    Top = 475
    Width = 702
    inherited cxButtonClose: TcxButton
      Left = 616
    end
    inherited cxDBLabelKeyId: TcxDBLabel
      Left = 540
    end
  end
  inherited Panel3: TPanel
    Width = 702
    Height = 434
    inherited cxPageControl1: TcxPageControl
      Width = 700
      Height = 432
      ClientRectBottom = 426
      ClientRectRight = 694
      inherited cxTabSheet1: TcxTabSheet
        Caption = 'Fit Margin'
        inherited cxGrid1: TcxGrid
          Width = 691
          Height = 400
          inherited cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
            DataController.KeyFieldNames = 'FitMargins_id'
            OptionsData.Appending = False
            OptionsData.Deleting = False
            object cxGrid1DBBandedTableView1FitMargins_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FitMargins_id'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1OrderNo: TcxGridDBBandedColumn
              Caption = 'Order No'
              DataBinding.FieldName = 'OrderNo'
              Options.Filtering = False
              SortIndex = 0
              SortOrder = soAscending
              Width = 83
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1TrsType: TcxGridDBBandedColumn
              Caption = 'Type'
              DataBinding.FieldName = 'TrsType'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1TrsTypeDesc: TcxGridDBBandedColumn
              Caption = 'Type'
              DataBinding.FieldName = 'TrsTypeDesc'
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Width = 144
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1Tickets_id: TcxGridDBBandedColumn
              Caption = 'Ticket'
              DataBinding.FieldName = 'Tickets_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.DropDownWidth = 150
              Properties.KeyFieldNames = 'Tickets_id'
              Properties.ListColumns = <
                item
                  FieldName = 'Details'
                end>
              Properties.ListSource = TicketDs
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Width = 109
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1Margin: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Margin'
              Options.Filtering = False
              Options.Sorting = False
              Width = 105
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1FromAmt: TcxGridDBBandedColumn
              Caption = 'From Amount'
              DataBinding.FieldName = 'FromAmt'
              Options.Filtering = False
              Options.Sorting = False
              Width = 110
              Position.BandIndex = 0
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1ToAmt: TcxGridDBBandedColumn
              Caption = 'To Amount'
              DataBinding.FieldName = 'ToAmt'
              Options.Filtering = False
              Options.Sorting = False
              Width = 114
              Position.BandIndex = 0
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
          end
        end
      end
    end
  end
  inherited MasterSds: TSQLDataSet
    CommandText = 'FitMargins'
    Left = 496
    Top = 384
  end
  inherited MasterDsp: TDataSetProvider
    Left = 526
    Top = 384
  end
  inherited MasterCds: TClientDataSet
    Left = 559
    Top = 384
    object MasterCdsFitMargins_id: TIntegerField
      FieldName = 'FitMargins_id'
    end
    object MasterCdsTrsType: TIntegerField
      FieldName = 'TrsType'
    end
    object MasterCdsTrsTypeDesc: TStringField
      FieldName = 'TrsTypeDesc'
      Size = 50
    end
    object MasterCdsTickets_id: TIntegerField
      FieldName = 'Tickets_id'
    end
    object MasterCdsMargin: TFMTBCDField
      FieldName = 'Margin'
      Precision = 18
    end
    object MasterCdsFromAmt: TFMTBCDField
      FieldName = 'FromAmt'
      DisplayFormat = '#,##0.00'
      Precision = 18
    end
    object MasterCdsToAmt: TFMTBCDField
      FieldName = 'ToAmt'
      DisplayFormat = '#,##0.00'
      Precision = 18
    end
    object MasterCdsOrderNo: TIntegerField
      FieldName = 'OrderNo'
    end
  end
  inherited MasterDs: TDataSource
    Left = 589
    Top = 384
  end
  object TicketSds: TSQLDataSet
    CommandText = 
      'select Tickets_id, Details'#13#10'from Tickets'#13#10'where Tickets_id > 0'#13#10 +
      'order by Tickets_id'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 48
    Top = 152
  end
  object TicketDsp: TDataSetProvider
    DataSet = TicketSds
    Left = 64
    Top = 152
  end
  object TicketCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'TicketDsp'
    Left = 80
    Top = 152
    object TicketCdsTickets_id: TIntegerField
      FieldName = 'Tickets_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TicketCdsDetails: TStringField
      FieldName = 'Details'
      Size = 15
    end
  end
  object TicketDs: TDataSource
    DataSet = TicketCds
    Left = 96
    Top = 152
  end
end
