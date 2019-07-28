inherited TrialBalanceForm: TTrialBalanceForm
  Height = 514
  Caption = 'TrialBalanceForm'
  FormStyle = fsNormal
  OldCreateOrder = True
  Visible = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited GroupBox1: TcxGroupBox
    Top = 70
    TabOrder = 1
    Height = 369
    inherited CustomMasterCxGrid: TcxGrid
      Height = 348
      inherited CustomMasterCxGridDBTableView1: TcxGridDBTableView
        DataController.DetailKeyFieldNames = 'AccountHeads_id'
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '#,##0.00'
            Kind = skSum
            Column = CustomMasterCxGridDBTableView1Db
          end
          item
            Format = '#,##0.00'
            Kind = skSum
            Column = CustomMasterCxGridDBTableView1Cr
          end
          item
            Format = '#,##0.00'
            Kind = skSum
            Column = CustomMasterCxGridDBTableView1ForexDb
          end
          item
            Format = '#,##0.00'
            Kind = skSum
            Column = CustomMasterCxGridDBTableView1ForexCr
          end>
        OptionsView.Footer = True
        OptionsView.Indicator = True
        Styles.Background = nil
        Styles.Header = nil
        object CustomMasterCxGridDBTableView1AccountHeadsNo: TcxGridDBColumn
          Caption = 'Accounts'
          DataBinding.FieldName = 'AccountHeadsNo'
          SortIndex = 0
          SortOrder = soAscending
          Width = 80
        end
        object CustomMasterCxGridDBTableView1Description: TcxGridDBColumn
          DataBinding.FieldName = 'Description'
          Width = 175
        end
        object CustomMasterCxGridDBTableView1Folio: TcxGridDBColumn
          DataBinding.FieldName = 'Folio'
          Width = 152
        end
        object CustomMasterCxGridDBTableView1Db: TcxGridDBColumn
          Caption = 'Debit'
          DataBinding.FieldName = 'Db'
          Width = 83
        end
        object CustomMasterCxGridDBTableView1Cr: TcxGridDBColumn
          Caption = 'Credit'
          DataBinding.FieldName = 'Cr'
          Width = 75
        end
        object CustomMasterCxGridDBTableView1ForexDb: TcxGridDBColumn
          Caption = 'Forex Debit'
          DataBinding.FieldName = 'ForexDb'
          Width = 93
        end
        object CustomMasterCxGridDBTableView1ForexCr: TcxGridDBColumn
          Caption = 'Forex Credit'
          DataBinding.FieldName = 'ForexCr'
          Width = 95
        end
      end
    end
  end
  inherited Panel1: TPanel
    Top = 439
    TabOrder = 2
    inherited KeyIdDbText: TDBText
      Left = 166
      Top = 11
      DataSource = nil
      Visible = False
    end
    inherited SearchLbl: TcxLabel
      Visible = False
    end
    inherited SearchEdit: TcxTextEdit
      TabOrder = 2
      Visible = False
    end
    inherited CloseBtn: TcxButton
      TabOrder = 3
      Visible = False
    end
    object OkBB: TBitBtn
      Left = 275
      Top = 8
      Width = 87
      Height = 27
      Caption = 'OK'
      ModalResult = 1
      TabOrder = 0
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object CancelBB: TBitBtn
      Left = 499
      Top = 8
      Width = 87
      Height = 27
      TabOrder = 1
      Kind = bkCancel
    end
  end
  inherited Panel2: TPanel
    Height = 70
    Color = 15451300
    TabOrder = 0
    object Label1: TLabel
      Left = 19
      Top = 14
      Width = 48
      Height = 13
      Caption = 'Account'
    end
    object AccEdit: TcxTextEdit
      Left = 79
      Top = 10
      Properties.OnEditValueChanged = AccEditPropertiesEditValueChanged
      Style.Color = 16247513
      TabOrder = 1
      OnExit = AccEditExit
      OnKeyPress = AccEditKeyPress
      Width = 154
    end
    object DescChk: TcxCheckBox
      Left = 12
      Top = 38
      Caption = 'Description'
      Properties.OnChange = DescChkPropertiesChange
      TabOrder = 2
      Width = 90
    end
    object cxGroupBox1: TcxGroupBox
      Left = 326
      Top = 5
      Caption = 'Date Range'
      TabOrder = 0
      Height = 56
      Width = 424
      object Label2: TLabel
        Left = 29
        Top = 29
        Width = 28
        Height = 13
        Caption = 'From'
        Transparent = True
      end
      object Label3: TLabel
        Left = 230
        Top = 29
        Width = 16
        Height = 13
        Caption = 'To'
        Transparent = True
      end
      object ToDateEdit: TcxDateEdit
        Left = 265
        Top = 25
        EditValue = 36892d
        Properties.OnEditValueChanged = ToDateEditPropertiesEditValueChanged
        Style.Color = 16247513
        TabOrder = 1
        Width = 121
      end
      object FromDateEdit: TcxDateEdit
        Left = 75
        Top = 25
        EditValue = 36526d
        Properties.OnEditValueChanged = FromDateEditPropertiesEditValueChanged
        Style.Color = 16247513
        TabOrder = 0
        Width = 121
      end
    end
  end
  inherited MasterSDS: TSQLDataSet
    CommandText = 
      'SELECT AH.AccountHeadsNo, AH.Description, F.Folio, '#13#10' CASE WHEN ' +
      'SUM(L.Debit-L.Credit)>0 THEN SUM(L.Debit-L.Credit) ELSE 0 END AS' +
      ' Db, '#13#10' CASE WHEN SUM(L.Debit-L.Credit)<0 THEN SUM(L.Credit-L.De' +
      'bit) ELSE 0 END AS Cr, '#13#10' CASE WHEN SUM(L.ForexDebit-L.ForexCred' +
      'it)>0 THEN SUM(L.ForexDebit-L.ForexCredit) ELSE 0 END AS ForexDb' +
      ', '#13#10' CASE WHEN SUM(L.ForexDebit-L.ForexCredit)<0 THEN SUM(L.Fore' +
      'xCredit-L.ForexDebit) ELSE 0 END AS ForexCr,'#13#10' C.name,A.Companie' +
      's_id, AH.AccountHeads_id '#13#10' FROM (((Accounts A LEFT JOIN '#13#10' Ledg' +
      'ers L ON A.Accounts_id = L.Accounts_id) '#13#10' LEFT JOIN AccountHead' +
      's AH ON L.AccountHeads_id = AH.AccountHeads_id)'#13#10' LEFT JOIN Comp' +
      'anies C ON A.Companies_id = C.Companies_id) '#13#10' LEFT JOIN Folios ' +
      'F ON AH.Folios_id = F.Folios_id '#13#10' GROUP BY A.Companies_id, C.na' +
      'me, AH.AccountHeadsNo, AH.Description,F.Folio,'#13#10' AH.AccountHeads' +
      '_id'
    CommandType = ctQuery
    Top = 132
  end
  inherited DataSetProvider: TDataSetProvider
    Top = 132
  end
  inherited MasterDS: TDataSource
    Left = 144
    Top = 132
  end
  inherited MasterCds: TClientDataSet
    Left = 112
    Top = 132
    object MasterCdsAccountHeadsNo: TIntegerField
      FieldName = 'AccountHeadsNo'
    end
    object MasterCdsDescription: TStringField
      FieldName = 'Description'
      Size = 50
    end
    object MasterCdsFolio: TStringField
      FieldName = 'Folio'
      Size = 50
    end
    object MasterCdsDb: TFMTBCDField
      FieldName = 'Db'
      DisplayFormat = '#,##0.00'
      Precision = 32
      Size = 2
    end
    object MasterCdsCr: TFMTBCDField
      FieldName = 'Cr'
      DisplayFormat = '#,##0.00'
      Precision = 32
      Size = 2
    end
    object MasterCdsForexDb: TFMTBCDField
      FieldName = 'ForexDb'
      DisplayFormat = '#,##0.00'
      Precision = 32
      Size = 2
    end
    object MasterCdsForexCr: TFMTBCDField
      FieldName = 'ForexCr'
      DisplayFormat = '#,##0.00'
      Precision = 32
      Size = 2
    end
    object MasterCdsname: TStringField
      FieldName = 'name'
      Size = 50
    end
    object MasterCdsCompanies_id: TIntegerField
      FieldName = 'Companies_id'
    end
    object MasterCdsAccountHeads_id: TIntegerField
      FieldName = 'AccountHeads_id'
    end
  end
end
