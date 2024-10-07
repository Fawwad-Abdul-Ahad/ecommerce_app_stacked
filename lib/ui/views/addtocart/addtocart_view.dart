import 'package:ecommerce_app/ui/views/addtocart/addtocart_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';

class AddtoCartView extends StatelessWidget {
  const AddtoCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => AddtocartViewmodel(),
        builder: (context, viewModel, child) => Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text("My Cart",style: GoogleFonts.poppins(fontWeight: FontWeight.w500),
            ),
          ),
        ));
  }
}
