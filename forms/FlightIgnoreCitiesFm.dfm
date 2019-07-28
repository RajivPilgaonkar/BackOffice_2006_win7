inherited FlightIgnoreCitiesForm: TFlightIgnoreCitiesForm
  Left = 330
  Top = 114
  Width = 484
  Height = 566
  Caption = 'Flights - Ignore Cities'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited GroupBox1: TcxGroupBox
    Height = 450
    Width = 476
    inherited CustomMasterCxGrid: TcxGrid
      Width = 470
      Height = 429
      inherited CustomMasterCxGridDBTableView1: TcxGridDBTableView
        DataController.KeyFieldNames = 'FlightIgnoreCities_id'
        OptionsBehavior.CellHints = True
        OptionsView.Indicator = True
        Styles.Background = nil
        Styles.Header = nil
        object CustomMasterCxGridDBTableView1FlightIgnoreCities_id: TcxGridDBColumn
          DataBinding.FieldName = 'FlightIgnoreCities_id'
          Visible = False
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
        end
        object CustomMasterCxGridDBTableView1City: TcxGridDBColumn
          DataBinding.FieldName = 'City'
          SortIndex = 0
          SortOrder = soAscending
          Width = 296
        end
      end
    end
  end
  inherited Panel1: TPanel
    Top = 491
    Width = 476
    inherited KeyIdDbText: TDBText
      Left = 283
      Top = 13
      DataField = 'FlightIgnoreCities_id'
    end
    inherited SearchLbl: TcxLabel
      Visible = False
    end
    inherited SearchEdit: TcxTextEdit
      Visible = False
    end
    inherited CloseBtn: TcxButton
      Left = 362
    end
  end
  inherited Panel2: TPanel
    Width = 476
  end
  inherited MasterSDS: TSQLDataSet
    CommandText = 'FlightIgnoreCities'
  end
  inherited MasterCds: TClientDataSet
    object MasterCdsFlightIgnoreCities_id: TIntegerField
      FieldName = 'FlightIgnoreCities_id'
    end
    object MasterCdsCity: TStringField
      FieldName = 'City'
      Size = 100
    end
  end
end
