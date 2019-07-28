unit HotelFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Custom_1ML_Fm, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, FMTBcd, DB, DBClient,
  Provider, SqlExpr, cxPC, cxControls, cxContainer, cxEdit, cxLabel,
  cxDBLabel, StdCtrls, cxButtons, ExtCtrls, cxGraphics, cxDBEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxTextEdit, cxMemo, cxImage, cxCheckBox, cxNavigator,
  cxDBNavigator, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid;

type
  THotelForm = class(TCustom_1ML_Form)
    MasterCdsaddressbook_id: TIntegerField;
    MasterCdsdescription: TMemoField;
    MasterCdsimage1: TStringField;
    MasterCdsshowhotel: TBooleanField;
    MasterCdsimage2: TStringField;
    MasterCdsimage3: TStringField;
    MasterCdsimage4: TStringField;
    MasterCdsstarcategories_id: TIntegerField;
    MasterCdscuisine: TStringField;
    MasterCdsbars: TStringField;
    MasterCdsrestaurants: TStringField;
    MasterCdscheckout: TStringField;
    MasterCdsaccessrail: TStringField;
    MasterCdsaccessair: TStringField;
    MasterCdsaccessbus: TStringField;
    MasterCdsadvantage: TStringField;
    MasterCdslogo: TStringField;
    MasterCdsrooms: TIntegerField;
    MasterCdsac: TStringField;
    MasterCdsroomfacility: TStringField;
    MasterCdsotherfacility: TStringField;
    MasterCdsservices: TStringField;
    MasterCdscreditcards: TStringField;
    MasterCdsfhra: TIntegerField;
    MasterCdsWebWriteUp1: TMemoField;
    MasterCdsWebWriteUp2: TMemoField;
    MasterCdsurl: TStringField;
    MasterCdsMetatype: TMemoField;
    MasterCdsDescr: TStringField;
    MasterCdsKeywords: TStringField;
    HotelSds: TSQLDataSet;
    HotelDsp: TDataSetProvider;
    HotelCds: TClientDataSet;
    HotelDs: TDataSource;
    HotelCdsAddressbook_id: TIntegerField;
    HotelCdsOrg: TStringField;
    MasterCdsHotelLookup: TStringField;
    Panel4: TPanel;
    Splitter2: TSplitter;
    Panel5: TPanel;
    Label1: TLabel;
    cxDBLabel1: TcxDBLabel;
    Label2: TLabel;
    cxDBMemo1: TcxDBMemo;
    Label15: TLabel;
    cxDBLookupComboBox4: TcxDBLookupComboBox;
    Label9: TLabel;
    cxDBTextEdit7: TcxDBTextEdit;
    Label10: TLabel;
    cxDBTextEdit8: TcxDBTextEdit;
    Label11: TLabel;
    cxDBTextEdit10: TcxDBTextEdit;
    Label12: TLabel;
    cxDBTextEdit11: TcxDBTextEdit;
    Label13: TLabel;
    cxDBTextEdit12: TcxDBTextEdit;
    Label14: TLabel;
    cxDBTextEdit13: TcxDBTextEdit;
    Label16: TLabel;
    cxDBTextEdit14: TcxDBTextEdit;
    cxPageControl2: TcxPageControl;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    cxDisplayPicturesCkb: TcxCheckBox;
    cxImage1: TcxImage;
    cxTabSheet4: TcxTabSheet;
    Label4: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label5: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    StarSds: TSQLDataSet;
    StarDsp: TDataSetProvider;
    StarCds: TClientDataSet;
    StarCdsStar: TStringField;
    StarCdsStarCategories_id: TIntegerField;
    StarDs: TDataSource;
    cxDBMemo2: TcxDBMemo;
    cxDBMemo3: TcxDBMemo;
    Label22: TLabel;
    cxDBTextEdit19: TcxDBTextEdit;
    cxSearchEdit: TcxTextEdit;
    cxLabel1: TcxLabel;
    cxImage5: TcxImage;
    Label23: TLabel;
    cxDBTextEdit20: TcxDBTextEdit;
    UpdateHotels1: TMenuItem;
    N1: TMenuItem;
    WebHotelsReport1: TMenuItem;
    Label24: TLabel;
    cxDBTextEdit21: TcxDBTextEdit;
    Label25: TLabel;
    cxDBTextEdit22: TcxDBTextEdit;
    Label26: TLabel;
    cxDBTextEdit23: TcxDBTextEdit;
    Label27: TLabel;
    cxDBMemo5: TcxDBMemo;
    cxImage2: TcxImage;
    cxImage3: TcxImage;
    cxImage4: TcxImage;
    MasterCdsDisplay: TBooleanField;
    cxDBCheckBox1: TcxDBCheckBox;
    MasterCdsCheckIn: TStringField;
    MasterCdsChildExtraBed: TMemoField;
    MasterCdsPets: TStringField;
    MasterCdsBedroom: TStringField;
    MasterCdsHotelView: TStringField;
    MasterCdsOutdoors: TStringField;
    MasterCdsAmenities: TStringField;
    MasterCdsLivingArea: TStringField;
    MasterCdsMedia: TStringField;
    MasterCdsFood: TMemoField;
    MasterCdsInternet: TStringField;
    MasterCdsParking: TStringField;
    MasterCdsHotelServices: TMemoField;
    MasterCdsGeneral: TMemoField;
    Label28: TLabel;
    cxDBTextEdit24: TcxDBTextEdit;
    Label3: TLabel;
    cxDBMemo4: TcxDBMemo;
    cxTabSheet5: TcxTabSheet;
    Label18: TLabel;
    cxDBTextEdit15: TcxDBTextEdit;
    Label19: TLabel;
    cxDBTextEdit16: TcxDBTextEdit;
    Label20: TLabel;
    cxDBTextEdit17: TcxDBTextEdit;
    Label21: TLabel;
    cxDBTextEdit18: TcxDBTextEdit;
    Label6: TLabel;
    cxDBMemo6: TcxDBMemo;
    Label7: TLabel;
    cxDBMemo7: TcxDBMemo;
    Label8: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label17: TLabel;
    MasterCdsActivities: TStringField;
    Label29: TLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    Label30: TLabel;
    cxDBTextEdit6: TcxDBTextEdit;
    cxTabSheet6: TcxTabSheet;
    MasterCdsChk_BF_Incl: TBooleanField;
    MasterCdsChk_Board: TBooleanField;
    MasterCdsChk_ChildFree: TIntegerField;
    MasterCdsChk_Restaurant: TBooleanField;
    MasterCdsChk_Bar: TBooleanField;
    MasterCdsChk_BusiCentre: TBooleanField;
    MasterCdsChk_Parking: TBooleanField;
    MasterCdsChk_Swim: TBooleanField;
    MasterCdsChk_Laundry: TBooleanField;
    MasterCdsChk_Fitness: TBooleanField;
    MasterCdsChk_Sauna: TBooleanField;
    MasterCdsChk_AC: TBooleanField;
    MasterCdsChk_Heating: TBooleanField;
    MasterCdsChk_Wifi: TBooleanField;
    MasterCdsChk_MiniBar: TBooleanField;
    MasterCdsChk_Phone: TBooleanField;
    MasterCdsChk_Security: TBooleanField;
    MasterCdsChk_Smoke: TBooleanField;
    MasterCdsChk_Cable: TBooleanField;
    cxDBCheckBox2: TcxDBCheckBox;
    cxDBCheckBox3: TcxDBCheckBox;
    cxDBTextEdit9: TcxDBTextEdit;
    cxLabel2: TcxLabel;
    cxDBCheckBox4: TcxDBCheckBox;
    cxDBCheckBox5: TcxDBCheckBox;
    cxDBCheckBox6: TcxDBCheckBox;
    cxDBCheckBox7: TcxDBCheckBox;
    cxDBCheckBox8: TcxDBCheckBox;
    cxDBCheckBox9: TcxDBCheckBox;
    cxDBCheckBox10: TcxDBCheckBox;
    cxDBCheckBox11: TcxDBCheckBox;
    cxDBCheckBox12: TcxDBCheckBox;
    cxDBCheckBox13: TcxDBCheckBox;
    cxDBCheckBox14: TcxDBCheckBox;
    cxDBCheckBox15: TcxDBCheckBox;
    cxDBCheckBox16: TcxDBCheckBox;
    cxDBCheckBox17: TcxDBCheckBox;
    cxDBCheckBox18: TcxDBCheckBox;
    cxDBCheckBox19: TcxDBCheckBox;
    cxDBMemo8: TcxDBMemo;
    cxTabSheet7: TcxTabSheet;
    RoomTypesSds: TSQLDataSet;
    RoomTypesDsp: TDataSetProvider;
    RoomTypesCds: TClientDataSet;
    RoomTypesDs: TDataSource;
    RoomTypesCdsAddressbook_id: TIntegerField;
    RoomTypesCdsRoomTypes_id: TIntegerField;
    RoomTypesCdsRoomType: TStringField;
    RoomTypesCdsAC: TBooleanField;
    cxGrid2: TcxGrid;
    cxGridDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridLevel1: TcxGridLevel;
    cxGridDBBandedTableView1Addressbook_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1RoomTypes_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1RoomType: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1AC: TcxGridDBBandedColumn;
    UsersSds: TSQLDataSet;
    UsersDsp: TDataSetProvider;
    UsersCds: TClientDataSet;
    UsersCdsAdmUsers_id: TIntegerField;
    UsersCdsuid: TStringField;
    UsersDs: TDataSource;
    MasterCdsModifiedByUsers_id: TIntegerField;
    MasterCdsModifiedOn: TSQLTimeStampField;
    MasterCdsModifiedByUser: TStringField;
    Label31: TLabel;
    cxDBLabel2: TcxDBLabel;
    Label32: TLabel;
    cxDBLabel3: TcxDBLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure MasterCdsAfterInsert(DataSet: TDataSet);
    procedure MasterCdsAfterScroll(DataSet: TDataSet);
    procedure cxDisplayPicturesCkbPropertiesEditValueChanged(
      Sender: TObject);
    procedure cxSearchEditKeyPress(Sender: TObject; var Key: Char);
    procedure UpdateHotels1Click(Sender: TObject);
    procedure WebHotelsReport1Click(Sender: TObject);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    procedure ActivateInCustom;
    procedure ShowPictures;
  public
    { Public declarations }
  end;

var
  HotelForm: THotelForm;
  HotelForm_level: integer;
  HotelForm_DisplayImage: boolean;
  HotelForm_ImagePath: string;

implementation

uses BackOfficeDM, SearchSortFm, GeneralUt, RptWebHotelsFm, MainFm;

{$R *.dfm}

procedure THotelForm.FormCreate(Sender: TObject);
begin

  Panel1.Visible := False;

  ActivateInCustom;

  MasterSds.Params[0].Value := -1;

  inherited;

  HotelCds.Open;
  StarCds.Open;
  RoomTypesCds.Open;
  UsersCds.Open;

  cxPageControl2.ActivePageIndex := 4;

  HotelForm_ImagePath := GetServerImagePath;

  HotelForm_DisplayImage := false;
  if DirectoryExists(HotelForm_ImagePath) then
    HotelForm_DisplayImage := true;

end;

procedure THotelForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure THotelForm.FormDestroy(Sender: TObject);
begin
  inherited;
  HotelForm := nil;
end;

procedure THotelForm.ActivateInCustom;
begin
  Custom_MasterCdsName := 'Addressbook';
  Custom_MasterKeyField := 'Addressbook_id';
  Custom_AdmLevel := HotelForm_level;

  Custom_FormWidth := 1215;
  Custom_FormHeight := 670;

  Width := Custom_FormWidth;
  Height := Custom_FormHeight;

end;


procedure THotelForm.FormActivate(Sender: TObject);
begin
  inherited;
  ActivateInCustom;
end;

procedure THotelForm.MasterCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  MasterCds['StarCategories_id'] := 0;
end;

procedure THotelForm.ShowPictures;
var
  x_file_path: string;
begin

  if not HotelForm_DisplayImage then
    exit;

  if MasterCds['Addressbook_id'] <> null then
    begin

      x_file_path := HotelForm_ImagePath + 'hotel_' + IntToStr(MasterCds['Addressbook_id']) + '_01.jpg';

      if FileExists(x_file_path) then
        cxImage1.Picture.LoadFromFile(x_file_path)
      else
        cxImage1.Picture := nil;

      x_file_path := HotelForm_ImagePath + 'hotel_' + IntToStr(MasterCds['Addressbook_id']) + '_02.jpg';

      if FileExists(x_file_path) then
        cxImage2.Picture.LoadFromFile(x_file_path)
      else
        cxImage2.Picture := nil;

      x_file_path := HotelForm_ImagePath + 'hotel_' + IntToStr(MasterCds['Addressbook_id']) + '_03.jpg';

      if FileExists(x_file_path) then
        cxImage3.Picture.LoadFromFile(x_file_path)
      else
        cxImage3.Picture := nil;

      x_file_path := HotelForm_ImagePath + 'hotel_' + IntToStr(MasterCds['Addressbook_id']) + '_04.jpg';

      if FileExists(x_file_path) then
        cxImage4.Picture.LoadFromFile(x_file_path)
      else
        cxImage4.Picture := nil;

    end;

end;


procedure THotelForm.MasterCdsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if HotelForm_DisplayImage then
    ShowPictures;

end;

procedure THotelForm.cxDisplayPicturesCkbPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  if (cxDisplayPicturesCkb.Checked) and (DirectoryExists(HotelForm_ImagePath)) then
    HotelForm_DisplayImage := true
  else
    HotelForm_DisplayImage := false;

end;

procedure THotelForm.cxSearchEditKeyPress(Sender: TObject;
  var Key: Char);
var
  i: integer;
  x_Checked: boolean;
begin

  if ((key <> #13) or (length(trim(cxSearchEdit.Text)) = 0)) then
    exit;

  if SearchSortForm = nil then
    Application.CreateForm(TSearchSortForm, SearchSortForm);

  SearchSortForm.SearchCds.Close;
  SearchSortForm.SearchSds.Close;

  SearchSortForm.SearchSds.CommandText :=
    'SELECT * FROM fn_Addressbook(2,''H'') ' +
    ' WHERE LOWER(Organisation) LIKE'+ '''%' + Lowercase(cxSearchEdit.Text) + '%'' ' +
    ' ORDER BY Organisation';

  SearchSortForm.SearchSds.Open;
  SearchSortForm.SearchCds.Open;

  for i := 0 to 4 do
    SearchSortForm.SearchGridDBTableView1.CreateColumn;

  //*=== Set the Grid Fields ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].DataBinding.FieldName := 'Addressbook_id';
  SearchSortForm.SearchGridDBTableView1.Columns[1].DataBinding.FieldName := 'Organisation';
  SearchSortForm.SearchGridDBTableView1.Columns[2].DataBinding.FieldName := 'City';
  SearchSortForm.SearchGridDBTableView1.Columns[3].DataBinding.FieldName := 'Cities_id';
  SearchSortForm.SearchGridDBTableView1.Columns[4].DataBinding.FieldName := 'Contact';

  //*=== Set the Grid Columns' width ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].Visible := false;
  SearchSortForm.SearchGridDBTableView1.Columns[1].Width := 250;
  SearchSortForm.SearchGridDBTableView1.Columns[2].Width := 150;
  SearchSortForm.SearchGridDBTableView1.Columns[3].Visible := false;
  SearchSortForm.SearchGridDBTableView1.Columns[4].Visible := false;

  //*=== Set the Grid Column Headers ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[1].Caption := 'Hotel';
  SearchSortForm.SearchGridDBTableView1.Columns[2].Caption := 'City';

  SearchSortForm.SearchGridDBTableView1.DataController.KeyFieldNames := 'Addressbook_id';

  if not SearchSortForm.SearchCds.EOF then
    begin

      SearchSortForm.ShowModal;

      if (SearchSortForm.ModalResult = mrOK) then
        begin
          x_Checked := cxDisplayPicturesCkb.Checked;
          cxDisplayPicturesCkb.Checked := false;

          MasterCds.Active := false;
          MasterSds.Active := false;
          MasterSds.Params[0].Value := SearchSortForm.SearchCds['Addressbook_id'];
          MasterSds.Active := true;
          MasterCds.Active := true;

          MasterCds.Active := false;
          MasterSds.Active := false;
          MasterSds.Params[0].Value := SearchSortForm.SearchCds['Addressbook_id'];
          MasterSds.Active := true;
          MasterCds.Active := true;

          cxDisplayPicturesCkb.Checked := x_Checked;
          ShowPictures;
        end;
    end
  else
    ShowMessage('Record not found');

  SearchSortForm.Free;
  SearchSortForm := nil;


end;

procedure THotelForm.UpdateHotels1Click(Sender: TObject);
var
  GpSds : TSQLDataSet;
  QueryString: string;
begin
  inherited;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  QueryString := 'EXEC p_InsertHotels ';

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  GpSds.Free;

  MasterCds.Active := false;
  MasterCds.Active := true;

  HotelCds.Close;
  HotelCds.Open;  

  ShowMessage('Updated');

end;

procedure THotelForm.WebHotelsReport1Click(Sender: TObject);
begin

  if RptWebHotelsForm = nil then
    Application.CreateForm(TRptWebHotelsForm, RptWebHotelsForm);

  RptWebHotelsForm.WebHotelsCds.Active := False;
  RptWebHotelsForm.WebHotelsCds.Active := True;

  RptWebHotelsForm.QuickRep1.PreviewModal;

  RptWebHotelsForm.Release;
  RptWebHotelsForm := nil;

end;

procedure THotelForm.MasterCdsBeforePost(DataSet: TDataSet);
begin

  if MasterCds['HotelLookup'] <> null then
    begin
      if (MasterCds['url'] = null) or (trim(MasterCds['url']) = '') then
        MasterCds['url'] := GetNextUrlString(GetUrlString(MasterCds['HotelLookup']), 1);

    end;

  MasterCds['ModifiedByUsers_id'] := g_users_id;
  MasterCds['ModifiedOn'] := Date;

  inherited;
  
end;

end.
