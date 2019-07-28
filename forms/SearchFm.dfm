object SearchForm: TSearchForm
  Left = 198
  Top = 154
  Width = 561
  Height = 298
  Caption = 'Search Form'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object SrchEF: TEdit
    Left = 7
    Top = 1
    Width = 121
    Height = 21
    Color = clInfoBk
    TabOrder = 0
    OnKeyPress = SrchEFKeyPress
  end
  object QryGrid: TDBGrid
    Left = 6
    Top = 25
    Width = 539
    Height = 193
    TabStop = False
    Color = clInfoBk
    DataSource = SearchDS
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -10
    Font.Name = 'Bookman Old Style'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnKeyPress = QryGridKeyPress
  end
  object Panel1: TPanel
    Left = 0
    Top = 223
    Width = 553
    Height = 41
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 2
    object OkBB: TBitBtn
      Left = 416
      Top = 8
      Width = 75
      Height = 25
      Caption = 'OK'
      ModalResult = 1
      TabOrder = 0
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object CancelBB: TBitBtn
      Left = 52
      Top = 8
      Width = 75
      Height = 25
      TabOrder = 1
      Kind = bkCancel
    end
  end
  object SearchDS: TDataSource
    DataSet = SearchCDS
    Left = 392
    Top = 80
  end
  object SearchCDS: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'invoices_id'
        DataType = ftInteger
      end
      item
        Name = 'invoiceno'
        DataType = ftInteger
      end
      item
        Name = 'yearref'
        DataType = ftInteger
      end
      item
        Name = 'addressbook_id'
        DataType = ftInteger
      end
      item
        Name = 'tourcode'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'tourdate'
        DataType = ftTimeStamp
      end
      item
        Name = 'invoicedate'
        DataType = ftTimeStamp
      end
      item
        Name = 'note'
        DataType = ftMemo
      end
      item
        Name = 'credit'
        DataType = ftInteger
      end
      item
        Name = 'divisions_id'
        DataType = ftInteger
      end
      item
        Name = 'fit'
        DataType = ftBoolean
      end
      item
        Name = 'companies_id'
        DataType = ftInteger
      end
      item
        Name = 'taxes_id'
        DataType = ftInteger
      end
      item
        Name = 'taxamount'
        DataType = ftBCD
        Precision = 10
        Size = 2
      end
      item
        Name = 'taxpercentage'
        DataType = ftBCD
        Precision = 5
        Size = 4
      end
      item
        Name = 'invoicetypes_id'
        DataType = ftInteger
      end
      item
        Name = 'currencies_id'
        DataType = ftInteger
      end
      item
        Name = 'offices_id'
        DataType = ftInteger
      end
      item
        Name = 'exchangerate'
        DataType = ftBCD
        Precision = 10
        Size = 4
      end
      item
        Name = 'years_id'
        DataType = ftInteger
      end
      item
        Name = 'months_id'
        DataType = ftInteger
      end
      item
        Name = 'tl_type'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'SearchDSP'
    StoreDefs = True
    Left = 424
    Top = 80
  end
  object SearchDSP: TDataSetProvider
    DataSet = SearchQry
    Left = 456
    Top = 80
  end
  object SearchQry: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      ''
      '')
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 488
    Top = 80
  end
end
