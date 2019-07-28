object ImportErrorsForm: TImportErrorsForm
  Left = 250
  Top = 114
  Width = 664
  Height = 423
  Caption = 'Errors During Import '
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 656
    Height = 389
    Align = alClient
    TabOrder = 0
    object cxGrid1: TcxGrid
      Left = 1
      Top = 1
      Width = 654
      Height = 387
      Hint = 'Right Click to  view errors during import'
      Align = alClient
      TabOrder = 0
      object cxGrid1DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = ErrorsDS
        DataController.KeyFieldNames = 'ImportErrors_id'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1ImportErrors_id: TcxGridDBColumn
          DataBinding.FieldName = 'ImportErrors_id'
          Visible = False
          Options.Editing = False
          Options.Filtering = False
        end
        object cxGrid1DBTableView1RowNo: TcxGridDBColumn
          Caption = 'Row No'
          DataBinding.FieldName = 'RowNo'
          Options.Editing = False
          Options.Filtering = False
          Width = 87
        end
        object cxGrid1DBTableView1ErrorDescription: TcxGridDBColumn
          Caption = 'Error Description'
          DataBinding.FieldName = 'ErrorDescription'
          Options.Editing = False
          Options.Filtering = False
          Width = 503
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  object ErrorsSds: TSQLDataSet
    CommandText = 'SELECT * FROM ImportErrors'#13#10'Order By RowNo'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 120
    Top = 35
  end
  object ErrorsDsp: TDataSetProvider
    DataSet = ErrorsSds
    Left = 136
    Top = 35
  end
  object ErrorsCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ErrorsDsp'
    Left = 152
    Top = 35
    object ErrorsCdsImportErrors_id: TIntegerField
      FieldName = 'ImportErrors_id'
    end
    object ErrorsCdsRowNo: TIntegerField
      FieldName = 'RowNo'
    end
    object ErrorsCdsErrorDescription: TStringField
      FieldName = 'ErrorDescription'
      Size = 256
    end
  end
  object ErrorsDS: TDataSource
    DataSet = ErrorsCds
    Left = 168
    Top = 35
  end
end
