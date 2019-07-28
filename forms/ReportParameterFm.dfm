object ReportParameterForm: TReportParameterForm
  Left = 397
  Top = 43
  Width = 603
  Height = 400
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'ReportParameterForm'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 570
    Height = 41
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object DateRangeLabel: TLabel
      Left = 48
      Top = 11
      Width = 69
      Height = 13
      Caption = 'Date Range'
      Transparent = True
    end
    object FromDateLabel: TLabel
      Left = 156
      Top = 12
      Width = 63
      Height = 13
      Caption = 'Start Date:'
      Transparent = True
    end
    object ToDateLabel: TLabel
      Left = 377
      Top = 12
      Width = 58
      Height = 13
      Caption = 'End Date:'
      Transparent = True
    end
    object cxDateCkb: TcxCheckBox
      Left = 16
      Top = 8
      TabOrder = 0
      Transparent = True
      Width = 25
    end
    object cxDateEdit1: TcxDateEdit
      Left = 224
      Top = 9
      TabOrder = 1
      Width = 121
    end
    object cxDateEdit2: TcxDateEdit
      Left = 440
      Top = 10
      TabOrder = 2
      Width = 121
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 570
    Height = 41
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object CompanyLabel: TLabel
      Left = 48
      Top = 11
      Width = 52
      Height = 13
      Caption = 'Company'
      Transparent = True
    end
    object cxCompanyCkb: TcxCheckBox
      Left = 16
      Top = 8
      TabOrder = 0
      Transparent = True
      Width = 25
    end
    object cxCompanyLCMB: TcxLookupComboBox
      Left = 154
      Top = 8
      Properties.KeyFieldNames = 'companies_id'
      Properties.ListColumns = <
        item
          FieldName = 'name'
        end>
      Properties.ListSource = BackOfficeDataModule.CompanyDS
      Properties.OnEditValueChanged = cxCompanyLCMBPropertiesEditValueChanged
      TabOrder = 1
      Width = 287
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 328
    Width = 570
    Height = 41
    Align = alBottom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    object cxOkButton: TcxButton
      Left = 192
      Top = 8
      Width = 75
      Height = 25
      Caption = 'OK'
      Default = True
      ModalResult = 1
      TabOrder = 0
      OnClick = cxOkButtonClick
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
  object Panel4: TPanel
    Left = 0
    Top = 246
    Width = 570
    Height = 41
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    object MonthLabel: TLabel
      Left = 48
      Top = 11
      Width = 36
      Height = 13
      Caption = 'Month'
      Transparent = True
    end
    object Label7: TLabel
      Left = 334
      Top = 11
      Width = 27
      Height = 13
      Alignment = taRightJustify
      Caption = 'Year'
      Transparent = True
    end
    object cxMonthCkb: TcxCheckBox
      Left = 16
      Top = 8
      TabOrder = 0
      Transparent = True
      Width = 25
    end
    object cxMonthLCMB: TcxLookupComboBox
      Left = 154
      Top = 8
      Properties.KeyFieldNames = 'Months_id'
      Properties.ListColumns = <
        item
          FieldName = 'MonthName'
        end>
      Properties.ListSource = MonthDS
      TabOrder = 1
      Width = 127
    end
    object YearEdit: TcxMaskEdit
      Left = 374
      Top = 9
      Properties.EditMask = '0000;1;_'
      Properties.MaxLength = 0
      TabOrder = 2
      Text = '    '
      Width = 66
    end
    object VouNoEdit: TcxMaskEdit
      Left = 152
      Top = 8
      Properties.MaxLength = 0
      TabOrder = 3
      Text = '    '
      Visible = False
      Width = 90
    end
  end
  object Panel7: TPanel
    Left = 0
    Top = 205
    Width = 570
    Height = 41
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    object OrganisationLabel: TLabel
      Left = 48
      Top = 11
      Width = 72
      Height = 13
      Caption = 'Organisation'
      Transparent = True
    end
    object cxOrganisationCkb: TcxCheckBox
      Left = 16
      Top = 8
      TabOrder = 0
      Transparent = True
      Width = 25
    end
    object cxOrganisationLCMB: TcxLookupComboBox
      Left = 154
      Top = 8
      Properties.DropDownWidth = 300
      Properties.KeyFieldNames = 'Addressbook_id'
      Properties.ListColumns = <
        item
          MinWidth = 200
          FieldName = 'Organisation'
        end
        item
          MinWidth = 100
          FieldName = 'City'
        end>
      Properties.ListSource = BackOfficeDataModule.OrgDS
      TabOrder = 1
      Width = 287
    end
  end
  object Panel8: TPanel
    Left = 0
    Top = 164
    Width = 570
    Height = 41
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    object CityLabel: TLabel
      Left = 48
      Top = 11
      Width = 22
      Height = 13
      Caption = 'City'
      Transparent = True
    end
    object cxCityCkb: TcxCheckBox
      Left = 16
      Top = 8
      TabOrder = 0
      Transparent = True
      Width = 25
    end
    object cxCityLCMB: TcxLookupComboBox
      Left = 154
      Top = 8
      Properties.DropDownWidth = 300
      Properties.KeyFieldNames = 'cities_id'
      Properties.ListColumns = <
        item
          MinWidth = 150
          FieldName = 'city'
        end
        item
          MinWidth = 150
          FieldName = 'state'
        end>
      Properties.ListSource = BackOfficeDataModule.CitiesDS
      TabOrder = 1
      Width = 287
    end
  end
  object Panel9: TPanel
    Left = 0
    Top = 123
    Width = 570
    Height = 41
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    object DivisionLabel: TLabel
      Left = 48
      Top = 11
      Width = 46
      Height = 13
      Caption = 'Division'
      Transparent = True
    end
    object cxDivisionCkb: TcxCheckBox
      Left = 16
      Top = 8
      TabOrder = 0
      Transparent = True
      Width = 25
    end
    object cxDivisionLCMB: TcxLookupComboBox
      Left = 154
      Top = 8
      Properties.KeyFieldNames = 'divisions_id'
      Properties.ListColumns = <
        item
          FieldName = 'division'
        end>
      Properties.ListSource = BackOfficeDataModule.DivisionDS
      TabOrder = 1
      Width = 287
    end
  end
  object Panel10: TPanel
    Left = 0
    Top = 82
    Width = 570
    Height = 41
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object OfficeLabel: TLabel
      Left = 48
      Top = 11
      Width = 35
      Height = 13
      Caption = 'Office'
      Transparent = True
    end
    object cxOfficeCkb: TcxCheckBox
      Left = 16
      Top = 8
      TabOrder = 0
      Transparent = True
      Width = 25
    end
    object cxOfficeLCMB: TcxLookupComboBox
      Left = 154
      Top = 8
      Properties.KeyFieldNames = 'offices_id'
      Properties.ListColumns = <
        item
          FieldName = 'offices'
        end>
      Properties.ListSource = BackOfficeDataModule.OfficeDS
      TabOrder = 1
      Width = 287
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 287
    Width = 570
    Height = 41
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    object NumberRangeLabel: TLabel
      Left = 48
      Top = 11
      Width = 38
      Height = 13
      Caption = 'Range'
      Transparent = True
    end
    object FromLabel: TLabel
      Left = 112
      Top = 11
      Width = 28
      Height = 13
      Caption = 'From'
      Transparent = True
    end
    object ToLabel: TLabel
      Left = 307
      Top = 11
      Width = 16
      Height = 13
      Caption = 'To'
      Transparent = True
    end
    object CashLbl: TLabel
      Left = 500
      Top = 12
      Width = 29
      Height = 13
      Caption = 'Cash'
      Transparent = True
      Visible = False
    end
    object cxNumberRangeCkb: TcxCheckBox
      Left = 16
      Top = 8
      TabOrder = 0
      Transparent = True
      Width = 25
    end
    object cxCashChk: TcxCheckBox
      Left = 472
      Top = 8
      TabOrder = 1
      Transparent = True
      Visible = False
      Width = 25
    end
    object FromEdit: TcxMaskEdit
      Left = 154
      Top = 8
      Properties.MaxLength = 0
      TabOrder = 2
      Text = '    '
      Width = 90
    end
    object ToEdit: TcxMaskEdit
      Left = 352
      Top = 8
      Properties.MaxLength = 0
      TabOrder = 3
      Text = '    '
      Width = 90
    end
  end
  object OrgSds: TSQLDataSet
    CommandText = 'select * from dbo.fn_addressbook(2,'#39'H'#39')'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 480
    Top = 208
  end
  object OrgDsp: TDataSetProvider
    DataSet = OrgSds
    Left = 496
    Top = 208
  end
  object OrgCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'OrgDsp'
    Left = 512
    Top = 208
    object IntegerField4: TIntegerField
      FieldName = 'Addressbook_id'
    end
    object StringField6: TStringField
      FieldName = 'Organisation'
      Size = 254
    end
    object StringField7: TStringField
      FieldName = 'City'
      Size = 100
    end
    object OrgCdsCities_id: TIntegerField
      FieldName = 'Cities_id'
    end
    object OrgCdsContact: TStringField
      FieldName = 'Contact'
      Size = 254
    end
  end
  object OrgDS: TDataSource
    DataSet = OrgCds
    Left = 528
    Top = 208
  end
  object MonthSds: TSQLDataSet
    CommandText = 'select * from Months order by Months_id'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 480
    Top = 248
  end
  object MonthDsp: TDataSetProvider
    DataSet = MonthSds
    Left = 496
    Top = 248
  end
  object MonthCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'MonthDsp'
    Left = 512
    Top = 248
  end
  object MonthDS: TDataSource
    DataSet = MonthCds
    Left = 528
    Top = 248
  end
end
