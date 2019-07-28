object TrainWiseFaresForm: TTrainWiseFaresForm
  Left = 79
  Top = 82
  Width = 917
  Height = 593
  Caption = 'Train Wise Fares'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 901
    Height = 33
    Align = alTop
    TabOrder = 0
    object cxLabel3: TcxLabel
      Left = 572
      Top = 8
      Caption = 'Wef'
      Transparent = True
    end
    object cxLabel4: TcxLabel
      Left = 16
      Top = 8
      Caption = 'Train'
      Transparent = True
    end
    object cxTrainsLcmb: TcxLookupComboBox
      Left = 100
      Top = 6
      Properties.DropDownWidth = 500
      Properties.KeyFieldNames = 'TrainNo'
      Properties.ListColumns = <
        item
          SortOrder = soAscending
          Width = 100
          FieldName = 'trainno'
        end
        item
          Width = 400
          FieldName = 'trainname'
        end>
      Properties.ListSource = TrainsDs
      Properties.OnEditValueChanged = cxTrainsLcmbPropertiesEditValueChanged
      Style.Color = 16247513
      TabOrder = 1
      Width = 145
    end
    object cxWefLcmb: TcxLookupComboBox
      Left = 618
      Top = 6
      Properties.DropDownListStyle = lsEditList
      Properties.KeyFieldNames = 'wef'
      Properties.ListColumns = <
        item
          FieldName = 'wef'
        end>
      Properties.ListSource = WefDS
      Properties.ValidateOnEnter = False
      Properties.OnEditValueChanged = cxWefLcmbPropertiesEditValueChanged
      Style.Color = 16247513
      TabOrder = 0
      Width = 126
    end
    object cxButtonUpdate: TcxButton
      Left = 749
      Top = 5
      Width = 71
      Height = 21
      Caption = 'Update'
      TabOrder = 4
      OnClick = cxButtonUpdateClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 33
    Width = 901
    Height = 481
    Align = alClient
    TabOrder = 1
    object CustomMasterCxGrid: TcxGrid
      Left = 1
      Top = 1
      Width = 899
      Height = 479
      Align = alClient
      TabOrder = 0
      object CustomMasterCxGridDBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = TrainFaresDs
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.CellHints = True
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsData.Appending = True
        OptionsView.GroupByBox = False
        object CustomMasterCxGridDBTableView1FromTrainStations_id: TcxGridDBColumn
          Caption = 'From '
          DataBinding.FieldName = 'FromTrainStations_id'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.DropDownWidth = 200
          Properties.KeyFieldNames = 'Trainstations_id'
          Properties.ListColumns = <
            item
              FieldName = 'Station'
            end>
          Properties.ListSource = TrainStationsDs
          Options.Grouping = False
        end
        object CustomMasterCxGridDBTableView1ToTrainStations_id: TcxGridDBColumn
          Caption = 'To'
          DataBinding.FieldName = 'ToTrainStations_id'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.DropDownWidth = 200
          Properties.KeyFieldNames = 'Trainstations_id'
          Properties.ListColumns = <
            item
              FieldName = 'Station'
            end>
          Properties.ListSource = TrainStationsDs
          Options.Grouping = False
        end
        object CustomMasterCxGridDBTableView1Class_id: TcxGridDBColumn
          Caption = 'Class'
          DataBinding.FieldName = 'Class_id'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'class_id'
          Properties.ListColumns = <
            item
              FieldName = 'Code'
            end>
          Properties.ListSource = ClassDs
          Options.Grouping = False
          Width = 77
        end
        object CustomMasterCxGridDBTableView1Wet: TcxGridDBColumn
          DataBinding.FieldName = 'Wet'
          Width = 72
        end
        object CustomMasterCxGridDBTableView1BasFare: TcxGridDBColumn
          Caption = 'Base Fare'
          DataBinding.FieldName = 'BaseFare'
          Options.Filtering = False
          Options.Grouping = False
          Width = 90
        end
        object CustomMasterCxGridDBTableView1ResFare: TcxGridDBColumn
          Caption = 'Res Fare'
          DataBinding.FieldName = 'ResFare'
          Options.Filtering = False
          Options.Grouping = False
          Width = 88
        end
        object CustomMasterCxGridDBTableView1SfstFare: TcxGridDBColumn
          Caption = 'Sfst Fare'
          DataBinding.FieldName = 'SfstFare'
          Options.Filtering = False
          Options.Grouping = False
          Width = 92
        end
        object CustomMasterCxGridDBTableView1OthrFare: TcxGridDBColumn
          Caption = 'Other Fare'
          DataBinding.FieldName = 'OthrFare'
          Options.Filtering = False
          Options.Grouping = False
          Width = 91
        end
        object CustomMasterCxGridDBTableView1TtklFare: TcxGridDBColumn
          Caption = 'Ttkl Fare'
          DataBinding.FieldName = 'TtklFare'
          Options.Filtering = False
          Options.Grouping = False
          Width = 87
        end
        object CustomMasterCxGridDBTableView1AddlrFare: TcxGridDBColumn
          Caption = 'Addlr Fare'
          DataBinding.FieldName = 'AddlrFare'
          Options.Filtering = False
          Options.Grouping = False
          Width = 86
        end
        object CustomMasterCxGridDBTableView1TotalFare: TcxGridDBColumn
          Caption = 'Total Fare'
          DataBinding.FieldName = 'TotalFare'
          Options.Filtering = False
          Options.Grouping = False
          Width = 86
        end
      end
      object CustomMasterCxGridLevel1: TcxGridLevel
        GridView = CustomMasterCxGridDBTableView1
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 514
    Width = 901
    Height = 41
    Align = alBottom
    TabOrder = 2
    object cxCloseBtn: TcxButton
      Left = 772
      Top = 11
      Width = 75
      Height = 22
      Caption = '&Close'
      TabOrder = 0
      OnClick = cxCloseBtnClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        33333FFFFFFFFFFFFFFF000000000000000077777777777777770F7777777777
        77707F3F3333333333370F988888888888707F733FFFFFFFF3370F8800000000
        88707F337777777733370F888888888888707F333FFFFFFFF3370F8800000000
        88707F337777777733370F888888888888707F333333333333370F8888888888
        88707F333333333333370FFFFFFFFFFFFFF07FFFFFFFFFFFFFF7000000000000
        0000777777777777777733333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
    end
    object cxButton3: TcxButton
      Left = 14
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Utilities'
      TabOrder = 1
      DropDownMenu = PopupMenu1
      Kind = cxbkDropDown
    end
  end
  object TrainFaresSds: TSQLDataSet
    CommandText = 
      'SELECT * FROM TrainWiseFares '#13#10'WHERE TrainNo = :TrainNo'#13#10'AND Wef' +
      ' = :Wef'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'TrainNo'
        ParamType = ptInput
        Size = 11
      end
      item
        DataType = ftTimeStamp
        Name = 'Wef'
        ParamType = ptInput
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 416
    Top = 344
  end
  object TrainFaresDsp: TDataSetProvider
    DataSet = TrainFaresSds
    Left = 448
    Top = 344
  end
  object TrainFaresDs: TDataSource
    DataSet = TrainFaresCds
    Left = 504
    Top = 344
  end
  object TrainFaresCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'TrainFaresDsp'
    AfterInsert = TrainFaresCdsAfterInsert
    BeforePost = TrainFaresCdsBeforePost
    AfterPost = TrainFaresCdsAfterPost
    AfterDelete = TrainFaresCdsAfterDelete
    Left = 477
    Top = 344
    object TrainFaresCdsTrainWiseFares_id: TIntegerField
      FieldName = 'TrainWiseFares_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TrainFaresCdsWef: TSQLTimeStampField
      FieldName = 'Wef'
    end
    object TrainFaresCdsWet: TSQLTimeStampField
      FieldName = 'Wet'
    end
    object TrainFaresCdsFromTrainStations_id: TIntegerField
      FieldName = 'FromTrainStations_id'
    end
    object TrainFaresCdsToTrainStations_id: TIntegerField
      FieldName = 'ToTrainStations_id'
    end
    object TrainFaresCdsClass_id: TIntegerField
      FieldName = 'Class_id'
    end
    object TrainFaresCdsResFare: TFMTBCDField
      FieldName = 'ResFare'
      DisplayFormat = '#,##0.00'
      Precision = 18
    end
    object TrainFaresCdsSfstFare: TFMTBCDField
      FieldName = 'SfstFare'
      DisplayFormat = '#,##0.00'
      Precision = 18
    end
    object TrainFaresCdsOthrFare: TFMTBCDField
      FieldName = 'OthrFare'
      DisplayFormat = '#,##0.00'
      Precision = 18
    end
    object TrainFaresCdsTtklFare: TFMTBCDField
      FieldName = 'TtklFare'
      DisplayFormat = '#,##0.00'
      Precision = 18
    end
    object TrainFaresCdsAddlrFare: TFMTBCDField
      FieldName = 'AddlrFare'
      DisplayFormat = '#,##0.00'
      Precision = 18
    end
    object TrainFaresCdsBaseFare: TFMTBCDField
      FieldName = 'BaseFare'
      DisplayFormat = '#,##0.00'
      Precision = 18
    end
    object TrainFaresCdsTotalFare: TFMTBCDField
      FieldName = 'TotalFare'
      DisplayFormat = '#,##0.00'
      Precision = 18
    end
    object TrainFaresCdsTrainNo: TStringField
      FieldName = 'TrainNo'
      Size = 10
    end
  end
  object TrainsSds: TSQLDataSet
    CommandText = 
      'SELECT t.TrainNo, t.TrainName '#13#10'FROM (SELECT t1.TrainNo, MAX(t1.' +
      'wef) as Wef FROM Trains t1 GROUP BY t1.TrainNo) t1 '#13#10'     INNER ' +
      'JOIN Trains t ON t.TrainNo = t1.TrainNo and t.Wef = t1.Wef'#13#10'ORDE' +
      'R BY t.TrainNo'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 208
    Top = 8
  end
  object TrainsDsp: TDataSetProvider
    DataSet = TrainsSds
    Left = 224
    Top = 8
  end
  object TrainsDs: TDataSource
    DataSet = TrainsCds
    Left = 260
    Top = 8
  end
  object TrainsCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'TrainsDsp'
    Left = 240
    Top = 8
    object TrainsCdsTrainNo: TStringField
      FieldName = 'TrainNo'
      Size = 10
    end
    object TrainsCdsTrainName: TStringField
      FieldName = 'TrainName'
      Size = 100
    end
  end
  object TrainStationsSds: TSQLDataSet
    CommandText = 
      'SELECT Trainstations_id, Station FROM Trainstations '#13#10'ORDER BY S' +
      'tation'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 320
    Top = 8
  end
  object TrainStationsDsp: TDataSetProvider
    DataSet = TrainStationsSds
    Left = 336
    Top = 8
  end
  object TrainStationsDs: TDataSource
    DataSet = TrainStationsCds
    Left = 372
    Top = 8
  end
  object TrainStationsCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'TrainStationsDsp'
    Left = 352
    Top = 8
    object TrainStationsCdsTrainstations_id: TIntegerField
      FieldName = 'Trainstations_id'
    end
    object TrainStationsCdsStation: TStringField
      FieldName = 'Station'
      Size = 50
    end
  end
  object ClassSds: TSQLDataSet
    CommandText = 
      'SELECT Class_id, Class, Code FROM Class'#13#10'WHERE Tickets_id = 2'#13#10'O' +
      'RDER BY Class'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 112
    Top = 272
  end
  object ClassDsp: TDataSetProvider
    DataSet = ClassSds
    Left = 128
    Top = 272
  end
  object ClassCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ClassDsp'
    Left = 144
    Top = 272
    object ClassCdsclass_id: TIntegerField
      FieldName = 'class_id'
    end
    object ClassCdsclass: TStringField
      FieldName = 'class'
      Size = 30
    end
    object ClassCdsCode: TStringField
      FieldName = 'Code'
      Size = 5
    end
  end
  object ClassDs: TDataSource
    DataSet = ClassCds
    Left = 164
    Top = 272
  end
  object WefDS: TDataSource
    DataSet = WefCds
    Left = 680
    Top = 3
  end
  object WefCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'WefDsp'
    Left = 672
    Top = 3
    object WefCdsWef: TSQLTimeStampField
      FieldName = 'Wef'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
  end
  object WefDsp: TDataSetProvider
    DataSet = WefSds
    Left = 656
    Top = 3
  end
  object WefSds: TSQLDataSet
    CommandText = 'SELECT DISTINCT Wef '#13#10'FROM TrainWiseFares ORDER BY Wef DESC'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 632
    Top = 3
  end
  object PopupMenu1: TPopupMenu
    Left = 88
    Top = 512
    object ImportTrainFares1: TMenuItem
      Caption = 'Import Train Fares'
      OnClick = ImportTrainFares1Click
    end
  end
end
