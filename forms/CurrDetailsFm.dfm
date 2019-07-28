inherited CurrencyDetailsForm: TCurrencyDetailsForm
  Left = -1
  Top = 309
  Width = 501
  Height = 518
  Caption = 'Currency Details'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited GroupBox1: TcxGroupBox
    Height = 402
    Width = 493
    inherited CustomMasterCxGrid: TcxGrid
      Width = 487
      Height = 381
      inherited CustomMasterCxGridDBTableView1: TcxGridDBTableView
        OptionsView.Indicator = True
        Styles.Background = nil
        Styles.Header = nil
        object CustomMasterCxGridDBTableView1wef: TcxGridDBColumn
          Caption = 'WEF'
          DataBinding.FieldName = 'wef'
          Width = 90
        end
        object CustomMasterCxGridDBTableView1countries_id: TcxGridDBColumn
          Caption = 'Country'
          DataBinding.FieldName = 'countries_id'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'countries_id'
          Properties.ListColumns = <
            item
              FieldName = 'country'
            end>
          Properties.ListSource = BackOfficeDataModule.CountriesDS
          Width = 135
        end
        object CustomMasterCxGridDBTableView1currencies_id: TcxGridDBColumn
          Caption = 'Currency'
          DataBinding.FieldName = 'currencies_id'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'currencies_id'
          Properties.ListColumns = <
            item
              FieldName = 'currency'
            end>
          Properties.ListSource = BackOfficeDataModule.CurrenciesDS
          Width = 111
        end
        object CustomMasterCxGridDBTableView1exchangerate: TcxGridDBColumn
          Caption = 'Exchange Rate'
          DataBinding.FieldName = 'exchangerate'
          Width = 131
        end
      end
    end
  end
  inherited Panel1: TPanel
    Top = 443
    Width = 493
    inherited KeyIdDbText: TDBText
      Left = 280
      Top = 12
      DataField = 'currencydetails_id'
    end
    inherited SearchLbl: TcxLabel
      Visible = False
    end
    inherited SearchEdit: TcxTextEdit
      Visible = False
    end
    inherited CloseBtn: TcxButton
      Left = 377
      Top = 7
    end
  end
  inherited Panel2: TPanel
    Width = 493
  end
  inherited MasterSDS: TSQLDataSet
    CommandText = 'currencydetails'
  end
  inherited MasterCds: TClientDataSet
    IndexFieldNames = 'WEF'
    AfterInsert = MasterCdsAfterInsert
    object MasterCdscurrencydetails_id: TIntegerField
      FieldName = 'currencydetails_id'
    end
    object MasterCdsexchangerate: TBCDField
      FieldName = 'exchangerate'
      DisplayFormat = '#,##.0000'
      Precision = 10
      Size = 2
    end
    object MasterCdswef: TSQLTimeStampField
      FieldName = 'wef'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object MasterCdscurrencies_id: TIntegerField
      FieldName = 'currencies_id'
    end
    object MasterCdscountries_id: TIntegerField
      FieldName = 'countries_id'
    end
  end
end
