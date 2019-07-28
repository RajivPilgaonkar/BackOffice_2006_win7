inherited FitMarginQuoForm: TFitMarginQuoForm
  Left = 150
  Top = 140
  Width = 705
  Height = 534
  Caption = 'FIT Margins'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited GroupBox1: TcxGroupBox
    Top = 61
    TabOrder = 1
    Height = 398
    Width = 697
    inherited CustomMasterCxGrid: TcxGrid
      Width = 691
      Height = 377
      inherited CustomMasterCxGridDBTableView1: TcxGridDBTableView
        DataController.KeyFieldNames = 'FitMarginQuotations_id'
        OptionsData.Appending = False
        OptionsData.Deleting = False
        OptionsData.Inserting = False
        OptionsView.Indicator = True
        Styles.Background = nil
        Styles.Header = nil
        object CustomMasterCxGridDBTableView1FitMargins_id: TcxGridDBColumn
          DataBinding.FieldName = 'FitMargins_id'
          Visible = False
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
        end
        object CustomMasterCxGridDBTableView1OrderNo: TcxGridDBColumn
          Caption = 'Order No'
          DataBinding.FieldName = 'OrderNo'
          Options.Filtering = False
          Options.Grouping = False
          SortIndex = 0
          SortOrder = soAscending
          Width = 67
        end
        object CustomMasterCxGridDBTableView1TrsType: TcxGridDBColumn
          DataBinding.FieldName = 'TrsType'
          Visible = False
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
        end
        object CustomMasterCxGridDBTableView1TrsTypeDesc: TcxGridDBColumn
          Caption = 'Type'
          DataBinding.FieldName = 'TrsTypeDesc'
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Width = 199
        end
        object CustomMasterCxGridDBTableView1Tickets_id: TcxGridDBColumn
          Caption = 'Ticket'
          DataBinding.FieldName = 'Tickets_id'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'Tickets_id'
          Properties.ListColumns = <
            item
              FieldName = 'Details'
            end>
          Properties.ListSource = TicketDs
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
        end
        object CustomMasterCxGridDBTableView1Margin: TcxGridDBColumn
          DataBinding.FieldName = 'Margin'
          Options.Filtering = False
          Options.Grouping = False
          Width = 74
        end
        object CustomMasterCxGridDBTableView1FromAmt: TcxGridDBColumn
          Caption = 'From Amt'
          DataBinding.FieldName = 'FromAmt'
          Options.Filtering = False
          Options.Grouping = False
          Width = 112
        end
        object CustomMasterCxGridDBTableView1ToAmt: TcxGridDBColumn
          Caption = 'To Amt'
          DataBinding.FieldName = 'ToAmt'
          Options.Filtering = False
          Options.Grouping = False
          Width = 114
        end
      end
    end
  end
  inherited Panel1: TPanel
    Top = 459
    Width = 697
    TabOrder = 2
    inherited KeyIdDbText: TDBText
      Left = 533
      Top = 15
      DataField = 'FitMarginQuotations_id'
    end
    inherited SearchLbl: TcxLabel
      Visible = False
    end
    inherited SearchEdit: TcxTextEdit
      Visible = False
    end
    inherited CloseBtn: TcxButton
      Left = 609
      Top = 7
    end
  end
  inherited Panel2: TPanel
    Width = 697
    Height = 61
    TabOrder = 0
  end
  inherited MasterSDS: TSQLDataSet
    CommandText = 'FitMarginQuotations'
    Top = 144
  end
  inherited DataSetProvider: TDataSetProvider
    Left = 64
    Top = 144
  end
  inherited MasterDS: TDataSource
    Left = 80
    Top = 144
  end
  inherited MasterCds: TClientDataSet
    Left = 88
    Top = 144
    object MasterCdsFitMarginQuotations_id: TIntegerField
      FieldName = 'FitMarginQuotations_id'
    end
    object MasterCdsQuotations_id: TIntegerField
      FieldName = 'Quotations_id'
    end
    object MasterCdsTrsType: TIntegerField
      FieldName = 'TrsType'
    end
    object MasterCdsTrsTypeDesc: TStringField
      FieldName = 'TrsTypeDesc'
      Size = 50
    end
    object MasterCdsTickets_id: TIntegerField
      FieldName = 'Tickets_id'
    end
    object MasterCdsMargin: TFMTBCDField
      FieldName = 'Margin'
      DisplayFormat = '#,##0.00%'
      Precision = 18
      Size = 4
    end
    object MasterCdsFromAmt: TFMTBCDField
      FieldName = 'FromAmt'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object MasterCdsToAmt: TFMTBCDField
      FieldName = 'ToAmt'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object MasterCdsOrderNo: TIntegerField
      FieldName = 'OrderNo'
    end
  end
  object TicketSds: TSQLDataSet
    CommandText = 
      'select Tickets_id, Details'#13#10'from Tickets'#13#10'where Tickets_id > 0'#13#10 +
      'order by Tickets_id'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 312
    Top = 16
  end
  object TicketDsp: TDataSetProvider
    DataSet = TicketSds
    Left = 328
    Top = 16
  end
  object TicketCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'TicketDsp'
    Left = 344
    Top = 16
    object TicketCdsTickets_id: TIntegerField
      FieldName = 'Tickets_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TicketCdsDetails: TStringField
      FieldName = 'Details'
      Size = 15
    end
  end
  object TicketDs: TDataSource
    DataSet = TicketCds
    Left = 360
    Top = 16
  end
end
