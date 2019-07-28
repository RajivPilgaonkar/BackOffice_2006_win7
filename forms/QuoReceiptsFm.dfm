inherited QuoReceiptsForm: TQuoReceiptsForm
  Left = 524
  Top = 108
  Width = 735
  Height = 484
  Caption = 'Receipts'
  FormStyle = fsNormal
  OldCreateOrder = True
  Visible = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 719
  end
  inherited Panel2: TPanel
    Top = 405
    Width = 719
    inherited cxButtonClose: TcxButton
      Left = 632
    end
    inherited cxDBLabelKeyId: TcxDBLabel
      Left = 556
      DataBinding.DataField = 'TransactionHDFCId'
    end
  end
  inherited Panel3: TPanel
    Width = 719
    Height = 364
    inherited cxPageControl1: TcxPageControl
      Width = 717
      Height = 362
      ClientRectBottom = 356
      ClientRectRight = 711
      inherited cxTabSheet1: TcxTabSheet
        Caption = 'Pymt Gateway Receipts'
        inherited cxGrid1: TcxGrid
          Width = 708
          Height = 330
          inherited cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
            DataController.KeyFieldNames = 'TransactionHDFCId'
            object cxGrid1DBBandedTableView1QuoReceipts_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'QuoReceipts_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1Quotations_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Quotations_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1RecdAmt: TcxGridDBBandedColumn
              Caption = 'Recd Amt'
              DataBinding.FieldName = 'RecdAmt'
              Width = 101
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1CurrencyOdyssseyCode: TcxGridDBBandedColumn
              Caption = 'Curr Code Odyssey'
              DataBinding.FieldName = 'CurrencyOdyssseyCode'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'currencies_id'
              Properties.ListColumns = <
                item
                  FieldName = 'currencycode'
                end>
              Properties.ListSource = CurrenciesDs
              Width = 100
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1CurrencyHdfcCode: TcxGridDBBandedColumn
              DataBinding.FieldName = 'CurrencyHdfcCode'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1AmountIsAdvance: TcxGridDBBandedColumn
              Caption = 'Advance'
              DataBinding.FieldName = 'AmountIsAdvance'
              Width = 84
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1PaymentTimeStamp: TcxGridDBBandedColumn
              Caption = 'Payment TimeStamp'
              DataBinding.FieldName = 'PaymentTimeStamp'
              Width = 177
              Position.BandIndex = 0
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1UploadId: TcxGridDBBandedColumn
              DataBinding.FieldName = 'UploadId'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1PaymentId: TcxGridDBBandedColumn
              DataBinding.FieldName = 'PaymentId'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 8
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1PaymentHDFCId: TcxGridDBBandedColumn
              DataBinding.FieldName = 'PaymentHDFCId'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 9
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1TransactionHDFCId: TcxGridDBBandedColumn
              Caption = 'Transaction HDFC ID'
              DataBinding.FieldName = 'TransactionHDFCId'
              Width = 165
              Position.BandIndex = 0
              Position.ColIndex = 10
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1ReferenceHDFCId: TcxGridDBBandedColumn
              DataBinding.FieldName = 'ReferenceHDFCId'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 11
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1ReceiptTypes_id: TcxGridDBBandedColumn
              Caption = 'Receipt Type'
              DataBinding.FieldName = 'ReceiptTypes_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'ReceiptTypes_id'
              Properties.ListColumns = <
                item
                  FieldName = 'ReceiptType'
                end>
              Properties.ListSource = ReceiptTypeDs
              Width = 98
              Position.BandIndex = 0
              Position.ColIndex = 12
              Position.RowIndex = 0
            end
          end
        end
      end
    end
  end
  inherited MasterSds: TSQLDataSet
    CommandText = 'SELECT * FROM QuoReceipts WHERE Quotations_id = :Quotations_id'
    CommandType = ctQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'Quotations_id'
        ParamType = ptInput
      end>
  end
  inherited MasterCds: TClientDataSet
    AfterInsert = MasterCdsAfterInsert
    object MasterCdsQuoReceipts_id: TIntegerField
      FieldName = 'QuoReceipts_id'
    end
    object MasterCdsQuotations_id: TIntegerField
      FieldName = 'Quotations_id'
    end
    object MasterCdsRecdAmt: TFMTBCDField
      FieldName = 'RecdAmt'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object MasterCdsCurrencyOdyssseyCode: TStringField
      FieldName = 'CurrencyOdyssseyCode'
      Size = 50
    end
    object MasterCdsCurrencyHdfcCode: TStringField
      FieldName = 'CurrencyHdfcCode'
      Size = 50
    end
    object MasterCdsAmountIsAdvance: TBooleanField
      FieldName = 'AmountIsAdvance'
    end
    object MasterCdsPaymentTimeStamp: TSQLTimeStampField
      FieldName = 'PaymentTimeStamp'
      DisplayFormat = 'dd/mm/yyyy HH:mm'
    end
    object MasterCdsUploadId: TStringField
      FieldName = 'UploadId'
      Size = 50
    end
    object MasterCdsPaymentId: TStringField
      FieldName = 'PaymentId'
      Size = 50
    end
    object MasterCdsPaymentHDFCId: TStringField
      FieldName = 'PaymentHDFCId'
      Size = 50
    end
    object MasterCdsTransactionHDFCId: TStringField
      FieldName = 'TransactionHDFCId'
      Size = 50
    end
    object MasterCdsReferenceHDFCId: TStringField
      FieldName = 'ReferenceHDFCId'
      Size = 50
    end
    object MasterCdsReceiptTypes_id: TIntegerField
      FieldName = 'ReceiptTypes_id'
    end
  end
  inherited PopupMenu1: TPopupMenu
    Left = 65
    Top = 383
  end
  object ReceiptTypeSds: TSQLDataSet
    CommandText = 'SELECT * FROM ReceiptTypes'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 192
    Top = 248
  end
  object ReceiptTypeDsp: TDataSetProvider
    DataSet = ReceiptTypeSds
    UpdateMode = upWhereKeyOnly
    Left = 222
    Top = 248
  end
  object ReceiptTypeCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ReceiptTypeDsp'
    BeforeInsert = MasterCdsBeforeInsert
    AfterInsert = MasterCdsAfterInsert
    BeforeEdit = MasterCdsBeforeEdit
    BeforePost = MasterCdsBeforePost
    AfterPost = MasterCdsAfterPost
    BeforeDelete = MasterCdsBeforeDelete
    AfterDelete = MasterCdsAfterDelete
    Left = 255
    Top = 248
    object ReceiptTypeCdsReceiptTypes_id: TIntegerField
      FieldName = 'ReceiptTypes_id'
    end
    object ReceiptTypeCdsReceiptType: TStringField
      FieldName = 'ReceiptType'
      Size = 30
    end
  end
  object ReceiptTypeDs: TDataSource
    DataSet = ReceiptTypeCds
    Left = 285
    Top = 248
  end
  object CurrenciesSds: TSQLDataSet
    CommandText = 'SELECT * FROM Currencies'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 192
    Top = 280
  end
  object CurrenciesDsp: TDataSetProvider
    DataSet = CurrenciesSds
    UpdateMode = upWhereKeyOnly
    Left = 222
    Top = 280
  end
  object CurrenciesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CurrenciesDsp'
    BeforeInsert = MasterCdsBeforeInsert
    AfterInsert = MasterCdsAfterInsert
    BeforeEdit = MasterCdsBeforeEdit
    BeforePost = MasterCdsBeforePost
    AfterPost = MasterCdsAfterPost
    BeforeDelete = MasterCdsBeforeDelete
    AfterDelete = MasterCdsAfterDelete
    Left = 255
    Top = 280
    object CurrenciesCdscurrencycode: TStringField
      FieldName = 'currencycode'
      FixedChar = True
      Size = 3
    end
    object CurrenciesCdscurrency: TStringField
      FieldName = 'currency'
      Size = 50
    end
    object CurrenciesCdscurrencies_id: TIntegerField
      FieldName = 'currencies_id'
    end
  end
  object CurrenciesDs: TDataSource
    DataSet = CurrenciesCds
    Left = 285
    Top = 280
  end
end
