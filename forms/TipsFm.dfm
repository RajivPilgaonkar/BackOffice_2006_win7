inherited TipsForm: TTipsForm
  Left = 211
  Top = 131
  Width = 824
  Height = 557
  Caption = 'Tips'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited GroupBox1: TcxGroupBox
    Height = 441
    Width = 816
    inherited CustomMasterCxGrid: TcxGrid
      Width = 810
      Height = 420
      inherited CustomMasterCxGridDBTableView1: TcxGridDBTableView
        DataController.KeyFieldNames = 'Tips_id'
        OptionsView.Indicator = True
        Styles.Background = nil
        Styles.Header = nil
        object CustomMasterCxGridDBTableView1tip: TcxGridDBColumn
          DataBinding.FieldName = 'Tip'
          SortIndex = 0
          SortOrder = soAscending
          Width = 771
        end
      end
    end
  end
  inherited Panel1: TPanel
    Top = 482
    Width = 816
    inherited KeyIdDbText: TDBText
      Left = 224
      DataField = 'tips_id'
    end
    inherited SearchLbl: TcxLabel
      Visible = False
    end
    inherited SearchEdit: TcxTextEdit
      Visible = False
    end
    inherited CloseBtn: TcxButton
      Left = 304
    end
  end
  inherited Panel2: TPanel
    Width = 816
  end
  inherited MasterCds: TClientDataSet
    IndexFieldNames = 'Tip'
    object MasterCdsTips_id: TIntegerField
      FieldName = 'Tips_id'
    end
    object MasterCdsTip: TStringField
      FieldName = 'Tip'
      Size = 254
    end
  end
end
