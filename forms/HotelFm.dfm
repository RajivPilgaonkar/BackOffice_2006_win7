inherited HotelForm: THotelForm
  Left = 199
  Top = 9
  Width = 1213
  Height = 717
  Caption = 'Hotels'
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 1197
  end
  inherited Panel2: TPanel
    Top = 638
    Width = 1197
    inherited cxDBLabelKeyId: TcxDBLabel
      DataBinding.DataField = 'addressbook_id'
    end
    object cxSearchEdit: TcxTextEdit [3]
      Left = 196
      Top = 12
      TabOrder = 3
      OnKeyPress = cxSearchEditKeyPress
      Width = 117
    end
    inherited cxDBNavigator1: TcxDBNavigator
      Left = 392
      Top = 10
      Width = 132
      Height = 21
      Buttons.First.Visible = False
      Buttons.PriorPage.Visible = False
      Buttons.Prior.Visible = False
      Buttons.Next.Visible = False
      Buttons.NextPage.Visible = False
      Buttons.Last.Visible = False
      Buttons.Insert.Visible = False
      Buttons.Delete.Visible = False
      Buttons.Edit.Visible = False
      Buttons.Refresh.Visible = False
      Buttons.SaveBookmark.Visible = False
      Buttons.GotoBookmark.Visible = False
      Buttons.Filter.Visible = False
      DataSource = MasterDs
      LookAndFeel.NativeStyle = True
      TabOrder = 4
    end
    object cxLabel1: TcxLabel
      Left = 144
      Top = 12
      Caption = 'Search'
      Transparent = True
    end
  end
  inherited Panel3: TPanel
    Width = 1197
    Height = 597
    inherited cxPageControl1: TcxPageControl
      Width = 1195
      Height = 595
      ClientRectBottom = 589
      ClientRectRight = 1189
      inherited cxTabSheet1: TcxTabSheet
        Caption = 'Hotels'
        object Splitter2: TSplitter
          Left = 1018
          Top = 0
          Height = 563
          Align = alRight
        end
        object Panel4: TPanel
          Left = 1021
          Top = 0
          Width = 165
          Height = 563
          Align = alRight
          TabOrder = 0
          object cxDisplayPicturesCkb: TcxCheckBox
            Left = 8
            Top = 3
            Caption = 'Display Pictures'
            Properties.OnEditValueChanged = cxDisplayPicturesCkbPropertiesEditValueChanged
            State = cbsChecked
            TabOrder = 0
            Transparent = True
            Width = 121
          end
          object cxImage1: TcxImage
            Left = 2
            Top = 20
            Properties.Stretch = True
            TabOrder = 1
            Height = 100
            Width = 160
          end
          object cxImage2: TcxImage
            Left = 2
            Top = 124
            Properties.Stretch = True
            TabOrder = 2
            Height = 100
            Width = 160
          end
          object cxImage3: TcxImage
            Left = 2
            Top = 228
            Properties.Stretch = True
            TabOrder = 3
            Height = 100
            Width = 160
          end
          object cxImage4: TcxImage
            Left = 2
            Top = 332
            Properties.Stretch = True
            TabOrder = 4
            Height = 100
            Width = 160
          end
        end
        object Panel5: TPanel
          Left = 0
          Top = 0
          Width = 1018
          Height = 563
          Align = alClient
          TabOrder = 1
          object Label1: TLabel
            Left = 5
            Top = 8
            Width = 31
            Height = 13
            Caption = 'Hotel'
            Transparent = True
          end
          object Label2: TLabel
            Left = 5
            Top = 33
            Width = 65
            Height = 13
            Caption = 'Description'
            Transparent = True
          end
          object Label15: TLabel
            Left = 5
            Top = 126
            Width = 30
            Height = 13
            Caption = 'Stars'
            Transparent = True
          end
          object Label9: TLabel
            Left = 517
            Top = 147
            Width = 26
            Height = 13
            Caption = 'Pets'
            Transparent = True
          end
          object Label10: TLabel
            Left = 517
            Top = 189
            Width = 50
            Height = 13
            Caption = 'Bedroom'
            Transparent = True
          end
          object Label11: TLabel
            Left = 5
            Top = 210
            Width = 62
            Height = 13
            Caption = 'Hotel View'
            Transparent = True
          end
          object Label12: TLabel
            Left = 517
            Top = 210
            Width = 52
            Height = 13
            Caption = 'Outdoors'
            Transparent = True
          end
          object Label13: TLabel
            Left = 5
            Top = 231
            Width = 55
            Height = 13
            Caption = 'Amenities'
            Transparent = True
          end
          object Label14: TLabel
            Left = 517
            Top = 231
            Width = 53
            Height = 13
            Caption = 'Activities'
            Transparent = True
          end
          object Label16: TLabel
            Left = 517
            Top = 168
            Width = 70
            Height = 13
            Caption = 'Credit Cards'
            Transparent = True
          end
          object Label4: TLabel
            Left = 232
            Top = 126
            Width = 39
            Height = 13
            Caption = 'Rooms'
            Transparent = True
          end
          object Label5: TLabel
            Left = 517
            Top = 126
            Width = 61
            Height = 13
            Caption = 'Check Out'
            Transparent = True
          end
          object Label22: TLabel
            Left = 5
            Top = 337
            Width = 45
            Height = 13
            Caption = 'Internet'
            Transparent = True
          end
          object Label23: TLabel
            Left = 517
            Top = 33
            Width = 29
            Height = 13
            Caption = 'Logo'
            Transparent = True
          end
          object Label28: TLabel
            Left = 334
            Top = 126
            Width = 52
            Height = 13
            Caption = 'Check In'
            Transparent = True
          end
          object Label3: TLabel
            Left = 5
            Top = 147
            Width = 90
            Height = 13
            Caption = 'Child/Extra Bed'
            Transparent = True
          end
          object Label6: TLabel
            Left = 5
            Top = 273
            Width = 29
            Height = 13
            Caption = 'Food'
            Transparent = True
          end
          object Label7: TLabel
            Left = 517
            Top = 273
            Width = 50
            Height = 13
            Caption = 'Services'
            Transparent = True
          end
          object Label8: TLabel
            Left = 517
            Top = 337
            Width = 44
            Height = 13
            Caption = 'Parking'
            Transparent = True
          end
          object Label17: TLabel
            Left = 5
            Top = 358
            Width = 45
            Height = 13
            Caption = 'General'
            Transparent = True
          end
          object Label29: TLabel
            Left = 5
            Top = 252
            Width = 65
            Height = 13
            Caption = 'Living Area'
            Transparent = True
          end
          object Label30: TLabel
            Left = 517
            Top = 252
            Width = 83
            Height = 13
            Caption = 'Media && Tech.'
            Transparent = True
          end
          object Label31: TLabel
            Left = 515
            Top = 362
            Width = 67
            Height = 13
            Caption = 'Modified By'
            Transparent = True
          end
          object Label32: TLabel
            Left = 515
            Top = 381
            Width = 69
            Height = 14
            Caption = 'Modified On'
            Transparent = True
          end
          object cxDBLabel1: TcxDBLabel
            Left = 97
            Top = 7
            DataBinding.DataField = 'HotelLookup'
            DataBinding.DataSource = MasterDs
            Transparent = True
            Height = 21
            Width = 408
          end
          object cxDBMemo1: TcxDBMemo
            Left = 97
            Top = 31
            DataBinding.DataField = 'description'
            DataBinding.DataSource = MasterDs
            TabOrder = 0
            Height = 89
            Width = 409
          end
          object cxDBLookupComboBox4: TcxDBLookupComboBox
            Left = 97
            Top = 124
            DataBinding.DataField = 'starcategories_id'
            DataBinding.DataSource = MasterDs
            Properties.DropDownWidth = 300
            Properties.KeyFieldNames = 'StarCategories_id'
            Properties.ListColumns = <
              item
                FieldName = 'Star'
              end>
            Properties.ListSource = StarDs
            Style.Color = clWindow
            TabOrder = 2
            Width = 127
          end
          object cxDBTextEdit7: TcxDBTextEdit
            Left = 610
            Top = 145
            DataBinding.DataField = 'Pets'
            DataBinding.DataSource = MasterDs
            Style.Color = clWindow
            TabOrder = 7
            Width = 403
          end
          object cxDBTextEdit8: TcxDBTextEdit
            Left = 610
            Top = 187
            DataBinding.DataField = 'Bedroom'
            DataBinding.DataSource = MasterDs
            Style.Color = clWindow
            TabOrder = 9
            Width = 403
          end
          object cxDBTextEdit10: TcxDBTextEdit
            Left = 97
            Top = 208
            DataBinding.DataField = 'HotelView'
            DataBinding.DataSource = MasterDs
            Style.Color = clWindow
            TabOrder = 10
            Width = 409
          end
          object cxDBTextEdit11: TcxDBTextEdit
            Left = 610
            Top = 208
            DataBinding.DataField = 'Outdoors'
            DataBinding.DataSource = MasterDs
            Style.Color = clWindow
            TabOrder = 11
            Width = 403
          end
          object cxDBTextEdit12: TcxDBTextEdit
            Left = 97
            Top = 229
            DataBinding.DataField = 'Amenities'
            DataBinding.DataSource = MasterDs
            Style.Color = clWindow
            TabOrder = 12
            Width = 409
          end
          object cxDBTextEdit13: TcxDBTextEdit
            Left = 610
            Top = 229
            DataBinding.DataField = 'Activities'
            DataBinding.DataSource = MasterDs
            Style.Color = clWindow
            TabOrder = 13
            Width = 403
          end
          object cxDBTextEdit14: TcxDBTextEdit
            Left = 610
            Top = 166
            DataBinding.DataField = 'creditcards'
            DataBinding.DataSource = MasterDs
            Style.Color = clWindow
            TabOrder = 8
            Width = 403
          end
          object cxPageControl2: TcxPageControl
            Left = 1
            Top = 408
            Width = 1016
            Height = 154
            ActivePage = cxTabSheet7
            Align = alBottom
            TabOrder = 21
            ClientRectBottom = 148
            ClientRectLeft = 3
            ClientRectRight = 1010
            ClientRectTop = 26
            object cxTabSheet2: TcxTabSheet
              Caption = 'Web Writeup 1'
              ImageIndex = 0
              object cxDBMemo2: TcxDBMemo
                Left = 0
                Top = 0
                Align = alClient
                DataBinding.DataField = 'WebWriteUp1'
                DataBinding.DataSource = MasterDs
                TabOrder = 0
                Height = 122
                Width = 1007
              end
            end
            object cxTabSheet3: TcxTabSheet
              Caption = 'Web Writeup 2'
              ImageIndex = 1
              object cxDBMemo3: TcxDBMemo
                Left = 0
                Top = 0
                Align = alClient
                DataBinding.DataField = 'WebWriteUp2'
                DataBinding.DataSource = MasterDs
                TabOrder = 0
                Height = 122
                Width = 1007
              end
            end
            object cxTabSheet4: TcxTabSheet
              Caption = 'Keywords'
              ImageIndex = 2
              object Label24: TLabel
                Left = 0
                Top = 9
                Width = 17
                Height = 13
                Caption = 'Url'
                Color = clBtnFace
                ParentColor = False
                Transparent = True
              end
              object Label25: TLabel
                Left = 1
                Top = 33
                Width = 26
                Height = 13
                Caption = 'Title'
                Color = clBtnFace
                ParentColor = False
                Transparent = True
              end
              object Label26: TLabel
                Left = 1
                Top = 57
                Width = 44
                Height = 13
                Caption = 'Keywds'
                Color = clBtnFace
                ParentColor = False
                Transparent = True
              end
              object Label27: TLabel
                Left = 400
                Top = 9
                Width = 65
                Height = 13
                Caption = 'Description'
                Color = clBtnFace
                ParentColor = False
                Transparent = True
              end
              object cxDBTextEdit21: TcxDBTextEdit
                Left = 48
                Top = 8
                DataBinding.DataField = 'url'
                DataBinding.DataSource = MasterDs
                TabOrder = 0
                Width = 305
              end
              object cxDBTextEdit22: TcxDBTextEdit
                Left = 48
                Top = 32
                DataBinding.DataField = 'Descr'
                DataBinding.DataSource = MasterDs
                TabOrder = 1
                Width = 305
              end
              object cxDBTextEdit23: TcxDBTextEdit
                Left = 48
                Top = 56
                DataBinding.DataField = 'Keywords'
                DataBinding.DataSource = MasterDs
                TabOrder = 2
                Width = 305
              end
              object cxDBMemo5: TcxDBMemo
                Left = 472
                Top = 4
                DataBinding.DataField = 'Metatype'
                DataBinding.DataSource = MasterDs
                TabOrder = 3
                Height = 117
                Width = 441
              end
            end
            object cxTabSheet5: TcxTabSheet
              Caption = 'Image Paths'
              ImageIndex = 3
              object Label18: TLabel
                Left = 10
                Top = 6
                Width = 46
                Height = 13
                Caption = 'Image 1'
                Transparent = True
              end
              object Label19: TLabel
                Left = 10
                Top = 26
                Width = 46
                Height = 13
                Caption = 'Image 2'
                Transparent = True
              end
              object Label20: TLabel
                Left = 10
                Top = 46
                Width = 46
                Height = 13
                Caption = 'Image 3'
                Transparent = True
              end
              object Label21: TLabel
                Left = 10
                Top = 66
                Width = 46
                Height = 13
                Caption = 'Image 4'
                Transparent = True
              end
              object cxDBTextEdit15: TcxDBTextEdit
                Left = 69
                Top = 5
                DataBinding.DataField = 'image1'
                DataBinding.DataSource = MasterDs
                Style.Color = clWindow
                TabOrder = 0
                Width = 452
              end
              object cxDBTextEdit16: TcxDBTextEdit
                Left = 69
                Top = 25
                DataBinding.DataField = 'image2'
                DataBinding.DataSource = MasterDs
                Style.Color = clWindow
                TabOrder = 1
                Width = 452
              end
              object cxDBTextEdit17: TcxDBTextEdit
                Left = 69
                Top = 45
                DataBinding.DataField = 'image3'
                DataBinding.DataSource = MasterDs
                Style.Color = clWindow
                TabOrder = 2
                Width = 452
              end
              object cxDBTextEdit18: TcxDBTextEdit
                Left = 69
                Top = 65
                DataBinding.DataField = 'image4'
                DataBinding.DataSource = MasterDs
                Style.Color = clWindow
                TabOrder = 3
                Width = 452
              end
            end
            object cxTabSheet6: TcxTabSheet
              Caption = 'Checklist'
              ImageIndex = 4
              object cxDBCheckBox2: TcxDBCheckBox
                Left = 5
                Top = 3
                Caption = 'B/F Incl'
                DataBinding.DataField = 'Chk_BF_Incl'
                DataBinding.DataSource = MasterDs
                TabOrder = 0
                Transparent = True
                Width = 76
              end
              object cxDBCheckBox3: TcxDBCheckBox
                Left = 5
                Top = 19
                Caption = 'Boarding'
                DataBinding.DataField = 'Chk_Board'
                DataBinding.DataSource = MasterDs
                TabOrder = 1
                Transparent = True
                Width = 76
              end
              object cxDBTextEdit9: TcxDBTextEdit
                Left = 5
                Top = 35
                DataBinding.DataField = 'Chk_ChildFree'
                DataBinding.DataSource = MasterDs
                TabOrder = 2
                Width = 32
              end
              object cxLabel2: TcxLabel
                Left = 41
                Top = 37
                Caption = 'Child Free (Years)'
                Transparent = True
              end
              object cxDBCheckBox4: TcxDBCheckBox
                Left = 5
                Top = 55
                Caption = 'Restaurant'
                DataBinding.DataField = 'Chk_Restaurant'
                DataBinding.DataSource = MasterDs
                TabOrder = 4
                Transparent = True
                Width = 100
              end
              object cxDBCheckBox5: TcxDBCheckBox
                Left = 5
                Top = 69
                Caption = 'Bar'
                DataBinding.DataField = 'Chk_Bar'
                DataBinding.DataSource = MasterDs
                TabOrder = 5
                Transparent = True
                Width = 100
              end
              object cxDBCheckBox6: TcxDBCheckBox
                Left = 5
                Top = 84
                Caption = 'Business Centre'
                DataBinding.DataField = 'Chk_BusiCentre'
                DataBinding.DataSource = MasterDs
                TabOrder = 6
                Transparent = True
                Width = 121
              end
              object cxDBCheckBox7: TcxDBCheckBox
                Left = 5
                Top = 99
                Caption = 'Parking'
                DataBinding.DataField = 'Chk_Parking'
                DataBinding.DataSource = MasterDs
                TabOrder = 7
                Transparent = True
                Width = 121
              end
              object cxDBCheckBox8: TcxDBCheckBox
                Left = 221
                Top = 3
                Caption = 'Swimming Pool'
                DataBinding.DataField = 'Chk_Swim'
                DataBinding.DataSource = MasterDs
                TabOrder = 8
                Transparent = True
                Width = 140
              end
              object cxDBCheckBox9: TcxDBCheckBox
                Left = 221
                Top = 19
                Caption = 'Laundry Service'
                DataBinding.DataField = 'Chk_Laundry'
                DataBinding.DataSource = MasterDs
                TabOrder = 9
                Transparent = True
                Width = 132
              end
              object cxDBCheckBox10: TcxDBCheckBox
                Left = 221
                Top = 35
                Caption = 'Fitness'
                DataBinding.DataField = 'Chk_Fitness'
                DataBinding.DataSource = MasterDs
                TabOrder = 10
                Transparent = True
                Width = 140
              end
              object cxDBCheckBox11: TcxDBCheckBox
                Left = 221
                Top = 51
                Caption = 'Sauna'
                DataBinding.DataField = 'Chk_Sauna'
                DataBinding.DataSource = MasterDs
                TabOrder = 11
                Transparent = True
                Width = 132
              end
              object cxDBCheckBox12: TcxDBCheckBox
                Left = 221
                Top = 67
                Caption = 'A/C'
                DataBinding.DataField = 'Chk_AC'
                DataBinding.DataSource = MasterDs
                TabOrder = 12
                Transparent = True
                Width = 140
              end
              object cxDBCheckBox13: TcxDBCheckBox
                Left = 221
                Top = 83
                Caption = 'Heating'
                DataBinding.DataField = 'Chk_Heating'
                DataBinding.DataSource = MasterDs
                TabOrder = 13
                Transparent = True
                Width = 132
              end
              object cxDBCheckBox14: TcxDBCheckBox
                Left = 221
                Top = 98
                Caption = 'Free Wifi'
                DataBinding.DataField = 'Chk_Wifi'
                DataBinding.DataSource = MasterDs
                TabOrder = 14
                Transparent = True
                Width = 132
              end
              object cxDBCheckBox15: TcxDBCheckBox
                Left = 445
                Top = 3
                Caption = 'Mini Bar'
                DataBinding.DataField = 'Chk_MiniBar'
                DataBinding.DataSource = MasterDs
                TabOrder = 15
                Transparent = True
                Width = 140
              end
              object cxDBCheckBox16: TcxDBCheckBox
                Left = 445
                Top = 19
                Caption = 'Phone in Room'
                DataBinding.DataField = 'Chk_Phone'
                DataBinding.DataSource = MasterDs
                TabOrder = 16
                Transparent = True
                Width = 132
              end
              object cxDBCheckBox17: TcxDBCheckBox
                Left = 445
                Top = 35
                Caption = 'Security Box'
                DataBinding.DataField = 'Chk_Security'
                DataBinding.DataSource = MasterDs
                TabOrder = 17
                Transparent = True
                Width = 140
              end
              object cxDBCheckBox18: TcxDBCheckBox
                Left = 445
                Top = 51
                Caption = 'Smoke Detector'
                DataBinding.DataField = 'Chk_Smoke'
                DataBinding.DataSource = MasterDs
                TabOrder = 18
                Transparent = True
                Width = 132
              end
              object cxDBCheckBox19: TcxDBCheckBox
                Left = 445
                Top = 67
                Caption = 'Cable TV'
                DataBinding.DataField = 'Chk_Cable'
                DataBinding.DataSource = MasterDs
                TabOrder = 19
                Transparent = True
                Width = 140
              end
            end
            object cxTabSheet7: TcxTabSheet
              Caption = 'Room Types'
              ImageIndex = 5
              object cxGrid2: TcxGrid
                Left = 0
                Top = 0
                Width = 1007
                Height = 122
                Align = alClient
                TabOrder = 0
                object cxGridDBBandedTableView1: TcxGridDBBandedTableView
                  NavigatorButtons.ConfirmDelete = False
                  DataController.DataSource = RoomTypesDs
                  DataController.KeyFieldNames = 'RoomTypes_id'
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <>
                  DataController.Summary.SummaryGroups = <>
                  OptionsBehavior.CellHints = True
                  OptionsBehavior.FocusCellOnTab = True
                  OptionsBehavior.FocusFirstCellOnNewRecord = True
                  OptionsBehavior.FocusCellOnCycle = True
                  OptionsCustomize.ColumnsQuickCustomization = True
                  OptionsData.Deleting = False
                  OptionsData.DeletingConfirmation = False
                  OptionsData.Editing = False
                  OptionsData.Inserting = False
                  OptionsView.Footer = True
                  OptionsView.GroupByBox = False
                  OptionsView.Indicator = True
                  OptionsView.BandHeaders = False
                  Bands = <
                    item
                    end>
                  object cxGridDBBandedTableView1Addressbook_id: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'Addressbook_id'
                    Visible = False
                    Position.BandIndex = 0
                    Position.ColIndex = 0
                    Position.RowIndex = 0
                  end
                  object cxGridDBBandedTableView1RoomTypes_id: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'RoomTypes_id'
                    Visible = False
                    Position.BandIndex = 0
                    Position.ColIndex = 1
                    Position.RowIndex = 0
                  end
                  object cxGridDBBandedTableView1RoomType: TcxGridDBBandedColumn
                    Caption = 'Room Type'
                    DataBinding.FieldName = 'RoomType'
                    Width = 248
                    Position.BandIndex = 0
                    Position.ColIndex = 2
                    Position.RowIndex = 0
                  end
                  object cxGridDBBandedTableView1AC: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'AC'
                    Position.BandIndex = 0
                    Position.ColIndex = 3
                    Position.RowIndex = 0
                  end
                end
                object cxGridLevel1: TcxGridLevel
                  GridView = cxGridDBBandedTableView1
                end
              end
            end
          end
          object cxDBTextEdit2: TcxDBTextEdit
            Left = 276
            Top = 124
            DataBinding.DataField = 'rooms'
            DataBinding.DataSource = MasterDs
            Style.Color = clWindow
            TabOrder = 3
            Width = 49
          end
          object cxDBTextEdit3: TcxDBTextEdit
            Left = 610
            Top = 124
            DataBinding.DataField = 'checkout'
            DataBinding.DataSource = MasterDs
            Style.Color = clWindow
            TabOrder = 5
            Width = 199
          end
          object cxDBTextEdit19: TcxDBTextEdit
            Left = 97
            Top = 335
            DataBinding.DataField = 'Internet'
            DataBinding.DataSource = MasterDs
            Style.Color = clWindow
            TabOrder = 18
            Width = 409
          end
          object cxImage5: TcxImage
            Left = 872
            Top = 31
            Properties.Stretch = True
            TabOrder = 22
            Height = 112
            Width = 141
          end
          object cxDBTextEdit20: TcxDBTextEdit
            Left = 609
            Top = 31
            DataBinding.DataField = 'logo'
            DataBinding.DataSource = MasterDs
            Style.Color = clWindow
            TabOrder = 1
            Width = 258
          end
          object cxDBCheckBox1: TcxDBCheckBox
            Left = 889
            Top = 5
            Caption = 'Display on Web'
            DataBinding.DataField = 'Display'
            DataBinding.DataSource = MasterDs
            TabOrder = 23
            Width = 121
          end
          object cxDBTextEdit24: TcxDBTextEdit
            Left = 397
            Top = 124
            DataBinding.DataField = 'CheckIn'
            DataBinding.DataSource = MasterDs
            Style.Color = clWindow
            TabOrder = 4
            Width = 108
          end
          object cxDBMemo4: TcxDBMemo
            Left = 97
            Top = 145
            DataBinding.DataField = 'ChildExtraBed'
            DataBinding.DataSource = MasterDs
            TabOrder = 6
            Height = 62
            Width = 409
          end
          object cxDBMemo6: TcxDBMemo
            Left = 97
            Top = 271
            DataBinding.DataField = 'Food'
            DataBinding.DataSource = MasterDs
            TabOrder = 16
            Height = 62
            Width = 409
          end
          object cxDBMemo7: TcxDBMemo
            Left = 610
            Top = 271
            DataBinding.DataField = 'HotelServices'
            DataBinding.DataSource = MasterDs
            TabOrder = 17
            Height = 62
            Width = 403
          end
          object cxDBTextEdit1: TcxDBTextEdit
            Left = 610
            Top = 335
            DataBinding.DataField = 'Parking'
            DataBinding.DataSource = MasterDs
            Style.Color = clWindow
            TabOrder = 19
            Width = 403
          end
          object cxDBTextEdit5: TcxDBTextEdit
            Left = 97
            Top = 250
            DataBinding.DataField = 'LivingArea'
            DataBinding.DataSource = MasterDs
            Style.Color = clWindow
            TabOrder = 14
            Width = 409
          end
          object cxDBTextEdit6: TcxDBTextEdit
            Left = 610
            Top = 250
            DataBinding.DataField = 'Media'
            DataBinding.DataSource = MasterDs
            Style.Color = clWindow
            TabOrder = 15
            Width = 403
          end
          object cxDBMemo8: TcxDBMemo
            Left = 97
            Top = 356
            DataBinding.DataField = 'General'
            DataBinding.DataSource = MasterDs
            TabOrder = 24
            Height = 51
            Width = 409
          end
          object cxDBLabel2: TcxDBLabel
            Left = 611
            Top = 360
            DataBinding.DataField = 'ModifiedByUser'
            DataBinding.DataSource = MasterDs
            Height = 21
            Width = 119
          end
          object cxDBLabel3: TcxDBLabel
            Left = 611
            Top = 379
            DataBinding.DataField = 'ModifiedOn'
            DataBinding.DataSource = MasterDs
            Height = 21
            Width = 119
          end
        end
      end
    end
  end
  inherited MasterSds: TSQLDataSet
    CommandText = 'SELECT * FROM Hotels'#13#10'WHERE Addressbook_id = :Addressbook_id'
    CommandType = ctQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'Addressbook_id'
        ParamType = ptInput
      end>
    Left = 168
    Top = 8
  end
  inherited MasterDsp: TDataSetProvider
    Left = 198
    Top = 8
  end
  inherited MasterCds: TClientDataSet
    AfterInsert = MasterCdsAfterInsert
    AfterScroll = MasterCdsAfterScroll
    Left = 231
    Top = 8
    object MasterCdsaddressbook_id: TIntegerField
      FieldName = 'addressbook_id'
    end
    object MasterCdsdescription: TMemoField
      FieldName = 'description'
      BlobType = ftMemo
    end
    object MasterCdsimage1: TStringField
      FieldName = 'image1'
      Size = 100
    end
    object MasterCdsshowhotel: TBooleanField
      FieldName = 'showhotel'
    end
    object MasterCdsimage2: TStringField
      FieldName = 'image2'
      Size = 100
    end
    object MasterCdsimage3: TStringField
      FieldName = 'image3'
      Size = 100
    end
    object MasterCdsimage4: TStringField
      FieldName = 'image4'
      Size = 100
    end
    object MasterCdsstarcategories_id: TIntegerField
      FieldName = 'starcategories_id'
    end
    object MasterCdscuisine: TStringField
      FieldName = 'cuisine'
      Size = 255
    end
    object MasterCdsbars: TStringField
      FieldName = 'bars'
      Size = 100
    end
    object MasterCdsrestaurants: TStringField
      FieldName = 'restaurants'
      Size = 100
    end
    object MasterCdscheckout: TStringField
      FieldName = 'checkout'
      Size = 100
    end
    object MasterCdsaccessrail: TStringField
      FieldName = 'accessrail'
      Size = 100
    end
    object MasterCdsaccessair: TStringField
      FieldName = 'accessair'
      Size = 100
    end
    object MasterCdsaccessbus: TStringField
      FieldName = 'accessbus'
      Size = 100
    end
    object MasterCdsadvantage: TStringField
      FieldName = 'advantage'
      Size = 255
    end
    object MasterCdslogo: TStringField
      FieldName = 'logo'
      Size = 100
    end
    object MasterCdsrooms: TIntegerField
      FieldName = 'rooms'
    end
    object MasterCdsac: TStringField
      FieldName = 'ac'
      Size = 100
    end
    object MasterCdsroomfacility: TStringField
      FieldName = 'roomfacility'
      Size = 255
    end
    object MasterCdsotherfacility: TStringField
      FieldName = 'otherfacility'
      Size = 255
    end
    object MasterCdsservices: TStringField
      FieldName = 'services'
      Size = 255
    end
    object MasterCdscreditcards: TStringField
      FieldName = 'creditcards'
      Size = 200
    end
    object MasterCdsfhra: TIntegerField
      FieldName = 'fhra'
    end
    object MasterCdsWebWriteUp1: TMemoField
      FieldName = 'WebWriteUp1'
      BlobType = ftMemo
    end
    object MasterCdsWebWriteUp2: TMemoField
      FieldName = 'WebWriteUp2'
      BlobType = ftMemo
    end
    object MasterCdsurl: TStringField
      FieldName = 'url'
      Size = 100
    end
    object MasterCdsMetatype: TMemoField
      FieldName = 'Metatype'
      BlobType = ftMemo
    end
    object MasterCdsDescr: TStringField
      FieldName = 'Descr'
      Size = 256
    end
    object MasterCdsKeywords: TStringField
      FieldName = 'Keywords'
      Size = 256
    end
    object MasterCdsHotelLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'HotelLookup'
      LookupDataSet = HotelCds
      LookupKeyFields = 'Addressbook_id'
      LookupResultField = 'Org'
      KeyFields = 'addressbook_id'
      Size = 200
      Lookup = True
    end
    object MasterCdsDisplay: TBooleanField
      FieldName = 'Display'
    end
    object MasterCdsCheckIn: TStringField
      FieldName = 'CheckIn'
      Size = 100
    end
    object MasterCdsChildExtraBed: TMemoField
      FieldName = 'ChildExtraBed'
      BlobType = ftMemo
    end
    object MasterCdsPets: TStringField
      FieldName = 'Pets'
      Size = 200
    end
    object MasterCdsBedroom: TStringField
      FieldName = 'Bedroom'
      Size = 200
    end
    object MasterCdsHotelView: TStringField
      FieldName = 'HotelView'
      Size = 200
    end
    object MasterCdsOutdoors: TStringField
      FieldName = 'Outdoors'
      Size = 200
    end
    object MasterCdsAmenities: TStringField
      FieldName = 'Amenities'
      Size = 200
    end
    object MasterCdsLivingArea: TStringField
      FieldName = 'LivingArea'
      Size = 200
    end
    object MasterCdsMedia: TStringField
      FieldName = 'Media'
      Size = 200
    end
    object MasterCdsFood: TMemoField
      FieldName = 'Food'
      BlobType = ftMemo
    end
    object MasterCdsInternet: TStringField
      FieldName = 'Internet'
      Size = 100
    end
    object MasterCdsParking: TStringField
      FieldName = 'Parking'
      Size = 200
    end
    object MasterCdsHotelServices: TMemoField
      FieldName = 'HotelServices'
      BlobType = ftMemo
    end
    object MasterCdsGeneral: TMemoField
      FieldName = 'General'
      BlobType = ftMemo
    end
    object MasterCdsActivities: TStringField
      FieldName = 'Activities'
      Size = 200
    end
    object MasterCdsChk_BF_Incl: TBooleanField
      FieldName = 'Chk_BF_Incl'
    end
    object MasterCdsChk_Board: TBooleanField
      FieldName = 'Chk_Board'
    end
    object MasterCdsChk_ChildFree: TIntegerField
      FieldName = 'Chk_ChildFree'
    end
    object MasterCdsChk_Restaurant: TBooleanField
      FieldName = 'Chk_Restaurant'
    end
    object MasterCdsChk_Bar: TBooleanField
      FieldName = 'Chk_Bar'
    end
    object MasterCdsChk_BusiCentre: TBooleanField
      FieldName = 'Chk_BusiCentre'
    end
    object MasterCdsChk_Parking: TBooleanField
      FieldName = 'Chk_Parking'
    end
    object MasterCdsChk_Swim: TBooleanField
      FieldName = 'Chk_Swim'
    end
    object MasterCdsChk_Laundry: TBooleanField
      FieldName = 'Chk_Laundry'
    end
    object MasterCdsChk_Fitness: TBooleanField
      FieldName = 'Chk_Fitness'
    end
    object MasterCdsChk_Sauna: TBooleanField
      FieldName = 'Chk_Sauna'
    end
    object MasterCdsChk_AC: TBooleanField
      FieldName = 'Chk_AC'
    end
    object MasterCdsChk_Heating: TBooleanField
      FieldName = 'Chk_Heating'
    end
    object MasterCdsChk_Wifi: TBooleanField
      FieldName = 'Chk_Wifi'
    end
    object MasterCdsChk_MiniBar: TBooleanField
      FieldName = 'Chk_MiniBar'
    end
    object MasterCdsChk_Phone: TBooleanField
      FieldName = 'Chk_Phone'
    end
    object MasterCdsChk_Security: TBooleanField
      FieldName = 'Chk_Security'
    end
    object MasterCdsChk_Smoke: TBooleanField
      FieldName = 'Chk_Smoke'
    end
    object MasterCdsChk_Cable: TBooleanField
      FieldName = 'Chk_Cable'
    end
    object MasterCdsModifiedByUsers_id: TIntegerField
      FieldName = 'ModifiedByUsers_id'
    end
    object MasterCdsModifiedOn: TSQLTimeStampField
      FieldName = 'ModifiedOn'
    end
    object MasterCdsModifiedByUser: TStringField
      FieldKind = fkLookup
      FieldName = 'ModifiedByUser'
      LookupDataSet = UsersCds
      LookupKeyFields = 'AdmUsers_id'
      LookupResultField = 'uid'
      KeyFields = 'ModifiedByUsers_id'
      Size = 50
      Lookup = True
    end
  end
  inherited MasterDs: TDataSource
    Left = 261
    Top = 8
  end
  inherited PopupMenu1: TPopupMenu
    Top = 559
    object UpdateHotels1: TMenuItem
      Caption = 'Insert New Hotels'
      OnClick = UpdateHotels1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object WebHotelsReport1: TMenuItem
      Caption = 'Web Hotels Report'
      OnClick = WebHotelsReport1Click
    end
  end
  object HotelSds: TSQLDataSet
    CommandText = 
      'SELECT Addressbook_id, '#13#10'  LTRIM(RTRIM(Organisation)) + '#39', '#39' +  ' +
      'City AS Org'#13#10'FROM Addressbook'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 596
    Top = 84
  end
  object HotelDsp: TDataSetProvider
    DataSet = HotelSds
    Left = 620
    Top = 84
  end
  object HotelCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'HotelDsp'
    Left = 644
    Top = 84
    object HotelCdsAddressbook_id: TIntegerField
      FieldName = 'Addressbook_id'
    end
    object HotelCdsOrg: TStringField
      FieldName = 'Org'
      Size = 82
    end
  end
  object HotelDs: TDataSource
    DataSet = HotelCds
    Left = 660
    Top = 84
  end
  object StarSds: TSQLDataSet
    CommandText = 
      'SELECT Star, StarCategories_id FROM StarCategories'#13#10'ORDER BY Sta' +
      'r'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 600
    Top = 120
  end
  object StarDsp: TDataSetProvider
    DataSet = StarSds
    Left = 624
    Top = 120
  end
  object StarCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'StarDsp'
    BeforeInsert = MasterCdsBeforeInsert
    BeforeEdit = MasterCdsBeforeEdit
    BeforePost = MasterCdsBeforePost
    AfterPost = MasterCdsAfterPost
    BeforeDelete = MasterCdsBeforeDelete
    AfterDelete = MasterCdsAfterDelete
    Left = 648
    Top = 120
    object StarCdsStar: TStringField
      FieldName = 'Star'
      FixedChar = True
      Size = 5
    end
    object StarCdsStarCategories_id: TIntegerField
      FieldName = 'StarCategories_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object StarDs: TDataSource
    DataSet = StarCds
    Left = 664
    Top = 120
  end
  object RoomTypesSds: TSQLDataSet
    CommandText = 'select * from [dbo].[fn_GetHotelRoomTypes]  (:Addressbook_id)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'addressbook_id'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 336
    Top = 8
  end
  object RoomTypesDsp: TDataSetProvider
    DataSet = RoomTypesSds
    UpdateMode = upWhereKeyOnly
    Left = 366
    Top = 8
  end
  object RoomTypesCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'Addressbook_id'
    MasterFields = 'addressbook_id'
    MasterSource = MasterDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'RoomTypesDsp'
    BeforeInsert = MasterCdsBeforeInsert
    AfterInsert = MasterCdsAfterInsert
    BeforeEdit = MasterCdsBeforeEdit
    BeforePost = MasterCdsBeforePost
    AfterPost = MasterCdsAfterPost
    BeforeDelete = MasterCdsBeforeDelete
    AfterDelete = MasterCdsAfterDelete
    AfterScroll = MasterCdsAfterScroll
    Left = 399
    Top = 8
    object RoomTypesCdsAddressbook_id: TIntegerField
      FieldName = 'Addressbook_id'
    end
    object RoomTypesCdsRoomTypes_id: TIntegerField
      FieldName = 'RoomTypes_id'
    end
    object RoomTypesCdsRoomType: TStringField
      FieldName = 'RoomType'
      Size = 100
    end
    object RoomTypesCdsAC: TBooleanField
      FieldName = 'AC'
    end
  end
  object RoomTypesDs: TDataSource
    DataSet = RoomTypesCds
    Left = 429
    Top = 8
  end
  object UsersSds: TSQLDataSet
    CommandText = 'SELECT AdmUsers_id, uid'#13#10'FROM AdmUsers'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 704
    Top = 18
  end
  object UsersDsp: TDataSetProvider
    DataSet = UsersSds
    Left = 718
    Top = 19
  end
  object UsersCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'UsersDsp'
    Left = 736
    Top = 18
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
    Left = 748
    Top = 18
  end
end
