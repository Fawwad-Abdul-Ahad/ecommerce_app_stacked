import 'dart:async';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stacked/stacked.dart';
import 'package:ecommerce_app/app/app.locator.dart';
import 'package:ecommerce_app/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';

class StartupViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  String finalEmail = '';

  // Run logic at startup
  Future runStartupLogic() async {
    await getValidation();

    // Navigate based on the validation result after 5 seconds
    Timer(Duration(seconds: 5), () {
      if (finalEmail.isEmpty) {
        _navigationService.replaceWith(Routes.welcomeView);
      } else {
        _navigationService.replaceWith(Routes.homeView);
      }
    });
  }

  // Validate if the user is already logged in by checking stored email
  Future getValidation() async {
    final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    var obtainedEmail = sharedPreferences.getString('email');
    finalEmail = obtainedEmail ?? '';
    print("Email obtained from storage: $finalEmail");
  }
}
