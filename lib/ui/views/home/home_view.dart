import 'package:ecommerce_app/ui/widgets/prod_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stacked/stacked.dart';
import 'package:ecommerce_app/ui/common/app_colors.dart';
import 'package:ecommerce_app/ui/common/ui_helpers.dart';
// import 'package:carousel_slider/carousel_slider.dart';

import 'home_viewmodel.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    List<Image> carouselItems = [
      Image.asset('assets/images/chincken_vector.png'),
      Image.asset('assets/images/poster2.jpg'),
      Image.asset('assets/images/poster3.jpg'),
    ];

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return ViewModelBuilder.reactive(
      onViewModelReady: (viewModel) {},
      viewModelBuilder: () => HomeViewModel(),
      builder: (context, viewModel, child) => Scaffold(
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.all(12),
            width: screenWidth,
            height: screenHeight,
            child: Column(
              children: [
                Container(
                  width: screenWidth,
                  height: screenHeight * 0.05,
                  child: Row(
                    children: [
                      Image.asset("assets/images/vector_carrot.png"),
                      SizedBox(width: screenWidth * 0.15),
                      Row(
                        children: [
                          Icon(Icons.location_on),
                          Text(
                            "Karachi, Pakistan",
                            style: GoogleFonts.poppins(
                              fontSize: getResponsiveXXLFontSize(context),
                              color: const Color.fromARGB(255, 45, 45, 45),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.01,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(18),
                  
                  child: Image.asset('assets/images/poster1.jpg')),
                  SizedBox(
                  height: screenHeight * 0.02,
                ),
                Container(
                  width: screenWidth*1,
                  height: screenHeight*0.06,
                  // color: Colors.green,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Exclusive Offer",style: GoogleFonts.poppins(fontSize: getResponsiveMassiveFontSize(context),fontWeight: FontWeight.w500),),
                      Text("See all",style: GoogleFonts.poppins(fontSize: getResponsiveXXLFontSize(context),fontWeight: FontWeight.w500,color: colorButtons),)
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ProductCard(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
