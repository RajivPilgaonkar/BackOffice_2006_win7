object BcpOptionForm: TBcpOptionForm
  Left = 112
  Top = 64
  Width = 681
  Height = 372
  Caption = 'Change BCP Options'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 673
    Height = 300
    Align = alClient
    TabOrder = 0
    object cxGroupBox3: TcxGroupBox
      Left = 1
      Top = 1
      Align = alTop
      Caption = 'BCP Path'
      TabOrder = 0
      Height = 89
      Width = 671
      object cxLabel1: TcxLabel
        Left = 16
        Top = 40
        Caption = 'BCP Path'
        Transparent = True
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 95
        Top = 38
        DataBinding.DataField = 'text'
        DataBinding.DataSource = BCPDs
        TabOrder = 1
        Width = 121
      end
      object cxButton1: TcxButton
        Left = 241
        Top = 39
        Width = 112
        Height = 25
        Caption = 'Save Changes'
        TabOrder = 2
        OnClick = cxButton1Click
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
    end
    object Panel3: TPanel
      Left = 1
      Top = 90
      Width = 671
      Height = 209
      Align = alClient
      TabOrder = 1
      object cxGroupBox2: TcxGroupBox
        Left = 1
        Top = 1
        Align = alLeft
        Caption = 'Local SQL'
        TabOrder = 0
        Height = 207
        Width = 217
        object CustomMasterCxGrid: TcxGrid
          Left = 3
          Top = 18
          Width = 211
          Height = 186
          Align = alClient
          TabOrder = 0
          object CustomMasterCxGridDBTableView1: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = LocalDs
            DataController.KeyFieldNames = 'defaults_id'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.FocusCellOnTab = True
            OptionsBehavior.FocusFirstCellOnNewRecord = True
            OptionsBehavior.GoToNextCellOnEnter = True
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsView.GroupByBox = False
            object CustomMasterCxGridDBTableView1defaults_id: TcxGridDBColumn
              DataBinding.FieldName = 'defaults_id'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
            end
            object CustomMasterCxGridDBTableView1text: TcxGridDBColumn
              Caption = 'Local Host Params'
              DataBinding.FieldName = 'text'
              Options.Filtering = False
              Options.Sorting = False
              Width = 198
            end
          end
          object CustomMasterCxGridLevel1: TcxGridLevel
            GridView = CustomMasterCxGridDBTableView1
          end
        end
      end
      object cxGroupBox1: TcxGroupBox
        Left = 218
        Top = 1
        Align = alClient
        Caption = 'Remote SQL'
        TabOrder = 1
        Height = 207
        Width = 452
        object cxGrid1: TcxGrid
          Left = 3
          Top = 18
          Width = 214
          Height = 186
          TabOrder = 0
          object cxGridDBTableView1: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = RemoteDs
            DataController.KeyFieldNames = 'defaults_id'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.FocusCellOnTab = True
            OptionsBehavior.FocusFirstCellOnNewRecord = True
            OptionsBehavior.GoToNextCellOnEnter = True
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsView.GroupByBox = False
            object cxGridDBTableView1defaults_id: TcxGridDBColumn
              DataBinding.FieldName = 'defaults_id'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
            end
            object cxGridDBTableView1text: TcxGridDBColumn
              Caption = 'Remote Host Params'
              DataBinding.FieldName = 'text'
              Options.Filtering = False
              Options.Sorting = False
              Width = 202
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxGridDBTableView1
          end
        end
        object cxGrid2: TcxGrid
          Left = 224
          Top = 18
          Width = 225
          Height = 186
          TabOrder = 1
          object cxGridDBTableView2: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = Remote2Ds
            DataController.KeyFieldNames = 'defaults_id'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.FocusCellOnTab = True
            OptionsBehavior.FocusFirstCellOnNewRecord = True
            OptionsBehavior.GoToNextCellOnEnter = True
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsView.GroupByBox = False
            object cxGridDBColumn1: TcxGridDBColumn
              DataBinding.FieldName = 'defaults_id'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
            end
            object cxGridDBColumn2: TcxGridDBColumn
              Caption = 'Remote Host Params'
              DataBinding.FieldName = 'text'
              Options.Filtering = False
              Options.Sorting = False
              Width = 202
            end
          end
          object cxGridLevel2: TcxGridLevel
            GridView = cxGridDBTableView2
          end
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 300
    Width = 673
    Height = 38
    Align = alBottom
    TabOrder = 1
    object CloseBtn: TcxButton
      Left = 353
      Top = 7
      Width = 75
      Height = 25
      Caption = 'Close'
      TabOrder = 0
      OnClick = CloseBtnClick
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
  end
  object LocalSds: TSQLDataSet
    CommandText = 'SELECT * FROM Defaults WHERE Defaults_id BETWEEN 29 AND 32'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 72
    Top = 216
  end
  object LocalDsp: TDataSetProvider
    DataSet = LocalSds
    Left = 104
    Top = 216
  end
  object LocalCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'LocalDsp'
    AfterPost = LocalCdsAfterPost
    Left = 136
    Top = 216
    object LocalCdsdefaults_id: TIntegerField
      FieldName = 'defaults_id'
    end
    object LocalCdsitem: TStringField
      FieldName = 'item'
      Size = 50
    end
    object LocalCdsnumber: TIntegerField
      FieldName = 'number'
    end
    object LocalCdstext: TStringField
      FieldName = 'text'
      Size = 200
    end
    object LocalCdsdate: TSQLTimeStampField
      FieldName = 'date'
    end
    object LocalCdstime: TSQLTimeStampField
      FieldName = 'time'
    end
    object LocalCdscomments: TStringField
      FieldName = 'comments'
      Size = 50
    end
    object LocalCdsnumericvalue: TBCDField
      FieldName = 'numericvalue'
      Precision = 4
      Size = 2
    end
    object LocalCdsboolean: TBooleanField
      FieldName = 'boolean'
    end
  end
  object LocalDs: TDataSource
    DataSet = LocalCds
    Left = 168
    Top = 216
  end
  object BCPSds: TSQLDataSet
    CommandText = 'SELECT * FROM Defaults WHERE Defaults_id = 28'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 232
    Top = 16
  end
  object BCPDsp: TDataSetProvider
    DataSet = BCPSds
    Left = 264
    Top = 16
  end
  object BCPCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'BCPDsp'
    AfterPost = BCPCdsAfterPost
    Left = 296
    Top = 16
    object BCPCdsdefaults_id: TIntegerField
      FieldName = 'defaults_id'
    end
    object BCPCdsitem: TStringField
      FieldName = 'item'
      Size = 50
    end
    object BCPCdsnumber: TIntegerField
      FieldName = 'number'
    end
    object BCPCdstext: TStringField
      FieldName = 'text'
      Size = 200
    end
    object BCPCdsdate: TSQLTimeStampField
      FieldName = 'date'
    end
    object BCPCdstime: TSQLTimeStampField
      FieldName = 'time'
    end
    object BCPCdscomments: TStringField
      FieldName = 'comments'
      Size = 50
    end
    object BCPCdsnumericvalue: TBCDField
      FieldName = 'numericvalue'
      Precision = 4
      Size = 2
    end
    object BCPCdsboolean: TBooleanField
      FieldName = 'boolean'
    end
  end
  object BCPDs: TDataSource
    DataSet = BCPCds
    Left = 328
    Top = 16
  end
  object RemoteSds: TSQLDataSet
    CommandText = 'SELECT * FROM Defaults WHERE Defaults_id BETWEEN 33 AND 36'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 280
    Top = 216
  end
  object RemoteDsp: TDataSetProvider
    DataSet = RemoteSds
    Left = 312
    Top = 216
  end
  object RemoteCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'RemoteDsp'
    AfterPost = RemoteCdsAfterPost
    Left = 344
    Top = 216
    object IntegerField1: TIntegerField
      FieldName = 'defaults_id'
    end
    object StringField1: TStringField
      FieldName = 'item'
      Size = 50
    end
    object IntegerField2: TIntegerField
      FieldName = 'number'
    end
    object StringField2: TStringField
      FieldName = 'text'
      Size = 200
    end
    object SQLTimeStampField1: TSQLTimeStampField
      FieldName = 'date'
    end
    object SQLTimeStampField2: TSQLTimeStampField
      FieldName = 'time'
    end
    object StringField3: TStringField
      FieldName = 'comments'
      Size = 50
    end
    object BCDField1: TBCDField
      FieldName = 'numericvalue'
      Precision = 4
      Size = 2
    end
    object BooleanField1: TBooleanField
      FieldName = 'boolean'
    end
  end
  object RemoteDs: TDataSource
    DataSet = RemoteCds
    Left = 376
    Top = 216
  end
  object Remote2Sds: TSQLDataSet
    CommandText = 'SELECT * FROM Defaults WHERE Defaults_id BETWEEN 37 AND 40'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 496
    Top = 168
  end
  object Remote2Dsp: TDataSetProvider
    DataSet = Remote2Sds
    Left = 528
    Top = 168
  end
  object Remote2Cds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Remote2Dsp'
    AfterPost = Remote2CdsAfterPost
    Left = 560
    Top = 168
    object IntegerField3: TIntegerField
      FieldName = 'defaults_id'
    end
    object StringField4: TStringField
      FieldName = 'item'
      Size = 50
    end
    object IntegerField4: TIntegerField
      FieldName = 'number'
    end
    object StringField5: TStringField
      FieldName = 'text'
      Size = 200
    end
    object SQLTimeStampField3: TSQLTimeStampField
      FieldName = 'date'
    end
    object SQLTimeStampField4: TSQLTimeStampField
      FieldName = 'time'
    end
    object StringField6: TStringField
      FieldName = 'comments'
      Size = 50
    end
    object BCDField2: TBCDField
      FieldName = 'numericvalue'
      Precision = 4
      Size = 2
    end
    object BooleanField2: TBooleanField
      FieldName = 'boolean'
    end
  end
  object Remote2Ds: TDataSource
    DataSet = Remote2Cds
    Left = 592
    Top = 168
  end
end
