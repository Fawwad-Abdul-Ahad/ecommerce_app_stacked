import 'package:ecommerce_app/app/app.locator.dart';
import 'package:ecommerce_app/app/app.router.dart';
import 'package:ecommerce_app/ui/views/home/home_view.dart';
import 'package:ecommerce_app/ui/views/pinverification/pinverification_viewmodel.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class LoginViewModel extends BaseViewModel {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final keyForm = GlobalKey<FormState>();
  final _navigationService = locator<NavigationService>();
  bool isVisible = false;
  changeVisibility(){
    isVisible = !isVisible;
    notifyListeners();
  }

  navigateToSignUp() {
    _navigationService.navigateToSignupView();
  }

  Future <String> loginUser({
  
  required String email, required String pass,
 })async{
  setBusy(true);
  String res = "Some error occured";
  try{
    if(email.isNotEmpty || pass.isNotEmpty){
      await _auth.signInWithEmailAndPassword(email: email, password: pass
      );
      res = "success";
      _navigationService.clearStackAndShowView(HomeView());
    }
    else{
      res = "Please enter all the field";  
    }
  }catch(e){
    return e.toString();
  }
return res;

 }


}
