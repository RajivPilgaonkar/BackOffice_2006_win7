inherited FixedItinCloseDatesForm: TFixedItinCloseDatesForm
  Left = 391
  Top = 126
  Width = 381
  FormStyle = fsNormal
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited GroupBox1: TcxGroupBox
    Top = 57
    Caption = 'Close Dates'
    TabOrder = 1
    Height = 454
    Width = 365
    inherited CustomMasterCxGrid: TcxGrid
      Width = 359
      Height = 433
      inherited CustomMasterCxGridDBTableView1: TcxGridDBTableView
        DataController.KeyFieldNames = 'FixedItinCloseDates_id'
        Styles.Background = nil
        Styles.Header = nil
        object CustomMasterCxGridDBTableView1FixedItinCloseDates_id: TcxGridDBColumn
          DataBinding.FieldName = 'FixedItinCloseDates_id'
          Visible = False
          Options.Editing = False
          VisibleForCustomization = False
        end
        object CustomMasterCxGridDBTableView1FixedItin_id: TcxGridDBColumn
          DataBinding.FieldName = 'FixedItin_id'
          Visible = False
          Options.Editing = False
          VisibleForCustomization = False
        end
        object CustomMasterCxGridDBTableView1FromDate: TcxGridDBColumn
          Caption = 'From Date'
          DataBinding.FieldName = 'FromDate'
          Width = 148
        end
        object CustomMasterCxGridDBTableView1ToDate: TcxGridDBColumn
          Caption = 'To Date'
          DataBinding.FieldName = 'ToDate'
          Width = 115
        end
      end
    end
  end
  inherited Panel1: TPanel
    Width = 365
    TabOrder = 2
    inherited KeyIdDbText: TDBText
      Left = 192
      DataField = 'FixedItinCloseDates_id'
    end
    inherited SearchLbl: TcxLabel
      Visible = False
    end
    inherited SearchEdit: TcxTextEdit
      Visible = False
    end
    inherited CloseBtn: TcxButton
      Left = 264
    end
  end
  inherited Panel2: TPanel
    Width = 365
    Height = 57
    TabOrder = 0
  end
  inherited MasterSDS: TSQLDataSet
    CommandText = 
      'SELECT * FROM FixedItinCloseDates WHERE FixedItin_id = :FixedIti' +
      'n_id'
    CommandType = ctQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'FixedItin_id'
        ParamType = ptInput
      end>
    Top = 128
  end
  inherited DataSetProvider: TDataSetProvider
    Left = 64
    Top = 128
  end
  inherited MasterDS: TDataSource
    Left = 72
    Top = 128
  end
  inherited MasterCds: TClientDataSet
    Left = 80
    Top = 128
    object MasterCdsFixedItinCloseDates_id: TIntegerField
      FieldName = 'FixedItinCloseDates_id'
    end
    object MasterCdsFixedItin_id: TIntegerField
      FieldName = 'FixedItin_id'
    end
    object MasterCdsFromDate: TSQLTimeStampField
      FieldName = 'FromDate'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object MasterCdsToDate: TSQLTimeStampField
      FieldName = 'ToDate'
      DisplayFormat = 'dd/mm/yyyy'
    end
  end
end
