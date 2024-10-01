import 'package:ecommerce_app/ui/common/app_colors.dart';
import 'package:ecommerce_app/ui/common/ui_helpers.dart';
import 'package:ecommerce_app/ui/views/mobileverification/mobileverification_view_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';

class MobileVerificationView extends StatelessWidget {
  const MobileVerificationView({super.key});

  @override
  Widget build(BuildContext context) {
     double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    final formKey = GlobalKey<FormState>();
    return ViewModelBuilder.reactive(
        onViewModelReady: (viewModel) {},
        viewModelBuilder: () => MobileVerificationViewModel(),
        builder: (context, viewModel, child) => Scaffold(
          appBar: AppBar(
            leading: Icon(Icons.arrow_back_ios),
          ),
          body: Container(
            padding: EdgeInsets.all(15),
            width: screenWidth,
            height: screenHeight,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: screenHeight*0.05,),
                Text("Enter your mobile number",style: GoogleFonts.poppins(fontSize: getResponsiveMassiveFontSize(context),fontWeight: FontWeight.w500),),
                SizedBox(height: screenHeight*0.02,),
                Text("Mobile Number",style: GoogleFonts.poppins(color: greyColor,fontWeight: FontWeight.w500),),
                SizedBox(height: screenHeight*0.05,),
                Form(child: Column(

                ))
              ],
            ),
          ),
        ));
  }
}
