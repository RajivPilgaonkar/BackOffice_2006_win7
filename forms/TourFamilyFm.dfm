inherited TourFamilyForm: TTourFamilyForm
  Left = 201
  Top = 194
  Width = 632
  Height = 530
  Caption = 'Tour Family Form'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited CustomMasterGridGroupBox: TGroupBox
    Top = 69
    Width = 611
    Height = 420
    Caption = 'Tour Family'
    inherited SearchLbl: TLabel
      Top = 392
    end
    inherited KeyIdDBText: TDBText
      Left = 454
      Top = 393
    end
    inherited CustomMasterDBGrid: TDBGrid
      Width = 577
      Height = 352
      Columns = <
        item
          Expanded = False
          FieldName = 'mastercode'
          Title.Caption = 'Master Code'
          Width = 77
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'name'
          Title.Caption = 'Master Name'
          Width = 210
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'fit'
          PickList.Strings = (
            'Y'
            'N')
          Title.Caption = 'Fit'
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'noofdays'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'tailormade'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'active'
          Title.Caption = 'Active'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'masters_id'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'addressbook_id'
          Title.Caption = 'Principal Agent'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'companies_id'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'AgentLookUp'
          Title.Caption = 'Principal Agent'
          Width = 160
          Visible = True
        end>
    end
    inherited SearchEdit: TEdit
      Top = 389
    end
    inherited CloseBtn: TBitBtn
      Left = 521
      Top = 377
    end
  end
  object Panel1: TPanel [1]
    Left = 0
    Top = 0
    Width = 624
    Height = 64
    Align = alTop
    TabOrder = 1
    object CalSBtn: TSpeedButton
      Left = 54
      Top = 8
      Width = 39
      Height = 29
      Hint = 'Tour Calendar'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333FFFFFFFFFFFFFFF000000000000000077777777777777770FF7FF7FF7FF
        7FF07FF7FF7FF7F37F3709F79F79F7FF7FF077F77F77F7FF7FF7077777777777
        777077777777777777770FF7FF7FF7FF7FF07FF7FF7FF7FF7FF709F79F79F79F
        79F077F77F77F77F77F7077777777777777077777777777777770FF7FF7FF7FF
        7FF07FF7FF7FF7FF7FF709F79F79F79F79F077F77F77F77F77F7077777777777
        777077777777777777770FFFFF7FF7FF7FF07F33337FF7FF7FF70FFFFF79F79F
        79F07FFFFF77F77F77F700000000000000007777777777777777CCCCCC8888CC
        CCCC777777FFFF777777CCCCCCCCCCCCCCCC7777777777777777}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = CalSBtnClick
    end
    object DepDateSBtn: TSpeedButton
      Left = 98
      Top = 8
      Width = 39
      Height = 29
      Hint = 'Departure Dates'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        003337777777777777F330FFFFFFFFFFF03337F3333FFF3337F330FFFF000FFF
        F03337F33377733337F330FFFFF0FFFFF03337F33337F33337F330FFFF00FFFF
        F03337F33377F33337F330FFFFF0FFFFF03337F33337333337F330FFFFFFFFFF
        F03337FFF3F3F3F3F7F33000F0F0F0F0F0333777F7F7F7F7F7F330F0F000F070
        F03337F7F777F777F7F330F0F0F0F070F03337F7F7373777F7F330F0FF0FF0F0
        F03337F733733737F7F330FFFFFFFF00003337F33333337777F330FFFFFFFF0F
        F03337FFFFFFFF7F373330999999990F033337777777777F733330FFFFFFFF00
        333337FFFFFFFF77333330000000000333333777777777733333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = DepDateSBtnClick
    end
    object ToursSBtn: TSpeedButton
      Left = 11
      Top = 8
      Width = 39
      Height = 29
      Hint = 'Tours'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555550555
        555555555555F55555555505555B0555570555F55557F55555F55B50555B0555
        7B55575F5557F555575555B5055B5557B5555575F55755557555555B5550005B
        55555557555FFF575555555555BBB0055555555555777FF5555555555BBBBB00
        55555555577777FF55555000BBBBBBB050005FFF7777777F5FFFBBB5BBBBBBB0
        BBB577757777777F77755555BBBBBBB55555555577777775555555555BBBBB55
        55555555577777555555555705BBB55505555555F5777555F555557B5555055B
        505555575555F5575F5557B5555B0555B50555755557F55575F55B55555B0555
        5B5557555557F55557555555555B555555555555555755555555}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = ToursSBtnClick
    end
    object TailorMadeChk: TCheckBox
      Left = 8
      Top = 43
      Width = 126
      Height = 17
      Caption = 'Tailor Made'
      TabOrder = 0
      OnClick = TailorMadeChkClick
    end
    object ActiveChk: TCheckBox
      Left = 160
      Top = 43
      Width = 151
      Height = 17
      Caption = 'Display Active Only'
      TabOrder = 1
      OnClick = ActiveChkClick
    end
  end
  inherited DataSetProvider: TDataSetProvider
    Left = 456
    Top = 160
  end
  inherited MasterDS: TDataSource
    Left = 424
    Top = 128
  end
  inherited MasterCDS: TClientDataSet
    Filtered = True
    IndexFieldNames = 'MasterCode'
    Left = 456
    Top = 128
    object MasterCDSmastercode: TStringField
      FieldName = 'mastercode'
      FixedChar = True
      Size = 50
    end
    object MasterCDSname: TStringField
      FieldName = 'name'
      FixedChar = True
      Size = 50
    end
    object MasterCDSfit: TBooleanField
      FieldName = 'fit'
      DisplayValues = 'Y;N'
    end
    object MasterCDSnoofdays: TIntegerField
      FieldName = 'noofdays'
    end
    object MasterCDStailormade: TBooleanField
      FieldName = 'tailormade'
    end
    object MasterCDSactive: TBooleanField
      FieldName = 'active'
      DisplayValues = 'Y;N'
    end
    object MasterCDSmasters_id: TIntegerField
      FieldName = 'masters_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object MasterCDSaddressbook_id: TIntegerField
      FieldName = 'addressbook_id'
    end
    object MasterCDScompanies_id: TIntegerField
      FieldName = 'companies_id'
    end
    object MasterCDSAgentLookUp: TStringField
      FieldKind = fkLookup
      FieldName = 'AgentLookUp'
      LookupDataSet = AgentCDS
      LookupKeyFields = 'AddressBook_id'
      LookupResultField = 'Organisation'
      KeyFields = 'addressbook_id'
      Size = 80
      Lookup = True
    end
  end
  inherited MasterSQLTable: TSQLTable
    TableName = 'Masters'
    Left = 424
    Top = 160
  end
  object AgentCDS: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'AgentDSP'
    BeforeInsert = MasterCDSBeforeInsert
    AfterInsert = MasterCDSAfterInsert
    BeforeEdit = MasterCDSBeforeEdit
    BeforePost = MasterCDSBeforePost
    AfterPost = MasterCDSAfterPost
    BeforeDelete = MasterCDSBeforeDelete
    Left = 432
    Top = 312
    object AgentCDSAddressBook_id: TIntegerField
      FieldName = 'AddressBook_id'
    end
    object AgentCDSOrganisation: TStringField
      FieldName = 'Organisation'
      FixedChar = True
      Size = 60
    end
  end
  object AgentDSP: TDataSetProvider
    DataSet = AgentQry
    Left = 432
    Top = 344
  end
  object AgentQry: TSQLQuery
    Active = True
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT AddressBook_id, Organisation FROM AddressBook'
      'ORDER BY Organisation')
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 400
    Top = 344
    object AgentQryAddressBook_id: TIntegerField
      FieldName = 'AddressBook_id'
    end
    object AgentQryOrganisation: TStringField
      FieldName = 'Organisation'
      FixedChar = True
      Size = 60
    end
  end
end
