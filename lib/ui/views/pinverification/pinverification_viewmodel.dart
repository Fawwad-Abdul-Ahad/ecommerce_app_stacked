import 'package:ecommerce_app/app/app.locator.dart';
import 'package:ecommerce_app/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class PinVerificationModel extends BaseViewModel {
   final _navigationService = locator<NavigationService>();
  String validPin = '1234';
  bool isVerify = false;

  String? checkVerification(String? value) {
    if (value == null || value.isEmpty) {
      isVerify = false;
      notifyListeners(); // Update UI
      return "Please enter a valid Pin";
    }

    if (value == validPin) {
      isVerify = true;
      notifyListeners(); // Update UI
      return null; // Valid
    } else {
      isVerify = false;
      notifyListeners(); // Update UI
      return "Incorrect Pin";
    }
  }

  naviagateToMobileVerification(){
    _navigationService.back();
  }
  
  navigatetoLocationView(){
  _navigationService.navigateToLocationPickerView();
    
  }
}
