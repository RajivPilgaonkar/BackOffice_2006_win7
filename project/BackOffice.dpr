program BackOffice;

uses
  Forms,
  MainFm in '..\forms\MainFm.pas' {MainForm},
  BackOfficeDM in '..\forms\BackOfficeDM.pas' {BackOfficeDataModule: TDataModule},
  CustomMasterGridFm in '..\forms\CustomMasterGridFm.pas' {CustomMasterGridForm},
  GeneralUt in '..\forms\GeneralUt.pas',
  CustomMasterFm in '..\forms\CustomMasterFm.pas' {CustomMasterForm},
  MasterCategoriesFm in '..\forms\MasterCategoriesFm.pas' {MasterCategoriesForm},
  MealPlansFm in '..\forms\MealPlansFm.pas' {MealPlansForm},
  DefaultHotelsFm in '..\forms\DefaultHotelsFm.pas' {DefaultHotelsForm},
  CategoriesFm in '..\forms\CategoriesFm.pas' {CategoriesForm},
  CurrDetailsFm in '..\forms\CurrDetailsFm.pas' {CurrDetailsForm},
  CustomMasterLookupFm in '..\forms\CustomMasterLookupFm.pas' {CustomMasterLookupForm},
  ToursFm in '..\forms\ToursFm.pas' {ToursForm},
  TourCalendersFm in '..\forms\TourCalendersFm.pas' {ToursCalendarForm},
  PackagesFm in '..\forms\PackagesFm.pas' {PackagesForm},
  TourFamilyFm in '..\forms\TourFamilyFm.pas' {TourFamilyForm},
  CustomMasterPageControlFm in '..\forms\CustomMasterPageControlFm.pas' {CustomMasterPageControlForm},
  TourDeparturesFm in '..\forms\TourDeparturesFm.pas' {TourDeparturesForm},
  CustomMaster1M2DFm in '..\forms\CustomMaster1M2DFm.pas' {CustomMaster1M2DForm},
  AddrBookFm in '..\forms\AddrBookFm.pas' {AddrBookForm},
  SelOprFm in '..\forms\SelOprFm.pas' {SelOprForm},
  TrainStationsFm in '..\forms\TrainStationsFm.pas' {TrainStationsForm},
  CustomMasterDetailFm in '..\forms\CustomMasterDetailFm.pas' {CustomMasterDetailForm},
  ProductFm in '..\forms\ProductFm.pas' {ProductForm},
  CancellationChargesFm in '..\forms\CancellationChargesFm.pas' {CancellationChargesForm},
  FitMarginQuoFm in '..\forms\FitMarginQuoFm.pas' {FitMarginQuoForm},
  StatesFm in '..\forms\StatesFm.pas' {StatesForm},
  CountryFm in '..\forms\CountryFm.pas' {CountryForm},
  CustomMasterBlockBkgFm in '..\forms\CustomMasterBlockBkgFm.pas' {CustomMasterBlockBkgForm},
  BlockBkgTicketsFm in '..\forms\BlockBkgTicketsFm.pas' {BlockBkgTicketsForm},
  BoQryFm in '..\forms\BoQryFm.pas' {BoQryForm},
  BlockBkgRoomsFm in '..\forms\BlockBkgRoomsFm.pas' {BlockBkgRoomsForm},
  BlockBkgPackagesFm in '..\forms\BlockBkgPackagesFm.pas' {BlockBkgPackagesForm},
  SearchFm in '..\forms\SearchFm.pas' {SearchForm},
  VouBillFm in '..\forms\VouBillFm.pas' {VouBillForm},
  MasterFm in '..\forms\MasterFm.pas' {MasterForm},
  CustomMasterTMFm in '..\forms\CustomMasterTMFm.pas' {CustomMasterTMForm},
  MasterTicketsFm in '..\forms\MasterTicketsFm.pas' {MasterTicketsForm},
  SelNameFm in '..\forms\SelNameFm.pas' {SelNameForm},
  MasterAccomodationFm in '..\forms\MasterAccomodationFm.pas' {MasterAccomodationForm},
  MasterTransportFm in '..\forms\MasterTransportFm.pas' {MasterTransportForm},
  MasterPackagesFm in '..\forms\MasterPackagesFm.pas' {MasterPackagesForm},
  MasterServicesFm in '..\forms\MasterServicesFm.pas' {MasterServicesForm},
  TourItnDepFm in '..\forms\TourItnDepFm.pas' {TourItnDepForm},
  ItineraryFm in '..\forms\ItineraryFm.pas' {ItineraryForm},
  ItinTicketsFm in '..\forms\ItinTicketsFm.pas' {ItinTicketsForm},
  ItinServicesFm in '..\forms\ItinServicesFm.pas' {ItinServicesForm},
  ItinTransportFm in '..\forms\ItinTransportFm.pas' {ItinTransportForm},
  ItinPackagesFm in '..\forms\ItinPackagesFm.pas' {ItinPackagesForm},
  BookSearchFm in '..\forms\BookSearchFm.pas' {BookSeacrhForm},
  RptRoomingListFm in '..\forms\RptRoomingListFm.pas' {RptRoomingListForm},
  MasterCopyFm in '..\forms\MasterCopyFm.pas' {MasterCopyForm},
  TourLeaderFm in '..\forms\TourLeaderFm.pas' {TourLeaderForm},
  CustomMasterCxGridFm in '..\forms\CustomMasterCxGridFm.pas' {CustomMasterCxGridForm},
  AirlinesClassFm in '..\forms\AirlinesClassFm.pas' {AirlinesClassForm},
  Custom1M2DFm in '..\forms\Custom1M2DFm.pas' {Custom1M2DForm},
  SearchSortFm in '..\forms\SearchSortFm.pas' {SearchSortForm},
  MasterTourFm in '..\forms\MasterTourFm.pas' {MasterTourForm},
  MasterDepDatesFm in '..\forms\MasterDepDatesFm.pas' {MasterDepDatesForm},
  DefaultCarAgentFm in '..\forms\DefaultCarAgentFm.pas' {DefaultCarAgentForm},
  TransferCityPairsFm in '..\forms\TransferCityPairsFm.pas' {TransferCityPairsForm},
  PreferredRoutesFm in '..\forms\PreferredRoutesFm.pas' {PreferredRoutesForm},
  Gstr2Fm in '..\forms\Gstr2Fm.pas' {Gstr2Form},
  Custom1M1DFm in '..\forms\Custom1M1DFm.pas' {Custom1M1DForm},
  WebFm in '..\forms\WebFm.pas' {WebForm},
  AddressChargesFm in '..\forms\AddressChargesFm.pas' {AddressChargesForm},
  ItinDepDatesFm in '..\forms\ItinDepDatesFm.pas' {ItinDepDatesForm},
  BookingDetailsFm in '..\forms\BookingDetailsFm.pas' {BookingDetailsForm},
  ItinAccommodationFm in '..\forms\ItinAccommodationFm.pas' {ItinAccommodationForm},
  VouTicketsFm in '..\forms\VouTicketsFm.pas' {VouTicketsForm},
  VouAccommodationFm in '..\forms\VouAccommodationFm.pas' {VouAccommodationForm},
  VouServicesFm in '..\forms\VouServicesFm.pas' {VouServicesForm},
  VouTransportFm in '..\forms\VouTransportFm.pas' {VouTransportForm},
  VouPackagesFm in '..\forms\VouPackagesFm.pas' {VouPackagesForm},
  MultiInvoiceFm in '..\forms\MultiInvoiceFm.pas' {MultiInvoiceForm},
  ReportParameterFm in '..\forms\ReportParameterFm.pas' {ReportParameterForm},
  ExportInvoiceExcel in '..\forms\ExportInvoiceExcel.pas',
  CityThemesFm in '..\forms\CityThemesFm.pas' {CityThemesForm},
  VoucherManagerFm in '..\forms\VoucherManagerFm.pas' {VoucherManagerForm},
  RoomingListFm in '..\forms\RoomingListFm.pas' {RoomingListForm},
  RptBookTransferArrivalFm in '..\reports\RptBookTransferArrivalFm.pas' {RptBookTransferArrivalForm},
  RptBookExtraAccFm in '..\reports\RptBookExtraAccFm.pas' {RptBookExtraAccForm},
  RptBookDeadLineFm in '..\reports\RptBookDeadLineFm.pas' {RptBookDeadLineForm},
  RptBookDeadLineToursFm in '..\reports\RptBookDeadLineToursFm.pas' {RptBookDeadLineToursForm},
  RptFitTravelConfirmFm in '..\reports\RptFitTravelConfirmFm.pas' {RptFitTravelConfirmForm},
  RptQuotationItineraryFm in '..\reports\RptQuotationItineraryFm.pas' {RptQuotationItineraryForm},
  RptItinRoomingListFm in '..\reports\RptItinRoomingListFm.pas' {RptItinRoomingListForm},
  RptItinNameListFm in '..\reports\RptItinNameListFm.pas' {RptItinNameListForm},
  RptBookSitListFm in '..\reports\RptBookSitListFm.pas' {RptBookSitListForm},
  RptPrintVouchersFm in '..\reports\RptPrintVouchersFm.pas' {RptPrintVouchersForm},
  RpSitListFm in '..\reports\RpSitListFm.pas' {RpSitListForm},
  RptLpReportFm in '..\reports\RptLpReportFm.pas' {RptLpReportForm},
  CarHireP2PFm in '..\forms\CarHireP2PFm.pas' {CarHireP2PForm},
  RptDifferencesFm in '..\reports\RptDifferencesFm.pas' {RptDifferencesForm},
  RptVouchersZeroCostFm in '..\reports\RptVouchersZeroCostFm.pas' {RptVouchersZeroCostForm},
  RptMissingBillsFm in '..\reports\RptMissingBillsFm.pas' {RptMissingBillsForm},
  RptManualVoucherFm in '..\reports\RptManualVoucherFm.pas' {RptManualVoucherForm},
  RptBedNightsTourFm in '..\reports\RptBedNightsTourFm.pas' {RptBedNightsTourForm},
  QuoLineAccMarginTraceFm in '..\forms\QuoLineAccMarginTraceFm.pas' {QuoLineAccMarginTraceForm},
  RptBlkBkgTicketsFm in '..\reports\RptBlkBkgTicketsFm.pas' {RptBlkBkgTicketsForm},
  RptBlkBkgRoomsFm in '..\reports\RptBlkBkgRoomsFm.pas' {RptBlkBkgRoomsForm},
  CostingBlockCopyFm in '..\forms\CostingBlockCopyFm.pas' {CostingBlockCopyForm},
  CostingsFm in '..\forms\CostingsFm.pas' {CostingsForm},
  TrainCopyFm in '..\forms\TrainCopyFm.pas' {TrainCopyForm},
  RptAccountPayAdviceFm in '..\reports\RptAccountPayAdviceFm.pas' {RptAccountPayAdviceForm: TicketExceptionsFm},
  RptAccountsCreditAdviceFm in '..\reports\RptAccountsCreditAdviceFm.pas' {RptAccountsCreditAdviceForm},
  RptCashBookFm in '..\reports\RptCashBookFm.pas' {RptCashBookForm},
  RptJournalFm in '..\reports\RptJournalFm.pas' {RptJournalForm},
  RptAccountAllCreditorsFm in '..\reports\RptAccountAllCreditorsFm.pas' {RptAccountAllCreditorsForm},
  RptAccountsTrsAllFm in '..\reports\RptAccountsTrsAllFm.pas' {RptAccountsTrsAllForm},
  TrialBalanceFm in '..\forms\TrialBalanceFm.pas' {TrialBalanceForm},
  RptQuoDriverItinFm in '..\reports\RptQuoDriverItinFm.pas' {RptQuoDriverItinForm},
  RptAccountsTrialBalAllFm in '..\reports\RptAccountsTrialBalAllFm.pas' {RptAccountsTrialBalAllForm},
  RptAccountsBalanceSheetFm in '..\reports\RptAccountsBalanceSheetFm.pas' {RptAccountsBalanceSheetForm},
  RptAccountsProfitLossFm in '..\reports\RptAccountsProfitLossFm.pas' {RptAccountsProfitLossForm},
  RptAccountsPaymentMadeFm in '..\reports\RptAccountsPaymentMadeFm.pas' {RptAccountsPaymentMadeForm},
  RptAccounts10CCAEAnnexFm in '..\reports\RptAccounts10CCAEAnnexFm.pas' {RptAccounts10CCAEAnnexForm},
  RptAccountsBalanceCheckFm in '..\reports\RptAccountsBalanceCheckFm.pas' {RptAccountsBalanceCheckForm},
  RptAccountsForexFm in '..\reports\RptAccountsForexFm.pas' {RptAccountsForexForm},
  RptInvIssuedAnnexBFm in '..\reports\RptInvIssuedAnnexBFm.pas' {RptInvIssuedAnnexBForm},
  RptInvoiceDueFm in '..\reports\RptInvoiceDueFm.pas' {RptInvoiceDueForm},
  TDSFm in '..\forms\TDSFm.pas' {TDSForm},
  RptTdsFormNo16Fm in '..\reports\RptTdsFormNo16Fm.pas' {RptTdsFormNo16Form},
  RptTDSForm26CFm in '..\reports\RptTDSForm26CFm.pas' {RptTDSForm26CForm},
  RptTDS194JFm in '..\reports\RptTDS194JFm.pas' {RptTDS194JForm},
  RptTDSStamentFm in '..\reports\RptTDSStamentFm.pas' {RptTDSStamentForm},
  RptTDSSummaryFm in '..\reports\RptTDSSummaryFm.pas' {RptTDSSummaryForm},
  Num2WordUt in '..\forms\Num2WordUt.pas',
  MisProfitabilityFm in '..\forms\MisProfitabilityFm.pas' {MisProfitabilityForm},
  AdmUsersFm in '..\forms\AdmUsersFm.pas' {AdmUsersForm},
  ModulesFm in '..\forms\ModulesFm.pas' {ModulesForm},
  UpdateBookingFm in '..\forms\UpdateBookingFm.pas' {UpdateBookingForm},
  HotelsFm in '..\forms\HotelsFm.pas' {HotelsForm},
  RptWebHotelsFm in '..\reports\RptWebHotelsFm.pas' {RptWebHotelsForm},
  VoucherListFm in '..\forms\VoucherListFm.pas' {VoucherListForm},
  RptBookTransferArrivalAllPaFm in '..\reports\RptBookTransferArrivalAllPaFm.pas' {RptBookTransferArrivalAllPaForm},
  RptNumPaxTourFm in '..\reports\RptNumPaxTourFm.pas' {RptNumPaxTourForm},
  CopyFitMasterFm in '..\forms\CopyFitMasterFm.pas' {CopyFitMasterForm},
  RptClientStringsFm in '..\reports\RptClientStringsFm.pas' {RptClientStringsForm},
  RptItineraryFm in '..\reports\RptItineraryFm.pas' {RptItineraryForm},
  PrincipalAgentMultiFm in '..\forms\PrincipalAgentMultiFm.pas' {PrincipalAgentMultiForm},
  RptAddressFm in '..\reports\RptAddressFm.pas' {RptAddressForm},
  MISTourFm in '..\forms\MISTourFm.pas' {MISTourForm},
  ShortestDriveFm in '..\forms\ShortestDriveFm.pas' {ShortestDriveForm},
  QuoDisplayTravelFm in '..\forms\QuoDisplayTravelFm.pas' {QuoDisplayTravelForm},
  Custom1M1DType1Fm in '..\forms\Custom1M1DType1Fm.pas' {Custom1M1DType1Form},
  QuoCitywiseFm in '..\forms\QuoCitywiseFm.pas' {QuoCitywiseForm},
  QuoServicesFm in '..\forms\QuoServicesFm.pas' {QuoServicesForm},
  TravelModeFm in '..\forms\TravelModeFm.pas' {TravelModeForm},
  QuoAccommodationFm in '..\forms\QuoAccommodationFm.pas' {QuoAccommodationForm},
  FlightIgnoreCitiesFm in '..\forms\FlightIgnoreCitiesFm.pas' {FlightIgnoreCitiesForm},
  FITItineraryDateFm in '..\forms\FITItineraryDateFm.pas' {FITItineraryDateForm},
  RpQuoDetailedItinerary2Fm in '..\reports\RpQuoDetailedItinerary2Fm.pas' {RpQuoDetailedItinerary2Form},
  QuoBookingClientsFm in '..\forms\QuoBookingClientsFm.pas' {QuoBookingClientsForm},
  RouteAlternateFm in '..\forms\RouteAlternateFm.pas' {RouteAlternateForm},
  TrackTrainSectorsFm in '..\forms\TrackTrainSectorsFm.pas' {TrackTrainSectorsForm},
  RouteFinderTrialFm in '..\forms\RouteFinderTrialFm.pas' {RouteFinderTrialForm},
  QuoDayEditFm in '..\forms\QuoDayEditFm.pas' {QuoDayEditForm},
  RptQuotationStringsFm in '..\reports\RptQuotationStringsFm.pas' {RptQuotationStringsForm},
  StateLatitudeFm in '..\forms\StateLatitudeFm.pas' {StateLatitudeForm},
  RpQuoHotelAgentFm in '..\reports\RpQuoHotelAgentFm.pas' {RpQuoHotelAgentForm},
  CarHireAgentQuoLineFm in '..\forms\CarHireAgentQuoLineFm.pas' {CarHireAgentQuoLineForm},
  CarHireCityGroupFm in '..\forms\CarHireCityGroupFm.pas' {CarHireCityGroupForm},
  RegionFm in '..\forms\RegionFm.pas' {RegionForm},
  CityGroupsFm in '..\forms\CityGroupsFm.pas' {CityGroupsForm},
  CarHireFm in '..\forms\CarHireFm.pas' {CarHireForm},
  VouSendMailFm in '..\forms\VouSendMailFm.pas' {VouSendMailForm},
  VouMailStatusFm in '..\forms\VouMailStatusFm.pas' {VouMailStatusForm},
  FitMarginFm in '..\forms\FitMarginFm.pas' {FitMarginForm},
  RptBedNightsFm in '..\reports\RptBedNightsFm.pas' {RptBedNightsForm},
  ImportFm in '..\forms\ImportFm.pas' {ImportForm},
  TicketDeadlineFm in '..\..\..\Guala\MIS Audit\Forms\TicketDeadlineFm.pas' {TicketDeadlineForm},
  TipsFm in '..\forms\TipsFm.pas' {TipsForm},
  CarHireAgentChangeFm in '..\forms\CarHireAgentChangeFm.pas' {CarHireAgentChangeForm},
  ChangePasswordFm in '..\forms\ChangePasswordFm.pas' {ChangePasswordForm},
  SplashScreen in '..\forms\SplashScreen.pas' {SplashScreenForm},
  PackageItinerariesFm in '..\forms\PackageItinerariesFm.pas' {PackageItinerariesForm},
  ToDoFm in '..\forms\ToDoFm.pas' {ToDoForm},
  AddrCategorySearchFm in '..\forms\AddrCategorySearchFm.pas' {AddrCategorySearchForm},
  TrainTicketsPriceListFm in '..\forms\TrainTicketsPriceListFm.pas' {TrainTicketsPriceListForm},
  ImportDriveFm in '..\forms\ImportDriveFm.pas' {ImportDriveForm},
  HotelPriceListFm in '..\forms\HotelPriceListFm.pas' {HotelPriceListForm},
  PackagesPriceListFm in '..\forms\PackagesPriceListFm.pas' {PackagesPriceListForm},
  TransferPriceListFm in '..\forms\TransferPriceListFm.pas' {TransferPriceListForm},
  RouteFinder_2013_Fm in '..\forms\RouteFinder_2013_Fm.pas' {RouteFinder_2013_Form},
  HopExceptionsFm in '..\forms\HopExceptionsFm.pas' {HopExceptionsForm},
  QuoSendMailFm in '..\forms\QuoSendMailFm.pas' {QuoSendMailForm},
  SendMail in '..\forms\SendMail.pas',
  QuoLineCostTraceFm in '..\forms\QuoLineCostTraceFm.pas' {QuoLineCostTraceForm},
  TrainsMismatchFm in '..\forms\TrainsMismatchFm.pas' {TrainsMismatchForm},
  ImagesFm in '..\forms\ImagesFm.pas' {ImagesForm},
  QuoLineCostTraceAgentDateFm in '..\forms\QuoLineCostTraceAgentDateFm.pas' {QuoLineCostTraceAgentDateForm},
  TrainWiseFaresFm in '..\forms\TrainWiseFaresFm.pas' {TrainWiseFaresForm},
  RptSingleVoucher3Fm in '..\reports\RptSingleVoucher3Fm.pas' {RptSingleVoucher3Form},
  CityLatitudeFm in '..\forms\CityLatitudeFm.pas' {CityLatitudeForm},
  ImportTrainsFm in '..\forms\ImportTrainsFm.pas' {ImportTrainsForm},
  FixedItinThemesFm in '..\forms\FixedItinThemesFm.pas' {FixedItinThemesForm},
  RoomTypesFm in '..\forms\RoomTypesFm.pas' {RoomTypesForm},
  CostingTraceFm in '..\forms\CostingTraceFm.pas' {CostingTraceForm},
  RptSingleVoucherFm in '..\reports\RptSingleVoucherFm.pas' {RptSingleVoucherForm},
  EntranceFeesPriceListFm in '..\forms\EntranceFeesPriceListFm.pas' {EntranceFeesPriceListForm},
  AutomobilesFm in '..\forms\AutomobilesFm.pas' {AutomobilesForm},
  ImportFlightsFm in '..\forms\ImportFlightsFm.pas' {ImportFlightsForm},
  QuoCostingTraceDateFm in '..\forms\QuoCostingTraceDateFm.pas' {QuoCostingTraceDateForm},
  QuoMailStatusFm in '..\forms\QuoMailStatusFm.pas' {QuoMailStatusForm},
  FixedItinFm in '..\forms\FixedItinFm.pas' {FixedItinForm},
  AirlinesFm in '..\forms\AirlinesFm.pas' {AirlinesForm},
  AirlineCItyMappingFm in '..\forms\AirlineCItyMappingFm.pas' {AirlineCityMappingForm},
  CityFixedItinFm in '..\forms\CityFixedItinFm.pas' {CityFixedItinForm},
  TransferHotelsFm in '..\forms\TransferHotelsFm.pas' {TransferHotelsForm},
  FixedItinCityFm in '..\forms\FixedItinCityFm.pas' {FixedItinCityForm},
  CostPackagesFm in '..\forms\CostPackagesFm.pas' {CostPackagesForm},
  ThemeFm in '..\forms\ThemeFm.pas' {ThemeForm},
  RpQuoDetailedItineraryFm in '..\reports\RpQuoDetailedItineraryFm.pas' {RpQuoDetailedItineraryForm},
  FixedItinCostingFm in '..\forms\FixedItinCostingFm.pas' {FixedItinCostingForm},
  FITItineraryFm in '..\forms\FITItineraryFm.pas' {FITItineraryForm},
  QuoLineCostTraceAgentFm in '..\forms\QuoLineCostTraceAgentFm.pas' {QuoLineCostTraceAgentForm},
  QuoCostingTraceFm in '..\forms\QuoCostingTraceFm.pas' {QuoCostingTraceForm},
  SightSeeingPriceListFm in '..\forms\SightSeeingPriceListFm.pas' {SightSeeingPriceListForm},
  GuidePriceListFm in '..\forms\GuidePriceListFm.pas' {GuidePriceListForm},
  MiscPriceListFm in '..\forms\MiscPriceListFm.pas' {MiscPriceListForm},
  SubThemesFm in '..\forms\SubThemesFm.pas' {SubThemesForm},
  PrincipalAgentFm in '..\forms\PrincipalAgentFm.pas' {PrincipalAgentForm},
  RptBookTransferArrivalAllFm in '..\reports\RptBookTransferArrivalAllFm.pas' {RptBookTransferArrivalAllForm},
  WebTransferFm in '..\forms\WebTransferFm.pas' {WebTransferForm},
  BCPOptionFm in '..\forms\BCPOptionFm.pas' {BcpOptionForm},
  ConsultantsFm in '..\forms\ConsultantsFm.pas' {ConsultantsForm},
  FixedItinTipsFm in '..\forms\FixedItinTipsFm.pas' {FixedItinTipsForm},
  SelectElementsFm in '..\forms\SelectElementsFm.pas' {SelectElementsForm},
  ImportErrorsFm in '..\forms\ImportErrorsFm.pas' {ImportErrorsForm},
  FixedItinCloseDatesFm in '..\forms\FixedItinCloseDatesFm.pas' {FixedItinCloseDatesForm},
  QuoModulesFm in '..\forms\QuoModulesFm.pas' {QuoModulesForm},
  QuoModuleElemListFm in '..\forms\QuoModuleElemListFm.pas' {QuoModuleElemListForm},
  AdditionalRemarksFm in '..\forms\AdditionalRemarksFm.pas' {AdditionalRemarksForm},
  WebPagesFm in '..\forms\WebPagesFm.pas' {WebPagesForm},
  Image2Fm in '..\forms\Image2Fm.pas' {Image2Form},
  QuoReceiptsFm in '..\forms\QuoReceiptsFm.pas' {QuoReceiptsForm},
  QuoModifyDateFm in '..\forms\QuoModifyDateFm.pas' {QuoModifyDateForm},
  TrainExtraChargesFm in '..\forms\TrainExtraChargesFm.pas' {TrainExtraChargesForm},
  ImagePropertiesFm in '..\..\..\Guala\Far 2009\Forms\ImagePropertiesFm.pas' {ImagePropertiesForm},
  MisFitProfitabilityFm in '..\forms\MisFitProfitabilityFm.pas' {MisFitProfitabilityForm},
  MisAccommodationFm in '..\forms\MisAccommodationFm.pas' {MisAccommodationForm},
  FlightExcelImportUt in '..\forms\FlightExcelImportUt.pas',
  TrainExcelImportUt in '..\forms\TrainExcelImportUt.pas',
  Tds_ExcelReportsUt in '..\forms\Tds_ExcelReportsUt.pas',
  QuoFixedRateSsModifyFm in '..\forms\QuoFixedRateSsModifyFm.pas' {QuoFixedRateSsModifyForm},
  QuoFixedRateAccModifyFm in '..\forms\QuoFixedRateAccModifyFm.pas' {QuoFixedRateAccModifyForm},
  QuoFixedRateInterCityModifyFm in '..\forms\QuoFixedRateInterCityModifyFm.pas' {QuoFixedRateInterCityModifyForm},
  QuoFixedRateTrsfModifyFm in '..\forms\QuoFixedRateTrsfModifyFm.pas' {QuoFixedRateTrsfModifyForm},
  QuoFixedRateTrainModifyFm in '..\forms\QuoFixedRateTrainModifyFm.pas' {QuoFixedRateTrainModifyForm},
  QuoFixedRateTranspModuleModifyFm in '..\forms\QuoFixedRateTranspModuleModifyFm.pas' {QuoFixedRateTranspModuleModifyForm},
  Custom_Presto_Fm in '..\forms\Custom_Presto_Fm.pas' {Custom_Presto_Form},
  QuoPrintFm in '..\forms\QuoPrintFm.pas' {QuoPrintForm},
  Custom_1ML_2DG_Type2_Fm in '..\forms\Custom_1ML_2DG_Type2_Fm.pas' {Custom_1ML_2DG_Type2_Form},
  QuoExclFm in '..\forms\QuoExclFm.pas' {QuoExclForm},
  RpQuoHotelList2Fm in '..\reports\RpQuoHotelList2Fm.pas' {RpQuoHotelList2Form},
  RpQuoItineraryFm in '..\reports\RpQuoItineraryFm.pas' {RpQuoItineraryForm},
  Custom_1ML_Fm in '..\forms\Custom_1ML_Fm.pas' {Custom_1ML_Form},
  QuoExclusionAgentFm in '..\forms\QuoExclusionAgentFm.pas' {QuoExclusionAgentForm},
  WebPymtStatusFm in '..\forms\WebPymtStatusFm.pas' {WebPymtStatusForm},
  RpQuoHotelListFm in '..\reports\RpQuoHotelListFm.pas' {RpQuoHotelListForm},
  CurrenciesFm in '..\forms\CurrenciesFm.pas' {CurrenciesForm},
  InvExchangeRateFm in '..\forms\InvExchangeRateFm.pas' {InvExchangeRateForm},
  TaxFm in '..\forms\TaxFm.pas' {TaxForm},
  CentralTaxFm in '..\forms\CentralTaxFm.pas' {CentralTaxForm},
  AccountHeadFm in '..\forms\AccountHeadFm.pas' {AccountHeadForm},
  RpQuoModuleFm in '..\reports\RpQuoModuleFm.pas' {RpQuoModuleForm},
  AgentCancelPolicyFm in '..\forms\AgentCancelPolicyFm.pas' {AgentCancelPolicyForm},
  EntryTaxFm in '..\forms\EntryTaxFm.pas' {EntryTaxForm},
  Custom_1MG_1DG_Fm in '..\forms\Custom_1MG_1DG_Fm.pas' {Custom_1MG_1DG_Form},
  ReportParamFm in '..\forms\ReportParamFm.pas' {ReportParamForm},
  Custom_1MG_2DG_Type2_Fm in '..\forms\Custom_1MG_2DG_Type2_Fm.pas' {Custom_1MG_2DG_Type2_Form},
  Custom_1MG_2DG_Fm in '..\forms\Custom_1MG_2DG_Fm.pas' {Custom_1MG_2DG_Form},
  TrainCategoriesFm in '..\forms\TrainCategoriesFm.pas' {TrainCategoriesForm},
  QuoFixedRateCarHireModifyFm in '..\forms\QuoFixedRateCarHireModifyFm.pas' {QuoFixedRateCarHireModifyForm},
  ServiceFm in '..\forms\ServiceFm.pas' {ServiceForm},
  CitiesFm in '..\forms\CitiesFm.pas' {CitiesForm},
  DistancesFm in '..\forms\DistancesFm.pas' {DistancesForm},
  TrainsFm in '..\forms\TrainsFm.pas' {TrainsForm},
  Custom_Tickets_MG_Fm in '..\forms\Custom_Tickets_MG_Fm.pas' {Custom_Tickets_MG_Form},
  HotelFm in '..\forms\HotelFm.pas' {HotelForm},
  Custom_BookingsFm in '..\forms\Custom_BookingsFm.pas' {Custom_BookingsForm},
  Custom_CostSrv_Fm in '..\forms\Custom_CostSrv_Fm.pas' {Custom_CostSrv_Form},
  BookingsUt in '..\forms\BookingsUt.pas',
  ElemCityGroupsCostFm in '..\forms\ElemCityGroupsCostFm.pas' {ElemCityGroupsCostForm},
  QuoFixedRateAccommodationFm in '..\forms\QuoFixedRateAccommodationFm.pas' {QuoFixedRateAccommodationForm},
  QuoFixedRateAccFm in '..\forms\QuoFixedRateAccFm.pas' {QuoFixedRateAccForm},
  ElemCityGroupsFm in '..\forms\ElemCityGroupsFm.pas' {ElemCityGroupsForm},
  ElementsFm in '..\forms\ElementsFm.pas' {ElementsForm},
  ModuleElementsFm in '..\forms\ModuleElementsFm.pas' {ModuleElementsForm},
  ElemAccFm in '..\forms\ElemAccFm.pas' {ElemAccForm},
  ElemTrainFm in '..\forms\ElemTrainFm.pas' {ElemTrainForm},
  ElemTrsfFm in '..\forms\ElemTrsfFm.pas' {ElemTrsfForm},
  ElemAccCostFm in '..\forms\ElemAccCostFm.pas' {ElemAccCostForm},
  ElemSightCostFm in '..\forms\ElemSightCostFm.pas' {ElemSightCostForm},
  ElemTrsfCostFm in '..\forms\ElemTrsfCostFm.pas' {ElemTrsfCostForm},
  ElemCarCostFm in '..\forms\ElemCarCostFm.pas' {ElemCarCostForm},
  ElemInterCityCostFm in '..\forms\ElemInterCityCostFm.pas' {ElemInterCityCostForm},
  ElemSightseeingFm in '..\forms\ElemSightseeingFm.pas' {ElemSightseeingForm},
  ElemCarFm in '..\forms\ElemCarFm.pas' {ElemCarForm},
  ElemInterCitiesFm in '..\forms\ElemInterCitiesFm.pas' {ElemInterCitiesForm},
  QuoModuleListFm in '..\forms\QuoModuleListFm.pas' {QuoModuleListForm},
  Quotations_ExcelReportsUt in '..\forms\Quotations_ExcelReportsUt.pas',
  RpQuoWelcomeFm in '..\reports\RpQuoWelcomeFm.pas' {RpQuoWelcomeForm},
  Custom_1ML_1DG_1SDG_Fm in '..\forms\Custom_1ML_1DG_1SDG_Fm.pas' {Custom_1ML_1DG_1SDG_Form},
  AccountFm in '..\forms\AccountFm.pas' {AccountForm},
  InvoicesFm in '..\forms\InvoicesFm.pas' {InvoicesForm},
  QuoExclusionMastFm in '..\forms\QuoExclusionMastFm.pas' {QuoExclusionMastForm},
  Custom_1ML_2DG_Fm in '..\forms\Custom_1ML_2DG_Fm.pas' {Custom_1ML_2DG_Form},
  VoucherFm in '..\forms\VoucherFm.pas' {VoucherForm},
  ImageCategoriesFm in '..\forms\ImageCategoriesFm.pas' {ImageCategoriesForm},
  TrainCategoryClassFm in '..\forms\TrainCategoryClassFm.pas' {TrainCategoryClassForm},
  PrinAgentAcHeadsFm in '..\forms\PrinAgentAcHeadsFm.pas' {PrinAgentAcHeadsForm},
  ImageTypesFm in '..\forms\ImageTypesFm.pas' {ImageTypesForm},
  FitStatusListFm in '..\forms\FitStatusListFm.pas' {FitStatusListForm},
  RptAccountsCashVoucherFm in '..\reports\RptAccountsCashVoucherFm.pas' {RptAccountsCashVoucherForm},
  RouteFinderFm in '..\forms\RouteFinderFm.pas' {RouteFinderForm},
  HotelRankingFm in '..\forms\HotelRankingFm.pas' {HotelRankingForm},
  Custom_1MG_Fm in '..\forms\Custom_1MG_Fm.pas' {Custom_1MG_Form},
  TicketsFm in '..\forms\TicketsFm.pas' {TicketsForm},
  InvVouCostCompareFm in '..\forms\InvVouCostCompareFm.pas' {InvVouCostCompareForm},
  RptAccountsServTaxTranspFm in '..\reports\RptAccountsServTaxTranspFm.pas' {RptAccountsServTaxTranspForm},
  Custom_Bookings_Fm in '..\forms\Custom_Bookings_Fm.pas' {Custom_Bookings_Form},
  CostAccFm in '..\forms\CostAccFm.pas' {CostAccForm},
  Custom_CostAcc_Fm in '..\forms\Custom_CostAcc_Fm.pas' {Custom_CostAcc_Form},
  CostSrvFm in '..\forms\CostSrvFm.pas' {CostSrvForm},
  ServiceCityAddFm in '..\forms\ServiceCityAddFm.pas' {ServiceCityAddForm},
  Custom_1ML_1DG_Fm in '..\forms\Custom_1ML_1DG_Fm.pas' {Custom_1ML_1DG_Form},
  PrestoFm in '..\forms\PrestoFm.pas' {PrestoForm},
  Custom_PackagesDayActivity_Fm in '..\forms\Custom_PackagesDayActivity_Fm.pas' {Custom_PackagesDayActivity_Form},
  PackageDayActivityFm in '..\forms\PackageDayActivityFm.pas' {PackageDayActivityForm},
  SupplementChargesFm in '..\forms\SupplementChargesFm.pas' {SupplementChargesForm},
  Presto_Ut in '..\forms\Presto_Ut.pas',
  TicketClassExceptionsFm in '..\forms\TicketClassExceptionsFm.pas' {TicketClassExceptionsForm},
  QuoPaxChangeFm in '..\forms\QuoPaxChangeFm.pas' {QuoPaxChangeForm},
  HotelNightsFm in '..\forms\HotelNightsFm.pas' {HotelNightsForm},
  ModuleCostings_Ut in '..\forms\ModuleCostings_Ut.pas',
  Custom_2MG_2DG_Fm in '..\forms\Custom_2MG_2DG_Fm.pas' {Custom_2MG_2DG_Form},
  MasterToursFm in '..\forms\MasterToursFm.pas' {MasterToursForm},
  MasterTourEditFm in '..\forms\MasterTourEditFm.pas' {MasterTourEditForm},
  TourEditFm in '..\forms\TourEditFm.pas' {TourEditForm},
  QuoModules_ExcelReportsUt in '..\forms\QuoModules_ExcelReportsUt.pas',
  TicketExceptionsFm in '..\forms\TicketExceptionsFm.pas' {TicketExceptionsForm},
  QuoDayActivityFm in '..\forms\QuoDayActivityFm.pas' {QuoDayActivityForm},
  Custom_QuoDayActivity_Fm in '..\forms\Custom_QuoDayActivity_Fm.pas' {Custom_QuoDayActivity_Form},
  MasterTickets2Fm in '..\forms\MasterTickets2Fm.pas' {MasterTickets2Form},
  MasterPackages2Fm in '..\forms\MasterPackages2Fm.pas' {MasterPackages2Form},
  ItineraryPackagesFm in '..\forms\ItineraryPackagesFm.pas' {ItineraryPackagesForm},
  VoucherPackagesFm in '..\forms\VoucherPackagesFm.pas' {VoucherPackagesForm},
  Custom_CostPkg_Fm in '..\forms\Custom_CostPkg_Fm.pas' {Custom_CostPkg_Form},
  CostPkgFm in '..\forms\CostPkgFm.pas' {CostPkgForm},
  ExpCostCompareFm in '..\forms\ExpCostCompareFm.pas' {ExpCostCompareForm},
  NearCitiesFm in '..\forms\NearCitiesFm.pas' {NearCitiesForm},
  TspFm in '..\forms\TspFm.pas' {TspForm},
  CarHirePriceListFm in '..\forms\CarHirePriceListFm.pas' {CarHirePriceListForm},
  HotelFutureBookFm in '..\forms\HotelFutureBookFm.pas' {HotelFutureBookForm},
  SQLiteFm in '..\forms\SQLiteFm.pas' {SQLiteForm},
  RpInvGstFm in '..\reports\RpInvGstFm.pas' {RpInvGstForm},
  RptInvoiceBoatFm in '..\reports\RptInvoiceBoatFm.pas' {RptInvoiceBoatForm},
  RptPrintVouchers_2_Fm in '..\reports\RptPrintVouchers_2_Fm.pas' {RptPrintVouchers_2_Form},
  Gst_TourInvoice_ExcelReportsUt in '..\forms\Gst_TourInvoice_ExcelReportsUt.pas',
  Gst_QuoModules_ExcelReportsUt in '..\forms\Gst_QuoModules_ExcelReportsUt.pas',
  QuoExclusionFm in '..\forms\QuoExclusionFm.pas' {QuoExclusionForm},
  QuoExclusionDisplayFm in '..\forms\QuoExclusionDisplayFm.pas' {QuoExclusionDisplayForm},
  ExchangeRateFm in '..\forms\ExchangeRateFm.pas' {ExchangeRateForm},
  AircraftTypesFm in '..\forms\AircraftTypesFm.pas' {AircraftTypesForm},
  AgentBoardNameFm in '..\forms\AgentBoardNameFm.pas' {AgentBoardNameForm},
  GST_HotelPriceList_ExcelReportsUt in '..\forms\GST_HotelPriceList_ExcelReportsUt.pas',
  GST_Car_P2P_ExcelReportsUt in '..\forms\GST_Car_P2P_ExcelReportsUt.pas',
  GST_Car_CG_ExcelReportsUt in '..\forms\GST_Car_CG_ExcelReportsUt.pas',
  GST_Car_PerKm_ExcelReportsUt in '..\forms\GST_Car_PerKm_ExcelReportsUt.pas',
  GST_Trains_ExcelReportsUt in '..\forms\GST_Trains_ExcelReportsUt.pas',
  GST_Sightseeing_ExcelReportsUt in '..\forms\GST_Sightseeing_ExcelReportsUt.pas',
  GstAdvancesFm in '..\forms\GstAdvancesFm.pas' {GstAdvancesForm},
  GstAdvAdjFm in '..\forms\GstAdvAdjFm.pas' {GstAdvAdjForm},
  GST_SightseeingDetails_ExcelReportsUt in '..\forms\GST_SightseeingDetails_ExcelReportsUt.pas',
  CarHireAgentsFm in '..\forms\CarHireAgentsFm.pas' {CarHireAgentsForm},
  Gst_TourInvoiceDept_ExcelReportsUt in '..\forms\Gst_TourInvoiceDept_ExcelReportsUt.pas',
  Accounts_FIRCPayments_ExcelReportsUt in '..\forms\Accounts_FIRCPayments_ExcelReportsUt.pas',
  BookingsFm in '..\forms\BookingsFm.pas' {BookingsForm},
  BookingFm in '..\forms\BookingFm.pas' {BookingForm},
  RpQuoEstimateFm in '..\reports\RpQuoEstimateFm.pas' {RpQuoEstimateForm},
  RpQuoExclusionFm in '..\reports\RpQuoExclusionFm.pas' {RpQuoExclusionForm},
  RpQuoHeaderFm in '..\reports\RpQuoHeaderFm.pas' {RpQuoHeaderForm},
  RpQuoInclusionFm in '..\reports\RpQuoInclusionFm.pas' {RpQuoInclusionForm},
  RptFitAccConfirmFm in '..\reports\RptFitAccConfirmFm.pas' {RptFitAccConfirmForm},
  RptSingleVoucher2Fm in '..\reports\RptSingleVoucher2Fm.pas' {RptSingleVoucher2Form},
  TravelScheduleFm in '..\forms\TravelScheduleFm.pas' {TravelScheduleForm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TBackOfficeDataModule, BackOfficeDataModule);
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TSplashScreenForm, SplashScreenForm);
  Application.Run;
end.
