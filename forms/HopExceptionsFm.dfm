inherited HopExceptionsForm: THopExceptionsForm
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
        DataController.KeyFieldNames = 'HopExceptions_id'
        Styles.Background = nil
        Styles.Header = nil
        object CustomMasterCxGridDBTableView1HopExceptions_id: TcxGridDBColumn
          DataBinding.FieldName = 'HopExceptions_id'
          Visible = False
        end
        object CustomMasterCxGridDBTableView1FromCities_id: TcxGridDBColumn
          Caption = 'From City'
          DataBinding.FieldName = 'FromCities_id'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'cities_id'
          Properties.ListColumns = <
            item
              FieldName = 'city'
            end>
          Properties.ListSource = BackOfficeDataModule.CitiesDS
          Options.Grouping = False
          SortIndex = 0
          SortOrder = soAscending
          Width = 159
        end
        object CustomMasterCxGridDBTableView1ToCities_id: TcxGridDBColumn
          Caption = 'To City'
          DataBinding.FieldName = 'ToCities_id'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'cities_id'
          Properties.ListColumns = <
            item
              FieldName = 'city'
            end>
          Properties.ListSource = BackOfficeDataModule.CitiesDS
          Options.Grouping = False
          Width = 153
        end
        object CustomMasterCxGridDBTableView1Hops: TcxGridDBColumn
          DataBinding.FieldName = 'Hops'
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
      DataField = 'HopExceptions_id'
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
    CommandText = 'HopExceptions'
    Top = 96
  end
  inherited DataSetProvider: TDataSetProvider
    Left = 64
    Top = 96
  end
  inherited MasterDS: TDataSource
    Left = 112
    Top = 96
  end
  inherited MasterCds: TClientDataSet
    IndexFieldNames = 'FromCities_id'
    Left = 88
    Top = 96
    object MasterCdsHopExceptions_id: TIntegerField
      FieldName = 'HopExceptions_id'
    end
    object MasterCdsFromCities_id: TIntegerField
      FieldName = 'FromCities_id'
    end
    object MasterCdsToCities_id: TIntegerField
      FieldName = 'ToCities_id'
    end
    object MasterCdsHops: TIntegerField
      FieldName = 'Hops'
    end
  end
end
