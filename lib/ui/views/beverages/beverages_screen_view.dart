import 'package:ecommerce_app/ui/views/beverages/beverages_screen_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class BeveragesView extends StatelessWidget {
  const BeveragesView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(viewModelBuilder: ()=> BeveragesScreenViewmodel(), builder: (context,viewModel,child)=>Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        title: Text("Beverages"),
        centerTitle: true,
      ),
    ));
  }
}