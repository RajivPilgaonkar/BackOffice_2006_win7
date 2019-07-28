unit Image2Fm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, cxPC,
  cxControls, ExtCtrls, Menus, cxLookAndFeelPainters, FMTBcd, cxGraphics,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, StdCtrls, DB, DBClient, Provider, SqlExpr, cxButtons,
  cxTextEdit, cxContainer, cxEdit, cxLabel, DBCtrls, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, jpeg, cxImage, OleCtrls, SHDocVw;

type
  TImage2Form = class(TForm)
    Panel3: TPanel;
    cxPageControl1: TcxPageControl;
    cxTabSheetCity: TcxTabSheet;
    Panel4: TPanel;
    cxTabSheetState: TcxTabSheet;
    cxTabSheetHotel: TcxTabSheet;
    cxTabSheetModule: TcxTabSheet;
    cxTabSheetReadyTour: TcxTabSheet;
    Panel1: TPanel;
    KeyIdDbText: TDBText;
    CloseBtn: TcxButton;
    Panel2: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    MasterSDS: TSQLDataSet;
    DataSetProvider: TDataSetProvider;
    MasterCds: TClientDataSet;
    MasterCdsimages_id: TIntegerField;
    MasterCdsImageName: TStringField;
    MasterCdsTitle: TStringField;
    MasterCdsAltTag: TStringField;
    MasterCdsSrNo: TIntegerField;
    MasterCdsImageCategories_id: TIntegerField;
    MasterCdsFileSize: TIntegerField;
    MasterCdsImageObjectId: TIntegerField;
    MasterCdsImageTypes_id: TIntegerField;
    MasterDS: TDataSource;
    Label1: TLabel;
    cxCityLCMB: TcxLookupComboBox;
    Label2: TLabel;
    cxStateLCMB: TcxLookupComboBox;
    Label4: TLabel;
    cxCityOfHotelLCMB: TcxLookupComboBox;
    Label5: TLabel;
    cxHotelLCMB: TcxLookupComboBox;
    Label3: TLabel;
    cxModuleLCMB: TcxLookupComboBox;
    Label6: TLabel;
    cxReadyTourLCMB: TcxLookupComboBox;
    CitiesSds: TSQLDataSet;
    CitiesDsp: TDataSetProvider;
    CitiesDs: TDataSource;
    CitiesCds: TClientDataSet;
    CitiesCdscity: TStringField;
    CitiesCdscities_id: TIntegerField;
    StatesSds: TSQLDataSet;
    StatesDsp: TDataSetProvider;
    StatesDs: TDataSource;
    StatesCds: TClientDataSet;
    StatesCdsstate: TStringField;
    StatesCdsstates_id: TIntegerField;
    HotelSds: TSQLDataSet;
    HotelDsp: TDataSetProvider;
    HotelCds: TClientDataSet;
    HotelCdsAddressbook_id: TIntegerField;
    HotelCdsOrganisation: TStringField;
    HotelCdsCity: TStringField;
    HotelCdsCities_id: TIntegerField;
    HotelCdsContact: TStringField;
    HotelDs: TDataSource;
    ModulesSds: TSQLDataSet;
    ModulesDsp: TDataSetProvider;
    ModulesDs: TDataSource;
    ModulesCds: TClientDataSet;
    ModulesCdsFixedItin_id: TIntegerField;
    ModulesCdsTitle: TStringField;
    ReadyToursSds: TSQLDataSet;
    ReadyToursDsp: TDataSetProvider;
    ReadyToursDs: TDataSource;
    ReadyToursCds: TClientDataSet;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    cxCityGrid: TcxGrid;
    cxCityGridDBTableView1: TcxGridDBTableView;
    cxCityGridDBTableView1images_id: TcxGridDBColumn;
    cxCityGridDBTableView1SrNo: TcxGridDBColumn;
    cxCityGridDBTableView1ImageName: TcxGridDBColumn;
    cxCityGridDBTableView1Title: TcxGridDBColumn;
    cxCityGridDBTableView1AltTag: TcxGridDBColumn;
    cxCityGridLevel1: TcxGridLevel;
    cxStateGrid: TcxGrid;
    cxStateGridDBTableView1: TcxGridDBTableView;
    cxStateGridDBTableView1Images_id: TcxGridDBColumn;
    cxStateGridDBTableView1SrNo: TcxGridDBColumn;
    cxStateGridDBTableView1ImageName: TcxGridDBColumn;
    cxStateGridDBTableView1Title: TcxGridDBColumn;
    cxStateGridDBTableView1AltTag: TcxGridDBColumn;
    cxStateGridLevel1: TcxGridLevel;
    cxHotelGrid: TcxGrid;
    cxHotelGridDBTableView1: TcxGridDBTableView;
    cxHotelGridDBTableView1Images_id: TcxGridDBColumn;
    cxHotelGridDBTableView1SrNo: TcxGridDBColumn;
    cxHotelGridDBTableView1ImageName: TcxGridDBColumn;
    cxHotelGridDBTableView1Title: TcxGridDBColumn;
    cxHotelGridDBTableView1AltTag: TcxGridDBColumn;
    cxHotelGridLevel1: TcxGridLevel;
    cxModuleGrid: TcxGrid;
    cxModuleGridDBTableView1: TcxGridDBTableView;
    cxModuleGridDBTableView1Images_id: TcxGridDBColumn;
    cxModuleGridDBTableView1SrNo: TcxGridDBColumn;
    cxModuleGridDBTableView1ImageName: TcxGridDBColumn;
    cxModuleGridDBTableView1Title: TcxGridDBColumn;
    cxModuleGridDBTableView1AltTag: TcxGridDBColumn;
    cxModuleGridLevel1: TcxGridLevel;
    cxReadyTourGrid: TcxGrid;
    cxReadyTourGridDBTableView1: TcxGridDBTableView;
    cxReadyTourGridDBTableView1Images_id: TcxGridDBColumn;
    cxReadyTourGridDBTableView1SrNo: TcxGridDBColumn;
    cxReadyTourGridDBTableView1ImageName: TcxGridDBColumn;
    cxReadyTourGridDBTableView1Title: TcxGridDBColumn;
    cxReadyTourGridDBTableView1AltTag: TcxGridDBColumn;
    cxReadyTourGridLevel1: TcxGridLevel;
    Panel8: TPanel;
    Image: TImage;
    WebBrowser: TWebBrowser;
    cxTabSheetWebPage: TcxTabSheet;
    WebPageSds: TSQLDataSet;
    WebPageDsp: TDataSetProvider;
    WebPageDs: TDataSource;
    WebPageCds: TClientDataSet;
    WebPageCdsWebPages_id: TIntegerField;
    WebPageCdsPageName: TStringField;
    cxWebPageGrid: TcxGrid;
    cxWebPageGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxWebPageGridLevel1: TcxGridLevel;
    Panel9: TPanel;
    Label7: TLabel;
    cxWebPageLCMB: TcxLookupComboBox;
    cxTabSheetTheme: TcxTabSheet;
    Panel10: TPanel;
    Label8: TLabel;
    cxThemeLCMB: TcxLookupComboBox;
    cxThemeGrid: TcxGrid;
    cxThemeGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxThemeGridLevel1: TcxGridLevel;
    ThemeSds: TSQLDataSet;
    ThemeDsp: TDataSetProvider;
    ThemeDs: TDataSource;
    ThemeCds: TClientDataSet;
    ThemeCdsThemes_id: TIntegerField;
    RegionSds: TSQLDataSet;
    RegionDsp: TDataSetProvider;
    RegionDs: TDataSource;
    RegionCds: TClientDataSet;
    RegionCdsRegions_id: TIntegerField;
    RegionCdsTitle: TStringField;
    cxTabSheetRegion: TcxTabSheet;
    Panel11: TPanel;
    Label9: TLabel;
    cxRegionLCMB: TcxLookupComboBox;
    cxRegionGrid: TcxGrid;
    cxRegionGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxRegionGridLevel1: TcxGridLevel;
    cxHotelGridDBTableView1FileSize: TcxGridDBColumn;
    cxHotelGridDBTableView1Category: TcxGridDBColumn;
    MasterCdsWidth: TIntegerField;
    MasterCdsHeight: TIntegerField;
    MasterCdsCategory: TStringField;
    MasterCdsType: TStringField;
    MasterCdsImageFolder: TStringField;
    cxHotelGridDBTableView1Height: TcxGridDBColumn;
    cxHotelGridDBTableView1Width: TcxGridDBColumn;
    cxHotelGridDBTableView1Type: TcxGridDBColumn;
    PopupMenu1: TPopupMenu;
    cxButtonUtilities: TcxButton;
    ImageProperties1: TMenuItem;
    N1: TMenuItem;
    ImageTypes1: TMenuItem;
    ImageCategories1: TMenuItem;
    MasterCdstineye: TIntegerField;
    cxCityGridDBTableView1Tineye: TcxGridDBColumn;
    cxStateGridDBTableView1Tineye: TcxGridDBColumn;
    cxHotelGridDBTableView1Tineye: TcxGridDBColumn;
    cxModuleGridDBTableView1Tineye: TcxGridDBColumn;
    cxReadyTourGridDBTableView1Tineye: TcxGridDBColumn;
    cxWebPageGridDBTableView1Tineye: TcxGridDBColumn;
    cxThemeGridDBTableView1Tineye: TcxGridDBColumn;
    cxRegionGridDBTableView1Tineye: TcxGridDBColumn;
    ThemeCdsMeta_Title: TStringField;
    ThemeCdsPageName: TStringField;
    MasterCdsModifiedByUsers_id: TIntegerField;
    MasterCdsModifiedOn: TSQLTimeStampField;
    cxCityGridDBTableView1ModifiedByUsers_id: TcxGridDBColumn;
    cxCityGridDBTableView1ModifiedOn: TcxGridDBColumn;
    UsersSds: TSQLDataSet;
    UsersDsp: TDataSetProvider;
    UsersCds: TClientDataSet;
    UsersCdsAdmUsers_id: TIntegerField;
    UsersCdsuid: TStringField;
    UsersDs: TDataSource;
    cxStateGridDBTableView1ModifiedByUsers_id: TcxGridDBColumn;
    cxStateGridDBTableView1ModifiedOn: TcxGridDBColumn;
    cxHotelGridDBTableView1ModifiedByUsers_id: TcxGridDBColumn;
    cxHotelGridDBTableView1ModifiedOn: TcxGridDBColumn;
    cxModuleGridDBTableView1ModifiedByUsers_id: TcxGridDBColumn;
    cxModuleGridDBTableView1ModifiedOn: TcxGridDBColumn;
    cxReadyTourGridDBTableView1ModifiedByUsers_id: TcxGridDBColumn;
    cxReadyTourGridDBTableView1ModifiedOn: TcxGridDBColumn;
    cxWebPageGridDBTableView1ModifiedByUsers_id: TcxGridDBColumn;
    cxWebPageGridDBTableView1ModifiedOn: TcxGridDBColumn;
    cxThemeGridDBTableView1ModifiedByUsers_id: TcxGridDBColumn;
    cxThemeGridDBTableView1ModifiedOn: TcxGridDBColumn;
    cxRegionGridDBTableView1ModifiedByUsers_id: TcxGridDBColumn;
    cxRegionGridDBTableView1ModifiedOn: TcxGridDBColumn;
    ImageTypeSds: TSQLDataSet;
    ImageTypeDsp: TDataSetProvider;
    ImageTypeDs: TDataSource;
    ImageTypeCds: TClientDataSet;
    ImageTypeCdsimagetypes_id: TIntegerField;
    ImageTypeCdsimagetype: TStringField;
    cxHotelGridDBTableView1ImageTypes_id: TcxGridDBColumn;
    PopupMenu2: TPopupMenu;
    DefaultHotel1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure cxPageControl1Change(Sender: TObject);
    procedure FilterData;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    function GetImageCategories_id: integer;
    procedure SetImageObjectId;
    function GetMaxSrNo: integer;
    procedure MasterCdsAfterPost(DataSet: TDataSet);
    procedure MasterCdsAfterDelete(DataSet: TDataSet);
    procedure MasterCdsBeforeDelete(DataSet: TDataSet);
    procedure cxReadyTourLCMBPropertiesEditValueChanged(Sender: TObject);
    procedure cxCityLCMBPropertiesEditValueChanged(Sender: TObject);
    procedure cxStateLCMBPropertiesEditValueChanged(Sender: TObject);
    procedure cxHotelLCMBPropertiesEditValueChanged(Sender: TObject);
    procedure cxModuleLCMBPropertiesEditValueChanged(Sender: TObject);
    procedure cxCityOfHotelLCMBPropertiesEditValueChanged(Sender: TObject);
    procedure MasterCdsAfterInsert(DataSet: TDataSet);
    procedure CloseBtnClick(Sender: TObject);
    procedure MasterCdsAfterScroll(DataSet: TDataSet);
    procedure ShowImage;
    procedure ImageProperties1Click(Sender: TObject);
    procedure ImageTypes1Click(Sender: TObject);
    procedure ImageCategories1Click(Sender: TObject);
    procedure DefaultHotel1Click(Sender: TObject);
    procedure SetHotelTitle(x_ImageObjectId: integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Image2Form: TImage2Form;
  _x_Image_LinuxPath: string;
  _x_ShowImage: boolean;
  Image2Form_SubDir: string;


implementation

uses BackOfficeDM, GeneralUt, ImagePropertiesFm, MainFm, ImageTypesFm,
  ImageCategoriesFm;

{$R *.dfm}

procedure TImage2Form.FormCreate(Sender: TObject);
begin
  CitiesCds.Open;
  StatesCds.Open;
  HotelCds.Open;
  ModulesCds.Open;
  ReadyToursCds.Open;
  WebPageCds.Open;
  ThemeCds.Open;
  RegionCds.Open;
  UsersCds.Open;
  ImageTypeCds.Open;

  MasterCds.Active := False;

  cxPageControl1.ActivePageIndex := 0;
  Image2Form_SubDir := '';

  Image.Picture := nil;
  _x_Image_LinuxPath := GetLinuxServerImagePath;

  _x_ShowImage := true;
  if not DirectoryExists(_x_Image_LinuxPath) then
    _x_ShowImage := false;

end;

procedure TImage2Form.cxPageControl1Change(Sender: TObject);
begin

  FilterData;

end;

procedure TImage2Form.FilterData;
var
  x_Cities_id, x_States_id, x_Hotels_id, x_FixedItins_id, x_WebPages_id, x_Themes_id, x_Regions_id: integer;
begin

  Image.Picture := nil;

  MasterCds.Close;
  MasterSds.Close;

  if cxPageControl1.ActivePage = cxTabSheetCity then
    begin
      x_Cities_id := -1;
      if cxCityLCMB.EditValue <> null then
        x_Cities_id := cxCityLCMB.EditValue;

      MasterSds.CommandText := 'SELECT * FROM images WHERE ImageCategories_id = 1 ' +
        'AND ImageObjectId = ' + IntToStr(x_Cities_id);

      Image2Form_SubDir := 'city';
    end
  else if cxPageControl1.ActivePage = cxTabSheetState then
    begin
      x_States_id := -1;
      if cxStateLCMB.EditValue <> null then
        x_States_id := cxStateLCMB.EditValue;

      MasterSds.CommandText := 'SELECT * FROM images WHERE ImageCategories_id = 5 ' +
        'AND ImageObjectId = ' + IntToStr(x_States_id);

      Image2Form_SubDir := 'states small';
    end
  else if cxPageControl1.ActivePage = cxTabSheetHotel then
    begin
      x_Hotels_id := -1;
      if cxHotelLCMB.EditValue <> null then
        x_Hotels_id := cxHotelLCMB.EditValue;

      MasterSds.CommandText := 'SELECT * FROM images WHERE ImageCategories_id = 2 ' +
        'AND ImageObjectId = ' + IntToStr(x_Hotels_id);

      Image2Form_SubDir := 'hotel';
    end
  else if cxPageControl1.ActivePage = cxTabSheetModule then
    begin
      x_FixedItins_id := -1;
      if cxModuleLCMB.EditValue <> null then
        x_FixedItins_id := cxModuleLCMB.EditValue;

      MasterSds.CommandText := 'SELECT * FROM images WHERE ImageCategories_id = 3 ' +
        'AND ImageObjectId = ' + IntToStr(x_FixedItins_id);

      Image2Form_SubDir := 'modules';
    end
  else if cxPageControl1.ActivePage = cxTabSheetReadyTour then
    begin
      x_FixedItins_id := -1;
      if cxReadyTourLCMB.EditValue <> null then
        x_FixedItins_id := cxReadyTourLCMB.EditValue;

      MasterSds.CommandText := 'SELECT * FROM images WHERE ImageCategories_id = 4 ' +
        'AND ImageObjectId = ' + IntToStr(x_FixedItins_id);

      Image2Form_SubDir := 'tours';
    end
  else if cxPageControl1.ActivePage = cxTabSheetWebPage then
    begin
      x_WebPages_id := -1;
      if cxWebPageLCMB.EditValue <> null then
        x_WebPages_id := cxWebPageLCMB.EditValue;

      MasterSds.CommandText := 'SELECT * FROM images WHERE ImageCategories_id = 6 ' +
        'AND ImageObjectId = ' + IntToStr(x_WebPages_id);

      Image2Form_SubDir := 'fixed';
    end
  else if cxPageControl1.ActivePage = cxTabSheetTheme then
    begin
      x_Themes_id := -1;
      if cxThemeLCMB.EditValue <> null then
        x_Themes_id := cxThemeLCMB.EditValue;

      MasterSds.CommandText := 'SELECT * FROM images WHERE ImageCategories_id = 7 ' +
        'AND ImageObjectId = ' + IntToStr(x_Themes_id);

      Image2Form_SubDir := 'themes';
    end
  else if cxPageControl1.ActivePage = cxTabSheetRegion then
    begin
      x_Regions_id := -1;
      if cxRegionLCMB.EditValue <> null then
        x_Regions_id := cxRegionLCMB.EditValue;

      MasterSds.CommandText := 'SELECT * FROM images WHERE ImageCategories_id = 8 ' +
        'AND ImageObjectId = ' + IntToStr(x_Regions_id);

      Image2Form_SubDir := 'regions small';        
    end;

  MasterSds.Open;
  MasterCds.Open;

end;


procedure TImage2Form.FormDestroy(Sender: TObject);
begin
  Image2Form := nil;
end;

procedure TImage2Form.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TImage2Form.MasterCdsBeforePost(DataSet: TDataSet);
begin

  MasterCds['ImageCategories_id'] := GetImageCategories_id;

  if (MasterCds['ImageCategories_id'] = null) then
    raise Exception.Create('Please select the category');

  if MasterCds['ImageObjectId'] = null then
    SetImageObjectId;

  if (MasterCds['ImageCategories_id'] = null) then
    raise Exception.Create('Please specify the city/state/hotel/module/ready tour');

  if (MasterCds['ImageName'] = null) then
    raise Exception.Create('Please enter the Image Name');

  if (MasterCds['Title'] = null) then
    raise Exception.Create('Please select the title');

  if (MasterCds.State = dsInsert) and (MasterCds['SrNo'] = null) then
   MasterCds['SrNo'] := GetMaxSrNo + 1;

//  if (MasterCds.State = dsInsert) then
//    MasterCds['Images_id'] := GetNextId('Images','Images_id');

  MasterCds['ModifiedByUsers_id'] := g_users_id;
  MasterCds['ModifiedOn'] := Date;

end;

function TImage2Form.GetImageCategories_id: integer;
var
  x_ImageCategories_id: integer;
begin

  x_ImageCategories_id := 0;

  if cxPageControl1.ActivePage = cxTabSheetCity then
    x_ImageCategories_id := 1
  else if cxPageControl1.ActivePage = cxTabSheetState then
    x_ImageCategories_id := 5
  else if cxPageControl1.ActivePage = cxTabSheetHotel then
    x_ImageCategories_id := 2
  else if cxPageControl1.ActivePage = cxTabSheetModule then
    x_ImageCategories_id := 3
  else if cxPageControl1.ActivePage = cxTabSheetReadyTour then
    x_ImageCategories_id := 4
  else if cxPageControl1.ActivePage = cxTabSheetWebPage then
    x_ImageCategories_id := 6
  else if cxPageControl1.ActivePage = cxTabSheetTheme then
    x_ImageCategories_id := 7
  else if cxPageControl1.ActivePage = cxTabSheetRegion then
    x_ImageCategories_id := 8;

  Result := x_ImageCategories_id;

end;

procedure TImage2Form.SetImageObjectId;
begin

  if cxPageControl1.ActivePage = cxTabSheetCity then
    begin
      if cxCityLCMB.EditValue <> null then
        MasterCds['ImageObjectId'] := cxCityLCMB.EditValue;
    end
  else if cxPageControl1.ActivePage = cxTabSheetState then
    begin
      if cxStateLCMB.EditValue <> null then
        MasterCds['ImageObjectId'] := cxStateLCMB.EditValue;
    end
  else if cxPageControl1.ActivePage = cxTabSheetHotel then
    begin
      if cxHotelLCMB.EditValue <> null then
        MasterCds['ImageObjectId'] := cxHotelLCMB.EditValue;
    end
  else if cxPageControl1.ActivePage = cxTabSheetModule then
    begin
      if cxModuleLCMB.EditValue <> null then
        MasterCds['ImageObjectId'] := cxModuleLCMB.EditValue;
    end
  else if cxPageControl1.ActivePage = cxTabSheetReadyTour then
    begin
      if cxReadyTourLCMB.EditValue <> null then
        MasterCds['ImageObjectId'] := cxReadyTourLCMB.EditValue;
    end
  else if cxPageControl1.ActivePage = cxTabSheetWebPage then
    begin
      if cxWebPageLCMB.EditValue <> null then
        MasterCds['ImageObjectId'] := cxWebPageLCMB.EditValue;
    end
  else if cxPageControl1.ActivePage = cxTabSheetTheme then
    begin
      if cxThemeLCMB.EditValue <> null then
        MasterCds['ImageObjectId'] := cxThemeLCMB.EditValue;
    end
  else if cxPageControl1.ActivePage = cxTabSheetRegion then
    begin
      if cxRegionLCMB.EditValue <> null then
        MasterCds['ImageObjectId'] := cxRegionLCMB.EditValue;
    end;

end;



function TImage2Form.GetMaxSrNo: integer;
var
  QueryString: string;
  x_SrNo: integer;
  GpSds: TSQLDataSet;
begin

  x_SrNo := 0;

  QueryString := 'SELECT MAX(SrNo) AS MaxSrNo FROM Images ' +
    'WHERE ImageCategories_id = ' + IntToStr(MasterCds['ImageCategories_id']) + ' ' +
    'AND ImageObjectId = ' + IntToStr(MasterCds['ImageObjectId']);

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  if (GpSds['MaxSrNo'] <> null) then
    x_SrNo := GpSds['MaxSrNo'];

  GpSds.Free;

  Result := x_SrNo;

end;


procedure TImage2Form.MasterCdsAfterPost(DataSet: TDataSet);
begin
  MasterCds.ApplyUpdates(0);
end;

procedure TImage2Form.MasterCdsAfterDelete(DataSet: TDataSet);
begin
  MasterCds.ApplyUpdates(0);
end;

procedure TImage2Form.MasterCdsBeforeDelete(DataSet: TDataSet);
begin
  if MessageDlg ('Are you sure you want to delete the image ?', mtWarning, [mbYes, mbNo], 0) <> mrYes then
    abort;
end;

procedure TImage2Form.cxReadyTourLCMBPropertiesEditValueChanged(
  Sender: TObject);
begin
  FilterData;
end;

procedure TImage2Form.cxCityLCMBPropertiesEditValueChanged(
  Sender: TObject);
begin
  FilterData;
end;

procedure TImage2Form.cxStateLCMBPropertiesEditValueChanged(
  Sender: TObject);
begin
  FilterData;
end;

procedure TImage2Form.cxHotelLCMBPropertiesEditValueChanged(
  Sender: TObject);
begin
  FilterData;
end;

procedure TImage2Form.cxModuleLCMBPropertiesEditValueChanged(
  Sender: TObject);
begin
  FilterData;
end;

procedure TImage2Form.cxCityOfHotelLCMBPropertiesEditValueChanged(
  Sender: TObject);
begin
  if cxCityOfHotelLCMB.EditValue <> null then
    CitiesCds.Locate('Cities_id', cxCityOfHotelLCMB.EditValue, []);
  FilterData;
end;

procedure TImage2Form.MasterCdsAfterInsert(DataSet: TDataSet);
begin
  MasterCds['ImageCategories_id'] := GetImageCategories_id;
  SetImageObjectId;

  if (MasterCds['ImageCategories_id'] = null) then
    raise Exception.Create('Please select the category');

  if (MasterCds['ImageCategories_id'] = null) then
    raise Exception.Create('Please specify the city/state/hotel/module/ready tour');

 MasterCds['SrNo'] := GetMaxSrNo + 1;

end;

procedure TImage2Form.CloseBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TImage2Form.MasterCdsAfterScroll(DataSet: TDataSet);
begin
  ShowImage;
end;

procedure TImage2Form.ShowImage;
var
  x_file_path: string;
  x_file_extn: string;
begin

  if (_x_ShowImage = true) and (MasterCds['ImageName'] <> null) then
    begin
      x_file_path := _x_Image_LinuxPath + Image2Form_SubDir + '\' + MasterCds['ImageName'];

      x_file_extn := ExtractFileExt(x_file_path);

      if x_file_extn = '.gif' then
        begin
          WebBrowser.Show;
          WebBrowser.Navigate(x_file_path);
          Image.Picture := nil;
        end
      else
        begin

          WebBrowser.Hide;

          if FileExists(x_file_path) then
            begin
              try
                Image.Picture.LoadFromFile(x_file_path);
              except
                Image.Picture := nil;
              end;
            end
          else
            Image.Picture := nil;

        end;

    end
  else
    begin
      Image.Picture := nil;
      WebBrowser.Hide;
    end;


end;


procedure TImage2Form.ImageProperties1Click(Sender: TObject);
begin
  ImagePropertiesForm_Level := GetUserLevel(g_users_id, 2200);

  If ImagePropertiesForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if ImagePropertiesForm = nil then
    Application.CreateForm(TImagePropertiesForm,ImagePropertiesForm);

end;

procedure TImage2Form.ImageTypes1Click(Sender: TObject);
begin
  ImageTypesForm_Level := GetUserLevel(g_users_id, 2200);

  If ImageTypesForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if ImageTypesForm = nil then
    Application.CreateForm(TImageTypesForm,ImageTypesForm);

end;

procedure TImage2Form.ImageCategories1Click(Sender: TObject);
begin
  ImageCategoriesForm_Level := GetUserLevel(g_users_id, 2200);

  If ImageCategoriesForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if ImageCategoriesForm = nil then
    Application.CreateForm(TImageCategoriesForm,ImageCategoriesForm);

end;


procedure TImage2Form.SetHotelTitle(x_ImageObjectId: integer);
var
  QueryString, x_city, x_state: string;
  GpSds: TSQLDataSet;
begin

  QueryString := 'SELECT a.Organisation, c.City, s.State FROM Addressbook a ' +
    'LEFT JOIN Cities c ON a.cities_id = c.cities_id ' +
    'LEFT JOIN States s ON c.States_id = s.States_id ' +
    'WHERE a.Addressbook_id = ' + IntToStr(x_ImageObjectId);

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  if (not GpSds.EOF) and (GpSds['Organisation'] <> null) then
    begin
      x_city := '';
      if GpSds['City'] <> null then
        begin
          x_city := ' in ' + GpSds['City'];
        end;

      x_state := '';
      if GpSds['State'] <> null then
        begin
          x_state := ', ' + GpSds['State'];
        end;

      MasterCds['Title'] := GpSds['Organisation'] + x_city + x_state;
      MasterCds['AltTag'] := GpSds['Organisation'] + x_city + x_state;
      MasterCds['ImageTypes_id'] := 3;
    end;

  GpSds.Free;

end;


procedure TImage2Form.DefaultHotel1Click(Sender: TObject);
begin

  if (MasterCds.State = dsInsert) then
    begin

      SetImageObjectId;

      MasterCds['ImageName'] := 'defaulthotel_' + IntToStr(MasterCds['ImageObjectId']) + '.jpg';
      SetHotelTitle(MasterCds['ImageObjectId']);
    end;

end;

end.
