import 'package:ecommerce_app/app/app.locator.dart';
import 'package:ecommerce_app/ui/views/home/home_view.dart';
import 'package:ecommerce_app/ui/views/locationPicker/location_picker_viewmodel.dart';
import 'package:ecommerce_app/ui/views/loggingPage/loggingPage_view.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/widgets.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SignupViewModel extends BaseViewModel {
  bool isLoading = false;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  DatabaseReference databaseRef = FirebaseDatabase.instance.ref('Users');
  final keyForm = GlobalKey<FormState>();
  final _navigationService = locator<NavigationService>();

  navigateToSigninView() {
    _navigationService.clearStackAndShowView(LoginView());
  }

 Future<String> SignupUser({
  required String email,
  required String pass,
  required String name,
}) async {
  String res = "Not successful";
  try {
    setBusy(true); // Start showing the loading indicator
    if (email.isNotEmpty || name.isNotEmpty || pass.isNotEmpty) {
      UserCredential credential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: pass,
      );
      String id = DateTime.now().microsecondsSinceEpoch.toString();

      // Adding user details to Firebase
      await databaseRef.child(id).set({
        "name": name,
        "email": email,
        "id": id,
      });

      res = "success";
      // Simulate delay for signup process
      // await Future.delayed(Duration(seconds: 2));

      // Navigate to the home screen after successful signup
      _navigationService.clearStackAndShowView(HomeView());
    }
  } catch (e) {
    print(e.toString());
  } finally {
    setBusy(false); // Stop showing the loading indicator
  }

  return res;
}

}
