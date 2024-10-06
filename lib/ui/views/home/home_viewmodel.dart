import 'package:ecommerce_app/app/app.bottomsheets.dart';
import 'package:ecommerce_app/app/app.dialogs.dart';
import 'package:ecommerce_app/app/app.locator.dart';
import 'package:ecommerce_app/app/app.router.dart';
import 'package:ecommerce_app/ui/common/app_strings.dart';
import 'package:ecommerce_app/ui/views/loggingPage/loggingPage_view.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
    int selectedTab = 0;
  final _navigationService = locator<NavigationService>();
  String? finalDestination = '';

  navigateToLogin() {
    _navigationService.clearStackAndShowView(LoginView());
  }

  Future<void> getLocation() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    finalDestination = sharedPreferences.getString('destination') ?? 'Jamshed Road, Karachi';
    
    // Notify listeners to rebuild UI
    notifyListeners();

  }
  changeTab(int index){
    selectedTab = index;
    notifyListeners();
  }

}

