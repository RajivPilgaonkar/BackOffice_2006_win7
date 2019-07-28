inherited TicketClassExceptionsForm: TTicketClassExceptionsForm
  Left = 257
  Top = 90
  Width = 523
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited GroupBox1: TcxGroupBox
    Caption = 'Exceptions'
    Width = 507
    inherited CustomMasterCxGrid: TcxGrid
      Width = 501
      inherited CustomMasterCxGridDBTableView1: TcxGridDBTableView
        DataController.KeyFieldNames = 'TicketClassExceptions_id'
        Styles.Background = nil
        Styles.Header = nil
        object CustomMasterCxGridDBTableView1TicketClassExceptions_id: TcxGridDBColumn
          DataBinding.FieldName = 'TicketClassExceptions_id'
          Visible = False
          Options.Editing = False
        end
        object CustomMasterCxGridDBTableView1Tickets_id: TcxGridDBColumn
          DataBinding.FieldName = 'Tickets_id'
          Visible = False
          Options.Editing = False
        end
        object CustomMasterCxGridDBTableView1TrainNo: TcxGridDBColumn
          DataBinding.FieldName = 'TrainNo'
          Width = 184
        end
        object CustomMasterCxGridDBTableView1Class_id: TcxGridDBColumn
          Caption = 'Class'
          DataBinding.FieldName = 'Class_id'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'Class_id'
          Properties.ListColumns = <
            item
              FieldName = 'class'
            end>
          Properties.ListSource = ClassDs
          Width = 226
        end
      end
    end
  end
  inherited Panel1: TPanel
    Width = 507
    inherited KeyIdDbText: TDBText
      Left = 264
      DataField = 'TicketClassExceptions_id'
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
    Width = 507
  end
  inherited MasterSDS: TSQLDataSet
    CommandText = 'TicketClassExceptions'
  end
  inherited DataSetProvider: TDataSetProvider
    Left = 72
  end
  inherited MasterDS: TDataSource
    Left = 88
  end
  inherited MasterCds: TClientDataSet
    IndexFieldNames = 'TrainNo'
    AfterInsert = MasterCdsAfterInsert
    Left = 112
    object MasterCdsTicketClassExceptions_id: TIntegerField
      FieldName = 'TicketClassExceptions_id'
    end
    object MasterCdsTickets_id: TIntegerField
      FieldName = 'Tickets_id'
    end
    object MasterCdsTrainNo: TStringField
      FieldName = 'TrainNo'
      Size = 50
    end
    object MasterCdsClass_id: TIntegerField
      FieldName = 'Class_id'
    end
  end
  object ClassSds: TSQLDataSet
    CommandText = 
      'SELECT Class_id, class, tickets_id FROM class '#13#10'WHERE Tickets_id' +
      ' = 2'#13#10'ORDER BY class'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 256
    Top = 160
  end
  object ClassDsp: TDataSetProvider
    DataSet = ClassSds
    Left = 270
    Top = 161
  end
  object ClassCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ClassDsp'
    Left = 288
    Top = 160
    object ClassCdsClass_id: TIntegerField
      FieldName = 'Class_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object ClassCdsclass: TStringField
      FieldName = 'class'
      Size = 30
    end
    object ClassCdstickets_id: TIntegerField
      FieldName = 'tickets_id'
    end
  end
  object ClassDs: TDataSource
    DataSet = ClassCds
    Left = 300
    Top = 160
  end
end
