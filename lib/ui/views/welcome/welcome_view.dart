import 'package:ecommerce_app/ui/common/app_colors.dart';
import 'package:ecommerce_app/ui/common/ui_helpers.dart';
import 'package:ecommerce_app/ui/views/welcome/welcome_view_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';
import 'package:styled_divider/styled_divider.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return ViewModelBuilder.reactive(
        onViewModelReady: (viewModel) {},
        viewModelBuilder: () => WelcomeViewModel(),
        builder: (context, viewModel,Widget? child) => Scaffold(
              body: Container(
                  width: screenWidth * 1,
                  height: screenHeight * 1,
                  // padding:const EdgeInsets.only(top: 15,bottom: 0,left: 15,right: 15),
                  child: Stack(
                    children: [
                      SafeArea(
                        
                        child: Container(
                          padding: EdgeInsets.all(18),
                          width:screenWidth,
                          // color: Colors./blue,
                          child: Column(
                            
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: screenHeight*0.1,),
                              // Image.asset('assets/images/logo.png'),
                              Image.asset("assets/images/logocolor.png"),
                              Row(
                                children: [
                                  Text("DESHI",style: GoogleFonts.poppins(fontSize: getResponsiveMassiveFontSize(context),fontWeight: FontWeight.bold,color: primaryColor),),
                                  SizedBox(width: screenWidth*0.01,),
                                  Text("MART",style: GoogleFonts.poppins(fontSize: getResponsiveMassiveFontSize(context),fontWeight: FontWeight.bold,color: const Color.fromARGB(255, 255, 147, 53)),),
                                ],
                              ),
                              Text("Desh ka Market",style: GoogleFonts.poppins(fontSize: getResponsiveExtraLargeFontSize(context),color:greyColor),),
                                SizedBox(height: screenHeight*0.03,),
                              Container(
                                width: screenWidth*1,
                                height: screenHeight*.06,
                                // color: Colors.yellow,
                                child: Row(
                                  children: [
                                    Text("image"),
                                    SizedBox(width: screenWidth*0.05,),
                                    Text("Organic Groceries",style:GoogleFonts.poppins(color:const Color.fromARGB(255, 143, 143, 143),fontSize: getResponsiveXXLFontSize(context),))
                                  ],
                                ),
                              ),
                              StyledDivider(
                                color:greyColor,
                                height: 2,
                                thickness: 2,
                                lineStyle: DividerLineStyle.dotted,
                              ),
                              Container(
                                width: screenWidth*1,
                                height: screenHeight*.06,
                                // color: const Color.fromARGB(255, 5, 144, 12),
                                child: Row(
                                  children: [
                                    Text("image"),
                                    SizedBox(width: screenWidth*0.05,),
                                    Text("Whole foods and vegitable",style:GoogleFonts.poppins(color:const Color.fromARGB(255, 143, 143, 143),fontSize: getResponsiveXXLFontSize(context),))
                                  ],
                                ),
                              ),
                               const StyledDivider(
                                color:greyColor,
                                height: 2,
                                thickness: 2,
                                lineStyle: DividerLineStyle.dotted,
                              ),
                              Container(
                                width: screenWidth*1,
                                height: screenHeight*.06,
                                // color: const Color.fromARGB(255, 15, 2, 84),
                                child: Row(
                                  children: [
                                    Text("image"),
                                    SizedBox(width: screenWidth*0.05,),
                                    Text("Fast Delivery",style:GoogleFonts.poppins(color:const Color.fromARGB(255, 143, 143, 143),fontSize: getResponsiveXXLFontSize(context),))
                                  ],
                                ),
                              ),
                              const StyledDivider(
                                color:greyColor,
                                height: 2,
                                thickness: 2,
                                lineStyle: DividerLineStyle.dotted,
                              ),
                              Container(
                                width: screenWidth*1,
                                height: screenHeight*.06,
                                // color: const Color.fromARGB(255, 49, 45, 2),
                                child: Row(
                                  children: [
                                    Text("image"),
                                    SizedBox(width: screenWidth*0.05,),
                                    Text("East Refund and return",style:GoogleFonts.poppins(color:const Color.fromARGB(255, 143, 143, 143),fontSize: getResponsiveXXLFontSize(context),))
                                  ],
                                ),
                              ),
                              const StyledDivider(
                                color:greyColor,
                                height: 2,
                                thickness: 2,
                                lineStyle: DividerLineStyle.dotted,
                              ),
                              Container(
                                width: screenWidth*1,
                                height: screenHeight*.06,
                                // color: const Color.fromARGB(255, 248, 245, 215),
                                child: Row(
                                  children: [
                                    Text("image"),
                                    SizedBox(width: screenWidth*0.05,),
                                    Text("Secure and Safe",style:GoogleFonts.poppins(color:const Color.fromARGB(255, 143, 143, 143),fontSize: getResponsiveXXLFontSize(context),))
                                  ],
                                ),
                              )
                              
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                          bottom: 0,
                          child: Container(
                            decoration: BoxDecoration(
                              color: primaryColor,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(18),
                                  topRight: Radius.circular(18)),
                            ),
                            padding: EdgeInsets.all(18),
                            height: screenHeight * 0.3,
                            width: screenWidth,
                            child: Column(
                              children: [
                                Text(
                                  "Welcome To our Store",
                                  style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize:
                                          getResponsiveMassiveFontSize(context),
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: screenHeight * 0.01,
                                ),
                                Text("Get your grocery in as fast as one hours",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: getResponsiveExtraLargeFontSize(
                                          context),
                                    )),
                                SizedBox(
                                  height: screenHeight * 0.12,
                                ),
                                SizedBox(
                                  height: screenHeight * 0.05,
                                  width: screenWidth * 01,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                    ),
                                    onPressed: () {
                                      viewModel.navigateToSiginNumberView();
                                    },
                                    child: Text(
                                      "Get Started",
                                      style: GoogleFonts.poppins(
                                          fontSize:
                                              getResponsiveXXLFontSize(
                                                  context),
                                          color: primaryColor,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                // SizedBox(height: screenHeight*0.12,),

                              ],
                            ),
                          )),
                    ],
                  )),
            ));
  }
}
