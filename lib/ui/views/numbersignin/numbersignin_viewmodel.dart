// import 'package:ecommerce_app/ui/views/numbersignin/numbersignin_view.dart';
import 'package:ecommerce_app/app/app.router.dart';
import 'package:ecommerce_app/ui/views/startup/startup_viewmodel.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

class NumberSigninViewModel extends BaseViewModel{
   final _navigationService = locator<NavigationService>();

   navigateToMobileVerification(){
    _navigationService.navigateToMobileVerificationView();
   }
}