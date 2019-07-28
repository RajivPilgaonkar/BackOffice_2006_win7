inherited FixedItinTipsForm: TFixedItinTipsForm
  Left = 135
  Top = 68
  Width = 953
  FormStyle = fsNormal
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited GroupBox1: TcxGroupBox
    Top = 57
    Caption = 'Tips'
    TabOrder = 1
    Height = 458
    Width = 945
    inherited CustomMasterCxGrid: TcxGrid
      Width = 939
      Height = 437
      inherited CustomMasterCxGridDBTableView1: TcxGridDBTableView
        DataController.KeyFieldNames = 'FixedItinTips_id'
        Styles.Background = nil
        Styles.Header = nil
        object CustomMasterCxGridDBTableView1FixedItinTips_id: TcxGridDBColumn
          DataBinding.FieldName = 'FixedItinTips_id'
          Visible = False
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
        end
        object CustomMasterCxGridDBTableView1FixedItin_id: TcxGridDBColumn
          DataBinding.FieldName = 'FixedItin_id'
          Visible = False
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
        end
        object CustomMasterCxGridDBTableView1OrderNo: TcxGridDBColumn
          Caption = 'Sr No'
          DataBinding.FieldName = 'OrderNo'
          Options.Filtering = False
          Options.Grouping = False
          SortIndex = 0
          SortOrder = soAscending
          Width = 47
        end
        object CustomMasterCxGridDBTableView1Title: TcxGridDBColumn
          DataBinding.FieldName = 'Title'
          Options.Filtering = False
          Options.Grouping = False
          Width = 200
        end
        object CustomMasterCxGridDBTableView1Tip: TcxGridDBColumn
          DataBinding.FieldName = 'Tip'
          Options.Filtering = False
          Options.Grouping = False
          Width = 616
        end
      end
    end
  end
  inherited Panel1: TPanel
    Width = 945
    TabOrder = 2
    inherited KeyIdDbText: TDBText
      Left = 192
      DataField = 'FixedItinTips_id'
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
    Width = 945
    Height = 57
    TabOrder = 0
  end
  inherited MasterSDS: TSQLDataSet
    CommandText = 'SELECT * FROM FixedItinTips WHERE FixedItin_id = :FixedItin_id'
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
    AfterInsert = MasterCdsAfterInsert
    Left = 80
    Top = 128
    object MasterCdsFixedItinTips_id: TIntegerField
      FieldName = 'FixedItinTips_id'
    end
    object MasterCdsFixedItin_id: TIntegerField
      FieldName = 'FixedItin_id'
    end
    object MasterCdsTip: TStringField
      FieldName = 'Tip'
      Size = 254
    end
    object MasterCdsOrderNo: TIntegerField
      FieldName = 'OrderNo'
    end
    object MasterCdsTitle: TStringField
      FieldName = 'Title'
      Size = 254
    end
  end
end
