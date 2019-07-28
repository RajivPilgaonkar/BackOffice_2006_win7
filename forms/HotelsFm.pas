unit HotelsFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomMasterFm, FMTBcd, DBClient, DB, Provider, SqlExpr,
  StdCtrls, DBCtrls, ExtCtrls, cxLookAndFeelPainters, cxButtons,
  cxControls, cxContainer, cxEdit, cxLabel, cxTextEdit, cxDBEdit, cxMemo,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxImage, cxNavigator, cxDBNavigator, Menus,
  cxGraphics, cxPC, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter;

type
  THotelsForm = class(TCustomMasterForm)
    CloseBtn: TcxButton;
    MasterCDSaddressbook_id: TIntegerField;
    MasterCDSdescription: TMemoField;
    MasterCDSimage1: TStringField;
    MasterCDSshowhotel: TBooleanField;
    MasterCDSimage2: TStringField;
    MasterCDSimage3: TStringField;
    MasterCDSimage4: TStringField;
    MasterCDSstarcategories_id: TIntegerField;
    MasterCDScuisine: TStringField;
    MasterCDSbars: TStringField;
    MasterCDSrestaurants: TStringField;
    MasterCDScheckout: TStringField;
    MasterCDSaccessrail: TStringField;
    MasterCDSaccessair: TStringField;
    MasterCDSaccessbus: TStringField;
    MasterCDSadvantage: TStringField;
    MasterCDSlogo: TStringField;
    MasterCDSrooms: TIntegerField;
    MasterCDSac: TStringField;
    MasterCDSroomfacility: TStringField;
    MasterCDSotherfacility: TStringField;
    MasterCDSservices: TStringField;
    MasterCDScreditcards: TStringField;
    MasterCDSfhra: TIntegerField;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    cxLabel12: TcxLabel;
    cxLabel13: TcxLabel;
    cxLabel14: TcxLabel;
    cxLabel15: TcxLabel;
    cxLabel16: TcxLabel;
    cxLabel17: TcxLabel;
    cxLabel18: TcxLabel;
    cxLabel19: TcxLabel;
    cxLabel21: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    HotelNameSds: TSQLDataSet;
    HotelNameDsp: TDataSetProvider;
    HotelNameCds: TClientDataSet;
    HotelNameDs: TDataSource;
    HotelNameCdsAddressbook_id: TIntegerField;
    HotelNameCdsOrganisation: TStringField;
    HotelNameCdsCity: TStringField;
    HotelNameCdsCities_id: TIntegerField;
    HotelNameCdsContact: TStringField;
    MasterCDSHotel: TStringField;
    cxDBMemo1: TcxDBMemo;
    StarLCmb: TcxDBLookupComboBox;
    StarSds: TSQLDataSet;
    StarDsp: TDataSetProvider;
    StarCds: TClientDataSet;
    StarDs: TDataSource;
    StarCdsStar: TStringField;
    StarCdsStarCategories_id: TIntegerField;
    LogoTxt: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBTextEdit8: TcxDBTextEdit;
    cxDBTextEdit9: TcxDBTextEdit;
    cxDBTextEdit10: TcxDBTextEdit;
    cxDBTextEdit11: TcxDBTextEdit;
    cxDBTextEdit12: TcxDBTextEdit;
    cxDBTextEdit13: TcxDBTextEdit;
    cxDBTextEdit14: TcxDBTextEdit;
    cxDBTextEdit15: TcxDBTextEdit;
    cxDBTextEdit16: TcxDBTextEdit;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    cxLabel20: TcxLabel;
    cxDBTextEdit17: TcxDBTextEdit;
    cxLabel22: TcxLabel;
    cxDBTextEdit18: TcxDBTextEdit;
    cxLabel23: TcxLabel;
    cxDBTextEdit19: TcxDBTextEdit;
    cxLabel24: TcxLabel;
    cxDBTextEdit20: TcxDBTextEdit;
    cxImage1: TcxImage;
    cxImage2: TcxImage;
    cxImage3: TcxImage;
    cxImage4: TcxImage;
    cxLabel25: TcxLabel;
    SearchEdit: TcxTextEdit;
    cxDBNavigator1: TcxDBNavigator;
    Panel7: TPanel;
    LogoImage: TcxImage;
    ImageSds: TSQLDataSet;
    ImageDsp: TDataSetProvider;
    ImageCds: TClientDataSet;
    ImageDs: TDataSource;
    cxButton1: TcxButton;
    PopupMenu1: TPopupMenu;
    WebHotels1: TMenuItem;
    cxButton4: TcxButton;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxDBMemo2: TcxDBMemo;
    cxDBMemo3: TcxDBMemo;
    MasterCDSWebWriteUp1: TMemoField;
    MasterCDSWebWriteUp2: TMemoField;
    cxTabSheet3: TcxTabSheet;
    MasterCDSurl: TStringField;
    MasterCDSMetatype: TMemoField;
    MasterCDSDescr: TStringField;
    MasterCDSKeywords: TStringField;
    Label2: TLabel;
    cxDBTextEdit21: TcxDBTextEdit;
    Label3: TLabel;
    cxDBTextEdit22: TcxDBTextEdit;
    Label4: TLabel;
    cxDBTextEdit23: TcxDBTextEdit;
    Label1: TLabel;
    cxDBMemo5: TcxDBMemo;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure SearchEditKeyPress(Sender: TObject; var Key: Char);
    procedure MasterCDSAfterPost(DataSet: TDataSet);
    procedure WebHotels1Click(Sender: TObject);
    procedure ImageCdsAfterScroll(DataSet: TDataSet);
    procedure MasterCDSBeforeInsert(DataSet: TDataSet);
    procedure MasterCDSAfterInsert(DataSet: TDataSet);
    procedure cxButton4Click(Sender: TObject);
    procedure MasterCDSAfterScroll(DataSet: TDataSet);
    procedure ShowPictures;
    procedure MasterCDSBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  HotelsForm: THotelsForm;
  _HotelsForm_Level : Integer;

implementation

uses SearchSortFm, RptWebHotelsFm, BackOfficeDM, GeneralUt;

{$R *.dfm}

procedure THotelsForm.FormCreate(Sender: TObject);
begin
{  MasterTblName := 'Hotels';
  MasterKeyField := 'Addressbook_id';
 } AdmLevel := _HotelsForm_Level;
  
  inherited;
  HotelNameCds.Active := False;
  HotelNameCds.Active := True;

  StarCds.Active := False;
  StarCds.Active := True;

  ImageCds.Active := False;
  ImageCds.Active := True;

  Self.Height := 635;
  Self.Width := 999;

//  MasterCDS.Locate('Addressbook_id',0,[]);

  MasterCDS.Active := False;
  MasterCDS.Filter := 'Addressbook_id = 0';
  MasterCDS.Filtered := True;
  MasterCDS.Active := True;

end;

procedure THotelsForm.FormDestroy(Sender: TObject);
begin
  inherited;
  HotelsForm := nil;
end;

procedure THotelsForm.CloseBtnClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure THotelsForm.SearchEditKeyPress(Sender: TObject; var Key: Char);
var
  i : Integer;
begin
  inherited;
  if (MasterCDS.State = dsBrowse)  then
    begin
      if Key = #13 then
        begin
          if SearchSortForm = nil then
            Application.CreateForm(TSearchSortForm, SearchSortForm);

          SearchSortForm.SearchSds.Active :=False;
          SearchSortForm.SearchSds.CommandText := '';

          SearchSortForm.SearchSds.CommandText := 'SELECT * FROM fn_Addressbook(2,''H'') ' +
             ' WHERE LOWER(Organisation) LIKE'+ '''%' + Lowercase(SearchEdit.Text) + '%'' ' +
             ' ORDER BY Organisation';

          SearchSortForm.SearchSds.Active := True;
          SearchSortForm.SearchCds.Active := True;

          for i := 0 to 4 do
            begin
              SearchSortForm.SearchGridDBTableView1.CreateColumn;
            end;

          //*=== Set the Grid Fields ===*//
          SearchSortForm.SearchGridDBTableView1.Columns[0].DataBinding.FieldName := 'Addressbook_id';
          SearchSortForm.SearchGridDBTableView1.Columns[1].DataBinding.FieldName := 'Organisation';
          SearchSortForm.SearchGridDBTableView1.Columns[2].DataBinding.FieldName := 'City';
          SearchSortForm.SearchGridDBTableView1.Columns[3].DataBinding.FieldName := 'Cities_id';
          SearchSortForm.SearchGridDBTableView1.Columns[4].DataBinding.FieldName := 'Contact';

          //*=== Set the Grid Columns' width ===*//
          SearchSortForm.SearchGridDBTableView1.Columns[0].Visible := False;
          SearchSortForm.SearchGridDBTableView1.Columns[3].Visible := False;
          SearchSortForm.SearchGridDBTableView1.Columns[4].Visible := False;
          SearchSortForm.SearchGridDBTableView1.Columns[1].Width := 250;
          SearchSortForm.SearchGridDBTableView1.Columns[2].Width := 150;

          //*=== Set the Grid Column Headers ===*//
          SearchSortForm.SearchGridDBTableView1.Columns[1].Caption := 'Organisation';
          SearchSortForm.SearchGridDBTableView1.Columns[2].Caption := 'City';

          SearchSortForm.SearchGridDBTableView1.DataController.KeyFieldNames := 'Addressbook_id';

          if (SearchSortForm.SearchCds.RecordCount = 1) then
            begin
              MasterCDS.Filtered := False;
              MasterCDS.Locate ('Addressbook_id', SearchSortForm.SearchCds['Addressbook_id'],[]);
            end
          else if not SearchSortForm.SearchCds.EOF then
            begin
              SearchSortForm.ShowModal;

              if (SearchSortForm.ModalResult = mrOK) then
                begin
                  MasterCDS.Filtered := False;
                  MasterCDS.Locate('Addressbook_id',SearchSortForm.SearchCds['Addressbook_id'],[]);
                end;

            end
          else
            Showmessage ('Not found');

          SearchSortForm.Free;
          SearchSortForm := nil;

        end;
    end;
end;

procedure THotelsForm.MasterCDSAfterPost(DataSet: TDataSet);
begin
  inherited;
  MasterCDS.ApplyUpdates(0);
end;

procedure THotelsForm.WebHotels1Click(Sender: TObject);
begin
  inherited;
  if RptWebHotelsForm = nil then
    Application.CreateForm(TRptWebHotelsForm, RptWebHotelsForm);

  RptWebHotelsForm.WebHotelsCds.Active := False;
  RptWebHotelsForm.WebHotelsCds.Active := True;

  RptWebHotelsForm.QuickRep1.PreviewModal;

  RptWebHotelsForm.Release;
  RptWebHotelsForm := nil;
end;

procedure THotelsForm.ImageCdsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if ImageCds.Eof then exit;

  {logo}
  if FileExists(ImageCds['logo']) = True  then
     LogoImage.Picture.LoadFromFile(ImageCds['logo']);

  if LogoImage.Picture.Height > 85 then
    LogoImage.Properties.Stretch := True
  else
    LogoImage.Properties.Stretch := False;

  if LogoImage.Picture.Width > 100 then
    LogoImage.Properties.Stretch := True
  else
    LogoImage.Properties.Stretch := False;

  {Images 1}
  if FileExists(ImageCds['image1']) = true then
    cxImage1.Picture.LoadFromFile(ImageCds['image1']);

  if cxImage1.Picture.Height >104 then
    cxImage1.Properties.Stretch := True
  else
    cxImage1.Properties.Stretch := False;

  if cxImage1.Picture.Width >200 then
    cxImage1.Properties.Stretch := True
  else
    cxImage1.Properties.Stretch := False;

  {Images 2}
  if FileExists(ImageCds['image2']) = true then
     cxImage2.Picture.LoadFromFile(ImageCds['image2']);

  if cxImage2.Picture.Height >104 then
    cxImage2.Properties.Stretch := True
  else
    cxImage2.Properties.Stretch := False;

  if cxImage2.Picture.Width >200 then
    cxImage2.Properties.Stretch := True
  else
    cxImage2.Properties.Stretch := False;

  {Images 3}
  if FileExists(ImageCds['image3']) = true then
     cxImage3.Picture.LoadFromFile(ImageCds['image3']);

  if cxImage3.Picture.Height >104 then
    cxImage3.Properties.Stretch := True
  else
    cxImage3.Properties.Stretch := False;

  if cxImage3.Picture.Width >200 then
    cxImage3.Properties.Stretch := True
  else
    cxImage3.Properties.Stretch := False;

  {Images 4}
  if FileExists(ImageCds['image4']) = true then
    cxImage4.Picture.LoadFromFile(ImageCds['image4']);

  if cxImage4.Picture.Height >104 then
    cxImage4.Properties.Stretch := True
  else
    cxImage4.Properties.Stretch := False;

  if cxImage4.Picture.Width >200 then
    cxImage4.Properties.Stretch := True
  else
    cxImage4.Properties.Stretch := False;

end;

procedure THotelsForm.MasterCDSBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  Raise Exception.Create('Please enter the details in the Addressbook');
end;

procedure THotelsForm.MasterCDSAfterInsert(DataSet: TDataSet);
begin
  inherited;
  MasterCDS['starcategories_id'] := 0;
end;

procedure THotelsForm.cxButton4Click(Sender: TObject);
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

  MasterCds.Active := False;
  MasterCds.Active := True;

  HotelNameCds.Active := False;
  HotelNameCds.Active := True;

  ShowMessage('Updated');
end;

procedure THotelsForm.MasterCDSAfterScroll(DataSet: TDataSet);
begin
  inherited;
  ShowPictures;
end;

procedure THotelsForm.ShowPictures;
var
  x_file_path0, x_file_path: string;
begin

//  x_file_path0 := ExtractFilePath(Application.ExeName);
  x_file_path0 := GetServerImagePath;

  if MasterCds['Addressbook_id'] <> null then
    begin
      x_file_path := x_file_path0 + 'hotel_' + IntToStr(MasterCds['Addressbook_id']) + '_01.jpg';
      if FileExists(x_file_path) then
        cxImage1.Picture.LoadFromFile(x_file_path)
      else
        cxImage1.Picture := nil;

      x_file_path := x_file_path0 + 'hotel_' + IntToStr(MasterCds['Addressbook_id']) + '_02.jpg';
      if FileExists(x_file_path) then
        cxImage2.Picture.LoadFromFile(x_file_path)
      else
        cxImage2.Picture := nil;

      x_file_path := x_file_path0 + 'hotel_' + IntToStr(MasterCds['Addressbook_id']) + '_03.jpg';
      if FileExists(x_file_path) then
        cxImage3.Picture.LoadFromFile(x_file_path)
      else
        cxImage3.Picture := nil;

      x_file_path := x_file_path0 + 'hotel_' + IntToStr(MasterCds['Addressbook_id']) + '_04.jpg';
      if FileExists(x_file_path) then
        cxImage4.Picture.LoadFromFile(x_file_path)
      else
        cxImage4.Picture := nil;

    end;

end;


procedure THotelsForm.MasterCDSBeforePost(DataSet: TDataSet);
begin
  inherited;

  if MasterCds['Hotel'] <> null then
    begin
      if (MasterCds['url'] = null) or (trim(MasterCds['url']) = '') then
        MasterCds['url'] := GetNextUrlString(GetUrlString(MasterCds['Hotel']), 1);
        
    end;

end;

end.
