object Image2Form: TImage2Form
  Left = 418
  Top = 46
  Width = 1022
  Height = 608
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 1006
    Height = 529
    Align = alClient
    TabOrder = 0
    object cxPageControl1: TcxPageControl
      Left = 1
      Top = 1
      Width = 792
      Height = 527
      ActivePage = cxTabSheetHotel
      Align = alLeft
      TabOrder = 0
      OnChange = cxPageControl1Change
      ClientRectBottom = 521
      ClientRectLeft = 3
      ClientRectRight = 786
      ClientRectTop = 26
      object cxTabSheetCity: TcxTabSheet
        Caption = 'City'
        ImageIndex = 0
        object Panel4: TPanel
          Left = 0
          Top = 0
          Width = 783
          Height = 41
          Align = alTop
          TabOrder = 0
          object Label1: TLabel
            Left = 7
            Top = 13
            Width = 22
            Height = 13
            Caption = 'City'
            Transparent = True
          end
          object cxCityLCMB: TcxLookupComboBox
            Left = 37
            Top = 12
            Properties.KeyFieldNames = 'cities_id'
            Properties.ListColumns = <
              item
                FieldName = 'city'
              end>
            Properties.ListSource = CitiesDs
            Properties.OnEditValueChanged = cxCityLCMBPropertiesEditValueChanged
            TabOrder = 0
            Width = 340
          end
        end
        object cxCityGrid: TcxGrid
          Left = 0
          Top = 41
          Width = 783
          Height = 454
          Align = alClient
          TabOrder = 1
          object cxCityGridDBTableView1: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = MasterDS
            DataController.KeyFieldNames = 'images_id'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.CellHints = True
            OptionsBehavior.FocusCellOnTab = True
            OptionsBehavior.FocusFirstCellOnNewRecord = True
            OptionsBehavior.GoToNextCellOnEnter = True
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.Appending = True
            OptionsView.GroupByBox = False
            Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
            Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
            object cxCityGridDBTableView1images_id: TcxGridDBColumn
              DataBinding.FieldName = 'images_id'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Grouping = False
            end
            object cxCityGridDBTableView1SrNo: TcxGridDBColumn
              Caption = 'Sr No'
              DataBinding.FieldName = 'SrNo'
              SortIndex = 0
              SortOrder = soAscending
              Width = 51
            end
            object cxCityGridDBTableView1ImageName: TcxGridDBColumn
              Caption = 'Image'
              DataBinding.FieldName = 'ImageName'
              Width = 211
            end
            object cxCityGridDBTableView1Title: TcxGridDBColumn
              DataBinding.FieldName = 'Title'
              Width = 359
            end
            object cxCityGridDBTableView1AltTag: TcxGridDBColumn
              Caption = 'Tag'
              DataBinding.FieldName = 'AltTag'
              Width = 137
            end
            object cxCityGridDBTableView1Tineye: TcxGridDBColumn
              DataBinding.FieldName = 'tineye'
            end
            object cxCityGridDBTableView1ModifiedByUsers_id: TcxGridDBColumn
              Caption = 'Modified By'
              DataBinding.FieldName = 'ModifiedByUsers_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'AdmUsers_id'
              Properties.ListColumns = <
                item
                  FieldName = 'uid'
                end>
              Properties.ListSource = UsersDs
              Visible = False
              Options.Editing = False
              Width = 80
            end
            object cxCityGridDBTableView1ModifiedOn: TcxGridDBColumn
              Caption = 'Modified On'
              DataBinding.FieldName = 'ModifiedOn'
              Visible = False
              Options.Editing = False
              Width = 80
            end
          end
          object cxCityGridLevel1: TcxGridLevel
            GridView = cxCityGridDBTableView1
          end
        end
      end
      object cxTabSheetState: TcxTabSheet
        Caption = 'State'
        ImageIndex = 1
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 783
          Height = 41
          Align = alTop
          TabOrder = 0
          object Label2: TLabel
            Left = 7
            Top = 13
            Width = 31
            Height = 13
            Caption = 'State'
            Transparent = True
          end
          object cxStateLCMB: TcxLookupComboBox
            Left = 48
            Top = 12
            Properties.KeyFieldNames = 'states_id'
            Properties.ListColumns = <
              item
                FieldName = 'state'
              end>
            Properties.ListSource = StatesDs
            Properties.OnEditValueChanged = cxStateLCMBPropertiesEditValueChanged
            TabOrder = 0
            Width = 303
          end
        end
        object cxStateGrid: TcxGrid
          Left = 0
          Top = 41
          Width = 783
          Height = 454
          Align = alClient
          TabOrder = 1
          object cxStateGridDBTableView1: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = MasterDS
            DataController.KeyFieldNames = 'images_id'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.CellHints = True
            OptionsBehavior.FocusCellOnTab = True
            OptionsBehavior.FocusFirstCellOnNewRecord = True
            OptionsBehavior.GoToNextCellOnEnter = True
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.Appending = True
            OptionsView.GroupByBox = False
            Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
            Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
            object cxStateGridDBTableView1Images_id: TcxGridDBColumn
              DataBinding.FieldName = 'images_id'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Grouping = False
            end
            object cxStateGridDBTableView1SrNo: TcxGridDBColumn
              Caption = 'Sr No'
              DataBinding.FieldName = 'SrNo'
              SortIndex = 0
              SortOrder = soAscending
              Width = 51
            end
            object cxStateGridDBTableView1ImageName: TcxGridDBColumn
              Caption = 'Image'
              DataBinding.FieldName = 'ImageName'
              Width = 211
            end
            object cxStateGridDBTableView1Title: TcxGridDBColumn
              DataBinding.FieldName = 'Title'
              Width = 359
            end
            object cxStateGridDBTableView1AltTag: TcxGridDBColumn
              Caption = 'Tag'
              DataBinding.FieldName = 'AltTag'
              Width = 139
            end
            object cxStateGridDBTableView1Tineye: TcxGridDBColumn
              DataBinding.FieldName = 'tineye'
            end
            object cxStateGridDBTableView1ModifiedByUsers_id: TcxGridDBColumn
              Caption = 'Modified By'
              DataBinding.FieldName = 'ModifiedByUsers_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'AdmUsers_id'
              Properties.ListColumns = <
                item
                  FieldName = 'uid'
                end>
              Properties.ListSource = UsersDs
              Visible = False
              Options.Editing = False
              Width = 80
            end
            object cxStateGridDBTableView1ModifiedOn: TcxGridDBColumn
              Caption = 'Modified On'
              DataBinding.FieldName = 'ModifiedOn'
              Visible = False
              Options.Editing = False
              Width = 80
            end
          end
          object cxStateGridLevel1: TcxGridLevel
            GridView = cxStateGridDBTableView1
          end
        end
      end
      object cxTabSheetHotel: TcxTabSheet
        Caption = 'Hotel'
        ImageIndex = 2
        object Panel5: TPanel
          Left = 0
          Top = 0
          Width = 783
          Height = 41
          Align = alTop
          TabOrder = 0
          object Label4: TLabel
            Left = 7
            Top = 13
            Width = 22
            Height = 13
            Caption = 'City'
            Transparent = True
          end
          object Label5: TLabel
            Left = 399
            Top = 13
            Width = 31
            Height = 13
            Caption = 'Hotel'
            Transparent = True
          end
          object cxCityOfHotelLCMB: TcxLookupComboBox
            Left = 37
            Top = 12
            Properties.KeyFieldNames = 'cities_id'
            Properties.ListColumns = <
              item
                FieldName = 'city'
              end>
            Properties.ListSource = CitiesDs
            Properties.OnEditValueChanged = cxCityOfHotelLCMBPropertiesEditValueChanged
            TabOrder = 0
            Width = 340
          end
          object cxHotelLCMB: TcxLookupComboBox
            Left = 438
            Top = 12
            Properties.KeyFieldNames = 'Addressbook_id'
            Properties.ListColumns = <
              item
                FieldName = 'Organisation'
              end>
            Properties.ListSource = HotelDs
            Properties.OnEditValueChanged = cxHotelLCMBPropertiesEditValueChanged
            TabOrder = 1
            Width = 340
          end
        end
        object cxHotelGrid: TcxGrid
          Left = 0
          Top = 41
          Width = 783
          Height = 454
          Align = alClient
          TabOrder = 1
          object cxHotelGridDBTableView1: TcxGridDBTableView
            PopupMenu = PopupMenu2
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = MasterDS
            DataController.KeyFieldNames = 'images_id'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.CellHints = True
            OptionsBehavior.FocusCellOnTab = True
            OptionsBehavior.FocusFirstCellOnNewRecord = True
            OptionsBehavior.GoToNextCellOnEnter = True
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.Appending = True
            OptionsView.GroupByBox = False
            Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
            Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
            object cxHotelGridDBTableView1Images_id: TcxGridDBColumn
              DataBinding.FieldName = 'images_id'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Grouping = False
            end
            object cxHotelGridDBTableView1SrNo: TcxGridDBColumn
              Caption = 'Sr No'
              DataBinding.FieldName = 'SrNo'
              SortIndex = 0
              SortOrder = soAscending
              Width = 51
            end
            object cxHotelGridDBTableView1ImageName: TcxGridDBColumn
              Caption = 'Image'
              DataBinding.FieldName = 'ImageName'
              Width = 211
            end
            object cxHotelGridDBTableView1Title: TcxGridDBColumn
              DataBinding.FieldName = 'Title'
              Width = 359
            end
            object cxHotelGridDBTableView1AltTag: TcxGridDBColumn
              Caption = 'Tag'
              DataBinding.FieldName = 'AltTag'
              Width = 137
            end
            object cxHotelGridDBTableView1FileSize: TcxGridDBColumn
              DataBinding.FieldName = 'FileSize'
              Visible = False
            end
            object cxHotelGridDBTableView1Category: TcxGridDBColumn
              DataBinding.FieldName = 'Category'
              Visible = False
              Width = 104
            end
            object cxHotelGridDBTableView1Height: TcxGridDBColumn
              DataBinding.FieldName = 'Height'
              Visible = False
            end
            object cxHotelGridDBTableView1Width: TcxGridDBColumn
              DataBinding.FieldName = 'Width'
              Visible = False
            end
            object cxHotelGridDBTableView1Type: TcxGridDBColumn
              DataBinding.FieldName = 'Type'
              Visible = False
              Width = 118
            end
            object cxHotelGridDBTableView1Tineye: TcxGridDBColumn
              DataBinding.FieldName = 'tineye'
            end
            object cxHotelGridDBTableView1ImageTypes_id: TcxGridDBColumn
              Caption = 'Image Type'
              DataBinding.FieldName = 'ImageTypes_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'imagetypes_id'
              Properties.ListColumns = <
                item
                  FieldName = 'imagetype'
                end>
              Properties.ListSource = ImageTypeDs
            end
            object cxHotelGridDBTableView1ModifiedByUsers_id: TcxGridDBColumn
              Caption = 'Modified By'
              DataBinding.FieldName = 'ModifiedByUsers_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'AdmUsers_id'
              Properties.ListColumns = <
                item
                  FieldName = 'uid'
                end>
              Properties.ListSource = UsersDs
              Visible = False
              Options.Editing = False
              Width = 80
            end
            object cxHotelGridDBTableView1ModifiedOn: TcxGridDBColumn
              Caption = 'Modified On'
              DataBinding.FieldName = 'ModifiedOn'
              Visible = False
              Options.Editing = False
              Width = 80
            end
          end
          object cxHotelGridLevel1: TcxGridLevel
            GridView = cxHotelGridDBTableView1
          end
        end
      end
      object cxTabSheetModule: TcxTabSheet
        Caption = 'Module'
        ImageIndex = 3
        object Panel6: TPanel
          Left = 0
          Top = 0
          Width = 783
          Height = 41
          Align = alTop
          TabOrder = 0
          object Label3: TLabel
            Left = 7
            Top = 13
            Width = 42
            Height = 13
            Caption = 'Module'
            Transparent = True
          end
          object cxModuleLCMB: TcxLookupComboBox
            Left = 64
            Top = 12
            Properties.KeyFieldNames = 'FixedItin_id'
            Properties.ListColumns = <
              item
                FieldName = 'Title'
              end>
            Properties.ListSource = ModulesDs
            Properties.OnEditValueChanged = cxModuleLCMBPropertiesEditValueChanged
            TabOrder = 0
            Width = 303
          end
        end
        object cxModuleGrid: TcxGrid
          Left = 0
          Top = 41
          Width = 783
          Height = 454
          Align = alClient
          TabOrder = 1
          object cxModuleGridDBTableView1: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = MasterDS
            DataController.KeyFieldNames = 'images_id'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.CellHints = True
            OptionsBehavior.FocusCellOnTab = True
            OptionsBehavior.FocusFirstCellOnNewRecord = True
            OptionsBehavior.GoToNextCellOnEnter = True
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.Appending = True
            OptionsView.GroupByBox = False
            Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
            Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
            object cxModuleGridDBTableView1Images_id: TcxGridDBColumn
              DataBinding.FieldName = 'images_id'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Grouping = False
            end
            object cxModuleGridDBTableView1SrNo: TcxGridDBColumn
              Caption = 'Sr No'
              DataBinding.FieldName = 'SrNo'
              SortIndex = 0
              SortOrder = soAscending
              Width = 51
            end
            object cxModuleGridDBTableView1ImageName: TcxGridDBColumn
              Caption = 'Image'
              DataBinding.FieldName = 'ImageName'
              Width = 211
            end
            object cxModuleGridDBTableView1Title: TcxGridDBColumn
              DataBinding.FieldName = 'Title'
              Width = 359
            end
            object cxModuleGridDBTableView1AltTag: TcxGridDBColumn
              Caption = 'Tag'
              DataBinding.FieldName = 'AltTag'
              Width = 137
            end
            object cxModuleGridDBTableView1Tineye: TcxGridDBColumn
              DataBinding.FieldName = 'tineye'
            end
            object cxModuleGridDBTableView1ModifiedByUsers_id: TcxGridDBColumn
              Caption = 'Modified By'
              DataBinding.FieldName = 'ModifiedByUsers_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'AdmUsers_id'
              Properties.ListColumns = <
                item
                  FieldName = 'uid'
                end>
              Properties.ListSource = UsersDs
              Visible = False
              Options.Editing = False
              Width = 80
            end
            object cxModuleGridDBTableView1ModifiedOn: TcxGridDBColumn
              Caption = 'Modified On'
              DataBinding.FieldName = 'ModifiedOn'
              Visible = False
              Options.Editing = False
              Width = 80
            end
          end
          object cxModuleGridLevel1: TcxGridLevel
            GridView = cxModuleGridDBTableView1
          end
        end
      end
      object cxTabSheetReadyTour: TcxTabSheet
        Caption = 'Ready Tour'
        ImageIndex = 4
        object Panel7: TPanel
          Left = 0
          Top = 0
          Width = 783
          Height = 41
          Align = alTop
          TabOrder = 0
          object Label6: TLabel
            Left = 7
            Top = 13
            Width = 67
            Height = 13
            Caption = 'Ready Tour'
            Transparent = True
          end
          object cxReadyTourLCMB: TcxLookupComboBox
            Left = 88
            Top = 12
            Properties.KeyFieldNames = 'FixedItin_id'
            Properties.ListColumns = <
              item
                FieldName = 'Title'
              end>
            Properties.ListSource = ReadyToursDs
            Properties.OnEditValueChanged = cxReadyTourLCMBPropertiesEditValueChanged
            TabOrder = 0
            Width = 303
          end
        end
        object cxReadyTourGrid: TcxGrid
          Left = 0
          Top = 41
          Width = 783
          Height = 454
          Align = alClient
          TabOrder = 1
          object cxReadyTourGridDBTableView1: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = MasterDS
            DataController.KeyFieldNames = 'images_id'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.CellHints = True
            OptionsBehavior.FocusCellOnTab = True
            OptionsBehavior.FocusFirstCellOnNewRecord = True
            OptionsBehavior.GoToNextCellOnEnter = True
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.Appending = True
            OptionsView.GroupByBox = False
            Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
            Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
            object cxReadyTourGridDBTableView1Images_id: TcxGridDBColumn
              DataBinding.FieldName = 'images_id'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Grouping = False
            end
            object cxReadyTourGridDBTableView1SrNo: TcxGridDBColumn
              Caption = 'Sr No'
              DataBinding.FieldName = 'SrNo'
              SortIndex = 0
              SortOrder = soAscending
              Width = 51
            end
            object cxReadyTourGridDBTableView1ImageName: TcxGridDBColumn
              Caption = 'Image'
              DataBinding.FieldName = 'ImageName'
              Width = 211
            end
            object cxReadyTourGridDBTableView1Title: TcxGridDBColumn
              DataBinding.FieldName = 'Title'
              Width = 359
            end
            object cxReadyTourGridDBTableView1AltTag: TcxGridDBColumn
              Caption = 'Tag'
              DataBinding.FieldName = 'AltTag'
              Width = 139
            end
            object cxReadyTourGridDBTableView1Tineye: TcxGridDBColumn
              DataBinding.FieldName = 'tineye'
            end
            object cxReadyTourGridDBTableView1ModifiedByUsers_id: TcxGridDBColumn
              Caption = 'Modified By'
              DataBinding.FieldName = 'ModifiedByUsers_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'AdmUsers_id'
              Properties.ListColumns = <
                item
                  FieldName = 'uid'
                end>
              Properties.ListSource = UsersDs
              Visible = False
              Options.Editing = False
              Width = 80
            end
            object cxReadyTourGridDBTableView1ModifiedOn: TcxGridDBColumn
              Caption = 'Modified On'
              DataBinding.FieldName = 'ModifiedOn'
              Visible = False
              Options.Editing = False
              Width = 80
            end
          end
          object cxReadyTourGridLevel1: TcxGridLevel
            GridView = cxReadyTourGridDBTableView1
          end
        end
      end
      object cxTabSheetWebPage: TcxTabSheet
        Caption = 'Web Pages'
        ImageIndex = 5
        object cxWebPageGrid: TcxGrid
          Left = 0
          Top = 41
          Width = 783
          Height = 454
          Align = alClient
          TabOrder = 0
          object cxWebPageGridDBTableView1: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = MasterDS
            DataController.KeyFieldNames = 'images_id'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.CellHints = True
            OptionsBehavior.FocusCellOnTab = True
            OptionsBehavior.FocusFirstCellOnNewRecord = True
            OptionsBehavior.GoToNextCellOnEnter = True
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.Appending = True
            OptionsView.GroupByBox = False
            Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
            Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
            object cxGridDBColumn1: TcxGridDBColumn
              DataBinding.FieldName = 'images_id'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Grouping = False
            end
            object cxGridDBColumn2: TcxGridDBColumn
              Caption = 'Sr No'
              DataBinding.FieldName = 'SrNo'
              SortIndex = 0
              SortOrder = soAscending
              Width = 51
            end
            object cxGridDBColumn3: TcxGridDBColumn
              Caption = 'Image'
              DataBinding.FieldName = 'ImageName'
              Width = 211
            end
            object cxGridDBColumn4: TcxGridDBColumn
              DataBinding.FieldName = 'Title'
              Width = 359
            end
            object cxGridDBColumn5: TcxGridDBColumn
              Caption = 'Tag'
              DataBinding.FieldName = 'AltTag'
              Width = 139
            end
            object cxWebPageGridDBTableView1Tineye: TcxGridDBColumn
              DataBinding.FieldName = 'tineye'
            end
            object cxWebPageGridDBTableView1ModifiedByUsers_id: TcxGridDBColumn
              Caption = 'Modified By'
              DataBinding.FieldName = 'ModifiedByUsers_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'AdmUsers_id'
              Properties.ListColumns = <
                item
                  FieldName = 'uid'
                end>
              Properties.ListSource = UsersDs
              Visible = False
              Options.Editing = False
              Width = 80
            end
            object cxWebPageGridDBTableView1ModifiedOn: TcxGridDBColumn
              Caption = 'Modified On'
              DataBinding.FieldName = 'ModifiedOn'
              Visible = False
              Options.Editing = False
              Width = 80
            end
          end
          object cxWebPageGridLevel1: TcxGridLevel
            GridView = cxWebPageGridDBTableView1
          end
        end
        object Panel9: TPanel
          Left = 0
          Top = 0
          Width = 783
          Height = 41
          Align = alTop
          TabOrder = 1
          object Label7: TLabel
            Left = 7
            Top = 13
            Width = 60
            Height = 13
            Caption = 'Web Page'
            Transparent = True
          end
          object cxWebPageLCMB: TcxLookupComboBox
            Left = 88
            Top = 12
            Properties.KeyFieldNames = 'WebPages_id'
            Properties.ListColumns = <
              item
                FieldName = 'PageName'
              end>
            Properties.ListSource = WebPageDs
            Properties.OnEditValueChanged = cxReadyTourLCMBPropertiesEditValueChanged
            TabOrder = 0
            Width = 303
          end
        end
      end
      object cxTabSheetTheme: TcxTabSheet
        Caption = 'Themes'
        ImageIndex = 6
        object Panel10: TPanel
          Left = 0
          Top = 0
          Width = 783
          Height = 41
          Align = alTop
          TabOrder = 0
          object Label8: TLabel
            Left = 7
            Top = 13
            Width = 45
            Height = 13
            Caption = 'Themes'
            Transparent = True
          end
          object cxThemeLCMB: TcxLookupComboBox
            Left = 88
            Top = 12
            Properties.KeyFieldNames = 'Themes_id'
            Properties.ListColumns = <
              item
                FieldName = 'PageName'
              end>
            Properties.ListSource = ThemeDs
            Properties.OnEditValueChanged = cxReadyTourLCMBPropertiesEditValueChanged
            TabOrder = 0
            Width = 303
          end
        end
        object cxThemeGrid: TcxGrid
          Left = 0
          Top = 41
          Width = 783
          Height = 454
          Align = alClient
          TabOrder = 1
          object cxThemeGridDBTableView1: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = MasterDS
            DataController.KeyFieldNames = 'images_id'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.CellHints = True
            OptionsBehavior.FocusCellOnTab = True
            OptionsBehavior.FocusFirstCellOnNewRecord = True
            OptionsBehavior.GoToNextCellOnEnter = True
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.Appending = True
            OptionsView.GroupByBox = False
            Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
            Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
            object cxGridDBColumn6: TcxGridDBColumn
              DataBinding.FieldName = 'images_id'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Grouping = False
            end
            object cxGridDBColumn7: TcxGridDBColumn
              Caption = 'Sr No'
              DataBinding.FieldName = 'SrNo'
              SortIndex = 0
              SortOrder = soAscending
              Width = 51
            end
            object cxGridDBColumn8: TcxGridDBColumn
              Caption = 'Image'
              DataBinding.FieldName = 'ImageName'
              Width = 211
            end
            object cxGridDBColumn9: TcxGridDBColumn
              DataBinding.FieldName = 'Title'
              Width = 359
            end
            object cxGridDBColumn10: TcxGridDBColumn
              Caption = 'Tag'
              DataBinding.FieldName = 'AltTag'
              Width = 139
            end
            object cxThemeGridDBTableView1Tineye: TcxGridDBColumn
              DataBinding.FieldName = 'tineye'
            end
            object cxThemeGridDBTableView1ModifiedByUsers_id: TcxGridDBColumn
              Caption = 'Modified By'
              DataBinding.FieldName = 'ModifiedByUsers_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'AdmUsers_id'
              Properties.ListColumns = <
                item
                  FieldName = 'uid'
                end>
              Properties.ListSource = UsersDs
              Visible = False
              Options.Editing = False
              Width = 80
            end
            object cxThemeGridDBTableView1ModifiedOn: TcxGridDBColumn
              Caption = 'Modified On'
              DataBinding.FieldName = 'ModifiedOn'
              Visible = False
              Options.Editing = False
              Width = 80
            end
          end
          object cxThemeGridLevel1: TcxGridLevel
            GridView = cxThemeGridDBTableView1
          end
        end
      end
      object cxTabSheetRegion: TcxTabSheet
        Caption = 'Region'
        ImageIndex = 7
        object Panel11: TPanel
          Left = 0
          Top = 0
          Width = 783
          Height = 41
          Align = alTop
          TabOrder = 0
          object Label9: TLabel
            Left = 7
            Top = 13
            Width = 47
            Height = 13
            Caption = 'Regions'
            Transparent = True
          end
          object cxRegionLCMB: TcxLookupComboBox
            Left = 88
            Top = 12
            Properties.KeyFieldNames = 'Regions_id'
            Properties.ListColumns = <
              item
                FieldName = 'Title'
              end>
            Properties.ListSource = RegionDs
            Properties.OnEditValueChanged = cxReadyTourLCMBPropertiesEditValueChanged
            TabOrder = 0
            Width = 303
          end
        end
        object cxRegionGrid: TcxGrid
          Left = 0
          Top = 41
          Width = 783
          Height = 454
          Align = alClient
          TabOrder = 1
          object cxRegionGridDBTableView1: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = MasterDS
            DataController.KeyFieldNames = 'images_id'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.CellHints = True
            OptionsBehavior.FocusCellOnTab = True
            OptionsBehavior.FocusFirstCellOnNewRecord = True
            OptionsBehavior.GoToNextCellOnEnter = True
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.Appending = True
            OptionsView.GroupByBox = False
            Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
            Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
            object cxGridDBColumn11: TcxGridDBColumn
              DataBinding.FieldName = 'images_id'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Grouping = False
            end
            object cxGridDBColumn12: TcxGridDBColumn
              Caption = 'Sr No'
              DataBinding.FieldName = 'SrNo'
              SortIndex = 0
              SortOrder = soAscending
              Width = 51
            end
            object cxGridDBColumn13: TcxGridDBColumn
              Caption = 'Image'
              DataBinding.FieldName = 'ImageName'
              Width = 211
            end
            object cxGridDBColumn14: TcxGridDBColumn
              DataBinding.FieldName = 'Title'
              Width = 359
            end
            object cxGridDBColumn15: TcxGridDBColumn
              Caption = 'Tag'
              DataBinding.FieldName = 'AltTag'
              Width = 139
            end
            object cxRegionGridDBTableView1Tineye: TcxGridDBColumn
              DataBinding.FieldName = 'tineye'
            end
            object cxRegionGridDBTableView1ModifiedByUsers_id: TcxGridDBColumn
              Caption = 'Modified By'
              DataBinding.FieldName = 'ModifiedByUsers_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'AdmUsers_id'
              Properties.ListColumns = <
                item
                  FieldName = 'uid'
                end>
              Properties.ListSource = UsersDs
              Visible = False
              Options.Editing = False
              Width = 80
            end
            object cxRegionGridDBTableView1ModifiedOn: TcxGridDBColumn
              Caption = 'Modified On'
              DataBinding.FieldName = 'ModifiedOn'
              Visible = False
              Options.Editing = False
              Width = 80
            end
          end
          object cxRegionGridLevel1: TcxGridLevel
            GridView = cxRegionGridDBTableView1
          end
        end
      end
    end
    object Panel8: TPanel
      Left = 793
      Top = 1
      Width = 212
      Height = 527
      Align = alClient
      TabOrder = 1
      object Image: TImage
        Left = -5
        Top = 3
        Width = 233
        Height = 198
        Center = True
        IncrementalDisplay = True
        Picture.Data = {
          0A544A504547496D6167659E1C0000FFD8FFE000104A46494600010101004800
          480000FFFE000C4170706C654D61726B0AFFDB00840006040505050406050505
          07060607090F0A09080809120D0E0B0F1512161615121414171A211C17181F19
          14141D271D1F2223252525161C282B28242B2124252301060707090809110A0A
          1123181418232323232323232323232323232323232323232323232323232323
          2323232323232323232323232323232323232323232323FFC401A20000010501
          010101010100000000000000000102030405060708090A0B0100030101010101
          010101010000000000000102030405060708090A0B1000020103030204030505
          04040000017D01020300041105122131410613516107227114328191A1082342
          B1C11552D1F02433627282090A161718191A25262728292A3435363738393A43
          4445464748494A535455565758595A636465666768696A737475767778797A83
          8485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8
          B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2
          F3F4F5F6F7F8F9FA110002010204040304070504040001027700010203110405
          2131061241510761711322328108144291A1B1C109233352F0156272D10A1624
          34E125F11718191A262728292A35363738393A434445464748494A5354555657
          58595A636465666768696A737475767778797A82838485868788898A92939495
          969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CA
          D2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFC0001108
          009200C003012200021101031101FFDA000C03010002110311003F00FAA68A28
          A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28
          A0028A28A0028A28A0028A28A0028AA7A86A9A669BE5FF0068EA36B65E66767D
          A2658F76319C6E2338C8FCEA9FFC253E19FF00A18B4AFF00C0D8FF00F8AA06A2
          DEC8D8A2B1BFE129F0CFFD0C5A5FFE0647FE341F157864103FE120D379FF00A7
          A4FF001A2E3E49763668AC5FF84AFC31FF0043069BFF008149FE349FF096F85C
          F4F1069C7E9729FE345C7C92EC6DD1585FF097F85F9FF89FD871FF004DD68FF8
          4BFC2FD3FB7AC33FF5D968B8724FB1B72C89144F2C8DB5114B31F403AD721E23
          F1D68169A55C35AEA904B73B70B1AC851B938C838EA3AF6E9D6B4DFC5BE16642
          1F5CB128C307328C115F39EAB2C561E22BF82CEFEDA5B4DEC2297CD52AEA0E57
          BFA7EB594E7CAB43AF0F87536F9D3563D1EF7E2A5ABC0C21B6647247CCBA8741
          9E7AD28F8AD6AD7B2C86DFF75E52AAA7DBC00181624E41CF3903F0AF336BA8F6
          967BDB704760EBCD2477B132EC3776BB5B93F32F1587B799E87D5A8FF2FE7FE6
          7A7C5F15ED7ED52B9B3728625555FB72E0302D93D7BE47E553D8FC50B66B1863
          92D7338882B39BF5C96C609C67F1AF268EE2271CCF6A871C82CB9C54A64849FD
          DDEDB31ED965347B7907D5A97F2FE67D21A4789B46BCB18247D52C639990168F
          ED48C54FA139EB5BB5F33F841AC6E3C5963F6FBBB5B7B388AB4B2348A88768DC
          47E278AF7F1E2AF0D1191AF69FFF008129FE35D109F3AB9E6E230FEC9A51D6E6
          CD1592BE24F0F374D774FF00FC094FF1A7FF00C241A0E33FDB7A7FFE0527F8D5
          DCE5E497634E993332C4CC801603804E2A88D77443D358B03F4B94FF001AE7F5
          4F18E931DCBC09A9C3846C654EE07F2343762A34E4DEC7634571FA5F8D34667F
          2E6D422DA718246DC7EA6BA58353D3AE2312437D6EE87A1120A1314A0E3D0B74
          544B736EDF76788FD1C548ACADF7581FA1A641E31FB4669579A93F874D9C1E69
          8BED3BBE755C67CAF523D0D78FA785F5EDD95B2FA113C7FF00C557B07ED1D124
          87C3BBF57B4D340FB4F37240DFFEABA641E9FD6BC73C9B603E5F19693BBF0FFE
          26B92A38F33BDCFA0C1B92A31B5BAFE65D87C33ADE70D6880FFB77317FF1556D
          7C31AD0EB6F06DF537708FFD9EB159210BB57C71A4A302327606C8CF3FC35329
          B5271FF09B696077F93FFB1ACFDDEECEBF693F2357FE116D6B39F26DBAE79BE8
          3FF8BA78F0C6B23198ED3DFF00D3A0FF00E2EA8EED3D4E0F8DB4DE9FF3CFFC05
          3C4BA5E79F1BD874FF009E0FFF00C4D2BC7CC7CF35DBF12F8F0CEB1B79FB10FF
          00B7EB7FFE2E83E19D54B03FE827DFFB42DFFF008BAA1E66924E3FE137B3FF00
          BF127FF134EDFA48E7FE138B5FF80C321FE94BDDF31FB49F75F893C9E15D69F2
          07D8867FEA236FFF00C5D35BC1FA9393BDAC49F51A8DBFFF0017556E25D29976
          A78E6307B916F20FCB8A71B8D10C8DFF0015C6109F947D9E4E076EDCD6978D8C
          9CE77E8585F06EA4410D258019EA750B7FFE2E94F82F50618DDA68FA6A307FF1
          755BCDD1F1FF0023DC5FF80F25327B9D222B79245F1C891D14911A5B480B9038
          039EF4BDDEC3E79F75F732EFFC217A831CF99A7FFE0C60E7FF001FA70F05EA68
          432B58707A0D42DFFABD66DADF68D35BA49378E5A0761931B5B484A9F4CF4A90
          DD6839FF0091ECFE16AFFE34AF1D86A73DEEBEE65E5F08EAA8A062C87A9FED0B
          7FFE394ABE14D6CB7CB1DA63DB50B7CFFE8CACF967D05C1F2FC7810EE52A4DBB
          600079073D723E94E13E8E78FF0084F60247526D9EAB9A29682729BDEC6AA785
          35B1CF9101E7B5FC1FFC5D27FC22FAE6FF00F8F7888FFAFC84FF00ECF599E6E8
          FDBC7B6A4E7BDBC83FA506E34A1C7FC271684FFD70939FFC768E65E6179797DC
          CD37F0BEB98C8B55FA0BA8FF00F8AAAEFE10D75CF3645C773E7A1FFD9AAB09F4
          E0A31E38D3F9F589FF00F88A50F619C0F1B6967EB1B7FF00114B9A3E63BCBCBF
          12C0F096BCA0C69A7B9CFF00D3543FD6964F0A788D5729A5DCE47F771CFEB550
          CB6471FF0015AE959ED9423FF64A8A54669A1683C6BA279409F3031C678E3194
          F5FA53528F984A53B743493C31E24525BFB22F4F7E23279AF57F813A76A960BA
          DFF69D94F6A64F23679AA46EC7999C7E63F3AF1E16F9E57C63A1FF00DF69FF00
          C4D7AE7C028BCA1AEFFC4E2C752CFD9FFE3D0A9F2FFD67DEC01D7B7D0D5C1C5C
          91C98B72F6324EDD3F338AFDB0E2794F8476678FB667085BFE7857CE06D1F6B0
          6693A71FBA6183F957D2DFB5DACEDFF089F92C41FF004BC803AFFA8AF9EEC52E
          26B8F2CB920C6E70DD38427FA539C929D8CB0D4DBA29FA980A5BA673566DE3F3
          982A97F306780A4F1F853BC83E61CFD6B4743B62D3CE40E520761EC40CFF004A
          8534D9B7B2690C16939182D21FAC2C7FA54AD6B3160C864076807F72DC9FCAA5
          87EDCE76ACF2F1C93B8E054CCEF10065D425FA293FCCFF008547B44CD254F977
          65516D701836643839FF0052DFE14A6CE62ECCBE6E09CFFA963FD2A6377B8E05
          D5CA8F5CE7FC29C5AF366F8EEE4910752AC78FAD372B7414529BD1EA40B0490B
          F9B2B3855E4930B0EDF4A48ACAE3682BE6118E08818E7F4AD1B7867B8D36EDE5
          91A4D846371CE32AFF00E1536A91DC5AC914714AE80A13853819DCD473AB5CAF
          66F9ADD4CD8AD2E56457225C0F48187F4A6FD86E0700498FFAE0DFE156D3EDDB
          43C976F129E8598F3F8529B929CFDB6E65F6FBBFD4D0A77225150DD9516CA712
          23379854104FEE187F4A6B59CFB98AF98149C81E4B7F855FF3D9FEEDF4F19EC1
          B91F98FF000A639BF550DF6991909C060D91439DB745423CEF4650366CBF3CCC
          CA839C98D80CFE5527D967C92A64C13C7EE5BA7E55AB0C335CE8D7B24D234863
          923033CE33BBFC2A4D645CDADD2C5148517603818C51CEAD71FB27CD6EA64476
          B28F318990B95C0FDD3FF851F66B91DE4FFBF2FF00E156FCDBB401A6BA112919
          F9B04E3D875A12FD33837927FBDB147E9FFD7A6A575B19C928BB368AAB6F3046
          5DD26E6233FBB7E9F9530DBCF8FBCE3FED9B569EEBC900305D0933D8AA83F977
          FC296C25BC96FADA2924055E555605072091ED47B445AA6DABA664B46E555167
          63B739E1BAFE54D11486440673D7207CC33EB5B33D82F9CC1BE5CF39DC41FBAA
          4F3838FF00EBD3EC2C14EA96680021A4C6739CF03D40CD1CDA8FD9FBA63325D9
          63FBDFFC79857D07FB23A4AA7C59E6C9BF3F63C0CE71FEBEBC1C4F7C5B68932C
          780362FF00857D01FB29B4E4F8A567903B0FB27000E3FD7771574E69C8E5C5D3
          71A2EFFD6A3FF6AB4DC9E18CEDDA0DD64B2E71FEA79EA3D2BC2F4AB7DD3BCB8D
          C561930C07DE051B07F0E9F957BA7ED5922ADB7871378567FB5019CF4CC39AF1
          2D0AE214568DA5064113A8E08F9491C74A8A8D7B4699AE122FEAE9AF3FCCE69E
          1C3838EDD6B6FC316A5CDEB2824FD9E4503D4946AA1281B941EB8ADFF0A491DB
          A5D492BA46BB78C9C13F2B0E2B969CBDE573D0AAAD06737AD5E2DA05B6872324
          853EB8EE6B2A30EEA5D89249E4D1E20C7F69A80DBB6A8FC3934F1F240BEE6BB2
          314A299E1CEAB9CDDC631C71924D225C4B048248E42ACBD0834A369273556707
          6AFD6B44918B6D6A7A1687B2EBC397D78A8177B47955E8A7F7808FEB8F422A7F
          152A5A4AB3B20721308A7A13B989CFAE38E3DC557F0127DA3C25AA5A4037DC79
          F1BF97DCF5FD303F4AB1F111916E2DD0382E88E5941E993C56528C755FD6ECF4
          55697B352BEBFF00011C5CF70ECE649A562C7DF9A8BED44FCAA4FE24D52662F2
          127A9AB51C4106E94B0F41D6B45148E094DB7A120BBC8C3123E84D58B4BC9209
          0491B1653C1527823D0D53961C00C9BB0467245450E448063A9C6294A29AD070
          9B4CF41B1891FC33A84F18211E4808079C1F9C11FA557F1CCCB613C528199658
          F11FB7272DF86463FCE6F786D0CBE12D46DA2C34C6E23709900E30D9EBF8561F
          C5392337D611AB8328B7CBAA9CE32C715108C5BB3FEB567754AD254F993D7FE0
          239A13C92B17676627924B1C9A946E23863F4CD55B25DC8B93C6EC568B2206F9
          4606DCFE35A3693B1C11BBD4A8D34D6FB5D588F507BD757E1BB94D4AE2D5CE4C
          8922B063D58061907E9C9CFA0AE56FC7FA3AB63D6B47C0122C77EACF205092F2
          0F6C8C7E55128A6AE6D4AAB84D23ACD5E2004D1A00CE190151D71E5A9CFE6293
          465C49685C6C2931C646091B49AB1AF6E8B52B82A0E14A9EA4061B54738F7AA5
          66E06C932776FC609E01DADD3D3A8FCAB96735ED1FF5D4F6546F4D7F5D085E0F
          B3CF342170492AC59410F9E428E4763CFE1ED9F6DFD97C1FB478A98F56164DC0
          C75597B578B788764DA9CBE43AB223B027701C86233F9015EE1FB3510F79E2B9
          14821BEC7823A7496B7835ED6C8E2C5AFF00676DF97E68A1FB57E40F0B37381F
          6BFF00DA35E2BE1D845C6B16A1F233E69273CE0467FC2BE81FDA445B98FC3DE7
          4114A41B8DBE6B4800FF00559FB8EBEDD735E47A2C168ED3DC25BC30CD6E8763
          44D27464933F79DBD17A62B2AAD7B7B0F092B61169DFF338DBD41E7E4E30A809
          FCB35B7A4D809F4E6DCF821C2E16AD2D8DB1411B5BA48AC8996667C9CA293D18
          0EA4D6A5A5A43059CE201B145C0C02738F973D6B0A566EDD8D71737ECF6DCF19
          D40B1BD72C724B1CD4E5B11A839E78E2997C9FBF2E4F7E69AF27CB160D7A7177
          48F1651716C5C64673814C20B32A8EED8152C77CF10D8823C633F3202734EB65
          9AFEF61D916E2CC01D83EBE9EDFCA96B7B8DFC277FF0C34DF3279EE4E54BB140
          71C70013F5FBC2B1FC76B2DB6B574992CA0020FE7FFD7AEDBC2511B0FB3C2CA5
          0221C9C672735C578F9CBEA774E558640EA31DCD6317777379A4969DBF539DD0
          EDBEDDA9C10740EC031F41DCD7A6DDE8F6B79A3ADA468B0E114A940319C8E7A7
          3FCEB81F0165B5D181F3796E47FDF26BD260693ECCC02B36D8D41F94F5C8ACB1
          126A4AC7765F184A12E6EA4474AB4FECD1612A799188F866C650E0E31C71FF00
          D735E5574AD6B76F1B021D1B041182083E95EB9279AC4611C0F2F9E0F5C57957
          895FFE2A0BCCF5DF461E4DB69866108C63171E8775F0BA27BBD5A552DB54203D
          3D735CFF00C4AB016FAEACC83FD7EE0C7D48E3F962BA1F855298B57997636D68
          D496009C75ACBF1EB4D7BAB341F6694A24C70E54E083BC71F90AD9E924CE1859
          C249EFA7E671768C428E4019FEB5A68A5D955774849DA028E49F4AC753E5A1CA
          F21C823B8EB57EDEF5A02AE808657DE083C835B72DF539B9ECAC36F9898091D2
          97C221E4D66384315126E07F227FA54570C4C5B49EF573C211F95AD5BB96FE23
          FC8D26FDD68145B699E8BE26B3169279424320F2A3605BAFD28F05DB89B57891
          8F04B8FF00C86DFE15D16BB690CC6392488487CA41F3120743D707DBF5351F87
          6D204D4629121589A39947C85B90D1CA0F527B85AF39595648F7E33BE15E9D2C
          70054A430607553FFA11E6BE83FD9AA309A76B2F81BD8C009C72401263F9D793
          5ED85BC770D0C76D06C8F6E371949394563D1C0EA7B015EC3FB3EC51C5FDBC22
          5D80A59B6C0490A4C6C4E3249EA4F535AE1E5FBEB1863DDF0D7FEB72CFC77D22
          4D5974354C0F28CE492C0633E5FAFD2BCA4E81756B0CEB02F9A5D72D865ED9E9
          CFB9AF6DF8AF64F79FD96164640BE6E4038CFDCFF0AE0868722E00690FD48F6F
          F0AE8A9454A6E479D42BCA34947A1C12D8EA52E04765708A11461E2C60800752
          7DAAFDD6997B1E97764DBBAB3CC1C2819246074C575E34198FDD671F8D4D1E83
          7A130B3391DF1531A318BBA2EA6225523CACF9D352F0B6B86690C7A65C14DC71
          FBA6E9F95526F0A6BF81BB49BA03D7CB35F4F1D26FC8C195CE3200033EBFE27F
          C8152C7A4EA7B7E50D83FDE502B65A1CD2F7B767CC31787B59450ADA25CC8477
          D8454963A4EAD6D3349269724710C13BD76804671C9FAD7D32FA56A78E5D80E9
          CF3FE7A57856A929935ED4219AFEE59D6E5D3E69986D01880319ACE7251572A3
          1E6D0D6F87F14A752093B46B84DA866933B8E7A0E7AE31547E21E8DA84DAE5E8
          82C5E40E010C8848E95933CC22381A85C063CA959D8E2BDA746D3AFEFB4BB7BB
          8AF67759515B7392C58E073CFAE3F9D453926C73872AD0F08F0F691AD69D7C2E
          174C924700F0E8C072307A63B1AEAED24D761DAF1E88AA548607F7A79FFBEABD
          5BFB17561F76E2538EF8FA7F87F3A41A2EAE073772FE5ED8AD6493614EAB86C7
          94CCDAE33163A28CF5CE25FF00E2AB8FD5742D6AEEFE4B8FECC994BB12404623
          939EF5F442E93AA8EB74FEBC807BE69A9A2EA04616EE5FA91FE7D288A482A557
          5373CC7C0DA65CC316A0D2C6B64EB000B25C7C8BF787193F88FC6A86ACF731EA
          92471324E8583096271B4F1DB9E3AF4ADEF89B05D695716F0DC5E5C209BE7CAB
          950E067D3D2B9013620132DECE01EDF686CF5FAD73D4E56F54354F995CC4BFF0
          FEB17124EEBA5DD6F794B9FDD9C649CD40BE1BF10E06348BB3FF006C8D7AEFC2
          11777B26A6915FCF2AC6236DB2317009DDCF3D2BD2BFB36E9882D3038FEF29C7
          E7F8575427A18CA9ABDAE7CB4DE19F1015C1D26EFF00EFC9AD8F0DF87759B7BE
          49A7D32E82A83FF2C5BAFE55F461D0EF33B84BC1E848CFA7BFB549FD91A937CA
          6E19B8F7FF003DA86D32D69D4E6CE8971398C471A86585320E00DD8E7A9F6A21
          D1AFACE4123A061E621C200703241E873FC55BEDA35F8E37B7EB51BE817EE497
          B97F5E86B17462E5CC74AC44A31E4E872D3E8724970F2B7988AE47CA22071800
          75DC0F6F4AF43F82B62F6577AF29DCD1B25A8562319C0941EE7DAB9D93C3533F
          DF9E4CFF00BD8AEDBE15E9274B3AA65DDBCDF27EF367A6FF00F1ABA746319F32
          32AF8894E972B391FDA53C5DADF854F873FB1EE23845DFDA7CD0F0A499DBE563
          EF038FBC7A578C45F17FC6A0E0DD5ABFA13671FF00857B2FED2B77E1AB43E1B7
          F10E9936A04FDA7C848E63181FEAB7671D7F87F5AF184F1E68563FF208F04E99
          1B0FBAF731F98C3DF2C4D4D572537A9B61945D15EEDDFF00C1366C7E2AF8F2EC
          05B68E0B863DA3B20C7F415D269DE29F8B97D8F27408C023969ED04431FF0003
          22BCFAEFE2A78A27511C2D6D6D18FBAB1C43E5FA5625EF8C3C497DF2DC6AF70C
          BFDD0702B2E66B791D7ECEEB48247BD5BEA9F110286D4754F0E69E075490E5FF
          0025EBF9D487C6E9A792752F19D84840E62B7B40A4FD0B31CFE55F364D777171
          9FB45CCB367FE7A485BF9D4687DA8F6B612C35F7B7DC7D1F37C51D19C661D523
          0C7FE7AA73F98AF2FF0011A691AEEB573A9DC6ADA624B70C0B797BD3F1C00727
          D4F7AE15587D29E5866B3956BEE8B5838F73A81A178795D657D7AC1829CE37C8
          73EC46DAF65F0D78EF4316D0E9E354491D130152263B540E83D801F957CE1BBB
          D6FF00845CB6A33AC703DC48D6930589783212846D1F5A23535D104F0B1516DB
          3D963F891ACBF2BE0D9429FF00A781FE34E6F881AC9FBDE0B9CFFDBC0FF1AF31
          B4D0DF6007C0D7C7FEDE9EAD9D0F8CFF00C2077E71FF004F4F5D1CECE3F650FE
          BFE1CEF5FE226B119CFF00C21527E33AD3F4BF8997736A51DADFF873FB3E3901
          0936F127CDD40C0F5E6BCCE7D23B0F03DE823FE9E9EA1D22C0DA788F4FB83E19
          BBB111CEA5A67959820CE0939F6AA5264BA70FEBFE1CE9FE216B3A478B0C4B71
          AED92C70E4C6859808C9EA470793C7E55C78D1FC36536B6BD607FDD9641FFB2D
          72F29F98FD4D47C0EC2B99D44F74772C2C56CCF6BF87FE29F0D7846D27B24D4E
          C648667F30B47192E58703731C123D3D327D6BAE7F8A1E179C08535B36D9FF00
          96A23418FAEEDD9AF999480297229AAB6D90BEA91EE7D3B1F882E6F46747F1DE
          98FBBA24F66BFCC373F9557BA6F8A3B59EC357D0F5153D0405777E4C00FD6BE6
          AC2F719AB706A37D6F8FB3DEDC458EC92B01F9669FB4BF70FABDB6B7DC7B5DFF
          0088FE2ED8FCB71A4C84F7315A24BFFA0E6B06FBE2678F2D322ED4DB11DE5B20
          A7F515C6D978E3C556402DBEB770AA380B91815BB6BF177C5B080B3CB6B749DC
          4908C9FC695EFB4995C96DE1163E4F8B1E312DFF002138FD47FA2C5FFC4D7B0F
          ECF1E2CD67C507C41FDAF70937D97ECDE56D89531BBCDCFDD033F745791FFC2C
          AD22F7FE437E09D2EE89EAE91AEF3FF0220115EBFF00B3E6A7E17D4FFB7E4F0E
          6892692EBF67FB4AB4A5C3E7CDDB8C938C61BA7AD69479B9D7BD739B16E3EC65
          FBBB3D3F327F8F3E1DD27C407421AA3BA791F68F2CAB11F7BCBCF4FF00745796
          7FC2B7F08ECF96E6E037FBC4D7BB7C4AD0F54D67FB3BFB36D7ED1E4F9BE67CE8
          B8CECC7DE23D0F4AE3E2F04788D705B4CC7B09E3FF00E2ABA674D49DCF3E955E
          582573CD07C31D05C1297B371DB9FF001A69F85DA5B7097B2E7DCE2BD5D7C1FE
          2103FE41DD3FE9AC7FFC55588FC23AE29DE6C3E7FF00AEB1E07FE3D50E91B2AF
          FDEFC4F278FE125895DCD7D20F6047F514DFF854B699C0D448FF0079857B08F0
          CEBC1BFE3C9B1DF13A7FF15528F0DEB99E2CCAE3D648CFF5A8F6268B11FDEFC4
          F196F84510195D4B23D9C7F8546DF0936804DECA73D8638FD2BDA9BC33ADB642
          DA08C8E8C244FF00E2AA55F0DEAE0F36849F532A7F8D2F63DD03C4F697E278AC
          5F09A038DF7B723D801FE157A0F84D600F179A82FBA951FF00B2D7AFA7873550
          C07D930A4F3FBC4E3F5AD18F45BF55005B818FF697FC69FB1F217D65FF0031E2
          E3E12E9806E7D4351FA7983FF89A0FC2AD23381A86A9EF9957FF0089AF65B8D1
          B5370A16DB3CE4FCEA3FAD43FD85AAFF00CFAFFE445FF1ABF6488F6FFDE3C787
          C28D20E7FD3F52CF6FDEAF3FF8ED2C3F0BF4EB799248EFAFCB46C18133291907
          D36D7AF9D0755DC1BECF9F51E62F3FAD2B687AAE7E5B21FF007F13FC6ABD8A17
          B7F33C465F853A7B3362F26041E8CDCFF2A43F09B4F0322EA53EDBBAFE95EDA7
          40D50107EC79EC71228FEB41D075324E2D081EF227F8D43A2BB16B11FDEFC4F1
          883E13E92E3E7B9941F424D59FF854DA0AAE5AEA43ED939FE75EB87C3BAA60E2
          D48CFF00D344E3F5A8C685AE0E3EC7BBEB227FF154BD8F90DD7FEF7E27950F84
          DE1FC0FDF4E7E8C7FC6A64F84FE1C2376DB8603D25FF00EBD7A9AE85AC871FE8
          8029FF006D38FD694E83AB26E65B40C4F6F31467F5AAF644FB65FCDF89E5E3E1
          7F85A3FBF6F744FF00D75C8FD2ACA7C3BF07458DFA748FC75663FE35E92742D5
          5867EC98E3A1913FC6AA4FE17D498EE4D3D73E9B93FC69AA4BB03AABF9BF1387
          4F0478397EEE8B0B0F53CFF5AEFF00E1668FA56927541A659436A25F2B7F96A0
          6EC6FC67F33F9D50FF00845F5B524C760AB9E48F3531FA3574FE0CD32FB4E379
          F6DB7F27CCD9B7E70D9C6ECF43EE2AE30B3D8C2AD45283573A5A28A2B638428A
          28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A
          28A0028A28A0028A28A00FFFD9}
        Stretch = True
      end
      object WebBrowser: TWebBrowser
        Left = 0
        Top = 208
        Width = 217
        Height = 201
        TabOrder = 0
        ControlData = {
          4C0000006D160000C61400000000000000000000000000000000000000000000
          000000004C000000000000000000000001000000E0D057007335CF11AE690800
          2B2E126208000000000000004C0000000114020000000000C000000000000046
          8000000000000000000000000000000000000000000000000000000000000000
          00000000000000000100000000000000000000000000000000000000}
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 529
    Width = 1006
    Height = 41
    Align = alBottom
    TabOrder = 1
    object KeyIdDbText: TDBText
      Left = 834
      Top = 14
      Width = 65
      Height = 17
      DataField = 'images_id'
      DataSource = MasterDS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object CloseBtn: TcxButton
      Left = 916
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Close'
      TabOrder = 0
      OnClick = CloseBtnClick
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
    object cxButtonUtilities: TcxButton
      Left = 8
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Utilities'
      TabOrder = 1
      DropDownMenu = PopupMenu1
      Kind = cxbkDropDownButton
    end
  end
  object MasterSDS: TSQLDataSet
    CommandText = 'SELECT * FROM images'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 48
    Top = 128
  end
  object DataSetProvider: TDataSetProvider
    DataSet = MasterSDS
    Left = 64
    Top = 128
  end
  object MasterCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider'
    AfterInsert = MasterCdsAfterInsert
    BeforePost = MasterCdsBeforePost
    AfterPost = MasterCdsAfterPost
    BeforeDelete = MasterCdsBeforeDelete
    AfterDelete = MasterCdsAfterDelete
    AfterScroll = MasterCdsAfterScroll
    Left = 88
    Top = 128
    object MasterCdsimages_id: TIntegerField
      FieldName = 'images_id'
    end
    object MasterCdsImageName: TStringField
      FieldName = 'ImageName'
      Size = 100
    end
    object MasterCdsTitle: TStringField
      FieldName = 'Title'
      Size = 100
    end
    object MasterCdsAltTag: TStringField
      FieldName = 'AltTag'
      Size = 100
    end
    object MasterCdsSrNo: TIntegerField
      FieldName = 'SrNo'
    end
    object MasterCdsImageCategories_id: TIntegerField
      FieldName = 'ImageCategories_id'
    end
    object MasterCdsFileSize: TIntegerField
      FieldName = 'FileSize'
    end
    object MasterCdsImageObjectId: TIntegerField
      FieldName = 'ImageObjectId'
    end
    object MasterCdsImageTypes_id: TIntegerField
      FieldName = 'ImageTypes_id'
    end
    object MasterCdsWidth: TIntegerField
      FieldName = 'Width'
    end
    object MasterCdsHeight: TIntegerField
      FieldName = 'Height'
    end
    object MasterCdsCategory: TStringField
      FieldName = 'Category'
      Size = 100
    end
    object MasterCdsType: TStringField
      FieldName = 'Type'
      Size = 30
    end
    object MasterCdsImageFolder: TStringField
      FieldName = 'ImageFolder'
      Size = 50
    end
    object MasterCdstineye: TIntegerField
      FieldName = 'tineye'
    end
    object MasterCdsModifiedByUsers_id: TIntegerField
      FieldName = 'ModifiedByUsers_id'
    end
    object MasterCdsModifiedOn: TSQLTimeStampField
      FieldName = 'ModifiedOn'
    end
  end
  object MasterDS: TDataSource
    DataSet = MasterCds
    Left = 72
    Top = 128
  end
  object CitiesSds: TSQLDataSet
    CommandText = 'SELECT * FROM Cities ORDER BY City'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 56
    Top = 48
  end
  object CitiesDsp: TDataSetProvider
    DataSet = CitiesSds
    Left = 72
    Top = 48
  end
  object CitiesDs: TDataSource
    DataSet = CitiesCds
    Left = 80
    Top = 48
  end
  object CitiesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CitiesDsp'
    Left = 88
    Top = 48
    object CitiesCdscity: TStringField
      FieldName = 'city'
      Size = 50
    end
    object CitiesCdscities_id: TIntegerField
      FieldName = 'cities_id'
    end
  end
  object StatesSds: TSQLDataSet
    CommandText = 'SELECT * FROM States ORDER BY State'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 136
    Top = 48
  end
  object StatesDsp: TDataSetProvider
    DataSet = StatesSds
    Left = 152
    Top = 48
  end
  object StatesDs: TDataSource
    DataSet = StatesCds
    Left = 160
    Top = 48
  end
  object StatesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'StatesDsp'
    Left = 168
    Top = 48
    object StatesCdsstate: TStringField
      FieldName = 'state'
      Size = 50
    end
    object StatesCdsstates_id: TIntegerField
      FieldName = 'states_id'
    end
  end
  object HotelSds: TSQLDataSet
    CommandText = 
      'SELECT * FROM fn_Addressbook(2,'#39'H'#39') '#13#10'WHERE Cities_id = :Cities_' +
      'id'
    DataSource = CitiesDs
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'cities_id'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 475
    Top = 43
  end
  object HotelDsp: TDataSetProvider
    DataSet = HotelSds
    Left = 495
    Top = 43
  end
  object HotelCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'Cities_id'
    MasterFields = 'cities_id'
    MasterSource = CitiesDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'HotelDsp'
    Left = 516
    Top = 43
    object HotelCdsAddressbook_id: TIntegerField
      FieldName = 'Addressbook_id'
    end
    object HotelCdsOrganisation: TStringField
      FieldName = 'Organisation'
      Size = 254
    end
    object HotelCdsCity: TStringField
      FieldName = 'City'
      Size = 100
    end
    object HotelCdsCities_id: TIntegerField
      FieldName = 'Cities_id'
    end
    object HotelCdsContact: TStringField
      FieldName = 'Contact'
      Size = 254
    end
  end
  object HotelDs: TDataSource
    DataSet = HotelCds
    Left = 530
    Top = 43
  end
  object ModulesSds: TSQLDataSet
    CommandText = 'SELECT * FROM FixedItin WHERE ReadyTours = 0 '#13#10'ORDER BY Title'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 224
    Top = 48
  end
  object ModulesDsp: TDataSetProvider
    DataSet = ModulesSds
    Left = 240
    Top = 48
  end
  object ModulesDs: TDataSource
    DataSet = ModulesCds
    Left = 248
    Top = 48
  end
  object ModulesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ModulesDsp'
    Left = 256
    Top = 48
    object ModulesCdsFixedItin_id: TIntegerField
      FieldName = 'FixedItin_id'
    end
    object ModulesCdsTitle: TStringField
      FieldName = 'Title'
      Size = 254
    end
  end
  object ReadyToursSds: TSQLDataSet
    CommandText = 'SELECT * FROM FixedItin WHERE ReadyTours = 1'#13#10'ORDER BY Title'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 312
    Top = 48
  end
  object ReadyToursDsp: TDataSetProvider
    DataSet = ReadyToursSds
    Left = 328
    Top = 48
  end
  object ReadyToursDs: TDataSource
    DataSet = ReadyToursCds
    Left = 336
    Top = 48
  end
  object ReadyToursCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ReadyToursDsp'
    Left = 344
    Top = 48
    object IntegerField1: TIntegerField
      FieldName = 'FixedItin_id'
    end
    object StringField1: TStringField
      FieldName = 'Title'
      Size = 254
    end
  end
  object WebPageSds: TSQLDataSet
    CommandText = 'SELECT * FROM WebPages'#13#10'ORDER BY PageName'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 312
    Top = 88
  end
  object WebPageDsp: TDataSetProvider
    DataSet = WebPageSds
    Left = 328
    Top = 88
  end
  object WebPageDs: TDataSource
    DataSet = WebPageCds
    Left = 336
    Top = 88
  end
  object WebPageCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'WebPageDsp'
    Left = 344
    Top = 88
    object WebPageCdsWebPages_id: TIntegerField
      FieldName = 'WebPages_id'
    end
    object WebPageCdsPageName: TStringField
      FieldName = 'PageName'
      Size = 254
    end
  end
  object ThemeSds: TSQLDataSet
    CommandText = 'SELECT * FROM Themes'#13#10'ORDER BY Meta_Title'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 312
    Top = 128
  end
  object ThemeDsp: TDataSetProvider
    DataSet = ThemeSds
    Left = 328
    Top = 128
  end
  object ThemeDs: TDataSource
    DataSet = ThemeCds
    Left = 336
    Top = 128
  end
  object ThemeCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ThemeDsp'
    Left = 344
    Top = 128
    object ThemeCdsThemes_id: TIntegerField
      FieldName = 'Themes_id'
    end
    object ThemeCdsMeta_Title: TStringField
      FieldName = 'Meta_Title'
      Size = 254
    end
    object ThemeCdsPageName: TStringField
      FieldName = 'PageName'
      Size = 254
    end
  end
  object RegionSds: TSQLDataSet
    CommandText = 'SELECT * FROM Regions'#13#10'ORDER BY Title'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 312
    Top = 168
  end
  object RegionDsp: TDataSetProvider
    DataSet = RegionSds
    Left = 328
    Top = 168
  end
  object RegionDs: TDataSource
    DataSet = RegionCds
    Left = 336
    Top = 168
  end
  object RegionCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'RegionDsp'
    Left = 344
    Top = 168
    object RegionCdsRegions_id: TIntegerField
      FieldName = 'Regions_id'
    end
    object RegionCdsTitle: TStringField
      FieldName = 'Title'
      Size = 254
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 137
    Top = 527
    object ImageProperties1: TMenuItem
      Caption = 'Image Properties'
      OnClick = ImageProperties1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object ImageTypes1: TMenuItem
      Caption = 'Image Types'
      OnClick = ImageTypes1Click
    end
    object ImageCategories1: TMenuItem
      Caption = 'Image Categories'
      OnClick = ImageCategories1Click
    end
  end
  object UsersSds: TSQLDataSet
    CommandText = 'SELECT AdmUsers_id, uid'#13#10'FROM AdmUsers'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 504
    Top = 106
  end
  object UsersDsp: TDataSetProvider
    DataSet = UsersSds
    Left = 518
    Top = 107
  end
  object UsersCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'UsersDsp'
    Left = 536
    Top = 106
    object UsersCdsAdmUsers_id: TIntegerField
      FieldName = 'AdmUsers_id'
    end
    object UsersCdsuid: TStringField
      FieldName = 'uid'
      Size = 8
    end
  end
  object UsersDs: TDataSource
    DataSet = UsersCds
    Left = 548
    Top = 106
  end
  object ImageTypeSds: TSQLDataSet
    CommandText = 'SELECT * FROM ImageTypes'#13#10'ORDER BY ImageType'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 312
    Top = 208
  end
  object ImageTypeDsp: TDataSetProvider
    DataSet = ImageTypeSds
    Left = 328
    Top = 208
  end
  object ImageTypeDs: TDataSource
    DataSet = ImageTypeCds
    Left = 336
    Top = 208
  end
  object ImageTypeCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ImageTypeDsp'
    Left = 344
    Top = 208
    object ImageTypeCdsimagetypes_id: TIntegerField
      FieldName = 'imagetypes_id'
    end
    object ImageTypeCdsimagetype: TStringField
      FieldName = 'imagetype'
      Size = 32
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 52
    Top = 227
    object DefaultHotel1: TMenuItem
      Caption = 'Default Hotel'
      OnClick = DefaultHotel1Click
    end
  end
end
