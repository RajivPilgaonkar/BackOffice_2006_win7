inherited HotelsForm: THotelsForm
  Left = 233
  Top = 92
  Width = 999
  Height = 641
  Caption = 'HotelsForm'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 991
    Height = 558
    Align = alClient
    Color = 15451300
    TabOrder = 1
    object cxLabel1: TcxLabel
      Left = 11
      Top = 14
      Caption = 'Hotel'
    end
    object cxLabel2: TcxLabel
      Left = 11
      Top = 44
      Caption = 'Description'
    end
    object cxLabel3: TcxLabel
      Left = 11
      Top = 164
      Caption = 'Stars'
    end
    object cxLabel4: TcxLabel
      Left = 151
      Top = 164
      Caption = 'Bars'
    end
    object cxLabel5: TcxLabel
      Left = 260
      Top = 164
      Caption = 'Restaurants'
    end
    object cxLabel6: TcxLabel
      Left = 409
      Top = 164
      Caption = 'Rooms'
    end
    object cxLabel7: TcxLabel
      Left = 534
      Top = 164
      Caption = 'Check Out'
    end
    object cxLabel8: TcxLabel
      Left = 498
      Top = 136
      Caption = 'Logo'
    end
    object cxLabel9: TcxLabel
      Left = 11
      Top = 190
      Caption = 'Access'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clMaroon
      Style.Font.Height = -13
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
    end
    object cxLabel10: TcxLabel
      Left = 10
      Top = 212
      Caption = 'Rail'
    end
    object cxLabel11: TcxLabel
      Left = 10
      Top = 233
      Caption = 'Air'
    end
    object cxLabel12: TcxLabel
      Left = 10
      Top = 254
      Caption = 'Bus'
    end
    object cxLabel13: TcxLabel
      Left = 10
      Top = 276
      Caption = 'Cuisine'
    end
    object cxLabel14: TcxLabel
      Left = 10
      Top = 297
      Caption = 'Advantage'
    end
    object cxLabel15: TcxLabel
      Left = 10
      Top = 318
      Caption = 'Room Facility'
    end
    object cxLabel16: TcxLabel
      Left = 10
      Top = 340
      Caption = 'A/C'
    end
    object cxLabel17: TcxLabel
      Left = 10
      Top = 361
      Caption = 'Other Facility'
    end
    object cxLabel18: TcxLabel
      Left = 10
      Top = 382
      Caption = 'Services'
    end
    object cxLabel19: TcxLabel
      Left = 10
      Top = 404
      Caption = 'Credit Cards'
    end
    object cxLabel21: TcxLabel
      Left = 505
      Top = 404
      Caption = 'FHRA'
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 88
      Top = 16
      DataBinding.DataField = 'Hotel'
      DataBinding.DataSource = MasterDS
      ParentFont = False
      Properties.ReadOnly = True
      Style.BorderStyle = ebsNone
      Style.Color = 15451300
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clNavy
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 20
      Width = 409
    end
    object cxDBMemo1: TcxDBMemo
      Left = 88
      Top = 48
      DataBinding.DataField = 'description'
      DataBinding.DataSource = MasterDS
      Style.Color = 16247513
      TabOrder = 21
      Height = 105
      Width = 409
    end
    object StarLCmb: TcxDBLookupComboBox
      Left = 48
      Top = 162
      DataBinding.DataField = 'starcategories_id'
      DataBinding.DataSource = MasterDS
      Properties.ClearKey = 16452
      Properties.KeyFieldNames = 'StarCategories_id'
      Properties.ListColumns = <
        item
          FieldName = 'Star'
        end>
      Properties.ListSource = StarDs
      Style.Color = 16247513
      TabOrder = 23
      Width = 93
    end
    object LogoTxt: TcxDBTextEdit
      Left = 536
      Top = 135
      DataBinding.DataField = 'logo'
      DataBinding.DataSource = MasterDS
      Properties.ReadOnly = True
      Style.Color = clSilver
      TabOrder = 22
      Width = 144
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 185
      Top = 162
      DataBinding.DataField = 'bars'
      DataBinding.DataSource = MasterDS
      Style.Color = 16247513
      TabOrder = 24
      Width = 67
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 336
      Top = 162
      DataBinding.DataField = 'restaurants'
      DataBinding.DataSource = MasterDS
      Style.Color = 16247513
      TabOrder = 25
      Width = 67
    end
    object cxDBTextEdit4: TcxDBTextEdit
      Left = 458
      Top = 162
      DataBinding.DataField = 'rooms'
      DataBinding.DataSource = MasterDS
      Style.Color = 16247513
      TabOrder = 26
      Width = 67
    end
    object cxDBTextEdit5: TcxDBTextEdit
      Left = 605
      Top = 162
      DataBinding.DataField = 'checkout'
      DataBinding.DataSource = MasterDS
      Style.Color = 16247513
      TabOrder = 27
      Width = 76
    end
    object cxDBTextEdit6: TcxDBTextEdit
      Left = 550
      Top = 402
      DataBinding.DataField = 'fhra'
      DataBinding.DataSource = MasterDS
      Style.Color = 16247513
      TabOrder = 38
      Width = 132
    end
    object cxDBTextEdit7: TcxDBTextEdit
      Left = 109
      Top = 402
      DataBinding.DataField = 'creditcards'
      DataBinding.DataSource = MasterDS
      Style.Color = 16247513
      TabOrder = 37
      Width = 385
    end
    object cxDBTextEdit8: TcxDBTextEdit
      Left = 109
      Top = 380
      DataBinding.DataField = 'services'
      DataBinding.DataSource = MasterDS
      Style.Color = 16247513
      TabOrder = 36
      Width = 573
    end
    object cxDBTextEdit9: TcxDBTextEdit
      Left = 109
      Top = 359
      DataBinding.DataField = 'otherfacility'
      DataBinding.DataSource = MasterDS
      Style.Color = 16247513
      TabOrder = 35
      Width = 573
    end
    object cxDBTextEdit10: TcxDBTextEdit
      Left = 109
      Top = 338
      DataBinding.DataField = 'ac'
      DataBinding.DataSource = MasterDS
      Style.Color = 16247513
      TabOrder = 34
      Width = 573
    end
    object cxDBTextEdit11: TcxDBTextEdit
      Left = 109
      Top = 316
      DataBinding.DataField = 'roomfacility'
      DataBinding.DataSource = MasterDS
      Style.Color = 16247513
      TabOrder = 33
      Width = 573
    end
    object cxDBTextEdit12: TcxDBTextEdit
      Left = 109
      Top = 295
      DataBinding.DataField = 'advantage'
      DataBinding.DataSource = MasterDS
      Style.Color = 16247513
      TabOrder = 32
      Width = 573
    end
    object cxDBTextEdit13: TcxDBTextEdit
      Left = 109
      Top = 274
      DataBinding.DataField = 'cuisine'
      DataBinding.DataSource = MasterDS
      Style.Color = 16247513
      TabOrder = 31
      Width = 573
    end
    object cxDBTextEdit14: TcxDBTextEdit
      Left = 109
      Top = 252
      DataBinding.DataField = 'accessbus'
      DataBinding.DataSource = MasterDS
      Style.Color = 16247513
      TabOrder = 30
      Width = 192
    end
    object cxDBTextEdit15: TcxDBTextEdit
      Left = 109
      Top = 231
      DataBinding.DataField = 'accessair'
      DataBinding.DataSource = MasterDS
      Style.Color = 16247513
      TabOrder = 29
      Width = 192
    end
    object cxDBTextEdit16: TcxDBTextEdit
      Left = 109
      Top = 210
      DataBinding.DataField = 'accessrail'
      DataBinding.DataSource = MasterDS
      Style.Color = 16247513
      TabOrder = 28
      Width = 192
    end
    object Panel3: TPanel
      Left = 758
      Top = 8
      Width = 215
      Height = 105
      Color = clMedGray
      TabOrder = 39
      object cxImage1: TcxImage
        Left = 1
        Top = 1
        Align = alClient
        AutoSize = True
        TabOrder = 0
        Height = 103
        Width = 213
      end
    end
    object Panel4: TPanel
      Left = 758
      Top = 145
      Width = 215
      Height = 105
      Color = clMedGray
      TabOrder = 40
      object cxImage2: TcxImage
        Left = 1
        Top = 1
        Align = alClient
        AutoSize = True
        TabOrder = 0
        Height = 103
        Width = 213
      end
    end
    object Panel5: TPanel
      Left = 758
      Top = 283
      Width = 215
      Height = 105
      Color = clMedGray
      TabOrder = 41
      object cxImage3: TcxImage
        Left = 1
        Top = 1
        Align = alClient
        AutoSize = True
        TabOrder = 0
        Height = 103
        Width = 213
      end
    end
    object Panel6: TPanel
      Left = 758
      Top = 421
      Width = 215
      Height = 105
      Color = clMedGray
      TabOrder = 42
      object cxImage4: TcxImage
        Left = 1
        Top = 1
        Align = alClient
        AutoSize = True
        TabOrder = 0
        Height = 103
        Width = 213
      end
    end
    object cxLabel20: TcxLabel
      Left = 705
      Top = 112
      Caption = 'Image1'
    end
    object cxDBTextEdit17: TcxDBTextEdit
      Left = 759
      Top = 112
      DataBinding.DataField = 'image1'
      DataBinding.DataSource = MasterDS
      Properties.ReadOnly = True
      Style.Color = clSilver
      Style.TransparentBorder = True
      TabOrder = 44
      Width = 144
    end
    object cxLabel22: TcxLabel
      Left = 705
      Top = 249
      Caption = 'Image2'
    end
    object cxDBTextEdit18: TcxDBTextEdit
      Left = 759
      Top = 249
      DataBinding.DataField = 'image2'
      DataBinding.DataSource = MasterDS
      Properties.ReadOnly = True
      Style.Color = clSilver
      TabOrder = 46
      Width = 144
    end
    object cxLabel23: TcxLabel
      Left = 705
      Top = 387
      Caption = 'Image3'
    end
    object cxDBTextEdit19: TcxDBTextEdit
      Left = 759
      Top = 387
      DataBinding.DataField = 'image3'
      DataBinding.DataSource = MasterDS
      Properties.ReadOnly = True
      Style.Color = clSilver
      TabOrder = 48
      Width = 144
    end
    object cxLabel24: TcxLabel
      Left = 705
      Top = 524
      Caption = 'Image4'
    end
    object cxDBTextEdit20: TcxDBTextEdit
      Left = 759
      Top = 524
      DataBinding.DataField = 'image4'
      DataBinding.DataSource = MasterDS
      Properties.ReadOnly = True
      Style.Color = clSilver
      TabOrder = 50
      Width = 144
    end
    object Panel7: TPanel
      Left = 558
      Top = 48
      Width = 100
      Height = 85
      BevelOuter = bvNone
      Color = clMedGray
      TabOrder = 51
      object LogoImage: TcxImage
        Left = 0
        Top = 0
        Align = alClient
        AutoSize = True
        TabOrder = 0
        Height = 85
        Width = 100
      end
    end
    object cxPageControl1: TcxPageControl
      Left = 8
      Top = 428
      Width = 673
      Height = 117
      ActivePage = cxTabSheet3
      TabOrder = 52
      ClientRectBottom = 111
      ClientRectLeft = 3
      ClientRectRight = 667
      ClientRectTop = 26
      object cxTabSheet1: TcxTabSheet
        Caption = 'Web Writeup 1'
        ImageIndex = 0
        object cxDBMemo2: TcxDBMemo
          Left = 0
          Top = 0
          Align = alClient
          DataBinding.DataField = 'WebWriteUp1'
          DataBinding.DataSource = MasterDS
          Style.Color = 16247513
          TabOrder = 0
          Height = 85
          Width = 664
        end
      end
      object cxTabSheet2: TcxTabSheet
        Caption = 'Web Writeup 2'
        ImageIndex = 1
        object cxDBMemo3: TcxDBMemo
          Left = 0
          Top = 0
          Align = alClient
          DataBinding.DataField = 'WebWriteUp2'
          DataBinding.DataSource = MasterDS
          Style.Color = 16247513
          TabOrder = 0
          Height = 85
          Width = 664
        end
      end
      object cxTabSheet3: TcxTabSheet
        Caption = 'Keywords'
        ImageIndex = 2
        object Label2: TLabel
          Left = 0
          Top = 9
          Width = 17
          Height = 13
          Caption = 'Url'
          Color = clSilver
          ParentColor = False
        end
        object Label3: TLabel
          Left = 1
          Top = 33
          Width = 26
          Height = 13
          Caption = 'Title'
          Color = clSilver
          ParentColor = False
        end
        object Label4: TLabel
          Left = 1
          Top = 57
          Width = 44
          Height = 13
          Caption = 'Keywds'
          Color = clSilver
          ParentColor = False
        end
        object Label1: TLabel
          Left = 360
          Top = 9
          Width = 65
          Height = 13
          Caption = 'Description'
          Color = clSilver
          ParentColor = False
        end
        object cxDBTextEdit21: TcxDBTextEdit
          Left = 48
          Top = 8
          DataBinding.DataField = 'url'
          DataBinding.DataSource = MasterDS
          TabOrder = 0
          Width = 305
        end
        object cxDBTextEdit22: TcxDBTextEdit
          Left = 48
          Top = 32
          DataBinding.DataField = 'Descr'
          DataBinding.DataSource = MasterDS
          TabOrder = 1
          Width = 305
        end
        object cxDBTextEdit23: TcxDBTextEdit
          Left = 48
          Top = 56
          DataBinding.DataField = 'Keywords'
          DataBinding.DataSource = MasterDS
          TabOrder = 2
          Width = 305
        end
        object cxDBMemo5: TcxDBMemo
          Left = 432
          Top = 4
          DataBinding.DataField = 'Metatype'
          DataBinding.DataSource = MasterDS
          TabOrder = 3
          Height = 77
          Width = 233
        end
      end
    end
  end
  inherited Panel2: TPanel
    Top = 558
    Width = 991
    TabOrder = 0
    inherited KeyIdDBText: TDBText
      Left = 817
      Top = 18
      Width = 48
      AutoSize = False
      DataField = 'addressbook_id'
      DataSource = MasterDS
    end
    object CloseBtn: TcxButton
      Left = 896
      Top = 10
      Width = 75
      Height = 25
      Caption = '&Close'
      TabOrder = 1
      OnClick = CloseBtnClick
    end
    object cxLabel25: TcxLabel
      Left = 24
      Top = 13
      Caption = 'Search'
    end
    object SearchEdit: TcxTextEdit
      Left = 86
      Top = 12
      TabOrder = 0
      OnKeyPress = SearchEditKeyPress
      Width = 211
    end
    object cxDBNavigator1: TcxDBNavigator
      Left = 360
      Top = 12
      Width = 144
      Height = 25
      Buttons.First.Visible = False
      Buttons.PriorPage.Visible = False
      Buttons.Prior.Visible = False
      Buttons.Next.Visible = False
      Buttons.NextPage.Visible = False
      Buttons.Last.Visible = False
      Buttons.Insert.Visible = False
      Buttons.Delete.Visible = False
      Buttons.SaveBookmark.Visible = False
      Buttons.GotoBookmark.Visible = False
      Buttons.Filter.Visible = False
      DataSource = MasterDS
      LookAndFeel.NativeStyle = True
      TabOrder = 3
    end
    object cxButton1: TcxButton
      Left = 592
      Top = 10
      Width = 75
      Height = 25
      Caption = '&Report'
      TabOrder = 4
      DropDownMenu = PopupMenu1
      Kind = cxbkDropDown
    end
    object cxButton4: TcxButton
      Left = 680
      Top = 9
      Width = 113
      Height = 25
      Caption = 'Update Hotels'
      TabOrder = 5
      OnClick = cxButton4Click
    end
  end
  inherited MasterSds: TSQLDataSet
    CommandText = 'hotels'
    Left = 328
  end
  inherited MasterDsp: TDataSetProvider
    Left = 360
  end
  inherited MasterDS: TDataSource
    Left = 424
  end
  inherited MasterCDS: TClientDataSet
    AfterScroll = MasterCDSAfterScroll
    Left = 392
    object MasterCDSaddressbook_id: TIntegerField
      FieldName = 'addressbook_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object MasterCDSdescription: TMemoField
      FieldName = 'description'
      BlobType = ftMemo
    end
    object MasterCDSimage1: TStringField
      FieldName = 'image1'
      Size = 100
    end
    object MasterCDSshowhotel: TBooleanField
      FieldName = 'showhotel'
    end
    object MasterCDSimage2: TStringField
      FieldName = 'image2'
      Size = 100
    end
    object MasterCDSimage3: TStringField
      FieldName = 'image3'
      Size = 100
    end
    object MasterCDSimage4: TStringField
      FieldName = 'image4'
      Size = 100
    end
    object MasterCDSstarcategories_id: TIntegerField
      FieldName = 'starcategories_id'
    end
    object MasterCDScuisine: TStringField
      FieldName = 'cuisine'
      Size = 255
    end
    object MasterCDSbars: TStringField
      FieldName = 'bars'
      Size = 100
    end
    object MasterCDSrestaurants: TStringField
      FieldName = 'restaurants'
      Size = 100
    end
    object MasterCDScheckout: TStringField
      FieldName = 'checkout'
      Size = 100
    end
    object MasterCDSaccessrail: TStringField
      FieldName = 'accessrail'
      Size = 100
    end
    object MasterCDSaccessair: TStringField
      FieldName = 'accessair'
      Size = 100
    end
    object MasterCDSaccessbus: TStringField
      FieldName = 'accessbus'
      Size = 100
    end
    object MasterCDSadvantage: TStringField
      FieldName = 'advantage'
      Size = 255
    end
    object MasterCDSlogo: TStringField
      FieldName = 'logo'
      Size = 100
    end
    object MasterCDSrooms: TIntegerField
      FieldName = 'rooms'
    end
    object MasterCDSac: TStringField
      FieldName = 'ac'
      Size = 100
    end
    object MasterCDSroomfacility: TStringField
      FieldName = 'roomfacility'
      Size = 255
    end
    object MasterCDSotherfacility: TStringField
      FieldName = 'otherfacility'
      Size = 255
    end
    object MasterCDSservices: TStringField
      FieldName = 'services'
      Size = 255
    end
    object MasterCDScreditcards: TStringField
      FieldName = 'creditcards'
      Size = 200
    end
    object MasterCDSfhra: TIntegerField
      FieldName = 'fhra'
    end
    object MasterCDSHotel: TStringField
      FieldKind = fkLookup
      FieldName = 'Hotel'
      LookupDataSet = HotelNameCds
      LookupKeyFields = 'Addressbook_id'
      LookupResultField = 'Organisation'
      KeyFields = 'addressbook_id'
      Size = 80
      Lookup = True
    end
    object MasterCDSWebWriteUp1: TMemoField
      FieldName = 'WebWriteUp1'
      BlobType = ftMemo
    end
    object MasterCDSWebWriteUp2: TMemoField
      FieldName = 'WebWriteUp2'
      BlobType = ftMemo
    end
    object MasterCDSurl: TStringField
      FieldName = 'url'
      Size = 100
    end
    object MasterCDSMetatype: TMemoField
      FieldName = 'Metatype'
      BlobType = ftMemo
    end
    object MasterCDSDescr: TStringField
      FieldName = 'Descr'
      Size = 256
    end
    object MasterCDSKeywords: TStringField
      FieldName = 'Keywords'
      Size = 256
    end
  end
  object HotelNameSds: TSQLDataSet
    CommandText = 'SELECT * FROM fn_addressbook(2,'#39'H'#39')'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 328
    Top = 56
  end
  object HotelNameDsp: TDataSetProvider
    DataSet = HotelNameSds
    Left = 360
    Top = 56
  end
  object HotelNameCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'HotelNameDsp'
    Left = 392
    Top = 56
    object HotelNameCdsAddressbook_id: TIntegerField
      FieldName = 'Addressbook_id'
    end
    object HotelNameCdsOrganisation: TStringField
      FieldName = 'Organisation'
      Size = 254
    end
    object HotelNameCdsCity: TStringField
      FieldName = 'City'
      Size = 100
    end
    object HotelNameCdsCities_id: TIntegerField
      FieldName = 'Cities_id'
    end
    object HotelNameCdsContact: TStringField
      FieldName = 'Contact'
      Size = 254
    end
  end
  object HotelNameDs: TDataSource
    DataSet = HotelNameCds
    Left = 424
    Top = 56
  end
  object StarSds: TSQLDataSet
    CommandText = 
      'SELECT Star, StarCategories_id FROM StarCategories'#13#10'ORDER BY Sta' +
      'r'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 40
    Top = 136
  end
  object StarDsp: TDataSetProvider
    DataSet = StarSds
    Left = 72
    Top = 136
  end
  object StarCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'StarDsp'
    BeforeInsert = MasterCDSBeforeInsert
    AfterInsert = MasterCDSAfterInsert
    BeforeEdit = MasterCDSBeforeEdit
    BeforePost = MasterCDSBeforePost
    AfterPost = MasterCDSAfterPost
    BeforeDelete = MasterCDSBeforeDelete
    AfterDelete = MasterCDSAfterDelete
    Left = 104
    Top = 136
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
    Left = 136
    Top = 136
  end
  object ImageSds: TSQLDataSet
    CommandText = 
      'select a.addressbook_id, a.organisation,'#13#10'case when len(ltrim(h.' +
      'logo)) > 0 then'#13#10'      (case when Substring(h.logo,1, 4) = '#39'.gif' +
      #39' then'#13#10'              cast('#39'\\\\server\\admin\\public_html\\comm' +
      'on\\images\\gif.jpg'#39' as varchar) '#13#10'       else'#13#10'cast('#39'\\\\server' +
      '\\admin\\public_html\\dest\\'#39'+ cast(lower(ltrim(cn.countrycode))' +
      ' as varchar)+ '#39'\\images\\states\\'#39' + cast(lower(ltrim(st.stateco' +
      'de)) as varchar)+ '#39'\\logos\\'#39' + ltrim(h.logo) as varchar) '#13#10'end)' +
      #13#10'     else'#13#10'       cast('#39'\\\\server\\admin\\public_html\\common' +
      '\\images\\blank.jpg'#39' as varchar)    '#13#10'     end as logo,'#13#10'case wh' +
      'en len(ltrim(h.image1)) > 0 then'#13#10'      (case when Substring(h.I' +
      'mage1,1, 4) = '#39'.gif'#39' then'#13#10'              cast('#39'\\\\server\\admin' +
      '\\public_html\\common\\images\\gif.jpg'#39' as varchar) '#13#10'       els' +
      'e'#13#10'              cast('#39'\\\\server\\admin\\public_html\\dest\\'#39'+ ' +
      'cast(lower(ltrim(cn.countrycode)) as varchar)+'#39'\\images\\states\' +
      '\'#39' + cast(lower(ltrim(st.statecode)) as varchar)+ '#39'\\hotels\\'#39' +' +
      ' ltrim(h.image1) as varchar) '#13#10'       end)'#13#10'     else'#13#10'       ca' +
      'st('#39'\\\\server\\admin\\public_html\\common\\images\\blank.jpg'#39' a' +
      's varchar)    '#13#10'     end as image1,'#13#10'case when len(ltrim(h.image' +
      '2)) > 0 then'#13#10'      (case when Substring(h.Image2,1, 4) = '#39'.gif'#39 +
      ' then'#13#10'              cast('#39'\\\\server\\admin\\public_html\\commo' +
      'n\\images\\gif.jpg'#39' as varchar) '#13#10'       else'#13#10'              cas' +
      't('#39'\\\\server\\admin\\public_html\\dest\\'#39' + cast(lower(ltrim(cn' +
      '.countrycode)) as varchar) + '#39'\\images\\states\\'#39' + cast(lower(l' +
      'trim(st.statecode)) as varchar) + '#39'\\hotels\\'#39' + ltrim(h.image2)' +
      ' as varchar) '#13#10'       end)'#13#10'     else'#13#10'       cast('#39'\\\\server\\' +
      'admin\\public_html\\common\\images\\blank.jpg'#39' as varchar)    '#13#10 +
      '     end as image2,'#13#10'case when len(ltrim(h.image3)) > 0 then'#13#10'  ' +
      '    (case when Substring(h.Image3,1, 4) = '#39'.gif'#39' then'#13#10'         ' +
      '     cast('#39'\\\\server\\admin\\public_html\\common\\images\\gif.j' +
      'pg'#39' as varchar) '#13#10'       else'#13#10'       cast('#39'\\\\server\\admin\\p' +
      'ublic_html\\dest\\'#39' + cast(lower(ltrim(cn.countrycode)) as varch' +
      'ar) + '#39'\\images\\states\\'#39' + cast(lower(ltrim(st.statecode)) as ' +
      'varchar) + '#39'\\hotels\\'#39' + ltrim(h.image3) as varchar)        end' +
      ')'#13#10'     else'#13#10'       cast('#39'\\\\server\\admin\\public_html\\commo' +
      'n\\images\\blank.jpg'#39' as varchar)    '#13#10'     end as image3,'#13#10'case' +
      ' when len(ltrim(h.image4)) > 0 then'#13#10'      (case when Substring(' +
      'h.Image4,1, 4) = '#39'.gif'#39' then'#13#10'              cast('#39'\\\\server\\ad' +
      'min\\public_html\\common\\images\\gif.jpg'#39' as varchar) '#13#10'       ' +
      'else'#13#10'              cast('#39'\\\\server\\admin\\public_html\\dest\\' +
      #39' + cast(lower(ltrim(cn.countrycode)) as varchar) + '#39'\\images\\s' +
      'tates\\'#39' + cast(lower(ltrim(st.statecode)) as varchar) + '#39'\\hote' +
      'ls\\'#39' + ltrim(h.image4) as varchar) '#13#10'       end)'#13#10'     else'#13#10'  ' +
      '     cast('#39'\\\\server\\admin\\public_html\\common\\images\\blank' +
      '.jpg'#39' as varchar)    '#13#10'     end as image4'#13#10'from hotels h inner j' +
      'oin addressbook a '#13#10'inner join states st on st.states_id=a.state' +
      's_id'#13#10'inner join countries cn on cn.countries_id =a.countries_id' +
      #13#10'on h.addressbook_id=a.addressbook_id      '#13#10'where h.addressboo' +
      'k_id= :addressbook_id'#13#10'order by  a.organisation, a.addressbook_i' +
      'd'#13#10#13#10
    DataSource = MasterDS
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'addressbook_id'
        ParamType = ptInput
        Value = 4
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 632
    Top = 8
  end
  object ImageDsp: TDataSetProvider
    DataSet = ImageSds
    Left = 664
    Top = 8
  end
  object ImageCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'addressbook_id'
    MasterFields = 'addressbook_id'
    MasterSource = MasterDS
    PacketRecords = 0
    Params = <>
    ProviderName = 'ImageDsp'
    AfterScroll = ImageCdsAfterScroll
    Left = 696
    Top = 8
  end
  object ImageDs: TDataSource
    DataSet = ImageCds
    Left = 728
    Top = 8
  end
  object PopupMenu1: TPopupMenu
    Left = 592
    Top = 562
    object WebHotels1: TMenuItem
      Caption = 'Web Hotels'
      OnClick = WebHotels1Click
    end
  end
end
