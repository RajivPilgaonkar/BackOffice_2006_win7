inherited ToursCalendarForm: TToursCalendarForm
  Left = 393
  Top = 206
  Width = 385
  Height = 464
  HelpType = htKeyword
  Caption = 'Tours Calendar Form'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited CustomMasterGridGroupBox: TGroupBox
    Left = 9
    Top = 84
    Width = 360
    Height = 334
    Caption = 'Tour Calendar'
    inherited SearchLbl: TLabel
      Left = 11
      Top = 278
    end
    inherited KeyIdDBText: TDBText
      Left = 198
      Top = 265
    end
    inherited CustomMasterDBGrid: TDBGrid
      Left = 10
      Width = 337
      Height = 246
      Columns = <
        item
          Expanded = False
          FieldName = 'CodeLookUp'
          Title.Caption = 'Tour Code'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'tourcalendar_id'
          Visible = False
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'daysoffset'
          Title.Caption = 'Days Offset'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'masters_id'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'tourcodes_id'
          Visible = False
        end>
    end
    inherited SearchEdit: TEdit
      Left = 56
      Top = 274
    end
    inherited CloseBtn: TBitBtn
      Left = 275
      Top = 295
    end
    object DBNavigator1: TDBNavigator
      Left = 175
      Top = 276
      Width = 88
      Height = 22
      DataSource = TourFamilyDS
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 3
    end
  end
  object Panel1: TPanel [1]
    Left = 0
    Top = 0
    Width = 377
    Height = 80
    Align = alTop
    TabOrder = 1
    object FamilySBtn: TSpeedButton
      Left = 9
      Top = 7
      Width = 39
      Height = 29
      Hint = 'Tour Family'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        55555555FFFFFFFF5555555000000005555555577777777FF555550999999900
        55555575555555775F55509999999901055557F55555557F75F5001111111101
        105577FFFFFFFF7FF75F00000000000011057777777777775F755070FFFFFF0F
        01105777F555557F7FF75500FFFFFF0F00105577F555FF7F77575550FF70000F
        0F0055575FF777757F775555000FFFFF0F005555777555FF7F77555550FF7000
        0F055555575FF777757F555555000FFFFF05555555777555FF7F55555550FF70
        0005555555575FF7777555555555000555555555555577755555555555555555
        5555555555555555555555555555555555555555555555555555}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = FamilySBtnClick
    end
    object DepDateSBtn: TSpeedButton
      Left = 49
      Top = 7
      Width = 39
      Height = 29
      Hint = 'Departure Date'
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
    object TailorMadeChk: TCheckBox
      Left = 8
      Top = 53
      Width = 93
      Height = 18
      Caption = 'Tailor Made'
      TabOrder = 0
      OnClick = TailorMadeChkClick
    end
    object MasterCodeDBEdit: TDBEdit
      Left = 117
      Top = 53
      Width = 89
      Height = 21
      DataField = 'mastercode'
      DataSource = TourFamilyDS
      TabOrder = 1
    end
    object MasterNameDBEdit: TDBEdit
      Left = 221
      Top = 53
      Width = 129
      Height = 21
      DataField = 'name'
      DataSource = TourFamilyDS
      TabOrder = 2
    end
  end
  inherited DataSetProvider: TDataSetProvider
    Left = 271
    Top = 141
  end
  inherited MasterDS: TDataSource
    Left = 239
    Top = 109
  end
  inherited MasterCDS: TClientDataSet
    Filtered = True
    FieldDefs = <
      item
        Name = 'tourcalendar_id'
        DataType = ftInteger
      end
      item
        Name = 'daysoffset'
        DataType = ftInteger
      end
      item
        Name = 'masters_id'
        DataType = ftInteger
      end
      item
        Name = 'tourcodes_id'
        DataType = ftInteger
      end>
    IndexFieldNames = 'masters_id'
    MasterFields = 'masters_id'
    MasterSource = TourFamilyDS
    PacketRecords = 0
    StoreDefs = True
    Left = 271
    Top = 109
    object MasterCDStourcalendar_id: TIntegerField
      FieldName = 'tourcalendar_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object MasterCDSdaysoffset: TIntegerField
      FieldName = 'daysoffset'
    end
    object MasterCDSmasters_id: TIntegerField
      FieldName = 'masters_id'
    end
    object MasterCDStourcodes_id: TIntegerField
      FieldName = 'tourcodes_id'
      Visible = False
    end
    object MasterCDSCodeLookUp: TStringField
      FieldKind = fkLookup
      FieldName = 'CodeLookUp'
      LookupDataSet = TourCodeCDS
      LookupKeyFields = 'TourCodes_id'
      LookupResultField = 'TourCode'
      KeyFields = 'tourcodes_id'
      Size = 80
      Lookup = True
    end
  end
  inherited MasterSQLTable: TSQLTable
    TableName = 'TourCalendar'
    Left = 239
    Top = 141
  end
  object TourFamilyDS: TDataSource
    DataSet = TourFamilyCDS
    Left = 240
    Top = 16
  end
  object TourFamilyCDS: TClientDataSet
    Active = True
    Aggregates = <>
    Filtered = True
    Params = <>
    ProviderName = 'TourFamilyDSP'
    Left = 264
    Top = 16
    object TourFamilyCDSmastercode: TStringField
      FieldName = 'mastercode'
      FixedChar = True
      Size = 50
    end
    object TourFamilyCDSname: TStringField
      FieldName = 'name'
      FixedChar = True
      Size = 50
    end
    object TourFamilyCDSfit: TBooleanField
      FieldName = 'fit'
    end
    object TourFamilyCDSnoofdays: TIntegerField
      FieldName = 'noofdays'
    end
    object TourFamilyCDStailormade: TBooleanField
      FieldName = 'tailormade'
    end
    object TourFamilyCDSactive: TBooleanField
      FieldName = 'active'
    end
    object TourFamilyCDSmasters_id: TIntegerField
      FieldName = 'masters_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TourFamilyCDSaddressbook_id: TIntegerField
      FieldName = 'addressbook_id'
    end
    object TourFamilyCDScompanies_id: TIntegerField
      FieldName = 'companies_id'
    end
  end
  object TourFamilyDSP: TDataSetProvider
    DataSet = TourFamilyTbl
    Left = 264
    Top = 40
  end
  object TourFamilyTbl: TSQLTable
    MaxBlobSize = -1
    SQLConnection = BackOfficeDataModule.SQLConnection
    TableName = 'Masters'
    Left = 240
    Top = 40
  end
  object TourCodeCDS: TClientDataSet
    Active = True
    Aggregates = <>
    Filtered = True
    Params = <>
    ProviderName = 'TourCodeDSP'
    BeforeInsert = MasterCDSBeforeInsert
    AfterInsert = MasterCDSAfterInsert
    BeforeEdit = MasterCDSBeforeEdit
    BeforePost = MasterCDSBeforePost
    AfterPost = MasterCDSAfterPost
    BeforeDelete = MasterCDSBeforeDelete
    Left = 279
    Top = 221
    object IntegerField4: TIntegerField
      FieldName = 'tourcodes_id'
    end
    object TourCodeCDSTourCode: TStringField
      FieldName = 'TourCode'
      FixedChar = True
      Size = 10
    end
  end
  object TourCodeDSP: TDataSetProvider
    DataSet = TourCodeQry
    Left = 279
    Top = 253
  end
  object TourCodeQry: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT TourCodes_id, TourCode  FROM TourCodes'
      'ORDER BY TourCode')
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 248
    Top = 256
  end
end
