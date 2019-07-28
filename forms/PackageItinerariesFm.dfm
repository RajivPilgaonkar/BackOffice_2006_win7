inherited PackageItinerariesForm: TPackageItinerariesForm
  Left = 297
  Top = 114
  Width = 863
  Height = 589
  Caption = 'Package Itineraries'
  OldCreateOrder = True
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited GroupBox1: TcxGroupBox
    Height = 469
    Width = 847
    inherited CustomMasterCxGrid: TcxGrid
      Width = 841
      Height = 303
      Align = alTop
      inherited CustomMasterCxGridDBTableView1: TcxGridDBTableView
        DataController.KeyFieldNames = 'PackageItineraries_id'
        OptionsView.Indicator = True
        Styles.Background = nil
        Styles.Header = nil
        object CustomMasterCxGridDBTableView1PackageItineraries_id: TcxGridDBColumn
          DataBinding.FieldName = 'PackageItineraries_id'
          Visible = False
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Options.Sorting = False
        end
        object CustomMasterCxGridDBTableView1Packages_id: TcxGridDBColumn
          DataBinding.FieldName = 'Packages_id'
          Visible = False
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Options.Sorting = False
        end
        object CustomMasterCxGridDBTableView1DayNo: TcxGridDBColumn
          Caption = 'Day No'
          DataBinding.FieldName = 'DayNo'
          Options.Filtering = False
          Options.Grouping = False
          SortIndex = 0
          SortOrder = soAscending
          Width = 55
        end
        object CustomMasterCxGridDBTableView1City: TcxGridDBColumn
          DataBinding.FieldName = 'City'
          Options.Filtering = False
          Options.Grouping = False
          Options.Sorting = False
          Width = 158
        end
        object CustomMasterCxGridDBTableView1Hotel: TcxGridDBColumn
          DataBinding.FieldName = 'Hotel'
          Options.Filtering = False
          Options.Grouping = False
          Options.Sorting = False
          Width = 405
        end
      end
    end
    object cxGroupBox2: TcxGroupBox
      Left = 3
      Top = 321
      Align = alClient
      Caption = 'Inclusions'
      TabOrder = 1
      Height = 145
      Width = 841
      object cxDBMemo1: TcxDBMemo
        Left = 3
        Top = 18
        Align = alClient
        DataBinding.DataField = 'Itinerary'
        DataBinding.DataSource = MasterDS
        TabOrder = 0
        Height = 124
        Width = 835
      end
    end
  end
  inherited Panel1: TPanel
    Top = 510
    Width = 847
    inherited KeyIdDbText: TDBText
      Left = 686
      Top = 14
      DataField = 'PackageItineraries_id'
    end
    inherited SearchLbl: TcxLabel
      Visible = False
    end
    inherited SearchEdit: TcxTextEdit
      Visible = False
    end
    inherited CloseBtn: TcxButton
      Left = 768
    end
  end
  inherited Panel2: TPanel
    Width = 847
    object cxDBLabel1: TcxDBLabel
      Left = 48
      Top = 8
      DataBinding.DataField = 'package'
      DataBinding.DataSource = PackagesForm.MasterDS
      Transparent = True
      Height = 21
      Width = 505
    end
  end
  inherited MasterSDS: TSQLDataSet
    CommandText = 
      'SELECT * FROM PackageItineraries WHERE Packages_id = :Packages_i' +
      'd'
    CommandType = ctQuery
    DataSource = PackagesForm.MasterDS
    Params = <
      item
        DataType = ftInteger
        Name = 'packages_id'
        ParamType = ptInput
        Size = 4
      end>
  end
  inherited MasterCds: TClientDataSet
    IndexFieldNames = 'Packages_id'
    MasterFields = 'packages_id'
    MasterSource = PackagesForm.MasterDS
    PacketRecords = 0
    AfterInsert = MasterCdsAfterInsert
    object MasterCdsPackageItineraries_id: TIntegerField
      FieldName = 'PackageItineraries_id'
    end
    object MasterCdsPackages_id: TIntegerField
      FieldName = 'Packages_id'
    end
    object MasterCdsDayNo: TIntegerField
      FieldName = 'DayNo'
    end
    object MasterCdsCity: TStringField
      FieldName = 'City'
      Size = 50
    end
    object MasterCdsHotel: TStringField
      FieldName = 'Hotel'
      Size = 50
    end
    object MasterCdsItinerary: TStringField
      FieldName = 'Itinerary'
      Size = 256
    end
  end
end
