object ItineraryForm: TItineraryForm
  Left = 49
  Top = 135
  Width = 1002
  Height = 601
  Caption = 'ItineraryForm'
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
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 986
    Height = 89
    Align = alTop
    Color = 15451300
    TabOrder = 0
    object GroupBox2: TcxGroupBox
      Left = 99
      Top = 4
      Caption = ' MasterCode '
      TabOrder = 0
      Height = 48
      Width = 257
      object MasterCodeLbl: TDBText
        Left = 83
        Top = 18
        Width = 97
        Height = 17
        DataField = 'MasterCode'
        DataSource = Itinerariesds
        Transparent = True
      end
      object MasterCodeLcmb: TcxLookupComboBox
        Left = 11
        Top = 32
        Properties.KeyFieldNames = 'masters_id'
        Properties.ListColumns = <
          item
            FieldName = 'mastercode'
          end>
        Properties.ListSource = MasterCodeDs
        Style.Color = 16247513
        TabOrder = 0
        Visible = False
        Width = 233
      end
    end
    object GroupBox1: TcxGroupBox
      Left = 488
      Top = 5
      Caption = ' Departure Date '
      TabOrder = 1
      Height = 48
      Width = 257
      object DBText2: TDBText
        Left = 119
        Top = 19
        Width = 92
        Height = 17
        DataField = 'DepartureDate'
        DataSource = Itinerariesds
        Transparent = True
      end
      object DepDateLcmb: TcxLookupComboBox
        Left = 11
        Top = 32
        Properties.KeyFieldNames = 'DepartureDate'
        Properties.ListColumns = <
          item
            FieldName = 'DepartureDate'
          end>
        Properties.ListSource = DepDateDs
        Style.Color = 16247513
        TabOrder = 0
        Visible = False
        Width = 233
      end
    end
    object cxProgressBar1: TcxProgressBar
      Left = 4
      Top = 56
      TabOrder = 2
      Width = 987
    end
    object cxButton2: TcxButton
      Left = 832
      Top = 16
      Width = 145
      Height = 25
      Caption = 'Change MasterCode'
      TabOrder = 3
      OnClick = cxButton2Click
    end
  end
  object ItineraryPC: TcxPageControl
    Left = 0
    Top = 89
    Width = 986
    Height = 430
    ActivePage = ItinPackages
    Align = alClient
    Images = ImageList1
    TabOrder = 1
    ClientRectBottom = 424
    ClientRectLeft = 3
    ClientRectRight = 980
    ClientRectTop = 27
    object ItinTickets: TcxTabSheet
      Caption = 'Tickets'
      ImageIndex = 0
      object TicketsGrid: TcxGrid
        Left = 0
        Top = 0
        Width = 977
        Height = 397
        Align = alClient
        PopupMenu = PopupMenu1
        TabOrder = 0
        object TicketsGridDBTableView1: TcxGridDBTableView
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
          DataController.DataSource = ItinTicketsDs
          DataController.KeyFieldNames = 'ItineraryTickets_id'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
          Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
          object TicketsGridDBTableView1Organisation: TcxGridDBColumn
            Caption = 'Agent'
            DataBinding.FieldName = 'Organisation'
            Options.Filtering = False
            Options.Grouping = False
            Width = 75
          end
          object TicketsGridDBTableView1TravelDate: TcxGridDBColumn
            Caption = 'Travel Date'
            DataBinding.FieldName = 'TravelDate'
            Options.Filtering = False
            Options.Grouping = False
            Width = 81
          end
          object TicketsGridDBTableView1FlightNo: TcxGridDBColumn
            Caption = 'Flight No'
            DataBinding.FieldName = 'FlightNo'
            Options.Filtering = False
            Options.Grouping = False
            Width = 70
          end
          object TicketsGridDBTableView1Tours: TcxGridDBColumn
            DataBinding.FieldName = 'Tours'
            Options.Filtering = False
            Options.Grouping = False
            Width = 55
          end
          object TicketsGridDBTableView1AdviceNoOfPax: TcxGridDBColumn
            Caption = 'No.Pax'
            DataBinding.FieldName = 'AdviceNoOfPax'
            Options.Filtering = False
            Options.Grouping = False
            Width = 64
          end
          object TicketsGridDBTableView1NoBooked: TcxGridDBColumn
            Caption = 'Booked'
            DataBinding.FieldName = 'NoBooked'
            Options.Filtering = False
            Options.Grouping = False
            Width = 52
          end
          object TicketsGridDBTableView1NoCancelled: TcxGridDBColumn
            Caption = 'Cancelled'
            DataBinding.FieldName = 'NoCancelled'
            Options.Filtering = False
            Options.Grouping = False
            Width = 65
          end
          object TicketsGridDBTableView1NoofPax: TcxGridDBColumn
            Caption = 'No of Pax'
            DataBinding.FieldName = 'NoofPax'
            Options.Filtering = False
            Options.Grouping = False
            Width = 67
          end
          object TicketsGridDBTableView1Class: TcxGridDBColumn
            DataBinding.FieldName = 'Class'
            Options.Filtering = False
            Options.Grouping = False
            Width = 55
          end
          object TicketsGridDBTableView1ExpectedAmount: TcxGridDBColumn
            Caption = 'Expected Amount'
            DataBinding.FieldName = 'ExpectedAmount'
            Options.Filtering = False
            Options.Grouping = False
          end
          object TicketsGridDBTableView1City: TcxGridDBColumn
            Caption = 'From City'
            DataBinding.FieldName = 'City'
            Options.Filtering = False
            Options.Grouping = False
            Width = 50
          end
          object TicketsGridDBTableView1City_1: TcxGridDBColumn
            Caption = 'To City'
            DataBinding.FieldName = 'City_1'
            Options.Filtering = False
            Options.Grouping = False
            Width = 50
          end
          object TicketsGridDBTableView1Details: TcxGridDBColumn
            DataBinding.FieldName = 'Details'
            Options.Filtering = False
            Options.Grouping = False
            Width = 50
          end
          object TicketsGridDBTableView1Departure: TcxGridDBColumn
            DataBinding.FieldName = 'Departure'
            PropertiesClassName = 'TcxTimeEditProperties'
            Properties.TimeFormat = tfHourMin
            Properties.UseCtrlIncrement = True
            Options.Filtering = False
            Options.Grouping = False
            Width = 50
          end
          object TicketsGridDBTableView1Arrival: TcxGridDBColumn
            DataBinding.FieldName = 'Arrival'
            PropertiesClassName = 'TcxTimeEditProperties'
            Properties.TimeFormat = tfHourMin
            Properties.UseCtrlIncrement = True
            Options.Filtering = False
            Options.Grouping = False
            Width = 50
          end
          object TicketsGridDBTableView1remarks: TcxGridDBColumn
            Caption = 'Remarks'
            DataBinding.FieldName = 'remarks'
            Options.Filtering = False
            Options.Grouping = False
            Width = 50
          end
          object TicketsGridDBTableView1AdviceNamesOfPax: TcxGridDBColumn
            Caption = 'Name Pax'
            DataBinding.FieldName = 'AdviceNamesOfPax'
            Options.Filtering = False
            Options.Grouping = False
            Width = 84
          end
          object TicketsGridDBTableView1Confirmed: TcxGridDBColumn
            DataBinding.FieldName = 'Confirmed'
            Options.Filtering = False
            Options.Grouping = False
            Width = 79
          end
        end
        object TicketsGridLevel1: TcxGridLevel
          GridView = TicketsGridDBTableView1
        end
      end
    end
    object ItinAccommodation: TcxTabSheet
      Caption = 'Accommodation'
      ImageIndex = 1
      object AccommodationGrid: TcxGrid
        Left = 0
        Top = 0
        Width = 977
        Height = 397
        Align = alClient
        PopupMenu = PopupMenu1
        TabOrder = 0
        object AccommodationGridDBTableView1: TcxGridDBTableView
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
          DataController.DataSource = ItinAccommodationDs
          DataController.KeyFieldNames = 'ItineraryAccommodation_id'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
          Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
          object AccommodationGridDBTableView1City: TcxGridDBColumn
            DataBinding.FieldName = 'City'
            Options.Filtering = False
            Options.Grouping = False
            Width = 75
          end
          object AccommodationGridDBTableView1Organisation: TcxGridDBColumn
            Caption = 'Hotel'
            DataBinding.FieldName = 'Organisation'
            Options.Filtering = False
            Options.Grouping = False
            Width = 75
          end
          object AccommodationGridDBTableView1DateIn: TcxGridDBColumn
            Caption = 'Date In'
            DataBinding.FieldName = 'DateIn'
            Options.Filtering = False
            Options.Grouping = False
            Width = 75
          end
          object AccommodationGridDBTableView1DateOut: TcxGridDBColumn
            Caption = 'Date Out'
            DataBinding.FieldName = 'DateOut'
            Options.Filtering = False
            Options.Grouping = False
            Width = 75
          end
          object AccommodationGridDBTableView1NoOfSingles: TcxGridDBColumn
            Caption = 'Singles'
            DataBinding.FieldName = 'NoOfSingles'
            Options.Filtering = False
            Options.Grouping = False
            Width = 75
          end
          object AccommodationGridDBTableView1NoOfDoubles: TcxGridDBColumn
            Caption = 'Doubles'
            DataBinding.FieldName = 'NoOfDoubles'
            Options.Filtering = False
            Options.Grouping = False
            Width = 75
          end
          object AccommodationGridDBTableView1NoOfTriples: TcxGridDBColumn
            Caption = 'Triples'
            DataBinding.FieldName = 'NoOfTriples'
            Options.Filtering = False
            Options.Grouping = False
            Width = 75
          end
          object AccommodationGridDBTableView1NoOfTwins: TcxGridDBColumn
            Caption = 'Twins'
            DataBinding.FieldName = 'NoOfTwins'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 55
          end
          object AccommodationGridDBTableView1NoOfPax: TcxGridDBColumn
            Caption = 'Pax'
            DataBinding.FieldName = 'NoOfPax'
            Options.Filtering = False
            Options.Grouping = False
            Width = 75
          end
          object AccommodationGridDBTableView1ExtraBeds: TcxGridDBColumn
            Caption = 'Extra Beds'
            DataBinding.FieldName = 'ExtraBeds'
            Options.Filtering = False
            Options.Grouping = False
            Width = 75
          end
          object AccommodationGridDBTableView1NoConfirmed: TcxGridDBColumn
            Caption = 'Blocked'
            DataBinding.FieldName = 'NoConfirmed'
            Options.Filtering = False
            Options.Grouping = False
            Width = 75
          end
          object AccommodationGridDBTableView1Confirmed: TcxGridDBColumn
            DataBinding.FieldName = 'Confirmed'
            Options.Filtering = False
            Options.Grouping = False
            Width = 75
          end
          object AccommodationGridDBTableView1Ac: TcxGridDBColumn
            Caption = 'AC'
            DataBinding.FieldName = 'Ac'
            Options.Filtering = False
            Options.Grouping = False
            Width = 75
          end
          object AccommodationGridDBTableView1RoomType: TcxGridDBColumn
            Caption = 'Room Type'
            DataBinding.FieldName = 'RoomType'
            Options.Filtering = False
            Options.Grouping = False
            Width = 75
          end
          object AccommodationGridDBTableView1Plan: TcxGridDBColumn
            DataBinding.FieldName = 'Plan'
            Options.Filtering = False
            Options.Grouping = False
            Width = 75
          end
          object AccommodationGridDBTableView1Tours: TcxGridDBColumn
            DataBinding.FieldName = 'Tours'
            Options.Filtering = False
            Options.Grouping = False
            Width = 75
          end
          object AccommodationGridDBTableView1Remarks: TcxGridDBColumn
            DataBinding.FieldName = 'Remarks'
            Options.Filtering = False
            Options.Grouping = False
            Width = 75
          end
          object AccommodationGridDBTableView1ExpectedCost: TcxGridDBColumn
            Caption = 'Expected Cost'
            DataBinding.FieldName = 'ExpectedCost'
            Options.Filtering = False
            Options.Grouping = False
            Width = 75
          end
          object AccommodationGridDBTableView1Organisation_1: TcxGridDBColumn
            Caption = 'Agent'
            DataBinding.FieldName = 'Organisation_1'
            Options.Filtering = False
            Options.Grouping = False
            Width = 75
          end
        end
        object AccommodationGridLevel1: TcxGridLevel
          GridView = AccommodationGridDBTableView1
        end
      end
    end
    object ItinServices: TcxTabSheet
      Caption = 'Services'
      ImageIndex = 2
      object ServicesGrid: TcxGrid
        Left = 0
        Top = 0
        Width = 977
        Height = 397
        Align = alClient
        PopupMenu = PopupMenu1
        TabOrder = 0
        object ServicesGridDBTableView1: TcxGridDBTableView
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
          DataController.DataSource = ItinServiceDs
          DataController.KeyFieldNames = 'ItineraryServices_id'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
          Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
          object ServicesGridDBTableView1City: TcxGridDBColumn
            DataBinding.FieldName = 'City'
            Options.Filtering = False
            Options.Grouping = False
            Width = 75
          end
          object ServicesGridDBTableView1Organisation: TcxGridDBColumn
            Caption = 'Agent'
            DataBinding.FieldName = 'Organisation'
            Options.Filtering = False
            Options.Grouping = False
            Width = 123
          end
          object ServicesGridDBTableView1TransferDate: TcxGridDBColumn
            Caption = 'Transfer Date'
            DataBinding.FieldName = 'TransferDate'
            Options.Filtering = False
            Options.Grouping = False
            Width = 100
          end
          object ServicesGridDBTableView1NoOfPax: TcxGridDBColumn
            Caption = 'Pax'
            DataBinding.FieldName = 'NoOfPax'
            Options.Filtering = False
            Options.Grouping = False
            Width = 45
          end
          object ServicesGridDBTableView1Automobile: TcxGridDBColumn
            DataBinding.FieldName = 'Automobile'
            Options.Filtering = False
            Options.Grouping = False
            Width = 81
          end
          object ServicesGridDBTableView1NoOfVehicles: TcxGridDBColumn
            Caption = 'Vehicles'
            DataBinding.FieldName = 'NoOfVehicles'
            Options.Filtering = False
            Options.Grouping = False
            Width = 64
          end
          object ServicesGridDBTableView1Service: TcxGridDBColumn
            DataBinding.FieldName = 'Service'
            Options.Filtering = False
            Options.Grouping = False
            Width = 95
          end
          object ServicesGridDBTableView1Guide: TcxGridDBColumn
            DataBinding.FieldName = 'Guide'
            Options.Filtering = False
            Options.Grouping = False
            Width = 48
          end
          object ServicesGridDBTableView1Transport: TcxGridDBColumn
            DataBinding.FieldName = 'Transport'
            Options.Filtering = False
            Options.Grouping = False
            Width = 60
          end
          object ServicesGridDBTableView1AC: TcxGridDBColumn
            DataBinding.FieldName = 'AC'
            Options.Filtering = False
            Options.Grouping = False
            Width = 50
          end
          object ServicesGridDBTableView1Time: TcxGridDBColumn
            DataBinding.FieldName = 'Time'
            Options.Filtering = False
            Options.Grouping = False
            Width = 55
          end
          object ServicesGridDBTableView1Tours: TcxGridDBColumn
            DataBinding.FieldName = 'Tours'
            Options.Filtering = False
            Options.Grouping = False
            Width = 47
          end
          object ServicesGridDBTableView1Remarks: TcxGridDBColumn
            DataBinding.FieldName = 'Remarks'
            Options.Filtering = False
            Options.Grouping = False
            Width = 75
          end
          object ServicesGridDBTableView1ExpectedAmount: TcxGridDBColumn
            Caption = 'Expected Amount'
            DataBinding.FieldName = 'ExpectedAmount'
            Options.Filtering = False
            Options.Grouping = False
            Width = 75
          end
        end
        object ServicesGridLevel1: TcxGridLevel
          GridView = ServicesGridDBTableView1
        end
      end
    end
    object ItinTransport: TcxTabSheet
      Caption = 'Transport'
      ImageIndex = 3
      object TransportGrid: TcxGrid
        Left = 0
        Top = 0
        Width = 977
        Height = 397
        Align = alClient
        PopupMenu = PopupMenu1
        TabOrder = 0
        object TransportGridDBTableView1: TcxGridDBTableView
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
          DataController.DataSource = ItinTransportDs
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
          Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
          object TransportGridDBTableView1Organisation: TcxGridDBColumn
            Caption = 'Agent'
            DataBinding.FieldName = 'Organisation'
            Options.Filtering = False
            Options.Grouping = False
            Width = 75
          end
          object TransportGridDBTableView1NoOfPax: TcxGridDBColumn
            Caption = 'Pax'
            DataBinding.FieldName = 'NoOfPax'
            Options.Filtering = False
            Options.Grouping = False
            Width = 75
          end
          object TransportGridDBTableView1Automobile: TcxGridDBColumn
            DataBinding.FieldName = 'Automobile'
            Options.Filtering = False
            Options.Grouping = False
            Width = 75
          end
          object TransportGridDBTableView1NoOfVehicles: TcxGridDBColumn
            Caption = 'Vehicles'
            DataBinding.FieldName = 'NoOfVehicles'
            Options.Filtering = False
            Options.Grouping = False
            Width = 75
          end
          object TransportGridDBTableView1City: TcxGridDBColumn
            Caption = 'From City'
            DataBinding.FieldName = 'City'
            Options.Filtering = False
            Options.Grouping = False
            Width = 75
          end
          object TransportGridDBTableView1FromPlace: TcxGridDBColumn
            Caption = 'From Place'
            DataBinding.FieldName = 'FromPlace'
            Options.Filtering = False
            Options.Grouping = False
            Width = 75
          end
          object TransportGridDBTableView1FromDate: TcxGridDBColumn
            Caption = 'From Date'
            DataBinding.FieldName = 'FromDate'
            Options.Filtering = False
            Options.Grouping = False
            Width = 83
          end
          object TransportGridDBTableView1FromTime: TcxGridDBColumn
            Caption = 'From Time'
            DataBinding.FieldName = 'FromTime'
            Options.Filtering = False
            Options.Grouping = False
            Width = 61
          end
          object TransportGridDBTableView1City_1: TcxGridDBColumn
            Caption = 'To City'
            DataBinding.FieldName = 'City_1'
            Options.Filtering = False
            Options.Grouping = False
            Width = 69
          end
          object TransportGridDBTableView1ToPlace: TcxGridDBColumn
            Caption = 'To Place'
            DataBinding.FieldName = 'ToPlace'
            Options.Filtering = False
            Options.Grouping = False
            Width = 75
          end
          object TransportGridDBTableView1ToDate: TcxGridDBColumn
            Caption = 'To Date'
            DataBinding.FieldName = 'ToDate'
            Options.Filtering = False
            Options.Grouping = False
            Width = 75
          end
          object TransportGridDBTableView1ToTime: TcxGridDBColumn
            Caption = 'To Time'
            DataBinding.FieldName = 'ToTime'
            Options.Filtering = False
            Options.Grouping = False
            Width = 49
          end
          object TransportGridDBTableView1AC: TcxGridDBColumn
            DataBinding.FieldName = 'AC'
            Options.Filtering = False
            Options.Grouping = False
            Width = 37
          end
          object TransportGridDBTableView1DropOffDays: TcxGridDBColumn
            Caption = 'Drop Off Days'
            DataBinding.FieldName = 'DropOffDays'
            Options.Filtering = False
            Options.Grouping = False
            Width = 75
          end
          object TransportGridDBTableView1Dropoffkms: TcxGridDBColumn
            Caption = 'Drop Off Kms'
            DataBinding.FieldName = 'Dropoffkms'
            Options.Filtering = False
            Options.Grouping = False
            Width = 75
          end
          object TransportGridDBTableView1Tours: TcxGridDBColumn
            DataBinding.FieldName = 'Tours'
            Options.Filtering = False
            Options.Grouping = False
            Width = 75
          end
          object TransportGridDBTableView1Remarks: TcxGridDBColumn
            DataBinding.FieldName = 'Remarks'
            Options.Filtering = False
            Options.Grouping = False
            Width = 75
          end
          object TransportGridDBTableView1ExpectedAmount: TcxGridDBColumn
            Caption = 'Expected Cost'
            DataBinding.FieldName = 'ExpectedAmount'
            Options.Filtering = False
            Options.Grouping = False
            Width = 75
          end
        end
        object TransportGridLevel1: TcxGridLevel
          GridView = TransportGridDBTableView1
        end
      end
    end
    object ItinPackages: TcxTabSheet
      Caption = 'Packages'
      ImageIndex = 4
      object PackagesGrid: TcxGrid
        Left = 0
        Top = 0
        Width = 977
        Height = 397
        Align = alClient
        PopupMenu = PopupMenu1
        TabOrder = 0
        object PackagesGridDBTableView1: TcxGridDBTableView
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
          DataController.DataSource = ItinPackagesDs
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
          Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
          object PackagesGridDBTableView1itinerarypackages_id: TcxGridDBColumn
            DataBinding.FieldName = 'itinerarypackages_id'
            Visible = False
            Options.Editing = False
          end
          object PackagesGridDBTableView1itineraries_id: TcxGridDBColumn
            DataBinding.FieldName = 'itineraries_id'
            Visible = False
            Options.Editing = False
          end
          object PackagesGridDBTableView1package: TcxGridDBColumn
            Caption = 'Package'
            DataBinding.FieldName = 'package'
            Options.Filtering = False
            Options.Grouping = False
            Width = 205
          end
          object PackagesGridDBTableView1tours: TcxGridDBColumn
            Caption = 'Tours'
            DataBinding.FieldName = 'tours'
            Options.Filtering = False
            Options.Grouping = False
            Width = 137
          end
          object PackagesGridDBTableView1noofpax: TcxGridDBColumn
            Caption = 'Pax'
            DataBinding.FieldName = 'noofpax'
            Options.Filtering = False
            Options.Grouping = False
            Width = 51
          end
          object PackagesGridDBTableView1from_date: TcxGridDBColumn
            Caption = 'From Date'
            DataBinding.FieldName = 'from_date'
            Width = 111
          end
          object PackagesGridDBTableView1to_date: TcxGridDBColumn
            Caption = 'To Date'
            DataBinding.FieldName = 'to_date'
            Width = 108
          end
          object PackagesGridDBTableView1Organisation: TcxGridDBColumn
            Caption = 'Agent'
            DataBinding.FieldName = 'organisation'
            Width = 138
          end
          object PackagesGridDBTableView1remarks: TcxGridDBColumn
            Caption = 'Remarks'
            DataBinding.FieldName = 'remarks'
            Width = 182
          end
        end
        object PackagesGridLevel1: TcxGridLevel
          GridView = PackagesGridDBTableView1
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 519
    Width = 986
    Height = 44
    Align = alBottom
    TabOrder = 2
    object SearchLbl: TLabel
      Left = 15
      Top = 13
      Width = 41
      Height = 13
      Caption = 'Search'
      Visible = False
    end
    object KeyIdDbText: TDBText
      Left = 743
      Top = 10
      Width = 65
      Height = 17
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object SearchEdit: TEdit
      Left = 64
      Top = 8
      Width = 96
      Height = 21
      TabOrder = 0
      Visible = False
    end
    object cxButton1: TcxButton
      Left = 896
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Close'
      TabOrder = 1
      OnClick = cxButton1Click
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
  end
  object MasterCodeSds: TSQLDataSet
    CommandText = 
      'SELECT Masters_id, MasterCode '#13#10'FROM Masters'#13#10'ORDER BY MasterCod' +
      'e'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 744
  end
  object MasterCodeDsp: TDataSetProvider
    DataSet = MasterCodeSds
    Left = 760
  end
  object MasterCodeCds: TClientDataSet
    Aggregates = <>
    Filtered = True
    Params = <>
    ProviderName = 'MasterCodeDsp'
    Left = 776
    object MasterCodeCdsMasters_id: TIntegerField
      FieldName = 'Masters_id'
    end
    object MasterCodeCdsMasterCode: TStringField
      FieldName = 'MasterCode'
      Size = 50
    end
  end
  object MasterCodeDs: TDataSource
    DataSet = MasterCodeCds
    Left = 792
  end
  object DepDateSds: TSQLDataSet
    CommandText = 
      'SELECT  Masters.Masters_id, Itineraries.Itineraries_id, Itinerar' +
      'ies.DepartureDate '#13#10'FROM Itineraries, Masters'#13#10'WHERE Masters.Mas' +
      'ters_id=Itineraries.Masters_id'#13#10'AND Itineraries.Masters_id=:mast' +
      'ers_id'
    DataSource = MasterCodeDs
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Masters_id'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 748
    Top = 19
  end
  object DepDateDsp: TDataSetProvider
    DataSet = DepDateSds
    Left = 764
    Top = 19
  end
  object DepDateCds: TClientDataSet
    Aggregates = <>
    Filtered = True
    Params = <>
    ProviderName = 'DepDateDsp'
    Left = 780
    Top = 19
    object DepDateCdsMasters_id: TIntegerField
      FieldName = 'Masters_id'
    end
    object DepDateCdsItineraries_id: TIntegerField
      FieldName = 'Itineraries_id'
    end
    object DepDateCdsDepartureDate: TSQLTimeStampField
      FieldName = 'DepartureDate'
    end
  end
  object DepDateDs: TDataSource
    DataSet = DepDateCds
    Left = 796
    Top = 19
  end
  object PopupMenu1: TPopupMenu
    Left = 44
    Top = 9
    object Add1: TMenuItem
      Caption = '&Add'
      OnClick = Add1Click
    end
    object Edit1: TMenuItem
      Caption = '&Edit'
      OnClick = Edit1Click
    end
    object Delete1: TMenuItem
      Caption = '&Delete'
      OnClick = Delete1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Add2: TMenuItem
      Caption = 'Add (Pack)'
      OnClick = Add2Click
    end
    object Edit2: TMenuItem
      Caption = 'Edit (Pack)'
      OnClick = Edit2Click
    end
  end
  object ItinTicketsSds: TSQLDataSet
    CommandText = 
      'SELECT H.Masters_id, A.ItineraryTickets_id, A.Itineraries_id, A.' +
      'TravelDate,'#13#10'               A.FlightNo, A.Tours, A.AdviceNoOfPax' +
      ', A.AdviceNamesOfPax,'#13#10'               A.Confirmed, B.Organisatio' +
      'n, A.NoofPax, C.Class,'#13#10'               A.ExpectedAmount,'#9'D.City,' +
      ' E.City, F.Details, A.Departure,'#13#10'               A.Arrival, G.No' +
      'Confirmed, H.DepartureDate,B.cities_id, A.remarks,'#13#10'            ' +
      '   A.NoBooked, A.NoCancelled'#13#10'FROM ((((((ItineraryTickets A'#13#10'LEF' +
      'T JOIN Addressbook B'#13#10'         ON B.Addressbook_id = A.Addressbo' +
      'ok_id)'#13#10'LEFT JOIN Class C ON C.Class_id = A.Classid)'#13#10'LEFT JOIN ' +
      'Cities D ON D.Cities_id = A.From_Cities_id)'#13#10'LEFT JOIN Cities E ' +
      'ON E.Cities_id = A.To_Cities_id)'#13#10'LEFT JOIN Tickets F ON F.Ticke' +
      'ts_id = A.Tickets_id)'#13#10'LEFT JOIN Itineraries H ON H.Itineraries_' +
      'id = A.Itineraries_id)'#13#10'LEFT JOIN BlockBookingTickets G ON'#13#10'    ' +
      '      (G.From_Cities_id = A.From_cities_id ) AND'#13#10'          (G.T' +
      'o_Cities_id = A.To_cities_id ) AND'#13#10'          (G.TravelDate = A.' +
      'TravelDate) AND'#13#10'          (G.Addressbook_id = A.Addressbook_id)' +
      #13#10'WHERE H.Itineraries_id = :Itineraries_id'#13#10'ORDER BY A.TravelDat' +
      'e, A.Departure, A.Arrival, A.Tours'
    DataSource = Itinerariesds
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Itineraries_id'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 64
    Top = 192
  end
  object ItinTicketsDsp: TDataSetProvider
    DataSet = ItinTicketsSds
    Left = 80
    Top = 192
  end
  object ItinTicketsCds: TClientDataSet
    Aggregates = <>
    Filtered = True
    FieldDefs = <
      item
        Name = 'Masters_id'
        DataType = ftInteger
      end
      item
        Name = 'ItineraryTickets_id'
        DataType = ftInteger
      end
      item
        Name = 'Itineraries_id'
        DataType = ftInteger
      end
      item
        Name = 'TravelDate'
        DataType = ftTimeStamp
      end
      item
        Name = 'FlightNo'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Tours'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'AdviceNoOfPax'
        DataType = ftTimeStamp
      end
      item
        Name = 'AdviceNamesOfPax'
        DataType = ftTimeStamp
      end
      item
        Name = 'Confirmed'
        DataType = ftTimeStamp
      end
      item
        Name = 'Organisation'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'NoofPax'
        DataType = ftInteger
      end
      item
        Name = 'Class'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'ExpectedAmount'
        DataType = ftBCD
        Precision = 10
        Size = 2
      end
      item
        Name = 'City'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'City_1'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Details'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Departure'
        DataType = ftTimeStamp
      end
      item
        Name = 'Arrival'
        DataType = ftTimeStamp
      end
      item
        Name = 'NoConfirmed'
        DataType = ftInteger
      end
      item
        Name = 'DepartureDate'
        DataType = ftTimeStamp
      end
      item
        Name = 'cities_id'
        DataType = ftInteger
      end
      item
        Name = 'remarks'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'NoBooked'
        DataType = ftInteger
      end
      item
        Name = 'NoCancelled'
        DataType = ftInteger
      end>
    IndexDefs = <>
    IndexFieldNames = 'Itineraries_id'
    MasterFields = 'Itineraries_id'
    MasterSource = Itinerariesds
    PacketRecords = 0
    Params = <>
    ProviderName = 'ItinTicketsDsp'
    StoreDefs = True
    Left = 96
    Top = 192
    object ItinTicketsCdsMasters_id: TIntegerField
      FieldName = 'Masters_id'
    end
    object ItinTicketsCdsItineraryTickets_id: TIntegerField
      FieldName = 'ItineraryTickets_id'
    end
    object ItinTicketsCdsItineraries_id: TIntegerField
      FieldName = 'Itineraries_id'
    end
    object ItinTicketsCdsTravelDate: TSQLTimeStampField
      FieldName = 'TravelDate'
    end
    object ItinTicketsCdsFlightNo: TStringField
      FieldName = 'FlightNo'
      Size = 40
    end
    object ItinTicketsCdsTours: TStringField
      FieldName = 'Tours'
      Size = 50
    end
    object ItinTicketsCdsAdviceNoOfPax: TSQLTimeStampField
      FieldName = 'AdviceNoOfPax'
    end
    object ItinTicketsCdsAdviceNamesOfPax: TSQLTimeStampField
      FieldName = 'AdviceNamesOfPax'
    end
    object ItinTicketsCdsConfirmed: TSQLTimeStampField
      FieldName = 'Confirmed'
    end
    object ItinTicketsCdsOrganisation: TStringField
      FieldName = 'Organisation'
      Size = 60
    end
    object ItinTicketsCdsNoofPax: TIntegerField
      FieldName = 'NoofPax'
    end
    object ItinTicketsCdsClass: TStringField
      FieldName = 'Class'
      Size = 30
    end
    object ItinTicketsCdsExpectedAmount: TBCDField
      FieldName = 'ExpectedAmount'
      Precision = 10
      Size = 2
    end
    object ItinTicketsCdsCity: TStringField
      FieldName = 'City'
      Size = 50
    end
    object ItinTicketsCdsCity_1: TStringField
      FieldName = 'City_1'
      Size = 50
    end
    object ItinTicketsCdsDetails: TStringField
      FieldName = 'Details'
      Size = 15
    end
    object ItinTicketsCdsDeparture: TSQLTimeStampField
      FieldName = 'Departure'
      DisplayFormat = 'HH:mm'
    end
    object ItinTicketsCdsArrival: TSQLTimeStampField
      FieldName = 'Arrival'
      DisplayFormat = 'HH:mm'
    end
    object ItinTicketsCdsNoConfirmed: TIntegerField
      FieldName = 'NoConfirmed'
    end
    object ItinTicketsCdsDepartureDate: TSQLTimeStampField
      FieldName = 'DepartureDate'
    end
    object ItinTicketsCdscities_id: TIntegerField
      FieldName = 'cities_id'
    end
    object ItinTicketsCdsremarks: TStringField
      FieldName = 'remarks'
      Size = 255
    end
    object ItinTicketsCdsNoBooked: TIntegerField
      FieldName = 'NoBooked'
    end
    object ItinTicketsCdsNoCancelled: TIntegerField
      FieldName = 'NoCancelled'
    end
  end
  object ItinTicketsDs: TDataSource
    DataSet = ItinTicketsCds
    Left = 104
    Top = 192
  end
  object ItinAccommodationSds: TSQLDataSet
    CommandText = 
      'SELECT H.Masters_id, H.DepartureDate,A.ItineraryAccommodation_id' +
      ','#13#10'       A.Itineraries_id, B.Cities_id, B.City, C.Organisation,' +
      #13#10'       A.DateIn, A.DateOut, A.Tours, A.Remarks, A.NoOfSingles,' +
      #13#10'       A.NoOfDoubles, A.NoOfTriples, A.NoOfTwins, A.Ac , A.Ext' +
      'raBeds, D.RoomType,'#13#10'       E.[Plan], A.NoOfPax, F.Organisation,' +
      ' A.Confirmed, A.ExpectedCost, '#13#10'       G.NoConfirmed'#13#10'FROM Itine' +
      'raryAccommodation A'#13#10'LEFT JOIN Addressbook C'#13#10'LEFT JOIN Cities B' +
      ' ON C.Cities_id = B.Cities_id'#13#10'ON C.Addressbook_id = A.AddressBo' +
      'ok_id'#13#10'LEFT JOIN RoomTypes D'#13#10'ON D.RoomTypes_id = A.RoomTypes_id' +
      #13#10'LEFT JOIN MealPlans E ON E.MealPlans_id = A.MealPlans_id'#13#10'LEFT' +
      ' JOIN Addressbook F'#13#10'ON F.Addressbook_id = A.Agent_Addressbook_i' +
      'd'#13#10'JOIN Itineraries H ON H.Itineraries_id = A.Itineraries_id'#13#10'LE' +
      'FT JOIN Masters M ON H.Masters_id = M.Masters_id'#13#10'LEFT JOIN Mast' +
      'erDepartureDates MDD ON H.Masters_id = MDD.Masters_id AND H.Depa' +
      'rtureDate = MDD.TourDate'#13#10'LEFT JOIN BlockBookingRooms G'#13#10'ON  G.A' +
      'ddressbook_id = A.Addressbook_id'#13#10'AND G.DateIn = A.DateIn'#13#10'AND G' +
      '.DateOut = A.DateOut'#13#10'AND G.Masters_id = H.Masters_id'#13#10'AND SUBST' +
      'RING(M.MasterCode,1,3) + '#39' - '#39' + LTRIM(RTRIM(CAST(MDD.TourNo AS ' +
      'VARCHAR(2)))) = G.TourRef'#13#10'WHERE H.Itineraries_id = :Itineraries' +
      '_id'#13#10'ORDER BY A.DateIn, A.DateOut,A.Tours'#13#10
    DataSource = Itinerariesds
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Itineraries_id'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 152
    Top = 192
  end
  object ItinAccommodationDsp: TDataSetProvider
    DataSet = ItinAccommodationSds
    Left = 168
    Top = 192
  end
  object ItinAccommodationCds: TClientDataSet
    Aggregates = <>
    Filtered = True
    IndexFieldNames = 'Itineraries_id'
    MasterFields = 'Itineraries_id'
    MasterSource = Itinerariesds
    PacketRecords = 0
    Params = <>
    ProviderName = 'ItinAccommodationDsp'
    Left = 184
    Top = 192
    object ItinAccommodationCdsMasters_id: TIntegerField
      FieldName = 'Masters_id'
    end
    object ItinAccommodationCdsDepartureDate: TSQLTimeStampField
      FieldName = 'DepartureDate'
    end
    object ItinAccommodationCdsItineraryAccommodation_id: TIntegerField
      FieldName = 'ItineraryAccommodation_id'
    end
    object ItinAccommodationCdsItineraries_id: TIntegerField
      FieldName = 'Itineraries_id'
    end
    object ItinAccommodationCdsCities_id: TIntegerField
      FieldName = 'Cities_id'
    end
    object ItinAccommodationCdsCity: TStringField
      FieldName = 'City'
      Size = 50
    end
    object ItinAccommodationCdsOrganisation: TStringField
      FieldName = 'Organisation'
      Size = 60
    end
    object ItinAccommodationCdsDateIn: TSQLTimeStampField
      FieldName = 'DateIn'
    end
    object ItinAccommodationCdsDateOut: TSQLTimeStampField
      FieldName = 'DateOut'
    end
    object ItinAccommodationCdsTours: TStringField
      FieldName = 'Tours'
      Size = 50
    end
    object ItinAccommodationCdsRemarks: TStringField
      FieldName = 'Remarks'
      Size = 255
    end
    object ItinAccommodationCdsNoOfSingles: TIntegerField
      FieldName = 'NoOfSingles'
    end
    object ItinAccommodationCdsNoOfDoubles: TIntegerField
      FieldName = 'NoOfDoubles'
    end
    object ItinAccommodationCdsNoOfTriples: TIntegerField
      FieldName = 'NoOfTriples'
    end
    object ItinAccommodationCdsAc: TBooleanField
      FieldName = 'Ac'
    end
    object ItinAccommodationCdsExtraBeds: TIntegerField
      FieldName = 'ExtraBeds'
    end
    object ItinAccommodationCdsRoomType: TStringField
      FieldName = 'RoomType'
      Size = 50
    end
    object ItinAccommodationCdsPlan: TStringField
      FieldName = 'Plan'
      FixedChar = True
      Size = 3
    end
    object ItinAccommodationCdsNoOfPax: TIntegerField
      FieldName = 'NoOfPax'
    end
    object ItinAccommodationCdsOrganisation_1: TStringField
      FieldName = 'Organisation_1'
      Size = 60
    end
    object ItinAccommodationCdsConfirmed: TSQLTimeStampField
      FieldName = 'Confirmed'
    end
    object ItinAccommodationCdsExpectedCost: TBCDField
      FieldName = 'ExpectedCost'
      Precision = 10
      Size = 2
    end
    object ItinAccommodationCdsNoConfirmed: TIntegerField
      FieldName = 'NoConfirmed'
    end
    object ItinAccommodationCdsNoOfTwins: TIntegerField
      FieldName = 'NoOfTwins'
    end
  end
  object ItinAccommodationDs: TDataSource
    DataSet = ItinAccommodationCds
    Left = 192
    Top = 192
  end
  object ItinServiceSds: TSQLDataSet
    CommandText = 
      'SELECT F.Masters_id, F.DepartureDate,  A.ItineraryServices_id,'#13#10 +
      '               A.Itineraries_id,B.City, C.Organisation, A.Transf' +
      'erDate,D.Service,'#13#10'               A.Time, A.Tours, A.Remarks, A.' +
      ' NoOfPax, A.Transport, A.AC,'#13#10'               E. Vehicle as Autom' +
      'obile, A.NoOfVehicles, A.Guide,'#13#10'               A.ExpectedAmount' +
      ', B.cities_id'#13#10'FROM ((((ItineraryServices A'#13#10'LEFT JOIN Addressbo' +
      'ok C ON C.Addressbook_id = A.AddressBook_id)'#13#10'LEFT JOIN Services' +
      ' D ON D.Services_id = A.Services_id)'#13#10'LEFT JOIN Cities B ON D.Ci' +
      'ties_id = B.Cities_id)'#13#10'LEFT JOIN Vehicles E ON E.Vehicles_id = ' +
      'A.Vehicles_id)'#13#10'LEFT JOIN Itineraries F ON F.Itineraries_id = A.' +
      'Itineraries_id'#13#10'WHERE F.Itineraries_id = :Itineraries_id'#13#10'ORDER ' +
      'BY A.TransferDate, A.Time, A.Tours'
    DataSource = Itinerariesds
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'Itineraries_id'
        ParamType = ptInput
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 232
    Top = 192
  end
  object ItinServiceDsp: TDataSetProvider
    DataSet = ItinServiceSds
    Left = 248
    Top = 192
  end
  object ItinServiceDs: TDataSource
    DataSet = ItinServiceCds
    Left = 280
    Top = 192
  end
  object ItinTransportSds: TSQLDataSet
    CommandText = 
      'SELECT F.Masters_id, F.DepartureDate,  A.ItineraryTransport_id,'#13 +
      #10'               A.Itineraries_id, A.FromPlace,  A.FromDate,'#13#10'   ' +
      '            A.FromTime,  A.ToPlace,  A.ToDate, A.ToTime, A.Remar' +
      'ks,'#13#10'               B.Organisation,  A.Tours,  A.NoOfPax,  A.AC,' +
      '  A.DropOffDays,'#13#10'               C.Vehicle as Automobile,'#13#10'     ' +
      '          A.NoOfVehicles, A.ExpectedAmount,D.City, E.City, B.cit' +
      'ies_id,'#13#10'               A.Dropoffkms'#13#10'FROM ((((ItineraryTranspor' +
      't A'#13#10'LEFT JOIN Addressbook B ON B.Addressbook_id = A.Addressbook' +
      '_id)'#13#10'LEFT JOIN Vehicles C ON C.Vehicles_id = A.Vehicles_id)'#13#10'LE' +
      'FT JOIN Cities D ON D.Cities_id = A.From_Cities_id)'#13#10'LEFT JOIN C' +
      'ities E ON  E.Cities_id = A.To_Cities_id)'#13#10'LEFT JOIN Itineraries' +
      ' F ON F.Itineraries_id = A.Itineraries_id'#13#10'WHERE F.itineraries_i' +
      'd = :Itineraries_id'#13#10'ORDER BY A.FromDate, A.FromTime, A.Tours'
    DataSource = Itinerariesds
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'Itineraries_id'
        ParamType = ptInput
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 320
    Top = 192
  end
  object ItinTransportDsp: TDataSetProvider
    DataSet = ItinTransportSds
    Left = 336
    Top = 192
  end
  object ItinTransportDs: TDataSource
    DataSet = ItinTransportCds
    Left = 368
    Top = 192
  end
  object ItinPackagesSds: TSQLDataSet
    CommandText = 
      'SELECT  i.masters_id, i.DepartureDate, ip.itinerarypackages_id ,' +
      #13#10'                ip.itineraries_id , p.package,  ip.from_time ,' +
      ' ip.to_time,'#13#10'                ip.from_place, ip.to_place , ip.to' +
      'urs, ip.transport, ip.ac ,'#13#10'                ip.noofpax , ip.sing' +
      'lesupplement ,'#13#10'                a.organisation, v.vehicle, ip.no' +
      'ofvehicles, ip.remarks,'#13#10'                ip.expectedamount, ip.f' +
      'rom_date, ip.to_date'#13#10'FROM ItineraryPackages ip'#13#10'LEFT JOIN packa' +
      'ges p ON ip.packages_id = p.packages_id'#13#10'LEFT JOIN addressbook a' +
      ' ON ip.addressbook_id = a.addressbook_id'#13#10'LEFT JOIN vehicles v O' +
      'N ip.vehicles_id = v.vehicles_id'#13#10'LEFT JOIN Itineraries i ON i.I' +
      'tineraries_id = ip.Itineraries_id'#13#10'WHERE i.itineraries_id = :iti' +
      'neraries_id'#13#10'ORDER BY  ip.from_time, ip.to_time, ip.tours'
    DataSource = Itinerariesds
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Itineraries_id'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 424
    Top = 192
  end
  object ItinPackagesDsp: TDataSetProvider
    DataSet = ItinPackagesSds
    Left = 440
    Top = 192
  end
  object ItinPackagesCds: TClientDataSet
    Aggregates = <>
    Filtered = True
    IndexFieldNames = 'itineraries_id'
    MasterFields = 'Itineraries_id'
    MasterSource = Itinerariesds
    PacketRecords = 0
    Params = <>
    ProviderName = 'ItinPackagesDsp'
    Left = 459
    Top = 192
    object ItinPackagesCdsmasters_id: TIntegerField
      FieldName = 'masters_id'
    end
    object ItinPackagesCdsDepartureDate: TSQLTimeStampField
      FieldName = 'DepartureDate'
    end
    object ItinPackagesCdsitinerarypackages_id: TIntegerField
      FieldName = 'itinerarypackages_id'
    end
    object ItinPackagesCdsitineraries_id: TIntegerField
      FieldName = 'itineraries_id'
    end
    object ItinPackagesCdspackage: TStringField
      FieldName = 'package'
      Size = 50
    end
    object ItinPackagesCdsfrom_time: TSQLTimeStampField
      FieldName = 'from_time'
      DisplayFormat = 'hh:mm'
      EditMask = '!90:00;1;_'
    end
    object ItinPackagesCdsto_time: TSQLTimeStampField
      FieldName = 'to_time'
      DisplayFormat = 'hh:mm'
      EditMask = '!90:00;1;_'
    end
    object ItinPackagesCdsfrom_place: TStringField
      FieldName = 'from_place'
      Size = 30
    end
    object ItinPackagesCdsto_place: TStringField
      FieldName = 'to_place'
      Size = 30
    end
    object ItinPackagesCdstours: TStringField
      FieldName = 'tours'
    end
    object ItinPackagesCdstransport: TBooleanField
      FieldName = 'transport'
    end
    object ItinPackagesCdsac: TBooleanField
      FieldName = 'ac'
    end
    object ItinPackagesCdsnoofpax: TIntegerField
      FieldName = 'noofpax'
    end
    object ItinPackagesCdssinglesupplement: TIntegerField
      FieldName = 'singlesupplement'
    end
    object ItinPackagesCdsorganisation: TStringField
      FieldName = 'organisation'
      Size = 60
    end
    object ItinPackagesCdsvehicle: TStringField
      FieldName = 'vehicle'
      Size = 35
    end
    object ItinPackagesCdsnoofvehicles: TIntegerField
      FieldName = 'noofvehicles'
    end
    object ItinPackagesCdsremarks: TStringField
      FieldName = 'remarks'
      Size = 250
    end
    object ItinPackagesCdsexpectedamount: TFMTBCDField
      FieldName = 'expectedamount'
      Precision = 18
      Size = 0
    end
    object ItinPackagesCdsfrom_date: TSQLTimeStampField
      FieldName = 'from_date'
    end
    object ItinPackagesCdsto_date: TSQLTimeStampField
      FieldName = 'to_date'
    end
  end
  object ItinPackagesDs: TDataSource
    DataSet = ItinPackagesCds
    Left = 472
    Top = 192
  end
  object ImageList1: TImageList
    Left = 16
    Top = 40
    Bitmap = {
      494C010105000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E9E9E900D2D2D200E3E3E300F3F3
      F300FEFEFE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DDA42B00B2831B0087733E00666A
      6D007B7B7B009E9E9E00BFBFBF00DADADA00EAEAEA00FBFBFB00FBFBFB00DEDE
      DE00F7F7F7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E8BD6E00F1D6AA00F3DAB500F3D9
      B400F3D9B400EAC47B00DDA62D009D7C2C00796844006D6D6D006D8955004E78
      2E0088888800DDDDDD00F5F5F500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EECB9300E6B86100F5E1C200F5E0
      C200F5E0C100F5DFC000F5DFBF00F4DEBE00E8D3B500AFA586008DBD61007CCE
      9A00618E2700937430008C8C8C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EECB9300F0CF9E00E1AD4100F7E7
      CF00F7E7CE00F7E6CD00F7E6CD00F6E6CC00B6AA990061AC21007CCB8B0076CA
      8C007ACD950083A133006B6B6B00FBFBFB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EECB9300F0D09F00F2D8B100DEA8
      3200F9EEDC00F9EDDB00F9EDDA00C0B7AA004CA50000A1D8A3006DC3750071C5
      7D0074C8870078CB8F0046602D00D7D7D7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EECB9300F1D1A100F3D9B200F5E1
      C400DDA62B00FCF5EA00FBF4E800FBF4E800B8CF9A0055A3300089C881006BC1
      6F006FC478005199230050922200F4F4F4000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EECB9300F1D2A300F3D9B400F5E2
      C600F8EBD700E5BB5C00FEFBF700FEFBF600FEFBF600BBB8B600A2C4810065BD
      600069C06A00F6E4C9006D6D6D00FCFCFC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EECB9400F1D3A500F3DAB600F6E3
      C700F6E6CB00C4B46E00CCA63F00E0AF4000CDB2760071910400AAD2940060B9
      4C00529F2800F8EBD70089858000F3F3F3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EECC9500F1D3A600F4DBB700E4B7
      5800C1E0EC00BCE4FC00AED4EC0090AFC3007DA79800478F020064B837005AB3
      3500EFECD800FBF3E600847B6700F3F3F3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EFCC9600F0D09D00D7BC6F00D4EE
      FD0060AA2F005EA2300059A22400499902008BB5620069B8250050A20F00CCA9
      3F00FEFBF600FEFAF500806F4B00F3F3F3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DFA93800E1F2FD00E8F6FE00E6F5
      FE00E2F4FE00D6ECEE00B8D8BF0091BD8000B4D6BF00D6EFFD00D3EEFD00D1ED
      FD00D5AA3F00FFFFFF00806F4B00F3F3F3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ECD49D0099C0BB0084CEF90084CE
      F90084CEF90084CEF90084CEF90084CEF90085CEF90086CFF90089D0F90080C7
      F80083C8F800BFAD5E009B8B6600F8F8F8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D7AE4C008DD2
      F90092D3FA0096D5FA009AD7FA009FD8FB00A3DAFB00A8DCFB00ACDDFB00B1DF
      FB00BCCDBD00CCAA6100F8F8F800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FBF7
      EE00C8B05E00BCE4FC00C1E6FC00C5E8FB00CBEAFC00CFECFC00D3E3DD00CBA1
      4500F5F5F5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E9CC8C00E3DEBF00F0F9FE00F3F5EF00CDA13B00F0F0F0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005945FF005945FF005945FF005945
      FF005945FF005945FF005945FF005945FF005945FF005945FF005945FF005945
      FF005945FF005945FF005945FF005945FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE00EAEAEA00D4D4D400CFCFCF00D0D0D000DDDDDD00F7F7F7000000
      0000000000000000000000000000000000005945FF005945FF005945FF005945
      FF005945FF005945FF005945FF005945FF005945FF005945FF005945FF005945
      FF005945FF005945FF005945FF005945FF00FFD18C00FFE98B00FFD98D00FFD2
      9900FFD07900FFDA7A00FFDE8200FEE09D00FFFFCB00FFFFA300FFE29900FFEC
      C400FFF4D400FFFCD800FFF4D4005945FF0000000000EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00AAAAAA00AAAA
      AA00AAAAAA00AAAAAA00AAAAAA00000000000000000000000000FEFEFE00E0E0
      E000907C7C008E171800AB2123009F01030098040600712C2D006E6E6E00BABA
      BA00F8F8F800000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF005945FF00FFD18800FEE18900FFDE8D00FFD6
      8900FFD07900FFD98000FFD38400FFE6AF00FFFAE200FCF96E00FFE69F00FFE3
      C500FFF9DB00FFF6CE00FFF7D6005945FF000000000000000000EEEEEE00EEEE
      EE0000000000AAAAAA0000000000EEEEEE00EEEEEE0000000000AAAAAA00AAAA
      AA00AAAAAA00AAAAAA00000000000000000000000000FEFEFE00C4BBBB009F01
      03009F0103009F010300FFD38000DB9A91009F0103009F0103009F010300771E
      1F008B8B8B00F2F2F2000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF005945FF00FFD28100FFD58500FFD28700FFD6
      9400FFD98D00FFD28100FFD56400FFF4DF00FFF2A300FFE77800FFD69400FFDD
      BC00FFF7D600FFFAD300FFF2D1005945FF000000000000000000000000000000
      000000000000AAAAAA0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CBC2C2009F0103009F01
      03009F0103009F010300C96C6500FFDEA000FFD78C00AB271A009F0103009F01
      03008D0C0E0089898900F7F7F70000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000000000002C1B1200A6938D00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF005945FF00FFD16E00FFBE8600FFCD8800FFE1
      8D00FFD16E00FFC68A00FFE07100FFEDCC00FFD77600FFE07100FFCE9100FFD2
      AF00FFF3B300FFF7DD00FFF4D4005945FF000000000000000000000000000000
      000000000000AAAAAA0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F2F2F2009F0103009F0103009F01
      03009F010300B1313200FFF1D600FFEFD100FFE8BD00FFDB97009F0303009F01
      03009F010300771E1F00BABABA0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0065665500352F11000A88B00000667F0005718900248BB4007FE3FF000708
      110007081100B6ACAB00FFFFFF005945FF00FFD37400EF845F00FFCAA200FFE2
      8000FFE9B80000000000F2D69A00FFCBA900FFD69C00FFDF7C00FFD58500FFCA
      9500FFE99900FFEDBD00FFF0CC005945FF000000000000000000EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE0000000000AAAAAA00AAAA
      AA00AAAAAA00AAAAAA000000000000000000A7313300A50E0B00AB1B1300AF23
      1700AF231800FFFAF000FFFAF100FFFAEF00FFF3DC00FFE6B600F9CF8B009F01
      03009F0103009F0103006E6E6E00F7F7F700FFFFFF00FFFFFF00FFFFFF00003A
      2E002C1B120059443E000973930003547200176C890000536A00000000000000
      00000000000003060400797C7B005945FF00FFD776000000000000000000FFF6
      AB00F4C67C0000000000000000000000000000000000FFE17A00FFD98000FFCA
      8C00FFDD9800FFDD9800FFE1A9005945FF000000000000000000EEEEEE000000
      000000000000000000000065CC00EEEEEE00EEEEEE0000000000000000000000
      000000000000000000000000000000000000B1271A00BB3D2700C24D3000C656
      3500C6563600FCEFE300FFFEFD00FFFEFC00FFF7E800FFEAC200C35836009F05
      03009F010300BD505200835B5B00DDDDDD00FFFFFF0000000000003748000029
      340039383A000000000042AFB5008BD1C000A9E9E500A5E5FF00A5E5FF008BDA
      FF0000000000AC9E58003F5646005945FF00FFC6690085641A00000000000000
      0000FFDAC7000000000000000000FECB7500FFDAA000FFDA8A00FFCE8500FFC8
      8200FFCD9600FFD98D00FFE68E005945FF000000000000000000EEEEEE00EEEE
      EE000000000000000000EEEEEE00EEEEEE00EEEEEE00000000000065CC000065
      CC000065CC000065CC000000000000000000C5533400D06C4300D97F4D00DD89
      5300ECBB9800E4AF9000FFFCF700FFFCF600E3B59F00A7110D009F0103009F01
      03009F010300FFFDF900EDE0DA00D0D0D00039383A0000486900023E58000044
      56000000000034BBC800471C5C00B9B78A00F9FFF300BAC8B80096DCEF000306
      040000313600FFFFFF00014C63005945FF00FFCE7D00FFECB800000000000000
      0000000000000000000005173300FFCAA200FFC79100FFCD8A00FFCE9100FFC7
      7C00FFCA8C00FFE18500FFDE8D005945FF00000000000000000000000000EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00000000000065CC000065CC000065
      CC000065CC00000000000000000000000000D77B4C00E5995D00EFAF6A00FAE1
      C300FFF6E500EAA86400F6D5B300C9643800C85A3800B6332100A30908009F01
      03009F010300FFFAF000FFF9EC00CFCFCF000031360000495C00145C75003665
      79009DF5F50047B1C7006DDBDB00A9E9E500BCEEF9009EE0FB00B6ECFD00CBE6
      FF00FFFFFF00269BCC00A7B994005945FF00FFC48200FFD16E006E491B000000
      0000000000000000000000000000000000000000000000000000F2AC3D00FFC2
      7400FFDD7900FFD28100FFD295005945FF000000000000000000000000000000
      0000EEEEEE00EEEEEE00EEEEEE0000000000000000000065CC000065CC000065
      CC0000000000000000000000000000000000E8A06100F8C47600FFF9EE00E7BE
      A200FFDFA100FFF5E200F9C57700E9A26200D77A4B00C34F3100AE2217009F01
      03009F010300FFF7E800FFF4DF00D4D4D40011626500145C750071827F00B7F3
      FF00F0FFEC00FFFFFF00E0FFF100D9F9EA00D6F5D600F9FFF300FFFFFF00B8E8
      FF005DC2F300A1D0F900C9C8B5005945FF00FFC86F00FFD28100FFE3CA000000
      0000000000000000000000000000000000000000000000000000FFF2A300FFE1
      7A00FFE17A00FFD58500FFCA8C005945FF000000000000000000000000000000
      000000000000EEEEEE000000000000000000AAAAAA000065CC000065CC000000
      000000000000000000000000000000000000F6BF7300FFDC9A00FFFFFF00FFFF
      FD00EDCDB600F9E9D600FFDD9D00F7C17500E3955A00CD663F00B7362300A206
      0700B7414200FFF1D700C39F8B00EAEAEA00B6C3C3004B574700C9E0C9000306
      0400000000000000000065665500ACAF8E004B9F9E006FCBE40034BAD60066B4
      AF00C4CDCB00F2F2F200FFFFFF005945FF00FFD37400FFD87C00FFCD8D000000
      00000000000000000000000000003D460000CFD8AA00D0ECB400FBFB7E00FFE1
      7A00FFD77600FFD38400FFD581005945FF000000000000000000000000000000
      0000EEEEEE0000000000EEEEEE0000000000AAAAAA0000000000000000000000
      000000000000000000000000000000000000FED38400FFF7E900FFFEFB00FFFD
      FA00FFFAF100FFF4E000E7B88F00FED48600EBA76500D4754800BD432A00A610
      0C00CF7E7D00A50F0E00907C7C00FEFEFE00FFFFFF00898D6300F9FAF900797C
      7B006767670083848600CCCCCC00FCFCFC00FFFFFF00352F1100FEFEFE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF005945FF00FFD37C00FFDF7C00FFD37C00591F
      0000140D0000F0FFC500FFE6A800FFD58100FFD07900FFDF7C00FFCF8000FFCE
      8500FFD18C00FFD87C00EAFD72005945FF00000000000000000000000000EEEE
      EE00EEEEEE0000000000EEEEEE00000000000000000000000000000000000000
      000000000000000000000000000000000000FDF6E900FFF6E600FFFAF000FFF9
      EE00FFF6E600FFF0D500FFE8BC00E1A26600EEAE6900DA845700EBBDA200FFE9
      C000EDBC8400B7392B00E0E0E00000000000FFFFFF00FFFFFF00D6D6D600B4BB
      B4009CA5940081856B009CA59400858B7700C7CBC100FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF005945FF00FFC77800FFE27600FFE69F000000
      0000FFE4D400FFE28000FFCE8A00FFCD8A00FFCE8500FFD08400FFCB7E00FFCD
      8A00FFCA8500FFD58500CCE3A1005945FF000000000000000000000000000000
      0000EEEEEE0000000000EEEEEE00000000000065CC0000000000000000000000
      00000000000000000000000000000000000000000000FCEBCB00FFF5E100FFF3
      DB00FFF0D200F3D4B000FFE6B500F9D6A100E0955600D6784A00BF452C00A713
      0E009F010300C4BBBB00FEFEFE0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF005945FF00FFC27C00FFDE7300FFE999000000
      0000E7B99400FFDE8200FFCF8800FFCF8800FFCF8800FFD08400FFD08400FFD2
      9000FFD37C00FFD38400CCE3A1005945FF000000000000000000000000000000
      000000000000EEEEEE00000000000065CC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FCEFD500FFE9
      C000FFE6B700FFE0A500F9CE8900FFD38000E69C5F00D06C4300BA3B2600A40A
      0900CBC2C200FEFEFE000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF005945FF00FFD07900FFD98000FFDC6D00F5E2
      AB00FFCE7800FFD98D00FFD29000FFD18C00FFCF8800FFCF8800FFCF8800FFCF
      8000FFE17A00FFDD7900D3EFAA005945FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FDF7
      ED00FFDA9300FFD48400FFD38000E7A25F00DC855100C7593700B6524500F2F2
      F20000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF005945FF00424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000007FF0000000000000007000000000000
      0001000000000000000100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000C001000000000000
      E007000000000000F81F00000000000000000000F01F000000000000C0070000
      0000800180030000000080018001000000008001000100000000800100000000
      000000000000000000008001000000000000C003000000000000E00700000000
      0000E00F000000000000E01F000000000000C01F000100000000E03F80010000
      0000F07FC00300000000F8FFE00F000000000000000000000000000000000000
      000000000000}
  end
  object ItinServiceCds: TClientDataSet
    Aggregates = <>
    Filtered = True
    IndexFieldNames = 'Itineraries_id'
    MasterFields = 'Itineraries_id'
    MasterSource = Itinerariesds
    PacketRecords = 0
    Params = <>
    ProviderName = 'ItinServiceDsp'
    Left = 264
    Top = 192
    object ItinServiceCdsMasters_id: TIntegerField
      FieldName = 'Masters_id'
    end
    object ItinServiceCdsDepartureDate: TSQLTimeStampField
      FieldName = 'DepartureDate'
    end
    object ItinServiceCdsItineraryServices_id: TIntegerField
      FieldName = 'ItineraryServices_id'
    end
    object ItinServiceCdsItineraries_id: TIntegerField
      FieldName = 'Itineraries_id'
    end
    object ItinServiceCdsCity: TStringField
      FieldName = 'City'
      Size = 50
    end
    object ItinServiceCdsOrganisation: TStringField
      FieldName = 'Organisation'
      Size = 60
    end
    object ItinServiceCdsTransferDate: TSQLTimeStampField
      FieldName = 'TransferDate'
    end
    object ItinServiceCdsService: TStringField
      FieldName = 'Service'
      Size = 25
    end
    object ItinServiceCdsTime: TSQLTimeStampField
      FieldName = 'Time'
      DisplayFormat = 'hh:mm'
      EditMask = '!90:00;1;_'
    end
    object ItinServiceCdsTours: TStringField
      FieldName = 'Tours'
      Size = 50
    end
    object ItinServiceCdsRemarks: TStringField
      FieldName = 'Remarks'
      Size = 255
    end
    object ItinServiceCdsNoOfPax: TIntegerField
      FieldName = 'NoOfPax'
    end
    object ItinServiceCdsTransport: TBooleanField
      FieldName = 'Transport'
    end
    object ItinServiceCdsAC: TBooleanField
      FieldName = 'AC'
    end
    object ItinServiceCdsAutomobile: TStringField
      FieldName = 'Automobile'
      Size = 35
    end
    object ItinServiceCdsNoOfVehicles: TIntegerField
      FieldName = 'NoOfVehicles'
    end
    object ItinServiceCdsGuide: TBooleanField
      FieldName = 'Guide'
    end
    object ItinServiceCdsExpectedAmount: TFMTBCDField
      FieldName = 'ExpectedAmount'
      Precision = 18
      Size = 0
    end
    object ItinServiceCdscities_id: TIntegerField
      FieldName = 'cities_id'
    end
  end
  object ItinTransportCds: TClientDataSet
    Aggregates = <>
    Filtered = True
    IndexFieldNames = 'Itineraries_id'
    MasterFields = 'Itineraries_id'
    MasterSource = Itinerariesds
    PacketRecords = 0
    Params = <>
    ProviderName = 'ItinTransportDsp'
    Left = 352
    Top = 192
    object ItinTransportCdsMasters_id: TIntegerField
      FieldName = 'Masters_id'
    end
    object ItinTransportCdsDepartureDate: TSQLTimeStampField
      FieldName = 'DepartureDate'
    end
    object ItinTransportCdsItineraryTransport_id: TIntegerField
      FieldName = 'ItineraryTransport_id'
    end
    object ItinTransportCdsItineraries_id: TIntegerField
      FieldName = 'Itineraries_id'
    end
    object ItinTransportCdsFromPlace: TStringField
      FieldName = 'FromPlace'
      Size = 30
    end
    object ItinTransportCdsFromDate: TSQLTimeStampField
      FieldName = 'FromDate'
    end
    object ItinTransportCdsFromTime: TSQLTimeStampField
      FieldName = 'FromTime'
      DisplayFormat = 'hh:mm'
      EditMask = '!90:00;1;_'
    end
    object ItinTransportCdsToPlace: TStringField
      FieldName = 'ToPlace'
      Size = 30
    end
    object ItinTransportCdsToDate: TSQLTimeStampField
      FieldName = 'ToDate'
    end
    object ItinTransportCdsToTime: TSQLTimeStampField
      FieldName = 'ToTime'
      DisplayFormat = 'hh:mm'
      EditMask = '!90:00;1;_'
    end
    object ItinTransportCdsRemarks: TStringField
      FieldName = 'Remarks'
      Size = 255
    end
    object ItinTransportCdsOrganisation: TStringField
      FieldName = 'Organisation'
      Size = 60
    end
    object ItinTransportCdsTours: TStringField
      FieldName = 'Tours'
      Size = 50
    end
    object ItinTransportCdsNoOfPax: TIntegerField
      FieldName = 'NoOfPax'
    end
    object ItinTransportCdsAC: TBooleanField
      FieldName = 'AC'
    end
    object ItinTransportCdsDropOffDays: TIntegerField
      FieldName = 'DropOffDays'
    end
    object ItinTransportCdsAutomobile: TStringField
      FieldName = 'Automobile'
      Size = 35
    end
    object ItinTransportCdsNoOfVehicles: TIntegerField
      FieldName = 'NoOfVehicles'
    end
    object ItinTransportCdsExpectedAmount: TBCDField
      FieldName = 'ExpectedAmount'
      Precision = 10
      Size = 2
    end
    object ItinTransportCdsCity: TStringField
      FieldName = 'City'
      Size = 50
    end
    object ItinTransportCdsCity_1: TStringField
      FieldName = 'City_1'
      Size = 50
    end
    object ItinTransportCdscities_id: TIntegerField
      FieldName = 'cities_id'
    end
    object ItinTransportCdsDropoffkms: TIntegerField
      FieldName = 'Dropoffkms'
    end
  end
  object ItinerariesSds: TSQLDataSet
    CommandText = 
      'SELECT  Masters.Masters_id, Masters.MasterCode,'#13#10'Itineraries.Iti' +
      'neraries_id, Itineraries.DepartureDate '#13#10'FROM Itineraries, Maste' +
      'rs'#13#10'WHERE Masters.Masters_id=Itineraries.Masters_id'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 360
    Top = 16
  end
  object ItinerariesDsp: TDataSetProvider
    DataSet = ItinerariesSds
    Left = 376
    Top = 16
  end
  object ItinerariesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ItinerariesDsp'
    AfterScroll = ItinerariesCdsAfterScroll
    Left = 392
    Top = 16
    object ItinerariesCdsMasters_id: TIntegerField
      FieldName = 'Masters_id'
    end
    object ItinerariesCdsMasterCode: TStringField
      FieldName = 'MasterCode'
      Size = 50
    end
    object ItinerariesCdsItineraries_id: TIntegerField
      FieldName = 'Itineraries_id'
    end
    object ItinerariesCdsDepartureDate: TSQLTimeStampField
      FieldName = 'DepartureDate'
    end
  end
  object Itinerariesds: TDataSource
    DataSet = ItinerariesCds
    Left = 408
    Top = 16
  end
end
