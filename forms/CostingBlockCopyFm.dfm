object CostingBlockCopyForm: TCostingBlockCopyForm
  Left = 248
  Top = 76
  Width = 531
  Height = 155
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
    Left = 16
    Top = 4
    Caption = 'New Costing Block'
    TabOrder = 0
    Height = 73
    Width = 489
    object Label1: TcxLabel
      Left = 12
      Top = 32
      Caption = 'Master Code'
      Transparent = True
    end
    object Label2: TcxLabel
      Left = 236
      Top = 32
      Caption = 'Wef'
      Transparent = True
    end
    object cxWefDateEdit: TcxDateEdit
      Left = 272
      Top = 29
      TabOrder = 0
      Width = 121
    end
    object cxMasterCodeEdit: TcxLookupComboBox
      Left = 88
      Top = 29
      Properties.KeyFieldNames = 'Masters_id'
      Properties.ListColumns = <
        item
          FieldName = 'Mastercode'
        end>
      Properties.ListSource = MasterTourDs
      TabOrder = 1
      Width = 129
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 80
    Width = 523
    Height = 41
    Align = alBottom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object cxOkButton: TcxButton
      Left = 192
      Top = 8
      Width = 75
      Height = 25
      Caption = 'OK'
      ModalResult = 1
      TabOrder = 0
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333000003333333333F777773FF333333008877700
        33333337733FFF773F33330887000777033333733F777FFF73F330880FAFAF07
        703337F37733377FF7F33080F00000F07033373733777337F73F087F00A2200F
        77037F3737333737FF7F080A0A2A220A07037F737F3333737F7F0F0F0AAAA20F
        07037F737F3333737F7F0F0A0FAA2A0A08037F737FF33373737F0F7F00FFA00F
        780373F737FFF737F3733080F00000F0803337F73377733737F330F80FAFAF08
        8033373F773337733733330F8700078803333373FF77733F733333300FFF8800
        3333333773FFFF77333333333000003333333333377777333333}
      NumGlyphs = 2
    end
    object cxCancelButton: TcxButton
      Left = 312
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 1
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333000003333333333F777773FF333333008877700
        33333337733FFF773F33330887000777033333733F777FFF73F330880F9F9F07
        703337F37733377FF7F33080F00000F07033373733777337F73F087F0091100F
        77037F3737333737FF7F08090919110907037F737F3333737F7F0F0F0999910F
        07037F737F3333737F7F0F090F99190908037F737FF33373737F0F7F00FF900F
        780373F737FFF737F3733080F00000F0803337F73377733737F330F80F9F9F08
        8033373F773337733733330F8700078803333373FF77733F733333300FFF8800
        3333333773FFFF77333333333000003333333333377777333333}
      NumGlyphs = 2
    end
  end
  object MasterTourSds: TSQLDataSet
    CommandText = 
      'SELECT Masters_id, Mastercode FROM Masters'#13#10'WHERE FIT = 0'#13#10'ORDER' +
      ' BY Mastercode'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 152
    Top = 8
  end
  object MasterTourDsp: TDataSetProvider
    DataSet = MasterTourSds
    Left = 184
    Top = 8
  end
  object MasterTourCds: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'MasterTourDsp'
    Left = 213
    Top = 8
    object MasterTourCdsMasters_id: TIntegerField
      FieldName = 'Masters_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object MasterTourCdsMastercode: TStringField
      FieldName = 'Mastercode'
      Size = 50
    end
  end
  object MasterTourDs: TDataSource
    DataSet = MasterTourCds
    Left = 245
    Top = 8
  end
end
