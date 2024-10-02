import 'dart:convert';
import 'dart:io';

import 'package:ecommerce_app/app/app.locator.dart';
import 'package:ecommerce_app/app/app.router.dart';
import 'package:ecommerce_app/ui/views/mobileverification/mobileverification_view_model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:uuid/uuid.dart';
import 'package:http/http.dart' as http;

class LocationPickerViewModel extends BaseViewModel {
   final _navigationService = locator<NavigationService>();

  List<dynamic> listoflocation = [];
  var uuid = const Uuid();
  var sessionToken = '1234567890';
  TextEditingController searchController = TextEditingController();
  superInitState() async {
    await Future.delayed(Duration(seconds: 0));

    searchController.addListener(() {
      _onChanged();
    });
  }

  _onChanged() {
    if (sessionToken == null) {
      sessionToken = uuid.v4();
    }
    getSuggestion(searchController.text);
  }

  getSuggestion(String input) async {
    const String api_Key = 'AIzaSyDrHKl8IxB4cGXIoELXQOzzZwiH1xtsRf4';
    try {
      String baseURL =
          'https://maps.googleapis.com/maps/api/place/autocomplete/json';
      String request =
          '$baseURL?input=$input&key=$api_Key&sessiontoken=$sessionToken';
      var response = await http.get(Uri.parse(request));
      var data = json.decode(response.body)['predictions'];
      if (kDebugMode) {
        print('mydata');
        print(data);
      }
      if (response.statusCode == 200) {
        listoflocation = json.decode(response.body)['predictions'];
      } else {
        throw Exception('Failed to load predictions');
      }
    } catch (e) {
      print(e);
    }
  }
  navigateBack(){
    _navigationService.back();
  }

  navigateToLogin(){
    _navigationService.navigateToLoginView();
  }
}
