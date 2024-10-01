import 'package:ecommerce_app/ui/views/locationPicker/location_picker_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class LocationPickerView extends StatelessWidget {
  const LocationPickerView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(viewModelBuilder:()=> LocationPickerViewModel(), builder: (context,viewModel,child)=>Scaffold(
      body: Container(),
    ));
  }
}