
import 'package:ecommerce_app/app/app.locator.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class BeveragesScreenViewmodel extends BaseViewModel{
  final _navigationService = locator<NavigationService>();

  navigateToBack(){
    _navigationService.back();
  } 
}