object CustomListForm: TCustomListForm
  Left = 259
  Top = 100
  Width = 502
  Height = 388
  Caption = 'Custom List'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object TopPanel: TPanel
    Left = 0
    Top = 0
    Width = 494
    Height = 8
    Align = alTop
    AutoSize = True
    TabOrder = 0
  end
  object MiddlePanel: TPanel
    Left = 0
    Top = 8
    Width = 494
    Height = 353
    Align = alClient
    AutoSize = True
    TabOrder = 1
    object DBNavigator1: TDBNavigator
      Left = 267
      Top = 326
      Width = 225
      Height = 25
      DataSource = MasterDS
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
      Flat = True
      Hints.Strings = (
        'First record'
        'Prior record'
        'Next record'
        'Last record'
        'Insert record'
        'Delete record'
        'Edit record'
        'Post edit'
        'Cancel edit')
      TabOrder = 0
    end
  end
  object MasterTbl: TTable
    BeforePost = MasterTblBeforePost
    AutoRefresh = True
    DatabaseName = 'Guala_Accounts_2004_DSN'
    Left = 240
    Top = 232
  end
  object MasterDS: TDataSource
    DataSet = MasterTbl
    Left = 200
    Top = 224
  end
end
