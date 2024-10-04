import 'package:ecommerce_app/app/app.bottomsheets.dart';
import 'package:ecommerce_app/app/app.dialogs.dart';
import 'package:ecommerce_app/app/app.locator.dart';
import 'package:ecommerce_app/app/app.router.dart';
import 'package:ecommerce_app/ui/common/app_strings.dart';
import 'package:ecommerce_app/ui/views/loggingPage/loggingPage_view.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  navigateToLogin(){
    _navigationService.clearStackAndShowView(LoginView());
  }
}
