object MasterCopyForm: TMasterCopyForm
  Left = 343
  Top = 293
  Width = 518
  Height = 134
  Caption = 'Copy Masters'
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
  object GroupBox1: TcxGroupBox
    Left = 0
    Top = 0
    Caption = ' Copy '
    TabOrder = 0
    Height = 57
    Width = 502
    object Label1: TLabel
      Left = 8
      Top = 27
      Width = 87
      Height = 13
      Caption = 'From TourCode'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 270
      Top = 28
      Width = 75
      Height = 13
      Caption = 'To TourCode'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object cxFromMasterLCMB: TcxLookupComboBox
      Left = 100
      Top = 26
      Properties.DropDownWidth = 300
      Properties.KeyFieldNames = 'masters_id'
      Properties.ListColumns = <
        item
          FieldName = 'MasterCode'
        end
        item
          FieldName = 'name'
        end>
      Properties.ListSource = MasterDS
      Properties.ValidateOnEnter = False
      EditValue = 0
      Style.Color = 16247513
      TabOrder = 0
      Width = 141
    end
    object cxToMasterLCMB: TcxLookupComboBox
      Left = 348
      Top = 26
      Properties.DropDownWidth = 300
      Properties.KeyFieldNames = 'masters_id'
      Properties.ListColumns = <
        item
          FieldName = 'MasterCode'
        end
        item
          FieldName = 'name'
        end>
      Properties.ListSource = MasterDS
      Properties.ValidateOnEnter = False
      EditValue = 0
      Style.Color = 16247513
      TabOrder = 1
      Width = 141
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 58
    Width = 510
    Height = 42
    Align = alBottom
    TabOrder = 1
    object cxOKButton: TcxButton
      Left = 288
      Top = 8
      Width = 75
      Height = 25
      Caption = 'OK'
      ModalResult = 1
      TabOrder = 0
    end
    object cxCancelButton: TcxButton
      Left = 120
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 1
    end
  end
  object MasterSds: TSQLDataSet
    CommandText = 
      'select masters_id, MasterCode,[name] from Masters'#13#10'ORDER BY Mast' +
      'erCode'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 224
  end
  object MasterDsp: TDataSetProvider
    DataSet = MasterSds
    Left = 240
  end
  object MasterCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'MasterDsp'
    Left = 256
    object MasterCdsmasters_id: TIntegerField
      FieldName = 'masters_id'
    end
    object MasterCdsMasterCode: TStringField
      FieldName = 'MasterCode'
      Size = 50
    end
    object MasterCdsname: TStringField
      FieldName = 'name'
      Size = 50
    end
  end
  object MasterDS: TDataSource
    DataSet = MasterCds
    Left = 272
  end
end
