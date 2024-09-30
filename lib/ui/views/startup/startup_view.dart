import 'package:ecommerce_app/ui/common/app_colors.dart';
import 'package:ecommerce_app/ui/common/ui_helpers.dart';
import 'package:ecommerce_app/ui/views/startup/startup_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.nonReactive(
      onViewModelReady: (viewModel) => viewModel.runStartupLogic(), // Call the startup logic when the ViewModel is ready
      viewModelBuilder: () => StartupViewModel(),
      builder: (BuildContext context, StartupViewModel viewModel, Widget? child) => Scaffold(
        backgroundColor: primaryColor,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // You can place your logo or splash image here
              Image.asset('lib/assets/images/logo.png'),
              Text("DESHI MART",style: GoogleFonts.poppins(fontSize:getResponsiveFontSize(context),color: Colors.white ),),
              SpinKitFadingCircle(color: Colors.white,),
            ],
          ),
        ),
      ),
    );
  }
}
