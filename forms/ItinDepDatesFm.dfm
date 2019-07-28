object ItinDepDatesForm: TItinDepDatesForm
  Left = 223
  Top = 215
  Width = 516
  Height = 250
  Caption = 'Select Tour & Departure Dates'
  Color = 15451300
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
    Top = 174
    Width = 508
    Height = 42
    Align = alBottom
    TabOrder = 2
    object cxOKButton: TcxButton
      Left = 288
      Top = 8
      Width = 75
      Height = 25
      Caption = 'OK'
      Default = True
      ModalResult = 1
      TabOrder = 0
      OnClick = cxOKButtonClick
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
  object GroupBox1: TGroupBox
    Left = 0
    Top = 112
    Width = 502
    Height = 57
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 60
      Height = 13
      Caption = 'Tour Code'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 230
      Top = 17
      Width = 88
      Height = 13
      Caption = 'Departure Date'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cxTourLCMB: TcxLookupComboBox
      Left = 80
      Top = 13
      Properties.DropDownWidth = 300
      Properties.KeyFieldNames = 'TourCodes_id'
      Properties.ListColumns = <
        item
          MinWidth = 100
          FieldName = 'TourCode'
        end
        item
          MinWidth = 200
          FieldName = 'Tour'
        end>
      Properties.ListSource = TourCodeDS
      Properties.ValidateOnEnter = False
      Properties.OnEditValueChanged = cxTourLCMBPropertiesEditValueChanged
      EditValue = 0
      Style.Color = 16247513
      TabOrder = 0
      OnExit = cxTourLCMBExit
      Width = 141
    end
    object cxTourDepDateLCMB: TcxLookupComboBox
      Left = 324
      Top = 13
      Properties.DropDownWidth = 300
      Properties.KeyFieldNames = 'TourDepartureDates_id'
      Properties.ListColumns = <
        item
          FieldName = 'TourDate'
        end>
      Properties.ListSource = TourDepDateDS
      Properties.ValidateOnEnter = False
      Properties.OnEditValueChanged = cxTourDepDateLCMBPropertiesEditValueChanged
      EditValue = 0
      Style.Color = 16247513
      TabOrder = 2
      Width = 141
    end
    object cxMasterLCMB: TcxLookupComboBox
      Left = 80
      Top = 22
      Properties.DropDownWidth = 300
      Properties.KeyFieldNames = 'masters_id'
      Properties.ListColumns = <
        item
          MinWidth = 100
          FieldName = 'MasterCode'
        end
        item
          MinWidth = 200
          FieldName = 'name'
        end>
      Properties.ListSource = MasterCodeDS
      Properties.ValidateOnEnter = False
      Properties.OnEditValueChanged = cxMasterLCMBPropertiesEditValueChanged
      EditValue = 0
      Style.Color = 16247513
      TabOrder = 1
      OnExit = cxMasterLCMBExit
      Width = 141
    end
    object cxMasterDepDateLCMB: TcxLookupComboBox
      Left = 324
      Top = 22
      Properties.DropDownWidth = 300
      Properties.KeyFieldNames = 'MasterDepartureDates_id'
      Properties.ListColumns = <
        item
          FieldName = 'TourDate'
        end>
      Properties.ListSource = MasterDepDateDS
      Properties.ValidateOnEnter = False
      Properties.OnEditValueChanged = cxMasterDepDateLCMBPropertiesEditValueChanged
      EditValue = 0
      Style.Color = 16247513
      TabOrder = 3
      Width = 141
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 508
    Height = 105
    Align = alTop
    Color = 15451300
    TabOrder = 1
    object cxMasterCkb: TcxCheckBox
      Left = 8
      Top = 8
      Caption = 'Master Codes'
      TabOrder = 0
      OnClick = cxMasterCkbClick
      Width = 102
    end
    object cxBookingCKB: TcxCheckBox
      Left = 106
      Top = 8
      Caption = 'Only for Bookings'
      TabOrder = 1
      OnClick = cxBookingCKBClick
      Width = 137
    end
    object cxTailorMadeCkb: TcxCheckBox
      Left = 281
      Top = 8
      Caption = 'Tailor Made'
      TabOrder = 2
      OnClick = cxTailorMadeCkbClick
      Width = 93
    end
    object cxActiveCkb: TcxCheckBox
      Left = 374
      Top = 8
      Caption = 'Active'
      State = cbsChecked
      TabOrder = 3
      OnClick = cxActiveCkbClick
      Width = 98
    end
    object cxForwardGB: TcxRadioGroup
      Left = 12
      Top = 31
      Caption = 'Forward'
      Properties.Columns = 2
      Properties.Items = <
        item
          Caption = 'All'
        end
        item
          Caption = 'Now'
        end
        item
          Caption = '6 months'
        end
        item
          Caption = '1 Year'
        end>
      ItemIndex = 1
      TabOrder = 4
      OnClick = cxForwardGBClick
      Height = 65
      Width = 185
    end
    object cxBackGB: TcxRadioGroup
      Left = 282
      Top = 31
      Caption = 'Back'
      Properties.Columns = 2
      Properties.Items = <
        item
          Caption = 'All'
        end
        item
          Caption = 'Now'
        end
        item
          Caption = '6 months'
        end
        item
          Caption = '1 Year'
        end>
      ItemIndex = 1
      TabOrder = 5
      OnClick = cxBackGBClick
      Height = 65
      Width = 185
    end
  end
  object TourCodeSds: TSQLDataSet
    Active = True
    CommandText = 
      'select TourCodes_id, TourCode, Tour from TourCodes '#13#10'ORDER BY To' +
      'urCode'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 112
    Top = 120
  end
  object TourCodeDsp: TDataSetProvider
    DataSet = TourCodeSds
    Left = 128
    Top = 120
  end
  object TourCodeCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'TourCodeDsp'
    Left = 144
    Top = 120
    object TourCodeCdsTourCodes_id: TIntegerField
      FieldName = 'TourCodes_id'
    end
    object TourCodeCdsTourCode: TStringField
      FieldName = 'TourCode'
      Size = 10
    end
    object TourCodeCdsTour: TStringField
      FieldName = 'Tour'
      Size = 50
    end
  end
  object TourCodeDS: TDataSource
    DataSet = TourCodeCds
    Left = 160
    Top = 120
  end
  object TourDepDateSds: TSQLDataSet
    Active = True
    CommandText = 
      'select TourDepartureDates_id, TourCodes_id, TourDate '#13#10'from Tour' +
      'DepartureDates'#13#10'where TourCodes_id = :TourCodes_id'#13#10'order by Tou' +
      'rDate DESC'
    DataSource = TourCodeDS
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'TourCodes_id'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 352
    Top = 120
    object TourDepDateSdsTourCodes_id: TIntegerField
      FieldName = 'TourCodes_id'
    end
    object TourDepDateSdsTourDate: TSQLTimeStampField
      FieldName = 'TourDate'
    end
    object TourDepDateSdsTourDepartureDates_id: TIntegerField
      FieldName = 'TourDepartureDates_id'
    end
  end
  object TourDepDateDsp: TDataSetProvider
    DataSet = TourDepDateSds
    Left = 368
    Top = 120
  end
  object TourDepDateCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'TourCodes_id'
    MasterFields = 'TourCodes_id'
    MasterSource = TourCodeDS
    PacketRecords = 0
    Params = <>
    ProviderName = 'TourDepDateDsp'
    Left = 384
    Top = 120
    object TourDepDateCdsTourCodes_id: TIntegerField
      FieldName = 'TourCodes_id'
    end
    object TourDepDateCdsTourDate: TSQLTimeStampField
      FieldName = 'TourDate'
    end
    object TourDepDateCdsTourDepartureDates_id: TIntegerField
      FieldName = 'TourDepartureDates_id'
    end
  end
  object TourDepDateDS: TDataSource
    DataSet = TourDepDateCds
    Left = 400
    Top = 120
  end
  object MasterCodeSds: TSQLDataSet
    CommandText = 
      'select masters_id, MasterCode,[name] from Masters'#13#10'ORDER BY Mast' +
      'erCode'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 112
    Top = 152
  end
  object MasterCodeDsp: TDataSetProvider
    DataSet = MasterCodeSds
    Left = 128
    Top = 152
  end
  object MasterCodeCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'MasterCodeDsp'
    Left = 144
    Top = 152
    object IntegerField2: TIntegerField
      FieldName = 'masters_id'
    end
    object StringField3: TStringField
      FieldName = 'MasterCode'
      Size = 50
    end
    object StringField4: TStringField
      FieldName = 'name'
      Size = 50
    end
  end
  object MasterCodeDS: TDataSource
    DataSet = MasterCodeCds
    Left = 160
    Top = 152
  end
  object MasterDepDateSds: TSQLDataSet
    CommandText = 
      'select masters_id, MasterDepartureDates_id, TourDate '#13#10'from Mast' +
      'erDepartureDates'#13#10'where masters_id = :masters_id'#13#10'order by TourD' +
      'ate'
    DataSource = MasterCodeDS
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'masters_id'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 352
    Top = 152
  end
  object MasterDepDateDsp: TDataSetProvider
    DataSet = MasterDepDateSds
    Left = 368
    Top = 152
  end
  object MasterDepDateCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'masters_id'
    MasterFields = 'masters_id'
    MasterSource = MasterCodeDS
    PacketRecords = 0
    Params = <>
    ProviderName = 'MasterDepDateDsp'
    Left = 384
    Top = 152
    object MasterDepDateCdsmasters_id: TIntegerField
      FieldName = 'masters_id'
    end
    object MasterDepDateCdsTourDate: TSQLTimeStampField
      FieldName = 'TourDate'
    end
    object MasterDepDateCdsMasterDepartureDates_id: TIntegerField
      FieldName = 'MasterDepartureDates_id'
    end
  end
  object MasterDepDateDS: TDataSource
    DataSet = MasterDepDateCds
    Left = 400
    Top = 152
  end
end
