inherited MktReceipts2Form: TMktReceipts2Form
  Left = 245
  Top = 58
  Caption = 'Marketing Receipts'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Splitter1: TSplitter
    Top = 181
    Height = 6
  end
  inherited Panel2: TPanel
    inherited cxDBLabelKeyId_Detail: TcxDBLabel
      DataBinding.DataField = 'MktReceiptDetails_id'
    end
    inherited cxDBLabelKeyId_Master: TcxDBLabel
      DataBinding.DataField = 'MktReceipts_id'
    end
    inherited cxDBLabelKeyId_SubDetail: TcxDBLabel
      DataBinding.DataField = 'MktReceiptDeductions_id'
      DataBinding.DataSource = SubDetailDs
    end
  end
  inherited Panel3: TPanel
    Height = 140
    inherited cxPageControl1: TcxPageControl
      Left = 9
      Height = 144
      Align = alNone
      ClientRectBottom = 144
      inherited cxTabSheet1: TcxTabSheet
        Caption = 'Receipts'
        object cxLabel1: TcxLabel
          Left = 6
          Top = 2
          Caption = 'Entry No.'
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 81
          Top = 1
          DataBinding.DataField = 'EntryNo'
          DataBinding.DataSource = MasterDs
          TabOrder = 1
          Width = 120
        end
        object cxLabel2: TcxLabel
          Left = 240
          Top = 2
          Caption = 'Dated'
        end
        object cxDBDateEdit1: TcxDBDateEdit
          Left = 318
          Top = 1
          DataBinding.DataField = 'ReceiptDate'
          DataBinding.DataSource = MasterDs
          TabOrder = 3
          Width = 121
        end
        object cxLabel3: TcxLabel
          Left = 6
          Top = 23
          Caption = 'Bank'
        end
        object cxDBLookupComboBox2: TcxDBLookupComboBox
          Left = 82
          Top = 22
          DataBinding.DataField = 'Accounts1_id'
          DataBinding.DataSource = MasterDs
          Properties.KeyFieldNames = 'Accounts_id'
          Properties.ListColumns = <
            item
              FieldName = 'Account'
            end>
          Properties.ListSource = BankDs
          TabOrder = 5
          Width = 357
        end
        object cxLabel4: TcxLabel
          Left = 6
          Top = 44
          Caption = 'Cheque No'
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 82
          Top = 43
          DataBinding.DataField = 'ChequeNo'
          DataBinding.DataSource = MasterDs
          TabOrder = 7
          Width = 119
        end
        object cxLabel5: TcxLabel
          Left = 240
          Top = 44
          Caption = 'Cheque Date'
        end
        object cxDBDateEdit2: TcxDBDateEdit
          Left = 318
          Top = 43
          DataBinding.DataField = 'ChequeDate'
          DataBinding.DataSource = MasterDs
          TabOrder = 9
          Width = 121
        end
        object cxLabel6: TcxLabel
          Left = 455
          Top = 44
          Caption = 'Bank Details'
        end
        object cxDBTextEdit3: TcxDBTextEdit
          Left = 536
          Top = 43
          DataBinding.DataField = 'ChequeDetails'
          DataBinding.DataSource = MasterDs
          TabOrder = 11
          Width = 119
        end
        object cxLabel7: TcxLabel
          Left = 681
          Top = 44
          Caption = 'Type'
        end
        object cxLabel8: TcxLabel
          Left = 6
          Top = 65
          Caption = 'Cheque Amt'
        end
        object cxDBTextEdit4: TcxDBTextEdit
          Left = 82
          Top = 64
          DataBinding.DataField = 'ChequeAmount'
          DataBinding.DataSource = MasterDs
          Properties.ReadOnly = True
          Style.Color = 15263976
          TabOrder = 14
          Width = 119
        end
        object cxLabel9: TcxLabel
          Left = 240
          Top = 63
          Caption = 'Invoice Amt'
        end
        object cxDBTextEdit5: TcxDBTextEdit
          Left = 318
          Top = 64
          DataBinding.DataField = 'InvoiceAmount'
          DataBinding.DataSource = MasterDs
          Properties.ReadOnly = True
          Style.Color = 15263976
          TabOrder = 16
          Width = 121
        end
        object cxLabel10: TcxLabel
          Left = 455
          Top = 65
          Caption = 'Deductions'
        end
        object cxDBTextEdit6: TcxDBTextEdit
          Left = 537
          Top = 64
          DataBinding.DataField = 'DeductionAmount'
          DataBinding.DataSource = MasterDs
          Properties.ReadOnly = True
          Style.Color = 15263976
          TabOrder = 18
          Width = 119
        end
        object cxDBTextEdit7: TcxDBTextEdit
          Left = 82
          Top = 85
          DataBinding.DataField = 'ExchRate'
          DataBinding.DataSource = MasterDs
          TabOrder = 19
          Width = 119
        end
        object cxLabel11: TcxLabel
          Left = 6
          Top = 86
          Caption = 'Exch Rate'
        end
        object cxDBComboBox1: TcxDBComboBox
          Left = 714
          Top = 44
          DataBinding.DataField = 'ChequeType'
          DataBinding.DataSource = MasterDs
          Properties.Items.Strings = (
            'Chq'
            'DD'
            'RTGS'
            'Cash'
            'Others')
          TabOrder = 21
          Width = 121
        end
        object cxDBNavigator1: TcxDBNavigator
          Left = 539
          Top = 88
          Width = 300
          Height = 25
          Buttons.PriorPage.Visible = False
          Buttons.NextPage.Visible = False
          Buttons.Append.Visible = False
          Buttons.SaveBookmark.Visible = False
          Buttons.GotoBookmark.Visible = False
          Buttons.Filter.Visible = False
          DataSource = MasterDs
          TabOrder = 22
        end
        object cxDBLabel1: TcxDBLabel
          Left = 640
          Top = 2
          DataBinding.DataField = 'VoucherRef'
          DataBinding.DataSource = VoucherRefDs
          ParentColor = False
          Properties.Alignment.Horz = taCenter
          Style.Color = clActiveBorder
          Height = 21
          Width = 249
        end
      end
    end
  end
  inherited Panel4: TPanel
    Top = 187
    Height = 397
    inherited Splitter2: TSplitter
      Left = 631
      Height = 395
    end
    inherited cxPageControl2: TcxPageControl
      Width = 630
      Height = 395
      ClientRectBottom = 395
      ClientRectRight = 630
      inherited cxTabSheet2: TcxTabSheet
        Caption = 'Allocation'
        inherited cxGrid1: TcxGrid
          Width = 630
          Height = 371
          inherited cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
            DataController.KeyFieldNames = 'MktReceiptDetails_id'
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '#,##0.00'
                Kind = skSum
                Column = cxGrid1DBBandedTableView1InvoiceAmount
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                Column = cxGrid1DBBandedTableView1DeductionAmount
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                Column = cxGrid1DBBandedTableView1DiffAmt
              end>
            OptionsView.Footer = True
            object cxGrid1DBBandedTableView1MktReceiptDetails_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'MktReceiptDetails_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1MktReceipts_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'MktReceipts_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1divisions_id: TcxGridDBBandedColumn
              Caption = 'Division'
              DataBinding.FieldName = 'divisions_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.DropDownWidth = 100
              Properties.KeyFieldNames = 'Divisions_id'
              Properties.ListColumns = <
                item
                  FieldName = 'Division'
                end>
              Properties.ListSource = DivisionDs
              Width = 57
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1ReceiptTypes_id: TcxGridDBBandedColumn
              Caption = 'Type'
              DataBinding.FieldName = 'ReceiptTypes_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.DropDownWidth = 200
              Properties.KeyFieldNames = 'ReceiptTypes_id'
              Properties.ListColumns = <
                item
                  FieldName = 'ReceiptType'
                end>
              Properties.ListSource = ReceiptTypeDs
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1Accounts_id: TcxGridDBBandedColumn
              Caption = 'Cust Code'
              DataBinding.FieldName = 'Accounts_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.DropDownWidth = 600
              Properties.KeyFieldNames = 'Accounts_id'
              Properties.ListColumns = <
                item
                  Caption = 'Cust Code'
                  MinWidth = 100
                  FieldName = 'PlantCustNo'
                end
                item
                  MinWidth = 500
                  FieldName = 'Account'
                end>
              Properties.ListSource = AccountsDs
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1InvoiceNo: TcxGridDBBandedColumn
              Caption = 'Inv No.'
              DataBinding.FieldName = 'InvoiceNo'
              Width = 62
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1InvoiceDate: TcxGridDBBandedColumn
              Caption = 'Inv Date'
              DataBinding.FieldName = 'InvoiceDate'
              Width = 75
              Position.BandIndex = 0
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1InvoiceAmount: TcxGridDBBandedColumn
              Caption = 'Recd Amt'
              DataBinding.FieldName = 'InvoiceAmount'
              Width = 101
              Position.BandIndex = 0
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1DeductionAmount: TcxGridDBBandedColumn
              Caption = 'Ded Amt'
              DataBinding.FieldName = 'DeductionAmount'
              Width = 85
              Position.BandIndex = 0
              Position.ColIndex = 8
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1CustCode: TcxGridDBBandedColumn
              DataBinding.FieldName = 'CustCode'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 9
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1TotalInvoiceAmount: TcxGridDBBandedColumn
              Caption = 'Inv Amt'
              DataBinding.FieldName = 'TotalInvoiceAmount'
              Width = 122
              Position.BandIndex = 0
              Position.ColIndex = 10
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1DiffAmt: TcxGridDBBandedColumn
              Caption = 'Diff Amt'
              DataBinding.FieldName = 'DiffAmount'
              Position.BandIndex = 0
              Position.ColIndex = 11
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1InvAmt_Curr: TcxGridDBBandedColumn
              Caption = 'Inv Amt (FC)'
              DataBinding.FieldName = 'InvAmt_Curr'
              Width = 96
              Position.BandIndex = 0
              Position.ColIndex = 12
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1OldExchRate: TcxGridDBBandedColumn
              Caption = 'Prev Exch Rate'
              DataBinding.FieldName = 'OldExchRate'
              Width = 100
              Position.BandIndex = 0
              Position.ColIndex = 13
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1Remarks: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Remarks'
              Width = 150
              Position.BandIndex = 0
              Position.ColIndex = 14
              Position.RowIndex = 0
            end
          end
        end
      end
    end
    inherited cxPageControl3: TcxPageControl
      Left = 636
      Width = 268
      Height = 395
      ClientRectBottom = 395
      ClientRectRight = 268
      inherited cxTabSheet3: TcxTabSheet
        Caption = 'Deductions'
        inherited cxGrid2: TcxGrid
          Width = 268
          Height = 371
          inherited cxGridDBBandedTableView1: TcxGridDBBandedTableView
            DataController.DataSource = SubDetailDs
            DataController.KeyFieldNames = 'MktReceiptDeductions_id'
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '#,##0.00'
                Kind = skSum
                Column = cxGridDBBandedTableView1DeductionAmount
              end>
            OptionsView.Footer = True
            object cxGridDBBandedTableView1MktReceiptDeductions_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'MktReceiptDeductions_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1MktReceiptDetails_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'MktReceiptDetails_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1ReceiptDeductionTypes_id: TcxGridDBBandedColumn
              Caption = 'Account'
              DataBinding.FieldName = 'ReceiptDeductionTypes_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'ReceiptDeductionTypes_id'
              Properties.ListColumns = <
                item
                  FieldName = 'Account'
                end>
              Properties.ListSource = ReceiptDeductionTypeDs
              Width = 158
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1DeductionAmount: TcxGridDBBandedColumn
              Caption = 'Deduct Amt'
              DataBinding.FieldName = 'DeductionAmount'
              Width = 78
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
          end
        end
      end
    end
  end
  inherited MasterSds: TSQLDataSet
    CommandText = 
      'SELECT * FROM MktReceipts'#13#10'WHERE Divisions_id = :Divisions_id'#13#10'A' +
      'ND ReceiptDate BETWEEN :FromDate AND :ToDate'#13#10'ORDER BY EntryNo'#13#10
    CommandType = ctQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'Divisions_id'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'FromDate'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'ToDate'
        ParamType = ptInput
      end>
  end
  inherited MasterCds: TClientDataSet
    object MasterCdsMktReceipts_id: TIntegerField
      FieldName = 'MktReceipts_id'
    end
    object MasterCdsReceiptDate: TSQLTimeStampField
      FieldName = 'ReceiptDate'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object MasterCdsCustCode: TStringField
      FieldName = 'CustCode'
      Size = 10
    end
    object MasterCdsAccounts1_id: TIntegerField
      FieldName = 'Accounts1_id'
    end
    object MasterCdsChequeNo: TIntegerField
      FieldName = 'ChequeNo'
    end
    object MasterCdsChequeDate: TSQLTimeStampField
      FieldName = 'ChequeDate'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object MasterCdsChequeDetails: TStringField
      FieldName = 'ChequeDetails'
      Size = 50
    end
    object MasterCdsChequeAmount: TFMTBCDField
      FieldName = 'ChequeAmount'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object MasterCdsInvoiceAmount: TFMTBCDField
      FieldName = 'InvoiceAmount'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object MasterCdsDeductionAmount: TFMTBCDField
      FieldName = 'DeductionAmount'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object MasterCdsEntryNo: TIntegerField
      FieldName = 'EntryNo'
    end
    object MasterCdsDivisions_id: TIntegerField
      FieldName = 'Divisions_id'
    end
    object MasterCdsstatus: TIntegerField
      FieldName = 'status'
    end
    object MasterCdsChequeType: TStringField
      FieldName = 'ChequeType'
      Size = 3
    end
    object MasterCdsClientStatus: TIntegerField
      FieldName = 'ClientStatus'
    end
    object MasterCdsUnidentified: TIntegerField
      FieldName = 'Unidentified'
    end
    object MasterCdsNewMktReceipts_id: TIntegerField
      FieldName = 'NewMktReceipts_id'
    end
    object MasterCdsExchRate: TFMTBCDField
      FieldName = 'ExchRate'
      DisplayFormat = '#,##0.0000'
      Precision = 18
      Size = 4
    end
    object MasterCdsBounced: TBooleanField
      FieldName = 'Bounced'
    end
  end
  inherited DetailSds: TSQLDataSet
    CommandText = 
      'SELECT * FROM MktReceiptDetails'#13#10'WHERE MktReceipts_id = :MktRece' +
      'ipts_id'#13#10
    DataSource = MasterDs
    Params = <
      item
        DataType = ftInteger
        Name = 'MktReceipts_id'
        ParamType = ptInput
        Size = 4
      end>
  end
  inherited DetailCds: TClientDataSet
    IndexFieldNames = 'MktReceipts_id'
    MasterFields = 'MktReceipts_id'
    MasterSource = MasterDs
    PacketRecords = 0
    object DetailCdsMktReceiptDetails_id: TIntegerField
      FieldName = 'MktReceiptDetails_id'
    end
    object DetailCdsMktReceipts_id: TIntegerField
      FieldName = 'MktReceipts_id'
    end
    object DetailCdsInvoiceNo: TIntegerField
      FieldName = 'InvoiceNo'
    end
    object DetailCdsInvoiceDate: TSQLTimeStampField
      FieldName = 'InvoiceDate'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object DetailCdsInvoiceAmount: TFMTBCDField
      FieldName = 'InvoiceAmount'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object DetailCdsDeductionAmount: TFMTBCDField
      FieldName = 'DeductionAmount'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object DetailCdsReceiptTypes_id: TIntegerField
      FieldName = 'ReceiptTypes_id'
    end
    object DetailCdsdivisions_id: TIntegerField
      FieldName = 'divisions_id'
    end
    object DetailCdsCustCode: TStringField
      FieldName = 'CustCode'
      Size = 10
    end
    object DetailCdsAccounts_id: TIntegerField
      FieldName = 'Accounts_id'
    end
    object DetailCdsTotalInvoiceAmount: TFMTBCDField
      FieldName = 'TotalInvoiceAmount'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object DetailCdsRemarks: TStringField
      FieldName = 'Remarks'
      Size = 200
    end
    object DetailCdsSettled: TBooleanField
      FieldName = 'Settled'
    end
    object DetailCdsOriginalInvoiceAmount: TFMTBCDField
      FieldName = 'OriginalInvoiceAmount'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object DetailCdsInvAmt_Curr: TFMTBCDField
      FieldName = 'InvAmt_Curr'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object DetailCdsOldExchRate: TFMTBCDField
      FieldName = 'OldExchRate'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object DetailCdsDiffAmount: TFloatField
      FieldKind = fkCalculated
      FieldName = 'DiffAmount'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
  end
  inherited SubDetailSds: TSQLDataSet
    CommandText = 
      'SELECT * FROM MktReceiptDeductions'#13#10'WHERE MktReceiptDetails_id =' +
      ' :MktReceiptDetails_id'#13#10
    DataSource = DetailDs
    Params = <
      item
        DataType = ftInteger
        Name = 'MktReceiptDetails_id'
        ParamType = ptInput
        Size = 4
      end>
  end
  inherited SubDetailCds: TClientDataSet
    IndexFieldNames = 'MktReceiptDetails_id'
    MasterFields = 'MktReceiptDetails_id'
    MasterSource = DetailDs
    PacketRecords = 0
    object SubDetailCdsMktReceiptDeductions_id: TIntegerField
      FieldName = 'MktReceiptDeductions_id'
    end
    object SubDetailCdsMktReceiptDetails_id: TIntegerField
      FieldName = 'MktReceiptDetails_id'
    end
    object SubDetailCdsDeductionAmount: TFMTBCDField
      FieldName = 'DeductionAmount'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object SubDetailCdsReceiptDeductionTypes_id: TIntegerField
      FieldName = 'ReceiptDeductionTypes_id'
    end
  end
  object DivisionSds: TSQLDataSet
    CommandText = 
      'SELECT Divisions_id, Division'#13#10'FROM Divisions'#13#10'ORDER BY Division' +
      's_id'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = AccountsDataModule.SQLConnection
    Left = 24
    Top = 408
  end
  object DivisionDsp: TDataSetProvider
    DataSet = DivisionSds
    UpdateMode = upWhereKeyOnly
    Left = 54
    Top = 408
  end
  object DivisionCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DivisionDsp'
    BeforeInsert = DetailCdsBeforeInsert
    BeforeEdit = DetailCdsBeforeEdit
    BeforePost = DetailCdsBeforePost
    AfterPost = DetailCdsAfterPost
    BeforeDelete = DetailCdsBeforeDelete
    AfterDelete = DetailCdsAfterDelete
    Left = 87
    Top = 408
    object DivisionCdsDivisions_id: TIntegerField
      FieldName = 'Divisions_id'
    end
    object DivisionCdsDivision: TStringField
      FieldName = 'Division'
      Size = 100
    end
  end
  object DivisionDs: TDataSource
    DataSet = DivisionCds
    Left = 117
    Top = 408
  end
  object ReceiptTypeSds: TSQLDataSet
    CommandText = 'SELECT * FROM ReceiptTypes'#13#10'ORDER BY ReceiptTypes_id'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = AccountsDataModule.SQLConnection
    Left = 24
    Top = 368
  end
  object ReceiptTypeDsp: TDataSetProvider
    DataSet = ReceiptTypeSds
    UpdateMode = upWhereKeyOnly
    Left = 54
    Top = 368
  end
  object ReceiptTypeCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ReceiptTypeDsp'
    BeforeInsert = DetailCdsBeforeInsert
    BeforeEdit = DetailCdsBeforeEdit
    BeforePost = DetailCdsBeforePost
    AfterPost = DetailCdsAfterPost
    BeforeDelete = DetailCdsBeforeDelete
    AfterDelete = DetailCdsAfterDelete
    Left = 87
    Top = 368
    object ReceiptTypeCdsReceiptTypes_id: TIntegerField
      FieldName = 'ReceiptTypes_id'
    end
    object ReceiptTypeCdsReceiptType: TStringField
      FieldName = 'ReceiptType'
      Size = 50
    end
  end
  object ReceiptTypeDs: TDataSource
    DataSet = ReceiptTypeCds
    Left = 117
    Top = 368
  end
  object AccountsSds: TSQLDataSet
    CommandText = 
      'SELECT c.PlantCustNo, a.Accounts_id, a.Account'#13#10'FROM Accounts a ' +
      'INNER JOIN Customers c ON a.Accounts_id = c.Accounts_id'#13#10'ORDER B' +
      'Y c.PlantCustNo'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = AccountsDataModule.SQLConnection
    Left = 24
    Top = 328
  end
  object AccountsDsp: TDataSetProvider
    DataSet = AccountsSds
    UpdateMode = upWhereKeyOnly
    Left = 54
    Top = 328
  end
  object AccountsCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'AccountsDsp'
    BeforeInsert = DetailCdsBeforeInsert
    BeforeEdit = DetailCdsBeforeEdit
    BeforePost = DetailCdsBeforePost
    AfterPost = DetailCdsAfterPost
    BeforeDelete = DetailCdsBeforeDelete
    AfterDelete = DetailCdsAfterDelete
    Left = 87
    Top = 328
    object AccountsCdsAccounts_id: TIntegerField
      FieldName = 'Accounts_id'
    end
    object AccountsCdsAccount: TStringField
      FieldName = 'Account'
      Size = 100
    end
    object AccountsCdsPlantCustNo: TStringField
      FieldName = 'PlantCustNo'
      Size = 10
    end
  end
  object AccountsDs: TDataSource
    DataSet = AccountsCds
    Left = 117
    Top = 328
  end
  object ReceiptDeductionTypeSds: TSQLDataSet
    CommandText = 
      'SELECT r.ReceiptDeductionTypes_id, a.Accounts_id, a.Account'#13#10'FRO' +
      'M ReceiptDeductionTypes r LEFT JOIN Accounts a ON r.Accounts_id ' +
      '= a.Accounts_id'#13#10'ORDER BY a.Account'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = AccountsDataModule.SQLConnection
    Left = 16
    Top = 448
  end
  object ReceiptDeductionTypeDsp: TDataSetProvider
    DataSet = ReceiptDeductionTypeSds
    UpdateMode = upWhereKeyOnly
    Left = 46
    Top = 448
  end
  object ReceiptDeductionTypeCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ReceiptDeductionTypeDsp'
    BeforeInsert = DetailCdsBeforeInsert
    BeforeEdit = DetailCdsBeforeEdit
    BeforePost = DetailCdsBeforePost
    AfterPost = DetailCdsAfterPost
    BeforeDelete = DetailCdsBeforeDelete
    AfterDelete = DetailCdsAfterDelete
    Left = 79
    Top = 448
    object ReceiptDeductionTypeCdsReceiptDeductionTypes_id: TIntegerField
      FieldName = 'ReceiptDeductionTypes_id'
    end
    object ReceiptDeductionTypeCdsAccounts_id: TIntegerField
      FieldName = 'Accounts_id'
    end
    object ReceiptDeductionTypeCdsAccount: TStringField
      FieldName = 'Account'
      Size = 100
    end
  end
  object ReceiptDeductionTypeDs: TDataSource
    DataSet = ReceiptDeductionTypeCds
    Left = 109
    Top = 448
  end
  object BankSds: TSQLDataSet
    CommandText = 
      'SELECT Accounts_id, Account'#13#10'FROM Accounts'#13#10'WHERE AccountBookTyp' +
      'es_id = 1'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = AccountsDataModule.SQLConnection
    Left = 24
    Top = 288
  end
  object BankDsp: TDataSetProvider
    DataSet = BankSds
    UpdateMode = upWhereKeyOnly
    Left = 54
    Top = 288
  end
  object BankCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'BankDsp'
    BeforeInsert = DetailCdsBeforeInsert
    BeforeEdit = DetailCdsBeforeEdit
    BeforePost = DetailCdsBeforePost
    AfterPost = DetailCdsAfterPost
    BeforeDelete = DetailCdsBeforeDelete
    AfterDelete = DetailCdsAfterDelete
    Left = 87
    Top = 288
    object BankCdsAccounts_id: TIntegerField
      FieldName = 'Accounts_id'
    end
    object BankCdsAccount: TStringField
      FieldName = 'Account'
      Size = 100
    end
  end
  object BankDs: TDataSource
    DataSet = BankCds
    Left = 117
    Top = 288
  end
  object VoucherRefSds: TSQLDataSet
    CommandText = 
      'SELECT v.MktReceipts_id, '#13#10'vs.VoucherSeries + '#39' - Voucher No '#39' +' +
      ' LTRIM(RTRIM(CAST(v.VoucherNo As VARCHAR(5))))'#13#10'AS VoucherRef'#13#10'F' +
      'ROM Vouchers v '#13#10'LEFT JOIN VoucherSeries vs ON v.VoucherSeries_i' +
      'd = vs.VoucherSeries_id'#13#10'WHERE v.MktReceipts_id = :MktReceipts_i' +
      'd'
    DataSource = MasterDs
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'MktReceipts_id'
        ParamType = ptInput
      end>
    SQLConnection = AccountsDataModule.SQLConnection
    Left = 24
    Top = 248
  end
  object VoucherRefDsp: TDataSetProvider
    DataSet = VoucherRefSds
    UpdateMode = upWhereKeyOnly
    Left = 54
    Top = 248
  end
  object VoucherRefCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'MktReceipts_id'
    MasterFields = 'MktReceipts_id'
    MasterSource = MasterDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'VoucherRefDsp'
    BeforeInsert = DetailCdsBeforeInsert
    BeforeEdit = DetailCdsBeforeEdit
    BeforePost = DetailCdsBeforePost
    AfterPost = DetailCdsAfterPost
    BeforeDelete = DetailCdsBeforeDelete
    AfterDelete = DetailCdsAfterDelete
    Left = 87
    Top = 248
    object VoucherRefCdsMktReceipts_id: TIntegerField
      FieldName = 'MktReceipts_id'
    end
    object VoucherRefCdsVoucherRef: TStringField
      FieldName = 'VoucherRef'
      Size = 39
    end
  end
  object VoucherRefDs: TDataSource
    DataSet = VoucherRefCds
    Left = 117
    Top = 248
  end
end
