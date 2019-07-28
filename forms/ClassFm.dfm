inherited ClassForm: TClassForm
  Left = 235
  Top = 174
  Width = 589
  Height = 492
  Caption = 'Class Form'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited CustomMasterGridGroupBox: TGroupBox
    Left = 8
    Top = 2
    Width = 530
    Height = 392
    Caption = 'Classes'
    inherited SearchLbl: TLabel
      Top = 350
    end
    inherited KeyIdDBText: TDBText
      Left = 454
      Top = 377
    end
    inherited CustomMasterDBGrid: TDBGrid
      Left = 75
      Top = 21
      Width = 387
      Columns = <
        item
          Expanded = False
          FieldName = 'class_id'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'class'
          Title.Caption = 'Class'
          Width = 350
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'code'
          Title.Caption = 'Code'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'tickets_id'
          Visible = False
        end>
    end
    inherited SearchEdit: TEdit
      Top = 347
    end
    inherited CloseBtn: TBitBtn
      Top = 349
    end
  end
  inherited MasterCDS: TClientDataSet
    Active = True
    Filter = 'tickets_id=3'
    Filtered = True
    IndexFieldNames = 'Class'
  end
  inherited MasterSQLTable: TSQLTable
    TableName = 'Class'
  end
end
