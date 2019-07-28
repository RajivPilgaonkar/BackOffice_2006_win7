inherited VoucherForm: TVoucherForm
  Left = 144
  Top = 32
  Width = 1202
  Height = 662
  Caption = 'Vouchers'
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Splitter1: TSplitter
    Top = 362
    Width = 1186
  end
  inherited Panel1: TPanel
    Width = 1186
  end
  inherited Panel2: TPanel
    Top = 583
    Width = 1186
    inherited cxButtonUtilities: TcxButton
      Left = 2
      DropDownMenu = UtilitiesPopup
    end
    inherited cxDBLabelKeyId_Master: TcxDBLabel
      Left = 841
      DataBinding.DataField = 'vouchers_id'
    end
    inherited cxButtonClose: TcxButton
      Left = 909
    end
    inherited cxDBLabelKeyId_Detail1: TcxDBLabel
      Left = 842
      DataBinding.DataField = 'voucherbillings_id'
    end
    inherited cxDBLabelKeyId_Detail2: TcxDBLabel
      Left = 770
      DataBinding.DataField = 'ledgers_id'
      DataBinding.DataSource = Detail2Ds
    end
    object cxVoucherNoRB: TcxRadioButton
      Left = 164
      Top = 11
      Width = 90
      Height = 17
      Caption = 'Voucher No'
      Checked = True
      TabOrder = 5
      TabStop = True
    end
    object cxVoucherDateRB: TcxRadioButton
      Left = 255
      Top = 11
      Width = 103
      Height = 17
      Caption = 'Voucher Date'
      TabOrder = 6
    end
    object cxSearchEdit: TcxTextEdit
      Left = 358
      Top = 10
      TabOrder = 7
      OnKeyPress = cxSearchEditKeyPress
      Width = 111
    end
    object cxReportUtilities: TcxButton
      Left = 82
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Reports'
      TabOrder = 8
      DropDownMenu = ReportPopup
      Kind = cxbkDropDownButton
    end
    object cxDBNavigator1: TcxDBNavigator
      Left = 495
      Top = 4
      Width = 250
      Height = 31
      Buttons.PriorPage.Visible = False
      Buttons.NextPage.Visible = False
      Buttons.SaveBookmark.Visible = False
      Buttons.GotoBookmark.Visible = False
      Buttons.Filter.Visible = False
      DataSource = MasterDs
      TabOrder = 9
    end
  end
  inherited Panel3: TPanel
    Width = 1186
    Height = 321
    inherited cxPageControl1: TcxPageControl
      Width = 1184
      Height = 319
      ClientRectBottom = 313
      ClientRectRight = 1178
      inherited cxTabSheet1: TcxTabSheet
        object Label6: TLabel
          Left = 315
          Top = 2
          Width = 28
          Height = 13
          Caption = 'Date'
          Transparent = True
        end
        object Label1: TLabel
          Left = 2
          Top = 2
          Width = 68
          Height = 13
          Caption = 'Voucher No'
          Transparent = True
        end
        object Label2: TLabel
          Left = 493
          Top = 2
          Width = 69
          Height = 13
          Caption = 'Master Tour'
          Transparent = True
        end
        object Label3: TLabel
          Left = 173
          Top = 2
          Width = 51
          Height = 13
          Caption = 'Year Ref'
          Transparent = True
        end
        object Label4: TLabel
          Left = 695
          Top = 2
          Width = 100
          Height = 13
          Caption = 'Master Tour Date'
          Transparent = True
        end
        object Label5: TLabel
          Left = 2
          Top = 22
          Width = 29
          Height = 13
          Caption = 'Type'
          Transparent = True
        end
        object Label7: TLabel
          Left = 2
          Top = 42
          Width = 78
          Height = 13
          Caption = 'Hotel / Agent'
          Transparent = True
        end
        object Label8: TLabel
          Left = 493
          Top = 42
          Width = 69
          Height = 13
          Caption = 'Service City'
          Transparent = True
        end
        object Label9: TLabel
          Left = 695
          Top = 42
          Width = 60
          Height = 13
          Caption = 'Reference'
          Transparent = True
        end
        object Label10: TLabel
          Left = 2
          Top = 62
          Width = 85
          Height = 13
          Caption = 'Through Agent'
          Transparent = True
        end
        object Label11: TLabel
          Left = 493
          Top = 63
          Width = 40
          Height = 13
          Caption = 'Leader'
          Transparent = True
        end
        object Label12: TLabel
          Left = 2
          Top = 82
          Width = 65
          Height = 13
          Caption = 'Description'
          Transparent = True
        end
        object Label13: TLabel
          Left = 2
          Top = 133
          Width = 50
          Height = 13
          Caption = 'Remarks'
          Transparent = True
        end
        object Label14: TLabel
          Left = 2
          Top = 171
          Width = 96
          Height = 13
          Caption = 'Agent Staying At'
          Transparent = True
        end
        object Label15: TLabel
          Left = 315
          Top = 22
          Width = 51
          Height = 13
          Caption = 'Tour Ref'
          Transparent = True
        end
        object Label16: TLabel
          Left = 493
          Top = 22
          Width = 60
          Height = 13
          Caption = 'Tour Code'
          Transparent = True
        end
        object Label17: TLabel
          Left = 695
          Top = 22
          Width = 58
          Height = 13
          Caption = 'Tour Date'
          Transparent = True
        end
        object Label18: TLabel
          Left = 2
          Top = 212
          Width = 56
          Height = 13
          Caption = 'Issued By'
          Transparent = True
        end
        object Label19: TLabel
          Left = 231
          Top = 212
          Width = 58
          Height = 13
          Caption = 'Issued On'
          Transparent = True
        end
        object Label20: TLabel
          Left = 480
          Top = 212
          Width = 55
          Height = 13
          Caption = 'Exp. Cost'
          Transparent = True
        end
        object Label21: TLabel
          Left = 664
          Top = 212
          Width = 81
          Height = 13
          Caption = 'Adj. Exp. Cost'
          Transparent = True
        end
        object Label22: TLabel
          Left = 2
          Top = 232
          Width = 50
          Height = 13
          Caption = 'Remarks'
          Transparent = True
        end
        object Label23: TLabel
          Left = 2
          Top = 270
          Width = 22
          Height = 13
          Caption = 'Pax'
          Transparent = True
        end
        object Label24: TLabel
          Left = 231
          Top = 270
          Width = 51
          Height = 13
          Caption = 'Currency'
          Transparent = True
        end
        object Label25: TLabel
          Left = 480
          Top = 270
          Width = 60
          Height = 13
          Caption = 'Exch Rate'
          Transparent = True
        end
        object Label30: TLabel
          Left = 736
          Top = 271
          Width = 81
          Height = 13
          Caption = 'Quo Line Num'
          Transparent = True
        end
        object cxVoucherDateEdit: TcxDBDateEdit
          Left = 352
          Top = 0
          DataBinding.DataField = 'voucherdate'
          DataBinding.DataSource = MasterDs
          Properties.ShowTime = False
          Style.Color = 16247513
          TabOrder = 2
          Width = 123
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 105
          Top = 0
          DataBinding.DataField = 'voucherno'
          DataBinding.DataSource = MasterDs
          Properties.ReadOnly = True
          Style.Color = 16247513
          TabOrder = 0
          Width = 57
        end
        object cxDBLookupComboBox1: TcxDBLookupComboBox
          Left = 572
          Top = 0
          DataBinding.DataField = 'mastertourcode'
          DataBinding.DataSource = MasterDs
          Properties.DropDownWidth = 400
          Properties.KeyFieldNames = 'MasterCode'
          Properties.ListColumns = <
            item
              MinWidth = 100
              FieldName = 'MasterCode'
            end
            item
              MinWidth = 300
              FieldName = 'name'
            end>
          Properties.ListSource = MasterCodeDS
          Style.Color = 16247513
          TabOrder = 3
          Width = 113
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 233
          Top = 0
          DataBinding.DataField = 'yearref'
          DataBinding.DataSource = MasterDs
          Properties.ReadOnly = True
          Style.Color = 16247513
          TabOrder = 1
          Width = 73
        end
        object cxDBLookupComboBox2: TcxDBLookupComboBox
          Left = 105
          Top = 20
          DataBinding.DataField = 'vouchertypes_id'
          DataBinding.DataSource = MasterDs
          Properties.DropDownWidth = 400
          Properties.KeyFieldNames = 'VoucherTypes_id'
          Properties.ListColumns = <
            item
              FieldName = 'Description'
            end>
          Properties.ListSource = VoucherTypeDs
          Style.Color = 16247513
          TabOrder = 5
          Width = 201
        end
        object cxDBCheckBox1: TcxDBCheckBox
          Left = 2
          Top = 191
          Caption = 'Manual'
          DataBinding.DataField = 'manual'
          DataBinding.DataSource = MasterDs
          Properties.ReadOnly = True
          TabOrder = 17
          Transparent = True
          OnEnter = cxDBCheckBox1Enter
          Width = 87
        end
        object cxDBCheckBox2: TcxDBCheckBox
          Left = 109
          Top = 191
          Caption = 'Modified'
          DataBinding.DataField = 'modified'
          DataBinding.DataSource = MasterDs
          Properties.ReadOnly = True
          TabOrder = 18
          Transparent = True
          OnEnter = cxDBCheckBox2Enter
          Width = 121
        end
        object cxDBExtraCkb: TcxDBCheckBox
          Left = 230
          Top = 191
          Caption = 'Extra'
          DataBinding.DataField = 'extras'
          DataBinding.DataSource = MasterDs
          TabOrder = 19
          Transparent = True
          Width = 121
        end
        object cxDBLookupComboBox3: TcxDBLookupComboBox
          Left = 105
          Top = 40
          DataBinding.DataField = 'addressbook_id'
          DataBinding.DataSource = MasterDs
          Properties.DropDownWidth = 400
          Properties.KeyFieldNames = 'Addressbook_id'
          Properties.ListColumns = <
            item
              MinWidth = 300
              FieldName = 'Organisation'
            end
            item
              MinWidth = 100
              FieldName = 'City'
            end>
          Properties.ListSource = HotelDs
          Style.Color = 16247513
          TabOrder = 9
          Width = 370
        end
        object cxDBTextEdit3: TcxDBTextEdit
          Left = 804
          Top = 40
          DataBinding.DataField = 'reference'
          DataBinding.DataSource = MasterDs
          Style.Color = 16247513
          TabOrder = 11
          Width = 93
        end
        object cxButton1: TcxButton
          Left = 899
          Top = 39
          Width = 26
          Height = 20
          Caption = '...'
          TabOrder = 31
          OnClick = cxButton1Click
        end
        object cxDBLookupComboBox5: TcxDBLookupComboBox
          Left = 105
          Top = 60
          DataBinding.DataField = 'through_addressbook_id'
          DataBinding.DataSource = MasterDs
          Properties.DropDownWidth = 400
          Properties.KeyFieldNames = 'addressbook_id'
          Properties.ListColumns = <
            item
              MinWidth = 300
              FieldName = 'Organisation'
            end
            item
              MinWidth = 100
              FieldName = 'City'
            end>
          Properties.ListSource = AgentDs
          Style.Color = 16247513
          TabOrder = 12
          Width = 370
        end
        object cxDBTextEdit4: TcxDBTextEdit
          Left = 572
          Top = 60
          DataBinding.DataField = 'tourleader'
          DataBinding.DataSource = MasterDs
          Style.Color = 16247513
          TabOrder = 13
          Width = 354
        end
        object cxDBMemo1: TcxDBMemo
          Left = 105
          Top = 80
          DataBinding.DataField = 'description'
          DataBinding.DataSource = MasterDs
          Style.Color = 16247513
          TabOrder = 14
          Height = 50
          Width = 821
        end
        object cxDBMemo2: TcxDBMemo
          Left = 105
          Top = 131
          DataBinding.DataField = 'remarks1'
          DataBinding.DataSource = MasterDs
          Style.Color = 16247513
          TabOrder = 15
          Height = 37
          Width = 821
        end
        object cxDBTextEdit5: TcxDBTextEdit
          Left = 105
          Top = 169
          DataBinding.DataField = 'hotelagentremark'
          DataBinding.DataSource = MasterDs
          Style.Color = 16247513
          TabOrder = 16
          Width = 792
        end
        object cxDBTextEdit6: TcxDBTextEdit
          Left = 376
          Top = 20
          DataBinding.DataField = 'tourref'
          DataBinding.DataSource = MasterDs
          Style.Color = 16247513
          TabOrder = 6
          Width = 99
        end
        object cxDBLookupComboBox6: TcxDBLookupComboBox
          Left = 572
          Top = 20
          DataBinding.DataField = 'tourcode'
          DataBinding.DataSource = MasterDs
          Properties.DropDownWidth = 400
          Properties.KeyFieldNames = 'Tourcode'
          Properties.ListColumns = <
            item
              FieldName = 'Tourcode'
            end>
          Properties.ListSource = TourCodeDs
          Style.Color = 16247513
          TabOrder = 7
          Width = 113
        end
        object cxDBCheckBox4: TcxDBCheckBox
          Left = 350
          Top = 191
          Caption = 'FIT'
          DataBinding.DataField = 'fit'
          DataBinding.DataSource = MasterDs
          TabOrder = 20
          Transparent = True
          Width = 121
        end
        object cxDBCheckBox5: TcxDBCheckBox
          Left = 478
          Top = 191
          Caption = 'Extra Services'
          DataBinding.DataField = 'extraservices'
          DataBinding.DataSource = MasterDs
          TabOrder = 21
          Transparent = True
          Width = 121
        end
        object cxDBCheckBox6: TcxDBCheckBox
          Left = 618
          Top = 191
          Caption = 'TL Present'
          DataBinding.DataField = 'TL_Present'
          DataBinding.DataSource = MasterDs
          TabOrder = 22
          Transparent = True
          Width = 121
        end
        object cxDBCheckBox7: TcxDBCheckBox
          Left = 745
          Top = 191
          Caption = 'Checked'
          DataBinding.DataField = 'checked'
          DataBinding.DataSource = MasterDs
          TabOrder = 23
          Transparent = True
          Width = 121
        end
        object cxDBTextEdit7: TcxDBTextEdit
          Left = 105
          Top = 210
          DataBinding.DataField = 'issuedby'
          DataBinding.DataSource = MasterDs
          Properties.ReadOnly = True
          Style.Color = 16247513
          TabOrder = 24
          Width = 97
        end
        object cxDBDateEdit4: TcxDBDateEdit
          Left = 300
          Top = 210
          DataBinding.DataField = 'issuedon'
          DataBinding.DataSource = MasterDs
          Properties.ShowTime = False
          Style.Color = 16247513
          TabOrder = 25
          Width = 123
        end
        object cxDBTextEdit9: TcxDBTextEdit
          Left = 749
          Top = 210
          DataBinding.DataField = 'adjexpectedcost'
          DataBinding.DataSource = MasterDs
          Style.Color = 16247513
          TabOrder = 26
          Width = 97
        end
        object cxDBMemo3: TcxDBMemo
          Left = 105
          Top = 230
          DataBinding.DataField = 'remarks2'
          DataBinding.DataSource = MasterDs
          Style.Color = 16247513
          TabOrder = 27
          Height = 37
          Width = 820
        end
        object cxDBTextEdit10: TcxDBTextEdit
          Left = 105
          Top = 268
          DataBinding.DataField = 'pax'
          DataBinding.DataSource = MasterDs
          Style.Color = 16247513
          TabOrder = 28
          Width = 97
        end
        object cxDBLookupComboBox7: TcxDBLookupComboBox
          Left = 300
          Top = 268
          DataBinding.DataField = 'currencies_id'
          DataBinding.DataSource = MasterDs
          Properties.DropDownWidth = 400
          Properties.KeyFieldNames = 'Currencies_id'
          Properties.ListColumns = <
            item
              FieldName = 'CurrencyCode'
            end>
          Properties.ListSource = CurrencyDs
          Style.Color = 16247513
          TabOrder = 29
          Width = 123
        end
        object cxDBTextEdit11: TcxDBTextEdit
          Left = 557
          Top = 268
          DataBinding.DataField = 'exchangerate'
          DataBinding.DataSource = MasterDs
          Style.Color = 16247513
          TabOrder = 30
          Width = 97
        end
        object cxDBButtonEdit1: TcxDBButtonEdit
          Left = 804
          Top = 0
          DataBinding.DataField = 'mastertourdate'
          DataBinding.DataSource = MasterDs
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = cxDBButtonEdit1PropertiesButtonClick
          Style.Color = 16247513
          TabOrder = 4
          Width = 122
        end
        object cxButton2: TcxButton
          Left = 70
          Top = 79
          Width = 26
          Height = 20
          Caption = '...'
          TabOrder = 32
          OnClick = cxButton2Click
        end
        object cxButton3: TcxButton
          Left = 899
          Top = 168
          Width = 26
          Height = 20
          Caption = '...'
          TabOrder = 33
          OnClick = cxButton3Click
        end
        object cxDBButtonEdit3: TcxDBButtonEdit
          Left = 805
          Top = 20
          DataBinding.DataField = 'tourdate'
          DataBinding.DataSource = MasterDs
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = cxDBButtonEdit3PropertiesButtonClick
          Style.Color = 16247513
          TabOrder = 8
          Width = 121
        end
        object cxDBLookupComboBox4: TcxDBLookupComboBox
          Left = 572
          Top = 40
          DataBinding.DataField = 'cities_id'
          DataBinding.DataSource = MasterDs
          Properties.DropDownWidth = 400
          Properties.KeyFieldNames = 'Cities_id'
          Properties.ListColumns = <
            item
              FieldName = 'City'
            end>
          Properties.ListSource = ServiceCityDs
          Style.Color = 16247513
          TabOrder = 10
          Width = 113
        end
        object cxDBLabel1: TcxDBLabel
          Left = 542
          Top = 211
          DataBinding.DataField = 'expectedcost'
          DataBinding.DataSource = MasterDs
          Style.TransparentBorder = True
          Transparent = True
          Height = 19
          Width = 108
        end
        object cxDBTextEdit8: TcxDBTextEdit
          Left = 828
          Top = 268
          DataBinding.DataField = 'QuoLines_LineNum'
          DataBinding.DataSource = MasterDs
          Style.Color = 16247513
          TabOrder = 35
          Width = 97
        end
      end
    end
  end
  inherited Panel4: TPanel
    Top = 370
    Width = 1186
    Height = 189
    inherited cxPageControl2: TcxPageControl
      Width = 1184
      Height = 187
      ActivePage = cxTabSheet2
      ClientRectBottom = 181
      ClientRectRight = 1178
      inherited cxTabSheet2: TcxTabSheet
        inherited cxGrid2: TcxGrid
          Width = 1175
          Height = 155
          inherited cxGrid2DBBandedTableView1: TcxGridDBBandedTableView
            OnDblClick = cxGrid2DBBandedTableView1DblClick
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '#,##0.00'
                Kind = skSum
                Column = cxGrid2DBBandedTableView1billamount
              end>
            OptionsView.Footer = True
            object cxGrid2DBBandedTableView1voucherbillings_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'voucherbillings_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid2DBBandedTableView1billno: TcxGridDBBandedColumn
              Caption = 'Bill No'
              DataBinding.FieldName = 'billno'
              Width = 150
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid2DBBandedTableView1billdate: TcxGridDBBandedColumn
              Caption = 'Bill Date'
              DataBinding.FieldName = 'billdate'
              Width = 100
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGrid2DBBandedTableView1billamount: TcxGridDBBandedColumn
              Caption = 'Bill Amt'
              DataBinding.FieldName = 'billamount'
              Width = 100
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxGrid2DBBandedTableView1vouchers_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'vouchers_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object cxGrid2DBBandedTableView1remarks: TcxGridDBBandedColumn
              Caption = 'Remarks'
              DataBinding.FieldName = 'remarks'
              Width = 501
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid2DBBandedTableView1tax: TcxGridDBBandedColumn
              DataBinding.FieldName = 'tax'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object cxGrid2DBBandedTableView1serialno: TcxGridDBBandedColumn
              DataBinding.FieldName = 'serialno'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
            object cxGrid2DBBandedTableView1processed: TcxGridDBBandedColumn
              DataBinding.FieldName = 'processed'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 8
              Position.RowIndex = 0
            end
          end
        end
      end
      inherited cxTabSheet3: TcxTabSheet
        inherited cxGrid3: TcxGrid
          Width = 1175
          Height = 155
          inherited cxGridDBBandedTableView1: TcxGridDBBandedTableView
            DataController.KeyFieldNames = 'ledgers_id'
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '#,##0.00'
                Kind = skSum
                Column = cxGridDBBandedTableView1db
              end>
            OptionsView.Footer = True
            object cxGridDBBandedTableView1transactiondate: TcxGridDBBandedColumn
              Caption = 'Date'
              DataBinding.FieldName = 'transactiondate'
              Width = 118
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1cashvoucherno: TcxGridDBBandedColumn
              Caption = 'Cash Voucher'
              DataBinding.FieldName = 'cashvoucherno'
              Width = 109
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1Vouchers_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Vouchers_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1db: TcxGridDBBandedColumn
              Caption = 'Amount'
              DataBinding.FieldName = 'db'
              Width = 121
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1details: TcxGridDBBandedColumn
              Caption = 'Details'
              DataBinding.FieldName = 'details'
              Width = 477
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1ledgers_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'ledgers_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
          end
        end
      end
    end
  end
  object Panel5: TPanel [5]
    Left = 0
    Top = 559
    Width = 1186
    Height = 24
    Align = alBottom
    Color = 14211288
    TabOrder = 4
    object Label26: TLabel
      Left = 6
      Top = 4
      Width = 32
      Height = 13
      Caption = 'Billed'
      Transparent = True
    end
    object Label27: TLabel
      Left = 190
      Top = 4
      Width = 26
      Height = 13
      Caption = 'Paid'
      Transparent = True
    end
    object Label28: TLabel
      Left = 398
      Top = 4
      Width = 47
      Height = 13
      Caption = 'Balance'
      Transparent = True
    end
    object Label29: TLabel
      Left = 614
      Top = 4
      Width = 60
      Height = 13
      Caption = 'Difference'
      Transparent = True
    end
    object cxDBLabel2: TcxDBLabel
      Left = 48
      Top = 3
      DataBinding.DataField = 'amountbilled'
      DataBinding.DataSource = MasterDs
      Height = 21
      Width = 121
    end
    object cxDBLabel3: TcxDBLabel
      Left = 224
      Top = 3
      DataBinding.DataField = 'Paid'
      DataBinding.DataSource = MasterDs
      Height = 21
      Width = 121
    end
    object cxDBLabel4: TcxDBLabel
      Left = 454
      Top = 3
      DataBinding.DataField = 'Balance'
      DataBinding.DataSource = MasterDs
      Height = 21
      Width = 121
    end
    object cxDBLabel5: TcxDBLabel
      Left = 686
      Top = 3
      DataBinding.DataField = 'Difference'
      DataBinding.DataSource = MasterDs
      Height = 21
      Width = 121
    end
  end
  inherited MasterSds: TSQLDataSet
    CommandText = 
      'SELECT * FROM Vouchers'#13#10'WHERE Companies_id = :Companies_id'#13#10'AND ' +
      'VoucherDate >= :FromDate'#13#10'AND VoucherDate <= :ToDate'#13#10'ORDER BY V' +
      'oucherNo'
    CommandType = ctQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'Companies_id'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'FromDate'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'ToDate'
        ParamType = ptInput
      end>
  end
  inherited MasterCds: TClientDataSet
    AfterInsert = MasterCdsAfterInsert
    AfterEdit = MasterCdsAfterEdit
    AfterScroll = MasterCdsAfterScroll
    OnCalcFields = MasterCdsCalcFields
    object MasterCdsvouchers_id: TIntegerField
      FieldName = 'vouchers_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object MasterCdsvoucherno: TIntegerField
      FieldName = 'voucherno'
    end
    object MasterCdsyearref: TIntegerField
      FieldName = 'yearref'
    end
    object MasterCdsvoucherdate: TSQLTimeStampField
      FieldName = 'voucherdate'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object MasterCdsmastertourcode: TStringField
      FieldName = 'mastertourcode'
      Size = 10
    end
    object MasterCdsmastertourdate: TSQLTimeStampField
      FieldName = 'mastertourdate'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object MasterCdstourref: TStringField
      FieldName = 'tourref'
      Size = 10
    end
    object MasterCdsdescription: TStringField
      FieldName = 'description'
      Size = 250
    end
    object MasterCdstourleader: TStringField
      FieldName = 'tourleader'
      Size = 50
    end
    object MasterCdsremarks1: TStringField
      FieldName = 'remarks1'
      Size = 250
    end
    object MasterCdsremarks2: TStringField
      FieldName = 'remarks2'
      Size = 150
    end
    object MasterCdsissuedon: TSQLTimeStampField
      FieldName = 'issuedon'
    end
    object MasterCdsissuedby: TStringField
      FieldName = 'issuedby'
    end
    object MasterCdsexpectedcost: TBCDField
      FieldName = 'expectedcost'
      DisplayFormat = '#,##0.00'
      Precision = 10
      Size = 2
    end
    object MasterCdsamountbilled: TBCDField
      FieldName = 'amountbilled'
      DisplayFormat = '#,##0.00'
      Precision = 10
      Size = 2
    end
    object MasterCdsamountpaid: TBCDField
      FieldName = 'amountpaid'
      DisplayFormat = '#,##0.00'
      Precision = 10
      Size = 2
    end
    object MasterCdsadjexpectedcost: TBCDField
      FieldName = 'adjexpectedcost'
      DisplayFormat = '#,##0.00'
      Precision = 10
      Size = 2
    end
    object MasterCdstourcode: TStringField
      FieldName = 'tourcode'
      Size = 10
    end
    object TSQLTimeStampField
      FieldName = 'tourdate'
      LookupDataSet = AgentCds
      DisplayFormat = 'dd/mm/yyyy'
    end
    object MasterCdshotelagentremark: TStringField
      FieldName = 'hotelagentremark'
      Size = 100
    end
    object MasterCdsaddressbook_id: TIntegerField
      FieldName = 'addressbook_id'
      OnChange = MasterCdsaddressbook_idChange
    end
    object MasterCdsthrough_addressbook_id: TIntegerField
      FieldName = 'through_addressbook_id'
      OnChange = MasterCdsthrough_addressbook_idChange
    end
    object MasterCdspax: TIntegerField
      FieldName = 'pax'
    end
    object MasterCdschecked: TBooleanField
      FieldName = 'checked'
    end
    object MasterCdsfit: TBooleanField
      FieldName = 'fit'
    end
    object MasterCdsmanual: TBooleanField
      FieldName = 'manual'
    end
    object MasterCdsexchangerate: TBCDField
      FieldName = 'exchangerate'
      DisplayFormat = '#,##0.00'
      Precision = 10
      Size = 2
    end
    object MasterCdscompanies_id: TIntegerField
      FieldName = 'companies_id'
    end
    object MasterCdscities_id: TIntegerField
      FieldName = 'cities_id'
    end
    object MasterCdscountries_id: TIntegerField
      FieldName = 'countries_id'
    end
    object MasterCdscurrencies_id: TIntegerField
      FieldName = 'currencies_id'
    end
    object MasterCdsvouchertypes_id: TIntegerField
      FieldName = 'vouchertypes_id'
    end
    object MasterCdsextraservices: TBooleanField
      FieldName = 'extraservices'
    end
    object MasterCdsmodified: TBooleanField
      FieldName = 'modified'
    end
    object MasterCdsbilled: TBCDField
      FieldName = 'billed'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
    object MasterCdsextras: TBooleanField
      FieldName = 'extras'
    end
    object MasterCdsoffices_id: TIntegerField
      FieldName = 'offices_id'
    end
    object MasterCdsTL_Present: TBooleanField
      FieldName = 'TL_Present'
    end
    object MasterCdsreference: TStringField
      FieldName = 'reference'
      Size = 50
    end
    object MasterCdsIncludeInBalanceSheet: TBooleanField
      FieldName = 'IncludeInBalanceSheet'
    end
    object MasterCdsQuoLines_LineNum: TIntegerField
      FieldName = 'QuoLines_LineNum'
    end
    object MasterCdsPaid: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Paid'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object MasterCdsBalance: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Balance'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object MasterCdsDifference: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Difference'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object MasterCdsCityLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'CityLookup'
      LookupDataSet = ServiceCityCds
      LookupKeyFields = 'cities_id'
      LookupResultField = 'city'
      KeyFields = 'cities_id'
      Size = 30
      Lookup = True
    end
  end
  inherited Detail1Sds: TSQLDataSet
    CommandText = 'SELECT * FROM VoucherBillings'#13#10'WHERE Vouchers_id = :Vouchers_id'
    CommandType = ctQuery
    DataSource = MasterDs
    Params = <
      item
        DataType = ftInteger
        Name = 'vouchers_id'
        ParamType = ptInput
        Size = 4
      end>
  end
  inherited Detail1Cds: TClientDataSet
    IndexFieldNames = 'vouchers_id'
    MasterFields = 'vouchers_id'
    MasterSource = MasterDs
    PacketRecords = 0
    AfterInsert = Detail1CdsAfterInsert
    object Detail1Cdsvoucherbillings_id: TIntegerField
      FieldName = 'voucherbillings_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object Detail1Cdsbillno: TStringField
      FieldName = 'billno'
      Size = 50
    end
    object Detail1Cdsbilldate: TSQLTimeStampField
      FieldName = 'billdate'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object Detail1Cdsbillamount: TBCDField
      FieldName = 'billamount'
      DisplayFormat = '#,##0.00'
      Precision = 10
      Size = 2
    end
    object Detail1Cdsvouchers_id: TIntegerField
      FieldName = 'vouchers_id'
    end
    object Detail1Cdsremarks: TStringField
      FieldName = 'remarks'
      Size = 100
    end
    object Detail1Cdstax: TBCDField
      FieldName = 'tax'
      Precision = 10
      Size = 2
    end
    object Detail1Cdsserialno: TIntegerField
      FieldName = 'serialno'
    end
    object Detail1Cdsprocessed: TSQLTimeStampField
      FieldName = 'processed'
    end
  end
  inherited Detail2Sds: TSQLDataSet
    CommandText = 
      'SELECT  a.transactiondate, a.cashvoucherno, v.Vouchers_id, l.led' +
      'gers_id,'#13#10'  (CASE WHEN v.Currencies_id = 13 THEN'#13#10'    (COALESCE(' +
      'l.debit,0)-COALESCE(l.credit,0)) '#13#10'     ELSE (COALESCE(l.forexde' +
      'bit,0)-COALESCE(l.forexcredit,0)) END) AS db, l.details '#13#10'FROM a' +
      'ccounts a '#13#10'    LEFT JOIN ledgers l on l.accounts_id=a.accounts_' +
      'id '#13#10'    LEFT JOIN Vouchers v ON l.VoucherNo = v.VoucherNo AND l' +
      '.YearRef = v.YearRef'#13#10'WHERE v.Vouchers_id = :Vouchers_id'#13#10
    CommandType = ctQuery
    DataSource = MasterDs
    Params = <
      item
        DataType = ftInteger
        Name = 'vouchers_id'
        ParamType = ptInput
        Size = 4
      end>
  end
  inherited Detail2Cds: TClientDataSet
    IndexFieldNames = 'Vouchers_id'
    MasterFields = 'vouchers_id'
    MasterSource = MasterDs
    PacketRecords = 0
    object Detail2Cdstransactiondate: TSQLTimeStampField
      FieldName = 'transactiondate'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object Detail2Cdscashvoucherno: TIntegerField
      FieldName = 'cashvoucherno'
    end
    object Detail2CdsVouchers_id: TIntegerField
      FieldName = 'Vouchers_id'
    end
    object Detail2Cdsdb: TBCDField
      FieldName = 'db'
      DisplayFormat = '#,##0.00'
      Precision = 11
      Size = 2
    end
    object Detail2Cdsdetails: TStringField
      FieldName = 'details'
      Size = 200
    end
    object Detail2Cdsledgers_id: TIntegerField
      FieldName = 'ledgers_id'
    end
  end
  object MasterCodeSds: TSQLDataSet
    CommandText = 
      'select masters_id, MasterCode,[name] from Masters'#13#10'ORDER BY Mast' +
      'erCode'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 720
    Top = 16
  end
  object MasterCodeDsp: TDataSetProvider
    DataSet = MasterCodeSds
    Left = 736
    Top = 16
  end
  object MasterCodeCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'MasterCodeDsp'
    Left = 752
    Top = 16
    object IntegerField7: TIntegerField
      FieldName = 'masters_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object StringField13: TStringField
      FieldName = 'MasterCode'
      Size = 50
    end
    object StringField14: TStringField
      FieldName = 'name'
      Size = 50
    end
  end
  object MasterCodeDS: TDataSource
    DataSet = MasterCodeCds
    Left = 768
    Top = 16
  end
  object VoucherTypeSds: TSQLDataSet
    CommandText = 
      'SELECT VoucherTypes_id, Description'#13#10'FROM VoucherTypes'#13#10'ORDER BY' +
      ' Description'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 824
    Top = 16
  end
  object VoucherTypeDsp: TDataSetProvider
    DataSet = VoucherTypeSds
    Left = 840
    Top = 16
  end
  object VoucherTypeCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'VoucherTypeDsp'
    Left = 856
    Top = 16
    object VoucherTypeCdsVoucherTypes_id: TIntegerField
      FieldName = 'VoucherTypes_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object VoucherTypeCdsDescription: TStringField
      FieldName = 'Description'
    end
  end
  object VoucherTypeDs: TDataSource
    DataSet = VoucherTypeCds
    Left = 872
    Top = 16
  end
  object TourCodeSds: TSQLDataSet
    CommandText = 
      'SELECT TourCodes_id, Tourcode '#13#10'FROM TourCodes'#13#10'ORDER BY TOURCOD' +
      'E'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 840
    Top = 48
  end
  object TourCodeDsp: TDataSetProvider
    DataSet = TourCodeSds
    Left = 856
    Top = 48
  end
  object TourCodeCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'TourCodeDsp'
    Left = 872
    Top = 48
    object TourCodeCdsTourCodes_id: TIntegerField
      FieldName = 'TourCodes_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TourCodeCdsTourcode: TStringField
      FieldName = 'Tourcode'
      Size = 10
    end
  end
  object TourCodeDs: TDataSource
    DataSet = TourCodeCds
    Left = 888
    Top = 48
  end
  object ServiceCitySds: TSQLDataSet
    CommandText = 'select * from [dbo].[fn_GetServiceCities]  (:Addressbook_id)'
    DataSource = MasterDs
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'addressbook_id'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 792
    Top = 160
  end
  object ServiceCityDsp: TDataSetProvider
    DataSet = ServiceCitySds
    Left = 816
    Top = 160
  end
  object ServiceCityCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'Addressbook_id'
    MasterFields = 'addressbook_id'
    MasterSource = MasterDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'ServiceCityDsp'
    Left = 832
    Top = 160
    object ServiceCityCdsCities_id: TIntegerField
      FieldName = 'Cities_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object ServiceCityCdsCity: TStringField
      FieldName = 'City'
      Size = 50
    end
    object ServiceCityCdsAddressbook_id: TIntegerField
      FieldName = 'Addressbook_id'
    end
  end
  object ServiceCityDs: TDataSource
    DataSet = ServiceCityCds
    Left = 856
    Top = 160
  end
  object CurrencySds: TSQLDataSet
    CommandText = 'select Currencies_id, CurrencyCode, Currency from currencies'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 792
    Top = 194
  end
  object CurrencyDsp: TDataSetProvider
    DataSet = CurrencySds
    Left = 816
    Top = 194
  end
  object CurrencyCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CurrencyDsp'
    Left = 832
    Top = 194
    object CurrencyCdsCurrencies_id: TIntegerField
      FieldName = 'Currencies_id'
    end
    object CurrencyCdsCurrencyCode: TStringField
      FieldName = 'CurrencyCode'
      FixedChar = True
      Size = 3
    end
    object CurrencyCdsCurrency: TStringField
      FieldName = 'Currency'
      Size = 50
    end
  end
  object CurrencyDs: TDataSource
    DataSet = CurrencyCds
    Left = 848
    Top = 194
  end
  object HotelSds: TSQLDataSet
    CommandText = 'SELECT *, 1 as num FROM dbo.fn_Addressbook (4,'#39#39')'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 208
    Top = 112
  end
  object HotelDsp: TDataSetProvider
    DataSet = HotelSds
    Left = 224
    Top = 112
  end
  object HotelCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'HotelDsp'
    Left = 240
    Top = 112
    object HotelCdsAddressbook_id: TIntegerField
      FieldName = 'Addressbook_id'
    end
    object HotelCdsOrganisation: TStringField
      FieldName = 'Organisation'
      Size = 254
    end
    object HotelCdsCity: TStringField
      FieldName = 'City'
      Size = 100
    end
    object HotelCdsCities_id: TIntegerField
      FieldName = 'Cities_id'
    end
    object HotelCdsContact: TStringField
      FieldName = 'Contact'
      Size = 254
    end
    object HotelCdsPostalCode: TStringField
      FieldName = 'PostalCode'
      Size = 10
    end
    object HotelCdsnum: TIntegerField
      FieldName = 'num'
    end
  end
  object HotelDs: TDataSource
    DataSet = HotelCds
    Left = 256
    Top = 112
  end
  object AgentSds: TSQLDataSet
    CommandText = 
      'SELECT DISTINCT A.Organisation , A.Addressbook_id, A.City '#13#10'FROM' +
      ' Addressbook A'#13#10'Left Join AddressCategories AC '#13#10'On A.Addressboo' +
      'k_id = AC.Addressbook_id '#13#10'WHERE AC.Categories_id in (1,3, 13)'#13#10 +
      'AND LTRIM(A.Organisation) > '#39#39#13#10'ORDER BY A.Organisation'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 336
    Top = 120
  end
  object AgentDsp: TDataSetProvider
    DataSet = AgentSds
    Left = 352
    Top = 120
  end
  object AgentCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'AgentDsp'
    Left = 368
    Top = 120
    object AgentCdsOrganisation: TStringField
      FieldName = 'Organisation'
      Size = 60
    end
    object AgentCdsAddressbook_id: TIntegerField
      FieldName = 'Addressbook_id'
    end
    object AgentCdsCity: TStringField
      FieldName = 'City'
    end
  end
  object AgentDs: TDataSource
    DataSet = AgentCds
    Left = 384
    Top = 120
  end
  object UtilitiesPopup: TPopupMenu
    Left = 73
    Top = 582
    object CostBreakup1: TMenuItem
      Caption = 'Cost Breakup'
      OnClick = CostBreakup1Click
    end
    object N6: TMenuItem
      Caption = '-'
    end
    object Refresh2: TMenuItem
      Caption = 'Refresh'
      OnClick = Refresh2Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object SetIncludeinBalanceSheet1: TMenuItem
      Caption = 'Set Include in Balance Sheet'
      OnClick = SetIncludeinBalanceSheet1Click
    end
  end
  object ReportPopup: TPopupMenu
    Left = 145
    Top = 590
    object Differences1: TMenuItem
      Caption = 'Differences'
      OnClick = Differences1Click
    end
    object ZeroExpectedCost1: TMenuItem
      Caption = 'Zero Expected Cost'
      OnClick = ZeroExpectedCost1Click
    end
    object MissingBillsAmtBilled001: TMenuItem
      Caption = 'Zero Expected Cost (Amt Billed = 0.0)'
      OnClick = MissingBillsAmtBilled001Click
    end
    object MissingBills2: TMenuItem
      Caption = 'Missing Bills'
      OnClick = MissingBills2Click
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object ManualVouchers2: TMenuItem
      Caption = 'Manual Vouchers'
      OnClick = ManualVouchers2Click
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object BedNights1: TMenuItem
      Caption = 'Bed Nights'
      object Groups1: TMenuItem
        Caption = 'Groups'
        OnClick = Groups1Click
      end
      object FITs1: TMenuItem
        Caption = 'FITs'
        OnClick = FITs1Click
      end
    end
    object BedNightsTourwise1: TMenuItem
      Caption = 'Bed Nights (Tour wise)'
      object Groups2: TMenuItem
        Caption = 'Groups'
        OnClick = Groups2Click
      end
      object FITs2: TMenuItem
        Caption = 'FITs'
        OnClick = FITs2Click
      end
    end
    object PaidDifferences1: TMenuItem
      Caption = 'Paid Differences'
      OnClick = PaidDifferences1Click
    end
    object N7: TMenuItem
      Caption = '-'
    end
    object VoucherListing1: TMenuItem
      Caption = 'Voucher Listing'
      OnClick = VoucherListing1Click
    end
  end
end
