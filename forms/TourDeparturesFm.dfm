inherited TourDeparturesForm: TTourDeparturesForm
  Left = 282
  Top = 261
  Width = 651
  Height = 477
  Caption = 'Tour Departures'
  OldCreateOrder = True
  Visible = True
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 643
    inherited Label2: TLabel
      Width = 55
      Caption = 'Find Tour'
    end
    inherited LookUpCmb: TDBLookupComboBox
      Left = 75
      DropDownWidth = 100
      ListSource = nil
      TabOrder = 1
    end
    object GroupBox1: TGroupBox
      Left = 273
      Top = 10
      Width = 180
      Height = 39
      TabOrder = 0
      object ToursOpt: TRadioButton
        Left = 8
        Top = 12
        Width = 63
        Height = 17
        Caption = '&Tours'
        TabOrder = 0
        OnClick = ToursOptClick
      end
      object MastersOpt: TRadioButton
        Left = 80
        Top = 12
        Width = 78
        Height = 17
        Caption = '&Masters'
        TabOrder = 1
        OnClick = MastersOptClick
      end
    end
    object TailorMadeChk: TCheckBox
      Left = 464
      Top = 25
      Width = 93
      Height = 17
      Caption = 'Tailo&r Made'
      TabOrder = 2
      OnClick = TailorMadeChkClick
    end
  end
  inherited Panel2: TPanel
    Top = 402
    Width = 643
    inherited BitBtn1: TBitBtn
      OnClick = BitBtn1Click
    end
    inherited DBNavigator1: TDBNavigator
      Left = 305
      Top = 9
      Width = 184
      Height = 24
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Hints.Strings = ()
      OnClick = DBNavigator1Click
    end
  end
  inherited PageControl1: TPageControl
    Width = 643
    Height = 337
    ActivePage = TabSheet1
    OnChange = PageControl1Change
    inherited TabSheet1: TTabSheet
      Caption = 'Tours'
      inherited DBGrid1: TDBGrid
        Width = 635
        Height = 309
        Columns = <
          item
            Expanded = False
            FieldName = 'tourdeparturedates_id'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'tourdate'
            Title.Caption = 'Start Date'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'returndate'
            Title.Caption = 'End Date'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'tourref'
            Title.Caption = 'Tour Reference'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'tourcodes_id'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'price'
            Title.Caption = 'Price'
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'singlesupplement'
            Title.Caption = 'Single Supplement'
            Width = 115
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'fair'
            PickList.Strings = (
              'Y'
              'N')
            Title.Caption = 'Fair'
            Width = 50
            Visible = True
          end>
      end
    end
    inherited TabSheet2: TTabSheet
      Caption = 'Masters'
      inherited DBGrid2: TDBGrid
        Width = 635
        Height = 309
        Columns = <
          item
            Expanded = False
            FieldName = 'masterdeparturedates_id'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'tourdate'
            Title.Caption = 'Start Date'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'returndate'
            Title.Caption = 'End Date'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'tourno'
            Title.Caption = 'Master Reference'
            Width = 110
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'masters_id'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'localpayment'
            Title.Caption = 'Local Payment'
            Visible = True
          end>
      end
    end
    inherited TabSheet3: TTabSheet
      TabVisible = False
    end
    inherited TabSheet4: TTabSheet
      TabVisible = False
    end
    inherited TabSheet5: TTabSheet
      TabVisible = False
    end
    inherited TabSheet6: TTabSheet
      TabVisible = False
    end
  end
  inherited GridDSP1: TDataSetProvider
    Top = 258
  end
  inherited GridTbl1: TSQLTable
    TableName = 'TourDepartureDates'
  end
  inherited GridCDS1: TClientDataSet
    Filtered = True
    IndexFieldNames = 'tourcodes_id'
    MasterFields = 'TourCodes_id'
    MasterSource = DSLookup
    PacketRecords = 0
    AfterInsert = GridCDS1AfterInsert
    Top = 226
    object GridCDS1tourdeparturedates_id: TIntegerField
      FieldName = 'tourdeparturedates_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object GridCDS1tourdate: TSQLTimeStampField
      FieldName = 'tourdate'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object GridCDS1returndate: TSQLTimeStampField
      FieldName = 'returndate'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object GridCDS1tourref: TIntegerField
      FieldName = 'tourref'
    end
    object GridCDS1tourcodes_id: TIntegerField
      FieldName = 'tourcodes_id'
    end
    object GridCDS1price: TBCDField
      FieldName = 'price'
      DisplayFormat = '#,##0.00'
      Precision = 10
      Size = 2
    end
    object GridCDS1singlesupplement: TBCDField
      FieldName = 'singlesupplement'
      DisplayFormat = '#,##0.00'
      Precision = 10
      Size = 2
    end
    object GridCDS1fair: TBooleanField
      FieldName = 'fair'
      DisplayValues = 'Y;N'
    end
  end
  inherited GridTbl2: TSQLTable
    Active = True
    TableName = 'MasterDepartureDates'
  end
  inherited GridCDS2: TClientDataSet
    Active = True
    Filtered = True
    IndexFieldNames = 'masters_id'
    MasterFields = 'Masters_id'
    MasterSource = MasterDS
    PacketRecords = 0
    AfterInsert = GridCDS2AfterInsert
    object GridCDS2masterdeparturedates_id: TIntegerField
      FieldName = 'masterdeparturedates_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object GridCDS2tourdate: TSQLTimeStampField
      FieldName = 'tourdate'
      EditMask = '!99/99/0000;1;_'
    end
    object GridCDS2returndate: TSQLTimeStampField
      FieldName = 'returndate'
      EditMask = '!99/99/0000;1;_'
    end
    object GridCDS2tourno: TIntegerField
      FieldName = 'tourno'
    end
    object GridCDS2masters_id: TIntegerField
      FieldName = 'masters_id'
    end
    object GridCDS2localpayment: TFMTBCDField
      FieldName = 'localpayment'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 2
    end
  end
  inherited DSLookup: TDataSource
    Left = 192
    Top = 65535
  end
  inherited CDSLookup: TClientDataSet
    Filtered = True
    Left = 224
    Top = 65535
    object CDSLookupTourCodes_id: TIntegerField
      FieldName = 'TourCodes_id'
    end
    object CDSLookupTourCode: TStringField
      FieldName = 'TourCode'
      FixedChar = True
      Size = 10
    end
    object CDSLookupTour: TStringField
      FieldName = 'Tour'
      FixedChar = True
      Size = 50
    end
    object CDSLookupTailorMade: TBooleanField
      FieldName = 'TailorMade'
    end
  end
  inherited DSPLookup: TDataSetProvider
    Left = 224
    Top = 31
  end
  inherited LookUpQry: TSQLQuery
    SQL.Strings = (
      'SELECT TourCodes_id, TourCode, Tour, TailorMade FROM TourCodes'
      'ORDER BY TourCode')
    Left = 192
    Top = 31
  end
  object MasterDSP: TDataSetProvider
    DataSet = MastersQry
    Left = 448
    Top = 31
  end
  object MastersQry: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT Masters_id,  MasterCode, Name, TailorMade FROM masters'
      'ORDER BY MasterCode'
      '')
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 416
    Top = 31
  end
  object MasterDS: TDataSource
    DataSet = MasterCDS
    Left = 416
    Top = 65535
  end
  object MasterCDS: TClientDataSet
    Aggregates = <>
    Filtered = True
    Params = <>
    ProviderName = 'MasterDSP'
    Left = 448
    Top = 65535
    object MasterCDSMasters_id: TIntegerField
      FieldName = 'Masters_id'
    end
    object MasterCDSMasterCode: TStringField
      FieldName = 'MasterCode'
      FixedChar = True
      Size = 50
    end
    object MasterCDSName: TStringField
      FieldName = 'Name'
      FixedChar = True
      Size = 50
    end
    object MasterCDSTailorMade: TBooleanField
      FieldName = 'TailorMade'
    end
  end
end
