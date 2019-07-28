inherited TicketExceptionsForm: TTicketExceptionsForm
  Left = 257
  Top = 90
  Width = 523
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited GroupBox1: TcxGroupBox
    Caption = 'Exceptions'
    Width = 515
    inherited CustomMasterCxGrid: TcxGrid
      Width = 509
      inherited CustomMasterCxGridDBTableView1: TcxGridDBTableView
        Styles.Background = nil
        Styles.Header = nil
        object CustomMasterCxGridDBTableView1TicketExceptions_id: TcxGridDBColumn
          DataBinding.FieldName = 'TicketExceptions_id'
          Visible = False
        end
        object CustomMasterCxGridDBTableView1Tickets_id: TcxGridDBColumn
          DataBinding.FieldName = 'Tickets_id'
          Visible = False
        end
        object CustomMasterCxGridDBTableView1TrainNo: TcxGridDBColumn
          Caption = 'Train No'
          DataBinding.FieldName = 'TrainNo'
          Options.Filtering = False
          Options.Grouping = False
        end
      end
    end
  end
  inherited Panel1: TPanel
    Width = 515
    inherited KeyIdDbText: TDBText
      Left = 264
      DataField = 'TicketExceptions_id'
    end
    inherited SearchLbl: TcxLabel
      Visible = False
    end
    inherited SearchEdit: TcxTextEdit
      Visible = False
    end
    inherited CloseBtn: TcxButton
      Left = 376
    end
  end
  inherited Panel2: TPanel
    Width = 515
  end
  inherited MasterSDS: TSQLDataSet
    CommandText = 'TicketExceptions'
  end
  inherited MasterCds: TClientDataSet
    IndexFieldNames = 'TrainNo'
    AfterInsert = MasterCdsAfterInsert
    object MasterCdsTicketExceptions_id: TIntegerField
      FieldName = 'TicketExceptions_id'
    end
    object MasterCdsTickets_id: TIntegerField
      FieldName = 'Tickets_id'
    end
    object MasterCdsTrainNo: TStringField
      FieldName = 'TrainNo'
      Size = 50
    end
  end
end
