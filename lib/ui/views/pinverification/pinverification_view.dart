import 'package:ecommerce_app/ui/common/app_colors.dart';
import 'package:ecommerce_app/ui/common/ui_helpers.dart';
import 'package:ecommerce_app/ui/views/pinverification/pinverification_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';
import 'package:stacked/stacked.dart';

class PinVerificationView extends StatelessWidget {
  const PinVerificationView({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    GlobalKey<FormState> formKey = GlobalKey<FormState>();
    final pinFocusNode = FocusNode(); // Define a FocusNode

    return ViewModelBuilder.reactive(
        viewModelBuilder: () => PinVerificationModel(),
        builder: (context, viewModel, child) => Scaffold(
              appBar: AppBar(
                leading: InkWell(
                  onTap: (){
                    viewModel.naviagateToMobileVerification();
                  },
                  child: Icon(Icons.arrow_back_ios)),
              ),
              body: Container(
                padding: EdgeInsets.all(15),
                width: screenWidth,
                height: screenHeight,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: screenHeight * 0.05),
                    Text(
                      "Enter your 4-digit code",
                      style: GoogleFonts.poppins(
                          fontSize: getResponsiveMassiveFontSize(context),
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height: screenHeight * 0.02),
                    Text(
                      "Code",
                      style: GoogleFonts.poppins(
                          color: greyColor, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height: screenHeight * 0.02),
                    Form(
                      // key: formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Pinput(
                            focusNode: pinFocusNode, // Attach FocusNode
                            keyboardType: TextInputType.number,
                            validator: (value) {
                              return viewModel.checkVerification(value);
                            },
                            onCompleted: (pin) {
                              formKey.currentState?.validate(); // Validate on completion
                            },
                          ),
                          SizedBox(height: 10),
                          Text(
                            viewModel.isVerify ? 'Verification Successful' : '',
                            style: TextStyle(
                              color: viewModel.isVerify ? Colors.green : Colors.red,
                            ),
                          ),
                          // SizedBox(height: 20),
                          // ElevatedButton(
                          //   onPressed: () {
                          //     if (formKey.currentState?.validate() ?? false) {
                          //       // Do something on successful validation
                          //       print('Pin verified');
                          //     }
                          //   },
                          //   child: Text('Verify'),
                          // ),
                        ],
                      ),
                    ),
                  ],

                ),

              ),
              floatingActionButton: FloatingActionButton(
            backgroundColor: primaryColor,
            onPressed: (){
              viewModel.isVerify?viewModel.navigatetoLocationView():'';
          },child: Icon(Icons.arrow_forward_ios,color: Colors.white,)),
            ));
  }
}
