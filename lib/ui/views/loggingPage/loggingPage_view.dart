import 'package:ecommerce_app/ui/common/ui_helpers.dart';
import 'package:ecommerce_app/ui/views/loggingPage/loggingPage_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    GlobalKey<FormState> formKey = GlobalKey<FormState>();
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => LoginViewModel(),
        builder: (context, viewModel, child) => Scaffold(
              body: SafeArea(
                child: Container(
                  padding: EdgeInsets.all(15),
                  width: screenWidth * 1,
                  height: screenHeight * 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          width: screenWidth * 1,
                          height: screenHeight * 0.09,
                          // color: Colors.green,
                          child:
                              Image.asset('assets/images/vector_carrot.png')),
                      SizedBox(
                        height: screenHeight * 0.05,
                      ),
                      Text(
                        "Loging",
                        style: GoogleFonts.poppins(
                            fontSize: getResponsiveMassiveFontSize(context),
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: screenHeight * 0.01,
                      ),
                      Text(
                        // textAlign: TextAlign.center,
                        "Enter your emails and password",
                        style: GoogleFonts.poppins(
                            color: const Color.fromARGB(255, 123, 123, 123),
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: screenHeight * 0.05,
                      ),
                      Form(
                        key: formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              // textAlign: TextAlign.center,
                              "Email",
                              style: GoogleFonts.poppins(
                                  fontSize: getResponsiveXXLFontSize(context),
                                  color:
                                      const Color.fromARGB(255, 123, 123, 123),
                                  fontWeight: FontWeight.w700),
                            ),
                            TextFormField(

                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ));
  }
}
