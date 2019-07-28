object QuoServicesForm: TQuoServicesForm
  Left = 16
  Top = 145
  Width = 988
  Height = 320
  Caption = 'SightSeeing'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 241
    Width = 972
    Height = 41
    Align = alBottom
    TabOrder = 0
    object cxCancelButton: TcxButton
      Left = 400
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 0
      OnClick = cxCancelButtonClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333333333333333333FFF33FF333FFF339993370733
        999333777FF37FF377733339993000399933333777F777F77733333399970799
        93333333777F7377733333333999399933333333377737773333333333990993
        3333333333737F73333333333331013333333333333777FF3333333333910193
        333333333337773FF3333333399000993333333337377737FF33333399900099
        93333333773777377FF333399930003999333337773777F777FF339993370733
        9993337773337333777333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
    end
    object cxOKButton: TcxButton
      Left = 512
      Top = 8
      Width = 75
      Height = 25
      Caption = 'OK'
      ModalResult = 1
      TabOrder = 1
      OnClick = cxOKButtonClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        555555555555555555555555555555555555555555FF55555555555559055555
        55555555577FF5555555555599905555555555557777F5555555555599905555
        555555557777FF5555555559999905555555555777777F555555559999990555
        5555557777777FF5555557990599905555555777757777F55555790555599055
        55557775555777FF5555555555599905555555555557777F5555555555559905
        555555555555777FF5555555555559905555555555555777FF55555555555579
        05555555555555777FF5555555555557905555555555555777FF555555555555
        5990555555555555577755555555555555555555555555555555}
      NumGlyphs = 2
    end
    object cxButton1: TcxButton
      Left = 16
      Top = 8
      Width = 129
      Height = 25
      Caption = 'Alternate Transfers'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = cxButton1Click
    end
    object cxCopySightSeeingButton: TcxButton
      Left = 152
      Top = 8
      Width = 161
      Height = 25
      Caption = 'Add same Sight Seeing'
      TabOrder = 3
      OnClick = cxCopySightSeeingButtonClick
    end
  end
  object cxTicketsGB: TcxGroupBox
    Left = 0
    Top = 0
    Align = alClient
    Caption = 'Sight Seeing'
    ParentColor = False
    Style.Color = 15451300
    TabOrder = 1
    Height = 241
    Width = 972
    object QuoLinesGrid: TcxGrid
      Left = 3
      Top = 18
      Width = 966
      Height = 220
      Align = alClient
      TabOrder = 0
      object QuoLinesGridDBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = SightSeeingDs
        DataController.KeyFieldNames = 'QuoServices_id'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '#,##0.00'
            Kind = skSum
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.CellHints = True
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsData.Deleting = False
        OptionsData.Inserting = False
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
        Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
        object QuoLinesGridDBTableView1QuoServices_id: TcxGridDBColumn
          DataBinding.FieldName = 'QuoServices_id'
          Visible = False
        end
        object QuoLinesGridDBTableView1Selected: TcxGridDBColumn
          DataBinding.FieldName = 'Selected'
          Options.Filtering = False
          Options.Grouping = False
          Width = 62
        end
        object QuoLinesGridDBTableView1Services_id: TcxGridDBColumn
          Caption = 'Service'
          DataBinding.FieldName = 'Services_id'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'Services_id'
          Properties.ListColumns = <
            item
              FieldName = 'Description'
            end>
          Properties.ListSource = BackOfficeDataModule.ServicesDS
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Width = 365
        end
        object QuoLinesGridDBTableView1Timings: TcxGridDBColumn
          DataBinding.FieldName = 'Timings'
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Width = 106
        end
        object QuoLinesGridDBTableView1Guide: TcxGridDBColumn
          DataBinding.FieldName = 'Guide'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Options.Filtering = False
          Options.Grouping = False
        end
        object QuoLinesGridDBTableView1Transport: TcxGridDBColumn
          DataBinding.FieldName = 'Transport'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Options.Filtering = False
          Options.Grouping = False
          Width = 71
        end
        object QuoLinesGridDBTableView1EntranceFees: TcxGridDBColumn
          Caption = 'Entrance Fees'
          DataBinding.FieldName = 'EntranceFees'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Options.Filtering = False
          Options.Grouping = False
          Width = 98
        end
        object QuoLinesGridDBTableView1DaysName: TcxGridDBColumn
          Caption = 'Availability'
          DataBinding.FieldName = 'DaysName'
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Width = 119
        end
        object QuoLinesGridDBTableView1ServiceDate: TcxGridDBColumn
          Caption = 'Date'
          DataBinding.FieldName = 'ServiceDate'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.SaveTime = False
          Properties.ShowTime = False
          Options.Filtering = False
          Options.Grouping = False
          Width = 93
        end
        object QuoLinesGridDBTableView1StartTime: TcxGridDBColumn
          Caption = 'Start Time'
          DataBinding.FieldName = 'StartTime'
          PropertiesClassName = 'TcxTimeEditProperties'
          Properties.TimeFormat = tfHourMin
          Properties.UseCtrlIncrement = True
          Options.Filtering = False
          Options.Grouping = False
          Width = 104
        end
      end
      object QuoLinesGridLevel1: TcxGridLevel
        GridView = QuoLinesGridDBTableView1
      end
    end
  end
  object SightSeeingSds: TSQLDataSet
    CommandText = 'QuoServices'
    CommandType = ctTable
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 352
  end
  object SightSeeingDsp: TDataSetProvider
    DataSet = SightSeeingSds
    Left = 368
  end
  object SightSeeingCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'SightSeeingDsp'
    BeforePost = SightSeeingCdsBeforePost
    AfterPost = SightSeeingCdsAfterPost
    AfterDelete = SightSeeingCdsAfterDelete
    OnCalcFields = SightSeeingCdsCalcFields
    Left = 384
    Top = 1
    object SightSeeingCdsQuoServices_id: TIntegerField
      FieldName = 'QuoServices_id'
    end
    object SightSeeingCdsQuotations_id: TIntegerField
      FieldName = 'Quotations_id'
    end
    object SightSeeingCdsCities_id: TIntegerField
      FieldName = 'Cities_id'
    end
    object SightSeeingCdsAgentAddressbook_id: TIntegerField
      FieldName = 'AgentAddressbook_id'
    end
    object SightSeeingCdsServices_id: TIntegerField
      FieldName = 'Services_id'
    end
    object SightSeeingCdsStartTime: TSQLTimeStampField
      FieldName = 'StartTime'
      DisplayFormat = 'HH:mm'
    end
    object SightSeeingCdsAC: TBooleanField
      FieldName = 'AC'
    end
    object SightSeeingCdsGuide: TBooleanField
      FieldName = 'Guide'
    end
    object SightSeeingCdsTransport: TBooleanField
      FieldName = 'Transport'
    end
    object SightSeeingCdsSightSeeing: TBooleanField
      FieldName = 'SightSeeing'
    end
    object SightSeeingCdsPlace: TStringField
      FieldName = 'Place'
      Size = 50
    end
    object SightSeeingCdsTransferTypes_id: TIntegerField
      FieldName = 'TransferTypes_id'
    end
    object SightSeeingCdsVehicles_id: TIntegerField
      FieldName = 'Vehicles_id'
    end
    object SightSeeingCdsServiceDay: TIntegerField
      FieldName = 'ServiceDay'
    end
    object SightSeeingCdsServiceDate: TSQLTimeStampField
      FieldName = 'ServiceDate'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SightSeeingCdsNoOfVehicles: TIntegerField
      FieldName = 'NoOfVehicles'
    end
    object SightSeeingCdsCost: TFMTBCDField
      FieldName = 'Cost'
      Precision = 18
    end
    object SightSeeingCdsMasters_id: TStringField
      FieldName = 'Masters_id'
      Size = 10
    end
    object SightSeeingCdsFlightNo: TStringField
      FieldName = 'FlightNo'
      Size = 30
    end
    object SightSeeingCdsstatus: TIntegerField
      FieldName = 'status'
    end
    object SightSeeingCdsLineNum: TIntegerField
      FieldName = 'LineNum'
    end
    object SightSeeingCdsEntranceFees: TBooleanField
      FieldName = 'EntranceFees'
    end
    object SightSeeingCdsQuoCities_id: TIntegerField
      FieldName = 'QuoCities_id'
    end
    object SightSeeingCdsSelected: TBooleanField
      FieldName = 'Selected'
    end
    object SightSeeingCdsTimings: TStringField
      FieldName = 'Timings'
    end
    object SightSeeingCdsDaysName: TStringField
      FieldKind = fkCalculated
      FieldName = 'DaysName'
      Size = 40
      Calculated = True
    end
    object SightSeeingCdsDaysOfOperation: TIntegerField
      FieldName = 'DaysOfOperation'
    end
  end
  object SightSeeingDs: TDataSource
    DataSet = SightSeeingCds
    Left = 408
    Top = 3
  end
end
