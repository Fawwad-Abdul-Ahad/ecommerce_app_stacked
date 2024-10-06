// import 'package:ecommerce_app/ui/services/navigation_services.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ecommerce_app/ui/common/app_colors.dart';
import 'package:ecommerce_app/ui/common/ui_helpers.dart';
// import 'package:ecommerce_app/ui/views/detailsScreen/detailsScreen_viewmodel.dart';

class ProductCard extends StatelessWidget {
  final String image;
  final String name;
  final String qtyprice;
  final String price;

  ProductCard({
    super.key,
    required this.image,
    required this.name,
    required this.qtyprice,
    required this.price,
  });
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: () {
        // navigateToDetails.navigateToDetailsScreen(name);
      },
      child: Container(
        padding: EdgeInsets.all(12),
        height: height * 0.31,
        width: width * 0.45,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: const Color.fromARGB(255, 203, 203, 203),
            width: 2,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: name, // Using product name as a unique tag for the Hero animation
              child: Container(
                width: width * 1,
                height: height * 0.1,
                child: Center(child: Image.asset(image)),
              ),
            ),
            SizedBox(height: height * 0.02),
            Text(
              name,
              style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: height * 0.005),
            Text(
              qtyprice,
              style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w600, color: greyColor),
            ),
            SizedBox(height: height * 0.03),
            Container(
              width: width * 1,
              height: height * 0.06,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(price, style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w600)),
                  Container(
                    width: width * 0.12,
                    height: height * 1,
                    decoration: BoxDecoration(
                      color: colorButtons,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Icon(Icons.add, color: Colors.white, size: 28),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
