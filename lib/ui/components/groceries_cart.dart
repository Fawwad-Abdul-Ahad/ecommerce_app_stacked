import 'package:ecommerce_app/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GroceriesCart extends StatelessWidget {
   GroceriesCart({super.key,required this.imageUrl,required this.name});
  String imageUrl;
  String name;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      padding: EdgeInsets.all(12),
      width: screenWidth*0.55,
      height: screenHeight*0.1,
      decoration: BoxDecoration(
      color: const Color.fromARGB(255, 255, 218, 234),
      borderRadius: BorderRadius.circular(15),
      
      ),
      child: Row(
        children: [
          Container(
            height: screenHeight*1,
            width: screenWidth*0.2,
            child: Center(child: Image.asset(imageUrl)),
          ),
          SizedBox(width: screenWidth*0.02,),
          Text(name,style: GoogleFonts.poppins(fontSize: getResponsiveXXLFontSize(context),fontWeight: FontWeight.w600),),
        ],
      ),
    );
  }
}