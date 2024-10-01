// import 'package:ecommerce_app/ui/views/numberSigin/number_sigin_viewmodel.dart';
import 'package:ecommerce_app/ui/common/app_colors.dart';
import 'package:ecommerce_app/ui/common/ui_helpers.dart';
import 'package:ecommerce_app/ui/views/numbersignin/numbersignin_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';
import 'package:styled_divider/styled_divider.dart';

class NumberSigninView extends StatelessWidget {
  const NumberSigninView({super.key});

  @override
  Widget build(BuildContext context) {
  double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return ViewModelBuilder.reactive(
        onViewModelReady: (viewModel) {},
        viewModelBuilder: () => NumberSigninViewModel(),
        builder: (context,NumberSigninViewModel viewModel,Widget? child) => Scaffold(
          body: Container(
            padding: EdgeInsets.all(15),
            height: screenHeight*1,
            width: screenWidth*1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: screenHeight*0.4,),
                Text("Get Your Groceries\nWith Nectar",style: GoogleFonts.poppins(fontSize: getResponsiveMassiveFontSize(context),fontWeight: FontWeight.w600)),
                SizedBox(height: screenHeight*0.05,),
                InkWell(
                  onTap: (){
                    viewModel.navigateToMobileVerification();
                  },
                  child: Container(
                    height: screenHeight*0.06,
                    // color: Colors.green,
                    child: Row(
                      children: [
                        Text("image"),
                        SizedBox(width: screenWidth*0.05,),
                        Text("+92",style: GoogleFonts.poppins(fontSize: getResponsiveMassiveFontSize(context)),)
                      ],
                    ),
                  ),
                ),
                StyledDivider(
                  lineStyle: DividerLineStyle.solid,
                  color: greyColor,
                  thickness: 1,
                  height: 0,
                ),
                SizedBox(height: screenHeight*0.05,),
                Container(
                  width: screenWidth*1,
                  height: screenHeight*0.03,
                  // color: Colors.blue,
                  child: Text("Or Connect with social media",textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: getResponsiveExtraLargeFontSize(context)),)),
                SizedBox(height: screenHeight*0.05,),
                Container(
                  width: screenWidth*1,
                  height: screenHeight*0.08,
                  decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(15),
                
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Icon"),
                      Text("Continue with Google",style: GoogleFonts.poppins(fontSize:getResponsiveXXLFontSize(context),color: Colors.white ),)
                    ],
                  ),
                ),
                SizedBox(height: screenHeight*0.02,),
                Container(
                  width: screenWidth*1,
                  height: screenHeight*0.08,
                  decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 10, 86, 179),
                  borderRadius: BorderRadius.circular(15),
                
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Icon"),
                      Text("Continue with Facebook",style: GoogleFonts.poppins(fontSize:getResponsiveXXLFontSize(context),color: Colors.white ),)
                    ],
                  ),
                ),

              ],
            ),
          ),
        ));
  }
}
