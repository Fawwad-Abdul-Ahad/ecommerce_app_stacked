import 'package:ecommerce_app/ui/common/app_colors.dart';
import 'package:ecommerce_app/ui/common/ui_helpers.dart';
import 'package:ecommerce_app/ui/views/signup/signup_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController passController = TextEditingController();

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => SignupViewModel(),
        builder: (context, viewModel, child) => Scaffold(
              body: SafeArea(
                child: Container(
                  padding: EdgeInsets.all(15),
                  width: screenWidth * 1,
                  height: screenHeight * 1,
                  child: SingleChildScrollView(
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
                          "Signup",
                          style: GoogleFonts.poppins(
                              fontSize: getResponsiveMassiveFontSize(context),
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: screenHeight * 0.01,
                        ),
                        Text(
                          // textAlign: TextAlign.center,
                          "Enter your credentials to continue",
                          style: GoogleFonts.poppins(
                              color: const Color.fromARGB(255, 123, 123, 123),
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: screenHeight * 0.05,
                        ),
                        Form(
                          key: viewModel.keyForm,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                // textAlign: TextAlign.center,
                                "Username",
                                style: GoogleFonts.poppins(
                                    fontSize: getResponsiveXXLFontSize(context),
                                    color: const Color.fromARGB(
                                        255, 123, 123, 123),
                                    fontWeight: FontWeight.w700),
                              ),
                              TextFormField(
                                controller: nameController,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'please enter email';
                                  }
                                },
                                decoration: InputDecoration(
                                    hintText: "Enter your Name",
                                    hintStyle: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w600)),
                              ),
                              SizedBox(
                                height: screenHeight * 0.05,
                              ),
                              Text(
                                // textAlign: TextAlign.center,
                                "Email",
                                style: GoogleFonts.poppins(
                                    fontSize: getResponsiveXXLFontSize(context),
                                    color: const Color.fromARGB(
                                        255, 123, 123, 123),
                                    fontWeight: FontWeight.w700),
                              ),
                              TextFormField(
                                controller: emailController,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'please enter email';
                                  }
                                },
                                decoration: InputDecoration(
                                    hintText: "Enter your Email",
                                    hintStyle: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w600)),
                              ),
                              SizedBox(
                                height: screenHeight * 0.05,
                              ),
                              Text(
                                // textAlign: TextAlign.center,
                                "Password",
                                style: GoogleFonts.poppins(
                                    fontSize: getResponsiveXXLFontSize(context),
                                    color: const Color.fromARGB(
                                        255, 123, 123, 123),
                                    fontWeight: FontWeight.w700),
                              ),
                              TextFormField(
                                controller: passController,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'please enter password';
                                  }
                                },
                                decoration: InputDecoration(
                                    hintText: "Enter your Password",
                                    hintStyle: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w600)),
                              ),
                              SizedBox(
                                height: screenHeight * 0.02,
                              ),
                              Container(
                                height: screenHeight * 0.05,
                                width: screenWidth * 01,
                                // color: Colors.blue,
                                child: Text(
                                  "By continuing you agree to our Terms of Service and Privacy Policy.",
                                  textAlign: TextAlign.start,
                                  style: GoogleFonts.poppins(
                                    color: greyColor,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: screenHeight * 0.05,
                              ),
                              SizedBox(
                                height: screenHeight * 0.06,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: colorButtons,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(12))),
                                    onPressed: () {
                                      if (viewModel.keyForm.currentState!
                                          .validate()) {
                                        viewModel.SignupUser(
                                            email: emailController.text,
                                            pass: passController.text,
                                            name: nameController.text);
                                      }
                                    },
                                    child: Center(
                                      child: viewModel.isBusy
                                          ? CircularProgressIndicator(color: Colors.white,)
                                          : Text(
                                              "SignUp",
                                              style: GoogleFonts.poppins(
                                                  fontSize:
                                                      getResponsiveXXLFontSize(
                                                          context),
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                    )),
                              ),
                              SizedBox(
                                height: screenHeight * 0.02,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: screenWidth * 1,
                          height: screenHeight * 0.03,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Already have an account?",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500),
                              ),
                              // SizedBox(width: screenWidth*0.01,),
                              InkWell(
                                onTap: () {
                                  viewModel.navigateToSigninView();
                                },
                                child: Text("Signin",
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w500,
                                        color: colorButtons)),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ));
  }
}
