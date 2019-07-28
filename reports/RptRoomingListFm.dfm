object RptRoomingListForm: TRptRoomingListForm
  Left = 221
  Top = 166
  Width = 696
  Height = 480
  Caption = 'RptRoomingListForm'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poDefault
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 673
    Height = 425
    TabOrder = 0
    object Label1: TLabel
      Left = 32
      Top = 35
      Width = 68
      Height = 13
      Caption = 'Tour Code :'
    end
    object DBGrid1: TDBGrid
      Left = 8
      Top = 88
      Width = 657
      Height = 329
      Color = cl3DLight
      DataSource = RoomDS
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      OnDrawColumnCell = DBGrid1DrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'Itineraries_id'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'tourcode'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'Bookings_id'
          Title.Caption = 'Booking No'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PaxName'
          Title.Caption = 'Pax Name'
          Width = 240
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Sex'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SS'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'roomno'
          Title.Caption = 'Room No'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'roomsize'
          Title.Caption = 'Room Size'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'tourleader'
          Title.Caption = 'Tour Leader'
          Visible = True
        end>
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 96
      Top = 32
      Width = 129
      Height = 21
      KeyField = 'tourcode'
      ListField = 'tourcode'
      ListSource = TourCodeDS
      TabOrder = 1
      OnClick = DBLookupComboBox1Click
      OnKeyPress = DBLookupComboBox1KeyPress
    end
  end
  object RoomDS: TDataSource
    DataSet = RoomCDS
    Left = 296
    Top = 240
  end
  object RoomCDS: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Itineraries_id'
        DataType = ftInteger
      end
      item
        Name = 'tourcode'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Bookings_id'
        DataType = ftInteger
      end
      item
        Name = 'PaxName'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Sex'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'SS'
        DataType = ftBoolean
      end
      item
        Name = 'roomno'
        DataType = ftInteger
      end
      item
        Name = 'roomsize'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'tourleader'
        DataType = ftBoolean
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'RoomDSP'
    StoreDefs = True
    Left = 328
    Top = 240
    object RoomCDSItineraries_id: TIntegerField
      FieldName = 'Itineraries_id'
    end
    object RoomCDStourcode: TStringField
      FieldName = 'tourcode'
      Size = 50
    end
    object RoomCDSBookings_id: TIntegerField
      FieldName = 'Bookings_id'
    end
    object RoomCDSPaxName: TStringField
      FieldName = 'PaxName'
      Size = 50
    end
    object RoomCDSSex: TStringField
      FieldName = 'Sex'
      Size = 1
    end
    object RoomCDSSS: TBooleanField
      FieldName = 'SS'
    end
    object RoomCDSroomno: TIntegerField
      FieldName = 'roomno'
    end
    object RoomCDSroomsize: TStringField
      FieldName = 'roomsize'
      Size = 10
    end
    object RoomCDStourleader: TBooleanField
      FieldName = 'tourleader'
    end
  end
  object RoomDSP: TDataSetProvider
    DataSet = RoomQry
    Left = 328
    Top = 272
  end
  object RoomQry: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT ra.Itineraries_id, ra.tourcode, ra.Bookings_id, '
      'ra.PaxName, ra.Sex, ra.SingleSupplement as SS, '
      'ra.roomno, rs.roomsize, '
      'ra.tourleader FROM RoomAssign ra, '
      'RoomSizes rs WHERE rs.roomsizes_id = rs.roomsizes_id '
      'ORDER BY RoomNo, ra.RoomSizes_id')
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 296
    Top = 272
  end
  object TourCodeDS: TDataSource
    DataSet = TourCodeCds
    Left = 320
    Top = 24
  end
  object TourCodeDSP: TDataSetProvider
    DataSet = TourCodeQry
    Left = 352
    Top = 56
  end
  object TourCodeCds: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'TourCodeDSP'
    Left = 352
    Top = 24
  end
  object TourCodeQry: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select distinct tourcode from roomassign')
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 320
    Top = 56
  end
end
