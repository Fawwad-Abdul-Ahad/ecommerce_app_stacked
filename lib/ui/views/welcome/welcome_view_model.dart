import 'package:ecommerce_app/app/app.locator.dart';
import 'package:ecommerce_app/app/app.router.dart';
// import 'package:ecommerce_app/ui/views/startup/startup_viewmodel.dart';
// import 'package:ecommerce_app/ui/views/welcome/welcome_view.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class WelcomeViewModel extends BaseViewModel{
  final _navigationService = locator<NavigationService>();

  navigateToSiginNumberView(){
    _navigationService.navigateToNumberSigninView();
  }
}