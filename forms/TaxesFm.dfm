inherited TaxesForm: TTaxesForm
  Left = 336
  Top = 94
  Width = 315
  Height = 505
  Caption = 'Taxes'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited GroupBox1: TcxGroupBox
    Height = 389
    Width = 307
    inherited CustomMasterCxGrid: TcxGrid
      Width = 301
      Height = 368
      inherited CustomMasterCxGridDBTableView1: TcxGridDBTableView
        OptionsView.Indicator = True
        Styles.Background = nil
        Styles.Header = nil
        object CustomMasterCxGridDBTableView1tax: TcxGridDBColumn
          Caption = 'Tax'
          DataBinding.FieldName = 'tax'
          Width = 250
        end
      end
    end
  end
  inherited Panel1: TPanel
    Top = 430
    Width = 307
    inherited KeyIdDbText: TDBText
      Left = 139
      Top = 13
      DataField = 'taxes_id'
    end
    inherited SearchLbl: TcxLabel
      Left = 4
      Visible = False
    end
    inherited SearchEdit: TcxTextEdit
      Left = 34
      Visible = False
      Width = 85
    end
    inherited CloseBtn: TcxButton
      Left = 213
    end
  end
  inherited Panel2: TPanel
    Width = 307
  end
  inherited MasterSDS: TSQLDataSet
    CommandText = 'taxes'
  end
  inherited MasterCds: TClientDataSet
    Active = True
    IndexFieldNames = 'Tax'
    object MasterCdstaxes_id: TIntegerField
      FieldName = 'taxes_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object MasterCdstax: TStringField
      FieldName = 'tax'
      Size = 50
    end
  end
end
