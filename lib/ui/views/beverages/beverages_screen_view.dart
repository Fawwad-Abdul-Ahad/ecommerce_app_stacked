import 'package:ecommerce_app/ui/components/prod_card_component.dart';
import 'package:ecommerce_app/ui/views/beverages/beverages_screen_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';

class BeveragesView extends StatelessWidget {
  const BeveragesView({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return ViewModelBuilder.reactive(
        viewModelBuilder: () => BeveragesScreenViewmodel(),
        builder: (context, viewModel, child) => Scaffold(
              appBar: AppBar(
                leading: InkWell(
                    onTap: () {
                      viewModel.navigateToBack();
                    },
                    child: Icon(Icons.arrow_back_ios)),
                title: Text("Beverages",style: GoogleFonts.poppins(fontWeight: FontWeight.w500    ),),
                centerTitle: true,
              ),
              body: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                  height: screenHeight * 1.02,
                  width: screenWidth * 1,
                  padding: EdgeInsets.all(12),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ProductCard(
                              image: 'assets/images/coke.png',
                              name: 'Diet coke',
                              qtyprice: "335 ml, priceg",
                              price: "1.50"),
                          ProductCard(
                              image: 'assets/images/sprite.png',
                              name: 'Sprite',
                              qtyprice: "335ml priceg",
                              price: "1.25"),
                        ],
                      ),
                      SizedBox(
                        height: screenHeight * 0.02,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ProductCard(
                              image: 'assets/images/redjuice.png',
                              name: 'Apple Juice',
                              qtyprice: "1 l, priceg",
                              price: "12.50"),
                          ProductCard(
                              image: 'assets/images/juice.png',
                              name: 'Orange Juice',
                              qtyprice: "2l priceg",
                              price: "15.25"),
                        ],
                      ),
                      SizedBox(
                        height: screenHeight * 0.02,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // ProductCard(image: 'assets/images/redjuice.png', name: 'Apple Juice', qtyprice: "1 l, priceg", price: "\$12.50"),
                          ProductCard(
                              image: 'assets/images/coca.png',
                              name: 'Couca Cola can',
                              qtyprice: "335ml priceg",
                              price: "4.25"),
                          ProductCard(
                              image: 'assets/images/pepsi.png',
                              name: 'Apple Juice',
                              qtyprice: "320 ml, priceg",
                              price: "4.50"),
                        
                        ],
                      ),
                      SizedBox(
                        height: screenHeight * 0.01,
                      )
                    ],
                  ),
                ),
              ),
            ));
  }
}
