
import 'package:ecommerce_app/app/app.locator.dart';
import 'package:ecommerce_app/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';


class MobileVerificationViewModel extends BaseViewModel{
   final _navigationService = locator<NavigationService>();
  
  navigateToNumberSigninView(){
    _navigationService.navigateToNumberSigninView();
  }

   navigateToPinVerificationViewFunc(){
    _navigationService.navigateToPinVerificationView();
   }
}