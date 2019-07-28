object PrincipalAgentMultiForm: TPrincipalAgentMultiForm
  Left = 84
  Top = 251
  Width = 696
  Height = 416
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
  object Panel7: TPanel
    Left = 0
    Top = 0
    Width = 688
    Height = 341
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object OrganisationLabel: TLabel
      Left = 48
      Top = 11
      Width = 87
      Height = 13
      Caption = 'Principal Agent'
    end
    object PrincipalAgentsGrid: TcxGrid
      Left = 1
      Top = 1
      Width = 686
      Height = 339
      Align = alClient
      TabOrder = 0
      object PrincipalAgentsGridDBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        NavigatorButtons.First.Visible = True
        NavigatorButtons.PriorPage.Visible = True
        NavigatorButtons.Prior.Visible = True
        NavigatorButtons.Next.Visible = True
        NavigatorButtons.NextPage.Visible = True
        NavigatorButtons.Last.Visible = True
        NavigatorButtons.Insert.Visible = True
        NavigatorButtons.Delete.Visible = True
        NavigatorButtons.Edit.Visible = True
        NavigatorButtons.Post.Visible = True
        NavigatorButtons.Cancel.Visible = True
        NavigatorButtons.Refresh.Visible = True
        NavigatorButtons.SaveBookmark.Visible = True
        NavigatorButtons.GotoBookmark.Visible = True
        NavigatorButtons.Filter.Visible = True
        DataController.DataSource = OrgDS
        DataController.KeyFieldNames = 'Addressbook_id'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsData.Appending = True
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
        Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
        object PrincipalAgentsGridDBTableView1Addressbook_id: TcxGridDBColumn
          DataBinding.FieldName = 'Addressbook_id'
          Visible = False
          VisibleForCustomization = False
        end
        object PrincipalAgentsGridDBTableView1Organisation: TcxGridDBColumn
          DataBinding.FieldName = 'Organisation'
          Options.Editing = False
          Width = 555
        end
      end
      object PrincipalAgentsGridLevel1: TcxGridLevel
        GridView = PrincipalAgentsGridDBTableView1
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 341
    Width = 688
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
      Left = 296
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
  end
  object OrgSds: TSQLDataSet
    CommandText = 'select * from dbo.fn_addressbook(2,'#39'OA'#39')'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 496
    Top = 8
  end
  object OrgDsp: TDataSetProvider
    DataSet = OrgSds
    Left = 512
    Top = 8
  end
  object OrgCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'OrgDsp'
    Left = 528
    Top = 8
    object OrgCdsAddressbook_id: TIntegerField
      FieldName = 'Addressbook_id'
    end
    object OrgCdsOrganisation: TStringField
      FieldName = 'Organisation'
      Size = 254
    end
    object OrgCdsCity: TStringField
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
    object OrgCdsPostalCode: TStringField
      FieldName = 'PostalCode'
      Size = 10
    end
  end
  object OrgDS: TDataSource
    DataSet = OrgCds
    Left = 544
    Top = 8
  end
end
