import 'package:ecommerce_app/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:ecommerce_app/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:ecommerce_app/ui/views/beverages/beverages_screen_view.dart';
// import 'package:ecommerce_app/ui/views/detailsScreen/detailsScreen_view.dart';
import 'package:ecommerce_app/ui/views/home/home_view.dart';
import 'package:ecommerce_app/ui/views/locationPicker/location_picker_view.dart';
import 'package:ecommerce_app/ui/views/loggingPage/loggingPage_view.dart';
import 'package:ecommerce_app/ui/views/mobileverification/mobileverification_view.dart';
import 'package:ecommerce_app/ui/views/numbersignin/numbersignin_view.dart';
import 'package:ecommerce_app/ui/views/pinverification/pinverification_view.dart';
import 'package:ecommerce_app/ui/views/signup/signup_view.dart';
// import 'package:ecommerce_app/ui/views/numberSigin/number_signin_view.dart';
// import 'package:ecommerce_app/ui/views/home/welcome_view.dart';
// import 'package:ecommerce_app/ui/views/home/home_view.dart';
import 'package:ecommerce_app/ui/views/startup/startup_view.dart';
import 'package:ecommerce_app/ui/views/welcome/welcome_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: SplashScreen),
    MaterialRoute(page: WelcomeView),
    MaterialRoute(page: NumberSigninView),
    MaterialRoute(page: MobileVerificationView),
    MaterialRoute(page: MobileVerificationView),
    MaterialRoute(page: PinVerificationView),
    MaterialRoute(page: LocationPickerView),
    MaterialRoute(page: LoginView),
    MaterialRoute(page: SignupView),
    MaterialRoute(page: BeveragesView),




    // MaterialRoute(page: WelcomeView),


    // @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    // @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
