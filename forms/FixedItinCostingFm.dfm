inherited FixedItinCostingForm: TFixedItinCostingForm
  Left = 336
  Top = 41
  Width = 638
  FormStyle = fsNormal
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited GroupBox1: TcxGroupBox
    Top = 36
    Caption = 'Close Dates'
    TabOrder = 1
    Height = 479
    Width = 630
    inherited CustomMasterCxGrid: TcxGrid
      Width = 624
      Height = 458
      inherited CustomMasterCxGridDBTableView1: TcxGridDBTableView
        PopupMenu = PopupMenu1
        DataController.KeyFieldNames = 'FixedItinCosts_id'
        OptionsBehavior.FocusFirstCellOnNewRecord = False
        OptionsView.Indicator = True
        Styles.Background = nil
        Styles.Header = nil
        object CustomMasterCxGridDBTableView1FixedItinCosts_id: TcxGridDBColumn
          DataBinding.FieldName = 'FixedItinCosts_id'
          Visible = False
          VisibleForCustomization = False
        end
        object CustomMasterCxGridDBTableView1FixedItin_id: TcxGridDBColumn
          DataBinding.FieldName = 'FixedItin_id'
          Visible = False
          VisibleForCustomization = False
        end
        object CustomMasterCxGridDBTableView1Wef: TcxGridDBColumn
          DataBinding.FieldName = 'Wef'
          Width = 116
        end
        object CustomMasterCxGridDBTableView1Wet: TcxGridDBColumn
          DataBinding.FieldName = 'Wet'
          Width = 108
        end
        object CustomMasterCxGridDBTableView1FromPax: TcxGridDBColumn
          Caption = 'From Pax'
          DataBinding.FieldName = 'FromPax'
        end
        object CustomMasterCxGridDBTableView1ToPax: TcxGridDBColumn
          Caption = 'To Pax'
          DataBinding.FieldName = 'ToPax'
        end
        object CustomMasterCxGridDBTableView1Cost: TcxGridDBColumn
          DataBinding.FieldName = 'Cost'
          Width = 83
        end
        object CustomMasterCxGridDBTableView1CostSS: TcxGridDBColumn
          Caption = 'Cost SS'
          DataBinding.FieldName = 'CostSS'
          Width = 107
        end
      end
    end
  end
  inherited Panel1: TPanel
    Width = 630
    TabOrder = 2
    inherited KeyIdDbText: TDBText
      Left = 192
      DataField = 'FixedItinCosts_id'
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
    Width = 630
    Height = 36
    TabOrder = 0
    object Label1: TLabel
      Left = 3
      Top = 12
      Width = 24
      Height = 13
      Caption = 'Wef'
      Transparent = True
    end
    object Label2: TLabel
      Left = 238
      Top = 12
      Width = 34
      Height = 13
      Caption = 'Agent'
      Transparent = True
    end
    object Label3: TLabel
      Left = 470
      Top = 12
      Width = 51
      Height = 13
      Caption = 'Currency'
      Transparent = True
    end
    object cxWefLCMB: TcxLookupComboBox
      Left = 31
      Top = 10
      Properties.DropDownListStyle = lsEditList
      Properties.KeyFieldNames = 'wef'
      Properties.ListColumns = <
        item
          FieldName = 'wef'
        end>
      Properties.ListSource = WefDS
      Properties.ValidateOnEnter = False
      Properties.OnEditValueChanged = cxWefLCMBPropertiesEditValueChanged
      EditValue = 0
      Style.Color = 16247513
      TabOrder = 0
      OnKeyPress = cxWefLCMBKeyPress
      Width = 126
    end
    object cxButtonUpdate: TcxButton
      Left = 160
      Top = 8
      Width = 55
      Height = 20
      Caption = 'Update'
      TabOrder = 1
      OnClick = cxButtonUpdateClick
    end
    object cxAgentLCMB: TcxLookupComboBox
      Left = 277
      Top = 9
      Properties.DropDownListStyle = lsEditList
      Properties.DropDownWidth = 550
      Properties.KeyFieldNames = 'Addressbook_id'
      Properties.ListColumns = <
        item
          Width = 400
          FieldName = 'Organisation'
        end
        item
          Width = 150
          FieldName = 'City'
        end>
      Properties.ListSource = PrinAgentDS
      Properties.ValidateOnEnter = False
      Properties.OnEditValueChanged = cxAgentLCMBPropertiesEditValueChanged
      EditValue = 0
      Style.Color = 16247513
      TabOrder = 2
      Width = 177
    end
    object cxCurrencyLCMB: TcxLookupComboBox
      Left = 525
      Top = 9
      Properties.DropDownListStyle = lsEditList
      Properties.KeyFieldNames = 'currencies_id'
      Properties.ListColumns = <
        item
          FieldName = 'currencycode'
        end>
      Properties.ListSource = BackOfficeDataModule.CurrenciesDS
      Properties.ValidateOnEnter = False
      Properties.OnEditValueChanged = cxCurrencyLCMBPropertiesEditValueChanged
      EditValue = 0
      Style.Color = 16247513
      TabOrder = 3
      OnKeyPress = cxWefLCMBKeyPress
      Width = 70
    end
  end
  inherited MasterSDS: TSQLDataSet
    CommandText = 
      'SELECT * FROM FixedItinCosts '#13#10'WHERE FixedItin_id = :FixedItin_i' +
      'd'#13#10'AND Wef = :wef'#13#10'AND PrincipalAgents_id = :Addressbook_id'#13#10'AND' +
      ' Currencies_id = :Currencies_id'
    CommandType = ctQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'FixedItin_id'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'wef'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Addressbook_id'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Currencies_id'
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
    object MasterCdsFixedItinCosts_id: TIntegerField
      FieldName = 'FixedItinCosts_id'
    end
    object MasterCdsFixedItin_id: TIntegerField
      FieldName = 'FixedItin_id'
    end
    object MasterCdsWef: TSQLTimeStampField
      FieldName = 'Wef'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object MasterCdsWet: TSQLTimeStampField
      FieldName = 'Wet'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object MasterCdsFromPax: TIntegerField
      FieldName = 'FromPax'
    end
    object MasterCdsToPax: TIntegerField
      FieldName = 'ToPax'
    end
    object MasterCdsCost: TFMTBCDField
      FieldName = 'Cost'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object MasterCdsCostSS: TFMTBCDField
      FieldName = 'CostSS'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object MasterCdsCurrencies_id: TIntegerField
      FieldName = 'Currencies_id'
    end
    object MasterCdsPrincipalAgents_id: TIntegerField
      FieldName = 'PrincipalAgents_id'
    end
  end
  object WefSds: TSQLDataSet
    CommandText = 'select distinct wef from FixedItinCosts order by wef desc'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 56
    Top = 19
  end
  object WefDsp: TDataSetProvider
    DataSet = WefSds
    Left = 72
    Top = 19
  end
  object WefCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'WefDsp'
    Left = 80
    Top = 19
    object WefCdswef: TSQLTimeStampField
      FieldName = 'wef'
      DisplayFormat = 'dd/mm/yyyy'
    end
  end
  object WefDS: TDataSource
    DataSet = WefCds
    Left = 96
    Top = 19
  end
  object PrinAgentSds: TSQLDataSet
    CommandText = 'select * from dbo.fn_addressbook(2,'#39'OA'#39')'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 368
    Top = 24
  end
  object PrinAgentDsp: TDataSetProvider
    DataSet = PrinAgentSds
    Left = 384
    Top = 24
  end
  object PrinAgentCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PrinAgentDsp'
    Left = 400
    Top = 24
    object IntegerField3: TIntegerField
      FieldName = 'Addressbook_id'
    end
    object StringField4: TStringField
      FieldName = 'Organisation'
      Size = 254
    end
    object StringField5: TStringField
      FieldName = 'City'
      Size = 100
    end
  end
  object PrinAgentDS: TDataSource
    DataSet = PrinAgentCds
    Left = 416
    Top = 24
  end
  object PopupMenu1: TPopupMenu
    Left = 128
    Top = 260
    object ChangeCostSSforall1: TMenuItem
      Caption = 'Change Cost SS for all based on current record'
      OnClick = ChangeCostSSforall1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object ChangeWetforall1: TMenuItem
      Caption = 'Change Wet for all based on current record'
      OnClick = ChangeWetforall1Click
    end
  end
end
