inherited QuoPrintForm: TQuoPrintForm
  Left = 193
  Top = 75
  Width = 947
  Height = 594
  Caption = 'Quotation Detailed Itinerary - Custom Print'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Splitter1: TSplitter
    Top = 216
    Width = 931
    Height = 6
  end
  inherited Panel1: TPanel
    Width = 931
  end
  inherited Panel2: TPanel
    Top = 515
    Width = 931
    inherited cxButtonUtilities: TcxButton
      Visible = True
      DropDownMenu = PopupMenu1
    end
    inherited cxDBLabelKeyId_Detail: TcxDBLabel
      DataBinding.DataField = 'QuoPrintDays_id'
    end
    inherited cxDBLabelKeyId_Master: TcxDBLabel
      DataBinding.DataField = 'QuoPrint_id'
    end
    inherited cxDBLabelKeyId_SubDetail: TcxDBLabel
      DataBinding.DataField = 'QuoPrintPlaces_id'
      DataBinding.DataSource = SubDetailDs
    end
  end
  inherited Panel3: TPanel
    Width = 931
    Height = 175
    inherited cxPageControl1: TcxPageControl
      Width = 929
      Height = 173
      ActivePage = cxTabSheet7
      ClientRectBottom = 167
      ClientRectRight = 923
      inherited cxTabSheet1: TcxTabSheet
        Caption = 'Quotation Info'
        object cxLabel1: TcxLabel
          Left = 6
          Top = 2
          Caption = 'Pax'
          Transparent = True
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 119
          Top = 1
          DataBinding.DataField = 'PaxInfo'
          DataBinding.DataSource = MasterDs
          TabOrder = 1
          Width = 688
        end
        object cxLabel3: TcxLabel
          Left = 6
          Top = 23
          Caption = 'Starting Info'
          Transparent = True
        end
        object cxLabel4: TcxLabel
          Left = 6
          Top = 44
          Caption = 'Booking Info'
          Transparent = True
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 119
          Top = 22
          DataBinding.DataField = 'StartingInfo'
          DataBinding.DataSource = MasterDs
          TabOrder = 4
          Width = 688
        end
        object cxDBTextEdit3: TcxDBTextEdit
          Left = 120
          Top = 43
          DataBinding.DataField = 'BookingInfo'
          DataBinding.DataSource = MasterDs
          TabOrder = 5
          Width = 688
        end
        object cxLabel14: TcxLabel
          Left = 6
          Top = 65
          Caption = 'Emergency Contact'
          Transparent = True
        end
        object cxDBTextEdit8: TcxDBTextEdit
          Left = 120
          Top = 64
          DataBinding.DataField = 'EmergencyContact'
          DataBinding.DataSource = MasterDs
          TabOrder = 7
          Width = 688
        end
        object cxLabel16: TcxLabel
          Left = 6
          Top = 87
          Caption = 'Company Contact'
          Transparent = True
        end
        object cxDBTextEdit13: TcxDBTextEdit
          Left = 120
          Top = 86
          DataBinding.DataField = 'CompanyContact'
          DataBinding.DataSource = MasterDs
          TabOrder = 9
          Width = 688
        end
      end
      object cxTabSheet6: TcxTabSheet
        Caption = 'Request Details'
        ImageIndex = 1
        object cxLabel2: TcxLabel
          Left = 6
          Top = 2
          Caption = 'Request From'
          Transparent = True
        end
        object cxDBTextEdit4: TcxDBTextEdit
          Left = 90
          Top = 1
          DataBinding.DataField = 'QuoRequest'
          DataBinding.DataSource = MasterDs
          TabOrder = 1
          Width = 320
        end
        object cxDBMemo1: TcxDBMemo
          Left = 90
          Top = 24
          DataBinding.DataField = 'QuoRequestDetails'
          DataBinding.DataSource = MasterDs
          TabOrder = 2
          Height = 60
          Width = 320
        end
        object cxLabel5: TcxLabel
          Left = 422
          Top = 2
          Caption = 'Request For'
          Transparent = True
        end
        object cxDBTextEdit5: TcxDBTextEdit
          Left = 506
          Top = 1
          DataBinding.DataField = 'QuoFor'
          DataBinding.DataSource = MasterDs
          TabOrder = 4
          Width = 320
        end
        object cxDBMemo2: TcxDBMemo
          Left = 506
          Top = 24
          DataBinding.DataField = 'QuoForDetails'
          DataBinding.DataSource = MasterDs
          TabOrder = 5
          Height = 60
          Width = 320
        end
        object cxButtonUpdate: TcxButton
          Left = 832
          Top = 56
          Width = 57
          Height = 25
          Caption = 'Update'
          TabOrder = 6
          OnClick = cxButtonUpdateClick
        end
      end
      object cxTabSheet7: TcxTabSheet
        Caption = 'Quotation'
        ImageIndex = 2
        object SpeedButton1: TSpeedButton
          Left = 170
          Top = 24
          Width = 23
          Height = 22
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00337000000000
            73333337777777773F333308888888880333337F3F3F3FFF7F33330808089998
            0333337F737377737F333308888888880333337F3F3F3F3F7F33330808080808
            0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
            0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
            0333337F737373737F333308888888880333337F3FFFFFFF7F33330800000008
            0333337F7777777F7F333308000E0E080333337F7FFFFF7F7F33330800000008
            0333337F777777737F333308888888880333337F333333337F33330888888888
            03333373FFFFFFFF733333700000000073333337777777773333}
          NumGlyphs = 2
          OnClick = SpeedButton1Click
        end
        object cxLabel6: TcxLabel
          Left = 6
          Top = 2
          Caption = 'Estimate'
          Transparent = True
        end
        object cxDBTextEdit6: TcxDBTextEdit
          Left = 71
          Top = 1
          DataBinding.DataField = 'QuoEstimate'
          DataBinding.DataSource = MasterDs
          TabOrder = 1
          Width = 487
        end
        object cxLabel7: TcxLabel
          Left = 6
          Top = 26
          Caption = 'Basic Rate'
          Transparent = True
        end
        object cxDBTextEdit7: TcxDBTextEdit
          Left = 85
          Top = 25
          DataBinding.DataField = 'BasicRate'
          DataBinding.DataSource = MasterDs
          TabOrder = 2
          Width = 83
        end
        object cxLabel8: TcxLabel
          Left = 307
          Top = 26
          Caption = 'Basic Amt'
          Transparent = True
        end
        object cxBasicAmtTextEdit: TcxDBTextEdit
          Left = 404
          Top = 25
          DataBinding.DataField = 'BasicAmt'
          DataBinding.DataSource = MasterDs
          TabOrder = 3
          Width = 114
        end
        object cxLabel9: TcxLabel
          Left = 6
          Top = 50
          Caption = 'Serv. Tax %'
          Transparent = True
        end
        object cxDBTextEdit9: TcxDBTextEdit
          Left = 86
          Top = 49
          DataBinding.DataField = 'ServiceTaxPerc'
          DataBinding.DataSource = MasterDs
          TabOrder = 4
          Width = 81
        end
        object cxLabel10: TcxLabel
          Left = 307
          Top = 50
          Caption = 'Serv. Amt'
          Transparent = True
        end
        object cxDBTextEdit10: TcxDBTextEdit
          Left = 404
          Top = 49
          DataBinding.DataField = 'ServiceTaxAmt'
          DataBinding.DataSource = MasterDs
          TabOrder = 5
          Width = 114
        end
        object cxLabel11: TcxLabel
          Left = 307
          Top = 74
          Caption = 'Quo. Amt'
          Transparent = True
        end
        object cxDBTextEdit11: TcxDBTextEdit
          Left = 404
          Top = 73
          DataBinding.DataField = 'QuotationAmt'
          DataBinding.DataSource = MasterDs
          TabOrder = 6
          Width = 113
        end
        object cxLabel12: TcxLabel
          Left = 9
          Top = 98
          Caption = 'Adv. Amt'
          Transparent = True
        end
        object cxDBTextEdit12: TcxDBTextEdit
          Left = 83
          Top = 97
          DataBinding.DataField = 'AdvanceAmt'
          DataBinding.DataSource = MasterDs
          TabOrder = 7
          Width = 113
        end
        object cxLabel13: TcxLabel
          Left = 306
          Top = 98
          Caption = 'Adv. Due Date'
          Transparent = True
        end
        object cxDBDateEdit1: TcxDBDateEdit
          Left = 404
          Top = 97
          DataBinding.DataField = 'AdvDueDate'
          DataBinding.DataSource = MasterDs
          TabOrder = 8
          Width = 113
        end
        object cxPaxLabel: TcxLabel
          Left = 200
          Top = 26
          Caption = 'cxPaxLabel'
          Transparent = True
        end
        object cxButton1: TcxButton
          Left = 728
          Top = 0
          Width = 161
          Height = 25
          Caption = 'Sync this Quote with Web'
          TabOrder = 19
          OnClick = cxButton1Click
        end
        object cxCurrencyLabel: TcxLabel
          Left = 88
          Top = 73
          Caption = 'cxPaxLabel'
          Transparent = True
        end
        object cxLabel15: TcxLabel
          Left = 6
          Top = 74
          Caption = 'Currency'
          Transparent = True
        end
        object cxLabel17: TcxLabel
          Left = 10
          Top = 122
          Caption = 'Bal. Amt'
          Transparent = True
        end
        object cxDBTextEdit14: TcxDBTextEdit
          Left = 83
          Top = 121
          DataBinding.DataField = 'BalanceAmt'
          DataBinding.DataSource = MasterDs
          Properties.ReadOnly = True
          TabOrder = 9
          Width = 113
        end
        object cxLabel18: TcxLabel
          Left = 306
          Top = 122
          Caption = 'Bal. Due Date'
          Transparent = True
        end
        object cxDBDateEdit2: TcxDBDateEdit
          Left = 404
          Top = 121
          DataBinding.DataField = 'DueDate'
          DataBinding.DataSource = MasterDs
          TabOrder = 10
          Width = 113
        end
        object cxLabel19: TcxLabel
          Left = 526
          Top = 26
          Caption = 'Email'
          Transparent = True
        end
        object cxDBTextEdit15: TcxDBTextEdit
          Left = 568
          Top = 25
          DataBinding.DataField = 'Email'
          DataBinding.DataSource = MasterDs
          TabOrder = 25
          Width = 305
        end
        object cxLabel20: TcxLabel
          Left = 526
          Top = 50
          Caption = 'Pax'
          Transparent = True
        end
        object cxDBTextEdit16: TcxDBTextEdit
          Left = 568
          Top = 49
          DataBinding.DataField = 'NumPax'
          DataBinding.DataSource = MasterDs
          TabOrder = 27
          Width = 41
        end
        object cxButton2: TcxButton
          Left = 528
          Top = 72
          Width = 113
          Height = 25
          Caption = 'Show Payments'
          TabOrder = 28
          OnClick = cxButton2Click
        end
      end
    end
  end
  inherited Panel4: TPanel
    Top = 222
    Width = 931
    Height = 293
    inherited Splitter2: TSplitter
      Left = 401
      Width = 8
      Height = 291
    end
    inherited cxPageControl2: TcxPageControl
      Width = 400
      Height = 291
      ClientRectBottom = 285
      ClientRectRight = 394
      inherited cxTabSheet2: TcxTabSheet
        Caption = 'Itinerary'
        inherited cxGrid1: TcxGrid
          Width = 391
          Height = 259
          inherited cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
            DataController.DataSource = ItineraryDs
            DataController.KeyFieldNames = 'QuoPrintItineraries_id'
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '#,##0.00'
                Kind = skSum
              end
              item
                Format = '#,##0.00'
                Kind = skSum
              end
              item
                Format = '#,##0.00'
                Kind = skSum
              end>
            object cxGrid1DBBandedTableView1QuoPrintItineraries_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'QuoPrintItineraries_id'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Grouping = False
              Options.Sorting = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1QuoPrint_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'QuoPrint_id'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Grouping = False
              Options.Sorting = False
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1SrNo: TcxGridDBBandedColumn
              Caption = 'Sr No'
              DataBinding.FieldName = 'SrNo'
              Options.Filtering = False
              Options.Grouping = False
              Options.Sorting = False
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1DayInfo: TcxGridDBBandedColumn
              Caption = 'Day Info'
              DataBinding.FieldName = 'DayInfo'
              Options.Filtering = False
              Options.Grouping = False
              Options.Sorting = False
              Width = 278
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1DaySummaryInfo: TcxGridDBBandedColumn
              Caption = 'Summary'
              DataBinding.FieldName = 'DaySummaryInfo'
              Options.Filtering = False
              Options.Grouping = False
              Options.Sorting = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.LineCount = 2
              Position.RowIndex = 1
            end
          end
        end
      end
      object cxTabSheet4: TcxTabSheet
        Caption = 'Inclusions'
        ImageIndex = 1
        object cxGrid5: TcxGrid
          Left = 0
          Top = 0
          Width = 391
          Height = 259
          Align = alClient
          TabOrder = 0
          object cxGridDBBandedTableView4: TcxGridDBBandedTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = InclusionsDs
            DataController.KeyFieldNames = 'QuoPrintInclusions_id'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '#,##0.00'
                Kind = skSum
              end
              item
                Format = '#,##0.00'
                Kind = skSum
              end
              item
                Format = '#,##0.00'
                Kind = skSum
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.CellHints = True
            OptionsBehavior.FocusCellOnTab = True
            OptionsBehavior.FocusFirstCellOnNewRecord = True
            OptionsBehavior.FocusCellOnCycle = True
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.Appending = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            OptionsView.BandHeaders = False
            Bands = <
              item
              end>
            object cxGridDBBandedColumn1: TcxGridDBBandedColumn
              DataBinding.FieldName = 'QuoPrintInclusions_id'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn2: TcxGridDBBandedColumn
              DataBinding.FieldName = 'QuoPrint_id'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn3: TcxGridDBBandedColumn
              Caption = 'Order No'
              DataBinding.FieldName = 'OrderNo'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              SortIndex = 0
              SortOrder = soAscending
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn4: TcxGridDBBandedColumn
              Caption = 'Sr No'
              DataBinding.FieldName = 'SrNo'
              Options.Filtering = False
              Options.Sorting = False
              SortIndex = 1
              SortOrder = soAscending
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn5: TcxGridDBBandedColumn
              Caption = 'Type'
              DataBinding.FieldName = 'ServiceType'
              PropertiesClassName = 'TcxComboBoxProperties'
              Properties.DropDownListStyle = lsFixedList
              Properties.Items.Strings = (
                'Tickets'
                'Accommodation'
                'Services'
                'Transport')
              Options.Sorting = False
              Width = 271
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn6: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Remarks'
              Options.Filtering = False
              Options.Sorting = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.LineCount = 2
              Position.RowIndex = 1
            end
          end
          object cxGridLevel4: TcxGridLevel
            GridView = cxGridDBBandedTableView4
          end
        end
      end
      object cxTabSheet5: TcxTabSheet
        Caption = 'Detailed Itinerary'
        ImageIndex = 2
        object cxGrid4: TcxGrid
          Left = 0
          Top = 0
          Width = 391
          Height = 259
          Align = alClient
          TabOrder = 0
          object cxGridDBBandedTableView3: TcxGridDBBandedTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = DetailDs
            DataController.KeyFieldNames = 'QuoPrintDays_id'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '#,##0.00'
                Kind = skSum
              end
              item
                Format = '#,##0.00'
                Kind = skSum
              end
              item
                Format = '#,##0.00'
                Kind = skSum
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.CellHints = True
            OptionsBehavior.FocusCellOnTab = True
            OptionsBehavior.FocusFirstCellOnNewRecord = True
            OptionsBehavior.FocusCellOnCycle = True
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.Appending = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            OptionsView.BandHeaders = False
            Bands = <
              item
              end>
            object cxGridDBBandedTableView3QuoPrintDays_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'QuoPrintDays_id'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Grouping = False
              Options.Sorting = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView3QuoPrint_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'QuoPrint_id'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Grouping = False
              Options.Sorting = False
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView3SrNo: TcxGridDBBandedColumn
              Caption = 'Sr No'
              DataBinding.FieldName = 'SrNo'
              Options.Filtering = False
              Options.Grouping = False
              Options.Sorting = False
              SortIndex = 0
              SortOrder = soAscending
              Width = 47
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView3DayInfo: TcxGridDBBandedColumn
              Caption = 'Day Info'
              DataBinding.FieldName = 'DayInfo'
              Options.Filtering = False
              Options.Grouping = False
              Options.Sorting = False
              Width = 311
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView3DaySummaryInfo: TcxGridDBBandedColumn
              Caption = 'Summary'
              DataBinding.FieldName = 'DaySummaryInfo'
              Options.Filtering = False
              Options.Grouping = False
              Options.Sorting = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.LineCount = 2
              Position.RowIndex = 1
            end
          end
          object cxGridLevel3: TcxGridLevel
            GridView = cxGridDBBandedTableView3
          end
        end
      end
    end
    inherited cxPageControl3: TcxPageControl
      Left = 409
      Width = 521
      Height = 291
      ClientRectBottom = 285
      ClientRectRight = 515
      inherited cxTabSheet3: TcxTabSheet
        Caption = 'Places'
        inherited cxGrid2: TcxGrid
          Width = 512
          Height = 259
          inherited cxGridDBBandedTableView1: TcxGridDBBandedTableView
            DataController.DataSource = SubDetailDs
            DataController.KeyFieldNames = 'QuoPrintPlaces_id'
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '#,##0.00'
                Kind = skSum
              end>
            object cxGridDBBandedTableView1QuoPrintPlaces_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'QuoPrintPlaces_id'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Grouping = False
              Options.Sorting = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1QuoPrintDays_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'QuoPrintDays_id'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Grouping = False
              Options.Sorting = False
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1SrNo: TcxGridDBBandedColumn
              Caption = 'Sr No'
              DataBinding.FieldName = 'SrNo'
              Options.Filtering = False
              Options.Grouping = False
              Options.Sorting = False
              SortIndex = 0
              SortOrder = soAscending
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1Place: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Place'
              Options.Filtering = False
              Options.Grouping = False
              Options.Sorting = False
              Width = 377
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1PlaceInfo: TcxGridDBBandedColumn
              Caption = 'Place Info'
              DataBinding.FieldName = 'PlaceInfo'
              PropertiesClassName = 'TcxMemoProperties'
              Options.Filtering = False
              Options.Grouping = False
              Options.Sorting = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.LineCount = 2
              Position.RowIndex = 1
            end
          end
        end
      end
    end
  end
  inherited MasterSds: TSQLDataSet
    CommandText = 'SELECT * FROM QuoPrint'#13#10'WHERE Quotations_id = :Quotations_id'#13#10
    CommandType = ctQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'Quotations_id'
        ParamType = ptInput
      end>
  end
  inherited MasterCds: TClientDataSet
    OnCalcFields = MasterCdsCalcFields
    object MasterCdsQuoPrint_id: TIntegerField
      FieldName = 'QuoPrint_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object MasterCdsQuotations_id: TIntegerField
      FieldName = 'Quotations_id'
    end
    object MasterCdsPaxInfo: TStringField
      FieldName = 'PaxInfo'
      Size = 100
    end
    object MasterCdsStartingInfo: TStringField
      FieldName = 'StartingInfo'
      Size = 100
    end
    object MasterCdsBookingInfo: TStringField
      FieldName = 'BookingInfo'
      Size = 100
    end
    object MasterCdsQuoRequest: TStringField
      FieldName = 'QuoRequest'
      Size = 100
    end
    object MasterCdsQuoRequestDetails: TMemoField
      FieldName = 'QuoRequestDetails'
      BlobType = ftMemo
    end
    object MasterCdsQuoFor: TStringField
      FieldName = 'QuoFor'
      Size = 100
    end
    object MasterCdsQuoForDetails: TMemoField
      FieldName = 'QuoForDetails'
      BlobType = ftMemo
    end
    object MasterCdsQuoEstimate: TStringField
      FieldName = 'QuoEstimate'
      Size = 100
    end
    object MasterCdsBasicRate: TFMTBCDField
      FieldName = 'BasicRate'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object MasterCdsBasicAmt: TFMTBCDField
      FieldName = 'BasicAmt'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object MasterCdsServiceTaxPerc: TFMTBCDField
      FieldName = 'ServiceTaxPerc'
      DisplayFormat = '#,##0.000%'
      Precision = 18
      Size = 4
    end
    object MasterCdsServiceTaxAmt: TFMTBCDField
      FieldName = 'ServiceTaxAmt'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object MasterCdsQuotationAmt: TFMTBCDField
      FieldName = 'QuotationAmt'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object MasterCdsAdvanceAmt: TFMTBCDField
      FieldName = 'AdvanceAmt'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object MasterCdsDueDate: TSQLTimeStampField
      FieldName = 'DueDate'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object MasterCdsEmergencyContact: TStringField
      FieldName = 'EmergencyContact'
      Size = 150
    end
    object MasterCdsCompanyContact: TStringField
      FieldName = 'CompanyContact'
      Size = 150
    end
    object MasterCdsAdvDueDate: TSQLTimeStampField
      FieldName = 'AdvDueDate'
    end
    object MasterCdsBalanceAmt: TFloatField
      FieldKind = fkCalculated
      FieldName = 'BalanceAmt'
      DisplayFormat = '#,#0.00'
      Calculated = True
    end
    object MasterCdsEmail: TStringField
      FieldName = 'Email'
      Size = 100
    end
    object MasterCdsNumPax: TIntegerField
      FieldName = 'NumPax'
    end
  end
  inherited DetailSds: TSQLDataSet
    CommandText = 'SELECT * FROM QuoPrintDays'#13#10'WHERE QuoPrint_id = :QuoPrint_id'#13#10
    DataSource = MasterDs
    Params = <
      item
        DataType = ftInteger
        Name = 'QuoPrint_id'
        ParamType = ptInput
        Size = 4
      end>
  end
  inherited DetailCds: TClientDataSet
    IndexFieldNames = 'QuoPrint_id'
    MasterFields = 'QuoPrint_id'
    MasterSource = MasterDs
    PacketRecords = 0
    object DetailCdsQuoPrintDays_id: TIntegerField
      FieldName = 'QuoPrintDays_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object DetailCdsQuoPrint_id: TIntegerField
      FieldName = 'QuoPrint_id'
    end
    object DetailCdsSrNo: TIntegerField
      FieldName = 'SrNo'
    end
    object DetailCdsDayInfo: TStringField
      FieldName = 'DayInfo'
      Size = 100
    end
    object DetailCdsDaySummaryInfo: TMemoField
      FieldName = 'DaySummaryInfo'
      BlobType = ftMemo
    end
  end
  inherited SubDetailSds: TSQLDataSet
    CommandText = 
      'SELECT * FROM QuoPrintPlaces'#13#10'WHERE QuoPrintDays_id= :QuoPrintDa' +
      'ys_id'#13#10
    DataSource = DetailDs
    Params = <
      item
        DataType = ftInteger
        Name = 'QuoPrintDays_id'
        ParamType = ptInput
        Size = 4
      end>
  end
  inherited SubDetailCds: TClientDataSet
    IndexFieldNames = 'QuoPrintDays_id'
    MasterFields = 'QuoPrintDays_id'
    MasterSource = DetailDs
    PacketRecords = 0
    object SubDetailCdsQuoPrintPlaces_id: TIntegerField
      FieldName = 'QuoPrintPlaces_id'
    end
    object SubDetailCdsQuoPrintDays_id: TIntegerField
      FieldName = 'QuoPrintDays_id'
    end
    object SubDetailCdsSrNo: TIntegerField
      FieldName = 'SrNo'
    end
    object SubDetailCdsPlace: TStringField
      FieldName = 'Place'
      Size = 100
    end
    object SubDetailCdsPlaceInfo: TMemoField
      FieldName = 'PlaceInfo'
      BlobType = ftMemo
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 224
    Top = 400
    object PrintItinerary1: TMenuItem
      Caption = 'Print Itinerary'
      OnClick = PrintItinerary1Click
    end
    object PrintInclusions1: TMenuItem
      Caption = 'Print Inclusions'
      OnClick = PrintInclusions1Click
    end
    object Print1: TMenuItem
      Caption = 'Print Detailed Itinerary'
      OnClick = Print1Click
    end
    object PrintDetailedItinerarywithImages1: TMenuItem
      Caption = 'Print Detailed Itinerary (with Images)'
      OnClick = PrintDetailedItinerarywithImages1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object PrintCompositeReport1: TMenuItem
      Caption = 'Print Composite Report'
      OnClick = PrintCompositeReport1Click
    end
    object PrintCompositeReportRiksja1: TMenuItem
      Caption = 'Print Composite Report (Riksja)'
      OnClick = PrintCompositeReportRiksja1Click
    end
    object WriteWebTextFile1: TMenuItem
      Caption = 'Write Web Text File'
      OnClick = WriteWebTextFile1Click
    end
    object PrintHotelListingwithImages1: TMenuItem
      Caption = 'Print Hotel Listing with Images'
      OnClick = PrintHotelListingwithImages1Click
    end
    object PrintHotelListingwithImagesMany1: TMenuItem
      Caption = 'Print Hotel Listing with Images (Compressed)'
      OnClick = PrintHotelListingwithImagesMany1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Print2: TMenuItem
      Caption = 'Print Quotation'
      OnClick = Print2Click
    end
    object SaveQuotationASExcel2: TMenuItem
      Caption = 'Save Quotation As Excel'
      object ServiceTaxperInvoiceFormat1: TMenuItem
        Caption = 'Service Tax per Invoice Format'
        OnClick = ServiceTaxperInvoiceFormat1Click
      end
      object ServiceTaxperItemFormat1: TMenuItem
        Caption = 'Service Tax per Item Format'
        OnClick = ServiceTaxperItemFormat1Click
      end
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object SendEmail1: TMenuItem
      Caption = 'Send Email (Proposal + Quotation)'
      OnClick = SendEmail1Click
    end
    object SendEmailHotelsDetailedItin1: TMenuItem
      Caption = 'Send Email (Hotels + Detailed Itin)'
      OnClick = SendEmailHotelsDetailedItin1Click
    end
    object SendEmailAllattachments1: TMenuItem
      Caption = 'Send Email (All attachments)'
      OnClick = SendEmailAllattachments1Click
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object Delete1: TMenuItem
      Caption = 'Delete All'
      OnClick = Delete1Click
    end
    object DeleteItinerary1: TMenuItem
      Caption = 'Delete Itinerary'
      OnClick = DeleteItinerary1Click
    end
    object DeleteInclusions1: TMenuItem
      Caption = 'Delete Inclusions'
      OnClick = DeleteInclusions1Click
    end
    object DeleteDetailedItinerary1: TMenuItem
      Caption = 'Delete Detailed Itinerary'
      OnClick = DeleteDetailedItinerary1Click
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object Exclusions1: TMenuItem
      Caption = 'Exclusions Master'
      OnClick = Exclusions1Click
    end
    object Exclusions2: TMenuItem
      Caption = 'Exclusions for this Quotation'
      OnClick = Exclusions2Click
    end
  end
  object ItinerarySds: TSQLDataSet
    CommandText = 
      'SELECT * FROM QuoPrintItineraries'#13#10'WHERE QuoPrint_id = :QuoPrint' +
      '_id'#13#10
    DataSource = MasterDs
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'QuoPrint_id'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 288
    Top = 40
  end
  object ItineraryDsp: TDataSetProvider
    DataSet = ItinerarySds
    UpdateMode = upWhereKeyOnly
    Left = 318
    Top = 40
  end
  object ItineraryCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'QuoPrint_id'
    MasterFields = 'QuoPrint_id'
    MasterSource = MasterDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'ItineraryDsp'
    BeforePost = ItineraryCdsBeforePost
    AfterPost = ItineraryCdsAfterPost
    AfterDelete = ItineraryCdsAfterDelete
    Left = 351
    Top = 40
    object ItineraryCdsQuoPrintItineraries_id: TIntegerField
      FieldName = 'QuoPrintItineraries_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object ItineraryCdsQuoPrint_id: TIntegerField
      FieldName = 'QuoPrint_id'
    end
    object ItineraryCdsSrNo: TIntegerField
      FieldName = 'SrNo'
    end
    object ItineraryCdsDayInfo: TStringField
      FieldName = 'DayInfo'
      Size = 100
    end
    object ItineraryCdsDaySummaryInfo: TMemoField
      FieldName = 'DaySummaryInfo'
      BlobType = ftMemo
    end
  end
  object ItineraryDs: TDataSource
    DataSet = ItineraryCds
    Left = 381
    Top = 40
  end
  object InclusionsSds: TSQLDataSet
    CommandText = 
      'SELECT * FROM QuoPrintInclusions'#13#10'WHERE QuoPrint_id = :QuoPrint_' +
      'id'#13#10
    DataSource = MasterDs
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'QuoPrint_id'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 288
    Top = 72
  end
  object InclusionsDsp: TDataSetProvider
    DataSet = InclusionsSds
    UpdateMode = upWhereKeyOnly
    Left = 318
    Top = 72
  end
  object InclusionsCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'QuoPrint_id'
    MasterFields = 'QuoPrint_id'
    MasterSource = MasterDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'InclusionsDsp'
    BeforePost = InclusionsCdsBeforePost
    AfterPost = InclusionsCdsAfterPost
    AfterDelete = InclusionsCdsAfterDelete
    Left = 351
    Top = 72
    object InclusionsCdsQuoPrintInclusions_id: TIntegerField
      FieldName = 'QuoPrintInclusions_id'
    end
    object InclusionsCdsQuoPrint_id: TIntegerField
      FieldName = 'QuoPrint_id'
    end
    object InclusionsCdsOrderNo: TIntegerField
      FieldName = 'OrderNo'
    end
    object InclusionsCdsSrNo: TIntegerField
      FieldName = 'SrNo'
    end
    object InclusionsCdsServiceType: TStringField
      FieldName = 'ServiceType'
    end
    object InclusionsCdsRemarks: TMemoField
      FieldName = 'Remarks'
      BlobType = ftMemo
    end
  end
  object InclusionsDs: TDataSource
    DataSet = InclusionsCds
    Left = 381
    Top = 72
  end
  object QRCompositeReport1: TQRCompositeReport
    OnAddReports = QRCompositeReport1AddReports
    Options = []
    PrinterSettings.Copies = 1
    PrinterSettings.OutputBin = Auto
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.UseStandardprinter = False
    PrinterSettings.UseCustomBinCode = False
    PrinterSettings.CustomBinCode = 0
    PrinterSettings.ExtendedDuplex = 0
    PrinterSettings.UseCustomPaperCode = False
    PrinterSettings.CustomPaperCode = 0
    PrinterSettings.PrintMetaFile = False
    PrinterSettings.PrintQuality = 0
    PrinterSettings.Collate = 0
    PrinterSettings.ColorOption = 0
    PrinterSettings.Orientation = poPortrait
    PrinterSettings.PaperSize = Letter
    Left = 464
    Top = 328
  end
  object scExcelExport: TscExcelExport
    DataPipe = dpDataSet
    StyleColumnWidth = cwDefault
    ColumnWidth = 0
    FontHeader.Charset = DEFAULT_CHARSET
    FontHeader.Color = clWindowText
    FontHeader.Height = -11
    FontHeader.Name = 'MS Sans Serif'
    FontHeader.Style = []
    FontHeader.Alignment = haGeneral
    FontHeader.WrapText = False
    FontHeader.Orientation = 0
    FontTitles.Charset = DEFAULT_CHARSET
    FontTitles.Color = clWindowText
    FontTitles.Height = -11
    FontTitles.Name = 'MS Sans Serif'
    FontTitles.Style = []
    FontTitles.Alignment = haGeneral
    FontTitles.WrapText = False
    FontTitles.Orientation = 0
    FontData.Charset = DEFAULT_CHARSET
    FontData.Color = clWindowText
    FontData.Height = -11
    FontData.Name = 'MS Sans Serif'
    FontData.Style = []
    FontData.Alignment = haGeneral
    FontData.WrapText = False
    FontData.Orientation = 0
    FontSummary.Charset = DEFAULT_CHARSET
    FontSummary.Color = clWindowText
    FontSummary.Height = -11
    FontSummary.Name = 'MS Sans Serif'
    FontSummary.Style = []
    FontSummary.Alignment = haGeneral
    FontSummary.WrapText = False
    FontSummary.Orientation = 0
    SummarySelection = ssNone
    SummaryCalculation = scSUM
    FontFooter.Charset = DEFAULT_CHARSET
    FontFooter.Color = clWindowText
    FontFooter.Height = -11
    FontFooter.Name = 'MS Sans Serif'
    FontFooter.Style = []
    FontFooter.Alignment = haGeneral
    FontFooter.WrapText = False
    FontFooter.Orientation = 0
    FontGroup.Charset = DEFAULT_CHARSET
    FontGroup.Color = clWindowText
    FontGroup.Height = -11
    FontGroup.Name = 'MS Sans Serif'
    FontGroup.Style = []
    FontGroup.Alignment = haGeneral
    FontGroup.WrapText = False
    FontGroup.Orientation = 0
    GroupOptions.ClearContents = True
    GroupOptions.BorderRange = bsRow
    GroupOptions.IntervalFontSize = 2
    Left = 120
    Top = 297
  end
end
