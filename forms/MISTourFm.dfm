object MISTourForm: TMISTourForm
  Left = 247
  Top = 80
  Width = 798
  Height = 616
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 782
    Height = 41
    Align = alTop
    Color = 14740719
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 89
      Height = 13
      Caption = 'Tours between '
      Transparent = True
    end
    object Label2: TLabel
      Left = 279
      Top = 8
      Width = 22
      Height = 13
      Caption = 'and'
    end
    object FromDateEdit: TMaskEdit
      Left = 149
      Top = 8
      Width = 121
      Height = 21
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      TabOrder = 0
      Text = '  /  /    '
    end
    object ToDateEdit: TMaskEdit
      Left = 316
      Top = 8
      Width = 121
      Height = 21
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      TabOrder = 1
      Text = '  /  /    '
    end
    object cxButton1: TcxButton
      Left = 552
      Top = 8
      Width = 41
      Height = 25
      Hint = 'Previous Month'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = cxButton1Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333303333
        333333333337F33333333333333033333333333333373F333333333333090333
        33333333337F7F33333333333309033333333333337373F33333333330999033
        3333333337F337F33333333330999033333333333733373F3333333309999903
        333333337F33337F33333333099999033333333373333373F333333099999990
        33333337FFFF3FF7F33333300009000033333337777F77773333333333090333
        33333333337F7F33333333333309033333333333337F7F333333333333090333
        33333333337F7F33333333333309033333333333337F7F333333333333090333
        33333333337F7F33333333333300033333333333337773333333}
      NumGlyphs = 2
    end
    object cxButton2: TcxButton
      Left = 600
      Top = 8
      Width = 41
      Height = 25
      Hint = 'Next Month'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = cxButton2Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000333
        3333333333777F33333333333309033333333333337F7F333333333333090333
        33333333337F7F33333333333309033333333333337F7F333333333333090333
        33333333337F7F33333333333309033333333333FF7F7FFFF333333000090000
        3333333777737777F333333099999990333333373F3333373333333309999903
        333333337F33337F33333333099999033333333373F333733333333330999033
        3333333337F337F3333333333099903333333333373F37333333333333090333
        33333333337F7F33333333333309033333333333337373333333333333303333
        333333333337F333333333333330333333333333333733333333}
      NumGlyphs = 2
    end
    object cxReportButton: TcxButton
      Left = 456
      Top = 8
      Width = 89
      Height = 25
      Caption = 'Reports'
      TabOrder = 4
      DropDownMenu = PopupMenu2
      Kind = cxbkDropDownButton
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 539
    Width = 782
    Height = 39
    Align = alBottom
    TabOrder = 1
    object cxButton8: TcxButton
      Left = 840
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Close'
      TabOrder = 0
      OnClick = cxButton8Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        33333FFFFFFFFFFFFFFF000000000000000077777777777777770F7777777777
        77707F3F3333333333370F988888888888707F733FFFFFFFF3370F8800000000
        88707F337777777733370F888888888888707F333FFFFFFFF3370F8800000000
        88707F337777777733370F888888888888707F333333333333370F8888888888
        88707F333333333333370FFFFFFFFFFFFFF07FFFFFFFFFFFFFF7000000000000
        0000777777777777777733333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
    end
    object cxButton3: TcxButton
      Left = 24
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Utilities'
      TabOrder = 1
      DropDownMenu = PopupMenu1
      Kind = cxbkDropDownButton
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 41
    Width = 782
    Height = 36
    Align = alTop
    Color = 14740719
    TabOrder = 2
  end
  object Panel5: TPanel
    Left = 0
    Top = 77
    Width = 782
    Height = 462
    Align = alClient
    TabOrder = 3
    object cxPageControl1: TcxPageControl
      Left = 1
      Top = 1
      Width = 780
      Height = 460
      ActivePage = cxBookingsTab
      Align = alClient
      TabOrder = 0
      ClientRectBottom = 454
      ClientRectLeft = 3
      ClientRectRight = 774
      ClientRectTop = 26
      object cxBookingsTab: TcxTabSheet
        Caption = 'Bookings'
        ImageIndex = 0
        object cxBookingPivotGrid: TcxDBPivotGrid
          Left = 0
          Top = 0
          Width = 771
          Height = 428
          Align = alClient
          DataSource = BookingDs
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Groups = <
            item
              IsCaptionAssigned = True
              Caption = 'Month'
            end>
          ParentFont = False
          TabOrder = 0
          TabStop = True
          object cxBookingPivotGridTourCode: TcxDBPivotGridField
            Area = faRow
            AreaIndex = 1
            DataBinding.FieldName = 'TourCode'
            Visible = True
          end
          object cxBookingPivotGridMasterCode: TcxDBPivotGridField
            AreaIndex = 0
            DataBinding.FieldName = 'MasterCode'
            Visible = True
          end
          object cxBookingPivotGridSex: TcxDBPivotGridField
            AreaIndex = 1
            DataBinding.FieldName = 'Sex'
            Visible = True
          end
          object cxBookingPivotGridNationality: TcxDBPivotGridField
            AreaIndex = 2
            DataBinding.FieldName = 'Nationality'
            Visible = True
          end
          object cxBookingPivotGridPrincipalAgent: TcxDBPivotGridField
            Area = faRow
            AreaIndex = 0
            DataBinding.FieldName = 'PrincipalAgent'
            Visible = True
          end
          object cxBookingPivotGridTourType: TcxDBPivotGridField
            AreaIndex = 6
            DataBinding.FieldName = 'TourType'
            Visible = True
          end
          object cxBookingPivotGridNumPax: TcxDBPivotGridField
            Area = faData
            AreaIndex = 0
            DataBinding.FieldName = 'NumPax'
            Visible = True
          end
          object cxBookingPivotGridAgeRange: TcxDBPivotGridField
            AreaIndex = 3
            DataBinding.FieldName = 'AgeRange'
            Visible = True
          end
          object cxBookingPivotGridMonthName: TcxDBPivotGridField
            AreaIndex = 5
            DataBinding.FieldName = 'MonthName'
            GroupIndex = 0
            GroupExpanded = False
            Visible = True
          end
          object cxBookingPivotGridYear: TcxDBPivotGridField
            Area = faColumn
            AreaIndex = 0
            DataBinding.FieldName = 'Year'
            Visible = True
            Width = 35
          end
          object cxBookingPivotGridMonths_id: TcxDBPivotGridField
            AreaIndex = 4
            IsCaptionAssigned = True
            Caption = 'Order'
            DataBinding.FieldName = 'Months_id'
            GroupIndex = 0
            Visible = True
          end
          object cxBookingPivotGridTitle: TcxDBPivotGridField
            AreaIndex = 7
            Visible = True
          end
        end
      end
      object cxHotelTab: TcxTabSheet
        Caption = 'Hotels'
        ImageIndex = 1
        object cxHotelPivotGrid: TcxDBPivotGrid
          Left = 0
          Top = 0
          Width = 779
          Height = 432
          Align = alClient
          DataSource = HotelDs
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Groups = <
            item
              IsCaptionAssigned = True
              Caption = 'Month'
            end>
          ParentFont = False
          TabOrder = 0
          TabStop = True
          object cxHotelPivotGridHotel: TcxDBPivotGridField
            Area = faRow
            AreaIndex = 0
            DataBinding.FieldName = 'Hotel'
            Visible = True
          end
          object cxHotelPivotGridRoomNights: TcxDBPivotGridField
            Area = faData
            AreaIndex = 0
            IsCaptionAssigned = True
            Caption = 'Room Nights'
            DataBinding.FieldName = 'RoomNights'
            DisplayFormat = '#,##0'
            Visible = True
          end
          object cxHotelPivotGridBedNights: TcxDBPivotGridField
            Area = faData
            AreaIndex = 1
            IsCaptionAssigned = True
            Caption = 'Bed Nights'
            DataBinding.FieldName = 'BedNights'
            DisplayFormat = '#,##0'
            Visible = True
          end
          object cxHotelPivotGridCost: TcxDBPivotGridField
            Area = faData
            AreaIndex = 2
            DataBinding.FieldName = 'Cost'
            DisplayFormat = '#,##0'
            Visible = True
          end
          object cxHotelPivotGridCity: TcxDBPivotGridField
            AreaIndex = 0
            DataBinding.FieldName = 'City'
            Visible = True
          end
          object cxHotelPivotGridMonthName: TcxDBPivotGridField
            AreaIndex = 3
            DataBinding.FieldName = 'MonthName'
            GroupIndex = 0
            GroupExpanded = False
            Visible = True
          end
          object cxHotelPivotGridYear: TcxDBPivotGridField
            Area = faColumn
            AreaIndex = 0
            DataBinding.FieldName = 'Year'
            Visible = True
          end
          object cxHotelPivotGridTitle: TcxDBPivotGridField
            AreaIndex = 1
            Visible = True
          end
          object cxHotelPivotGridMonths_id: TcxDBPivotGridField
            AreaIndex = 2
            IsCaptionAssigned = True
            Caption = 'Order'
            DataBinding.FieldName = 'Months_id'
            GroupIndex = 0
            Visible = True
          end
        end
      end
      object cxAgentTAB: TcxTabSheet
        Caption = 'Agents'
        ImageIndex = 2
        object cxAgentPivotGrid: TcxDBPivotGrid
          Left = 0
          Top = 0
          Width = 779
          Height = 432
          Align = alClient
          DataSource = AgentDs
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Groups = <
            item
              IsCaptionAssigned = True
              Caption = 'Month'
            end>
          ParentFont = False
          TabOrder = 0
          TabStop = True
          object cxAgentPivotGridAgent: TcxDBPivotGridField
            Area = faRow
            AreaIndex = 0
            DataBinding.FieldName = 'Agent'
            Visible = True
          end
          object cxAgentPivotGridService: TcxDBPivotGridField
            Area = faColumn
            AreaIndex = 1
            DataBinding.FieldName = 'Service'
            Visible = True
          end
          object cxAgentPivotGridTicket: TcxDBPivotGridField
            Area = faColumn
            AreaIndex = 2
            DataBinding.FieldName = 'Ticket'
            Visible = True
          end
          object cxAgentPivotGridCost: TcxDBPivotGridField
            Area = faData
            AreaIndex = 0
            DataBinding.FieldName = 'Cost'
            DisplayFormat = '#,##0'
            Visible = True
          end
          object cxAgentPivotGridMonthName: TcxDBPivotGridField
            AreaIndex = 1
            IsCaptionAssigned = True
            Caption = 'Month'
            DataBinding.FieldName = 'MonthName'
            GroupIndex = 0
            GroupExpanded = False
            Visible = True
          end
          object cxAgentPivotGridYear: TcxDBPivotGridField
            Area = faColumn
            AreaIndex = 0
            DataBinding.FieldName = 'Year'
            Visible = True
          end
          object cxAgentPivotGridMonths_id: TcxDBPivotGridField
            AreaIndex = 0
            IsCaptionAssigned = True
            Caption = 'Order'
            DataBinding.FieldName = 'Months_id'
            GroupIndex = 0
            Visible = True
          end
          object cxAgentPivotGridTitle: TcxDBPivotGridField
            AreaIndex = 2
            Visible = True
          end
        end
      end
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 49
    Top = 522
    object SaveAsExcel1: TMenuItem
      Caption = 'Save As Excel'
      OnClick = SaveAsExcel1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Print1: TMenuItem
      Caption = 'Print'
      OnClick = Print1Click
    end
  end
  object BookingSds: TSQLDataSet
    CommandText = 'exec p_MIS_Bookings '#39'04/01/2002'#39', '#39'03/31/2007'#39', 1, 1'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 355
    Top = 473
  end
  object BookingDsp: TDataSetProvider
    DataSet = BookingSds
    Left = 379
    Top = 473
  end
  object BookingCds: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'BookingDsp'
    Left = 395
    Top = 473
    object BookingCdsTourCode: TStringField
      FieldName = 'TourCode'
      Size = 8
    end
    object BookingCdsMasterCode: TStringField
      FieldName = 'MasterCode'
      Size = 8
    end
    object BookingCdsSex: TStringField
      FieldName = 'Sex'
      Size = 1
    end
    object BookingCdsNationality: TStringField
      FieldName = 'Nationality'
      Size = 30
    end
    object BookingCdsPrincipalAgent: TStringField
      FieldName = 'PrincipalAgent'
      Size = 50
    end
    object BookingCdsTourType: TStringField
      FieldName = 'TourType'
      Size = 1
    end
    object BookingCdsNumPax: TIntegerField
      FieldName = 'NumPax'
    end
    object BookingCdsAgeRange: TStringField
      FieldName = 'AgeRange'
      Size = 10
    end
    object BookingCdsMonthName: TStringField
      FieldName = 'MonthName'
      Size = 10
    end
    object BookingCdsYear: TIntegerField
      FieldName = 'Year'
    end
    object BookingCdsMonths_id: TIntegerField
      FieldName = 'Months_id'
    end
  end
  object BookingDs: TDataSource
    DataSet = BookingCds
    Left = 411
    Top = 473
  end
  object SaveDialog: TSaveDialog
    Left = 233
    Top = 474
  end
  object dxComponentPrinter: TdxComponentPrinter
    CurrentLink = dxComponentPrinterLink2
    Version = 0
    Left = 299
    Top = 526
    object dxComponentPrinterLink1: TcxPivotGridReportLink
      Active = True
      Component = cxBookingPivotGrid
      PrinterPage.DMPaper = 1
      PrinterPage.Footer = 200
      PrinterPage.Header = 200
      PrinterPage.Margins.Bottom = 500
      PrinterPage.Margins.Left = 500
      PrinterPage.Margins.Right = 500
      PrinterPage.Margins.Top = 500
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageSize.X = 8500
      PrinterPage.PageSize.Y = 11000
      PrinterPage.ScaleMode = smFit
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 1
      ReportDocument.CreationDate = 42608.620532430560000000
      ShrinkToPageWidth = True
      OptionsFormatting.SuppressBackgroundBitmaps = True
      OptionsFormatting.UseNativeStyles = True
      OptionsFormatting.SuppressContentColoration = True
      OptionsView.DataFields = False
      OptionsView.ExpandButtons = False
      BuiltInReportLink = True
    end
    object dxComponentPrinterLink2: TcxPivotGridReportLink
      Active = True
      Component = cxHotelPivotGrid
      PrinterPage.DMPaper = 1
      PrinterPage.Footer = 200
      PrinterPage.Header = 200
      PrinterPage.Margins.Bottom = 500
      PrinterPage.Margins.Left = 500
      PrinterPage.Margins.Right = 500
      PrinterPage.Margins.Top = 500
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageSize.X = 8500
      PrinterPage.PageSize.Y = 11000
      PrinterPage.ScaleMode = smFit
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 1
      ReportDocument.CreationDate = 42608.620532430560000000
      ShrinkToPageWidth = True
      OptionsFormatting.SuppressBackgroundBitmaps = True
      OptionsFormatting.UseNativeStyles = True
      OptionsFormatting.SuppressContentColoration = True
      OptionsView.DataFields = False
      OptionsView.ExpandButtons = False
      BuiltInReportLink = True
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 656
    Top = 9
    object Bookings1: TMenuItem
      Caption = 'Bookings'
      object ourwise1: TMenuItem
        Caption = 'Tour - wise'
        OnClick = ourwise1Click
      end
      object Nationalitywise1: TMenuItem
        Caption = 'Nationality - wise'
        OnClick = Nationalitywise1Click
      end
      object PrincipalAgentwise1: TMenuItem
        Caption = 'Principal Agent - wise'
        OnClick = PrincipalAgentwise1Click
      end
      object ourTypewise1: TMenuItem
        Caption = 'Tour Type - wise'
        OnClick = ourTypewise1Click
      end
      object Agewise1: TMenuItem
        Caption = 'Age - wise'
        OnClick = Agewise1Click
      end
      object Monthwise1: TMenuItem
        Caption = 'Month - wise'
        OnClick = Monthwise1Click
      end
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object Hotels1: TMenuItem
      Caption = 'Hotels'
      object Year1: TMenuItem
        Caption = 'Year'
        object Hotel1: TMenuItem
          Caption = 'Hotel - wise'
          OnClick = Hotel1Click
        end
        object Citywise1: TMenuItem
          Caption = 'City - wise'
          OnClick = Citywise1Click
        end
      end
      object Month1: TMenuItem
        Caption = 'Month'
        object Hotelwise1: TMenuItem
          Caption = 'Hotel - wise'
          OnClick = Hotelwise1Click
        end
        object Citywise2: TMenuItem
          Caption = 'City - wise'
          OnClick = Citywise2Click
        end
      end
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object Agents1: TMenuItem
      Caption = 'Agents'
      object Year2: TMenuItem
        Caption = 'Year - wise'
        OnClick = Year2Click
      end
      object Month2: TMenuItem
        Caption = 'Month - wise'
        OnClick = Month2Click
      end
    end
  end
  object HotelSds: TSQLDataSet
    CommandText = 'exec p_MIS_Hotels '#39'04/01/2002'#39', '#39'03/31/2007'#39', 1'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 355
    Top = 425
  end
  object HotelDsp: TDataSetProvider
    DataSet = HotelSds
    Left = 379
    Top = 425
  end
  object HotelCds: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'HotelDsp'
    Left = 395
    Top = 425
    object HotelCdsHotel: TStringField
      FieldName = 'Hotel'
      Size = 100
    end
    object HotelCdsRoomNights: TIntegerField
      FieldName = 'RoomNights'
      DisplayFormat = '#,##0'
    end
    object HotelCdsBedNights: TIntegerField
      FieldName = 'BedNights'
      DisplayFormat = '#,##0'
    end
    object HotelCdsCost: TFloatField
      FieldName = 'Cost'
      DisplayFormat = '#,##0'
    end
    object HotelCdsCity: TStringField
      FieldName = 'City'
      Size = 50
    end
    object HotelCdsMonthName: TStringField
      FieldName = 'MonthName'
      Size = 10
    end
    object HotelCdsYear: TIntegerField
      FieldName = 'Year'
    end
    object HotelCdsMonths_id: TIntegerField
      FieldName = 'Months_id'
    end
  end
  object HotelDs: TDataSource
    DataSet = HotelCds
    Left = 411
    Top = 425
  end
  object AgentSds: TSQLDataSet
    CommandText = 'exec p_MIS_Agents '#39'04/01/2002'#39', '#39'03/31/2007'#39', 1'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 355
    Top = 377
  end
  object AgentDsp: TDataSetProvider
    DataSet = AgentSds
    Left = 379
    Top = 377
  end
  object AgentCds: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'AgentDsp'
    Left = 395
    Top = 377
    object AgentCdsAgent: TStringField
      FieldName = 'Agent'
      Size = 100
    end
    object AgentCdsService: TStringField
      FieldName = 'Service'
    end
    object AgentCdsTicket: TStringField
      FieldName = 'Ticket'
    end
    object AgentCdsCost: TFloatField
      FieldName = 'Cost'
    end
    object AgentCdsMonthName: TStringField
      FieldName = 'MonthName'
      Size = 10
    end
    object AgentCdsYear: TIntegerField
      FieldName = 'Year'
    end
    object AgentCdsVoucherTypes_id: TIntegerField
      FieldName = 'VoucherTypes_id'
    end
    object AgentCdsTickets_id: TIntegerField
      FieldName = 'Tickets_id'
    end
    object AgentCdsMonths_id: TIntegerField
      FieldName = 'Months_id'
    end
  end
  object AgentDs: TDataSource
    DataSet = AgentCds
    Left = 411
    Top = 377
  end
end
