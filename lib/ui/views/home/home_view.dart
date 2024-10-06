import 'package:ecommerce_app/ui/components/groceries_cart.dart';
import 'package:ecommerce_app/ui/components/prod_card_component.dart';
import 'package:ecommerce_app/ui/views/searchscreen/searchscreen_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stacked/stacked.dart';
import 'package:ecommerce_app/ui/common/app_colors.dart';
import 'package:ecommerce_app/ui/common/ui_helpers.dart';
import 'home_viewmodel.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    // Define the screens for navigation
    List<Widget> screens = [
      SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(12),
            width: screenWidth,
            height: screenHeight*1.75,
            child: Column(
              children: [
                Container(
                  width: screenWidth,
                  height: screenHeight * 0.05,
                  child: Row(
                    children: [
                      Image.asset("assets/images/vector_carrot.png"),
                      SizedBox(width: screenWidth * 0.05),
                      Row(
                        children: [
                          Icon(Icons.location_on),
                          // Show the selected destination
                          Text(
                            'No destination set', // This will be updated dynamically from viewModel
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
                SizedBox(height: screenHeight * 0.01),
                ClipRRect(
                  borderRadius: BorderRadius.circular(18),
                  child: Image.asset('assets/images/poster1.jpg'),
                ),
                SizedBox(height: screenHeight * 0.02),
                Container(
                  width: screenWidth * 1,
                  height: screenHeight * 0.06,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Exclusive Offer",
                        style: GoogleFonts.poppins(
                          fontSize: getResponsiveMassiveFontSize(context),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "See all",
                        style: GoogleFonts.poppins(
                          fontSize: getResponsiveXXLFontSize(context),
                          fontWeight: FontWeight.w500,
                          color: colorButtons,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: screenHeight * 0.01),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ProductCard(
                        image: 'assets/images/banana.png',
                        name: 'Organic Bananas',
                        qtyprice: '7pcs, priceg',
                        price: '\$4.99',
                      ),
                      SizedBox(width: screenWidth * 0.05),
                      ProductCard(
                        image: 'assets/images/apple.png',
                        name: 'Red Apple',
                        qtyprice: '1Kg, priceg',
                        price: '\$4.99',
                      ),
                      SizedBox(width: screenWidth * 0.05),
                      ProductCard(
                        image: 'assets/images/sprtie_can.png',
                        name: 'Sprite Can',
                        qtyprice: '325ml Price',
                        price: '\$1.50',
                      ),
                      SizedBox(width: screenWidth * 0.05),
                      ProductCard(
                        image: 'assets/images/noodle.png',
                        name: 'Egg Noodle',
                        qtyprice: '2L Price',
                        price: '\$15.99',
                      ),
                      SizedBox(width: screenWidth * 0.05),
                      ProductCard(
                        image: 'assets/images/eggs.png',
                        name: 'Egg Cicken White',
                        qtyprice: '180 gram',
                        price: '\$1.99',
                      ),
                    ],
                  ),
                ),
                SizedBox(height: screenHeight * 0.03),
                Container(
                  width: screenWidth * 1,
                  height: screenHeight * 0.06,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Best Selling",
                        style: GoogleFonts.poppins(
                          fontSize: getResponsiveMassiveFontSize(context),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "See all",
                        style: GoogleFonts.poppins(
                          fontSize: getResponsiveXXLFontSize(context),
                          fontWeight: FontWeight.w500,
                          color: colorButtons,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: screenHeight*0.01,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ProductCard(
                        image: 'assets/images/ginger.png',
                        name: 'Ginger',
                        qtyprice: '250gm, priceg',
                        price: '\$4.99',
                      ),
                      SizedBox(width: screenWidth * 0.05),
                      ProductCard(
                        image: 'assets/images/tomato.png',
                        name: 'Tomato',
                        qtyprice: '1Kg, priceg',
                        price: '\$4.99',
                      ),
                      SizedBox(width: screenWidth * 0.05),
                      ProductCard(
                        image: 'assets/images/egless.png',
                        name: 'Mayon Eggless',
                        qtyprice: '325ml Price',
                        price: '\$2.50',
                      ),
                      SizedBox(width: screenWidth * 0.05),
                      ProductCard(
                        image: 'assets/images/chips2.png',
                        name: 'Egg Noodle',
                        qtyprice: '2L Price',
                        price: '\$15.99',
                      ),
                      SizedBox(width: screenWidth * 0.05),
                      ProductCard(
                        image: 'assets/images/eggs.png',
                        name: 'Egg Cicken White',
                        qtyprice: '180 gram',
                        price: '\$1.99',
                      ),
                    ],
                  ),
                ),

                SizedBox(height: screenHeight * 0.03),
                Container(
                  width: screenWidth * 1,
                  height: screenHeight * 0.06,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Groceries",
                        style: GoogleFonts.poppins(
                          fontSize: getResponsiveMassiveFontSize(context),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "See all",
                        style: GoogleFonts.poppins(
                          fontSize: getResponsiveXXLFontSize(context),
                          fontWeight: FontWeight.w500,
                          color: colorButtons,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: screenHeight*0.01,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      GroceriesCart(imageUrl: 'assets/images/pulses.png', name: 'Pulses',),
                      SizedBox(width: screenWidth*0.05,),
                      GroceriesCart(imageUrl: 'assets/images/rice.png', name: 'Rice',),

                    ],
                  ),
                ),
                SizedBox(height: screenHeight*0.04,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ProductCard(
                        image: 'assets/images/meat.png',
                        name: 'Meat',
                        qtyprice: '1Kg, priceg',
                        price: '\$4.99',
                      ),
                      SizedBox(width: screenWidth * 0.05),
                      ProductCard(
                        image: 'assets/images/chicken.png',
                        name: 'Chicken',
                        qtyprice: '1Kg, priceg',
                        price: '\$2.99',
                      ),
                      SizedBox(width: screenWidth * 0.05),
                      ProductCard(
                        image: 'assets/images/egless.png',
                        name: 'Mayon Eggless',
                        qtyprice: '325ml Price',
                        price: '\$2.50',
                      ),
                      SizedBox(width: screenWidth * 0.05),
                      ProductCard(
                        image: 'assets/images/chips2.png',
                        name: 'Egg Noodle',
                        qtyprice: '2L Price',
                        price: '\$15.99',
                      ),
                      SizedBox(width: screenWidth * 0.05),
                      ProductCard(
                        image: 'assets/images/eggs.png',
                        name: 'Egg Cicken White',
                        qtyprice: '180 gram',
                        price: '\$1.99',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      SearchscreenView(),
      Center(child: Text("Products")),
      Center(child: Text("Contact")),
      Center(child: Text("Settings")),
    ];

    return ViewModelBuilder.reactive(
      onViewModelReady: (viewModel) {
        viewModel.getLocation(); // Fetch destination when view is ready
      },
      viewModelBuilder: () => HomeViewModel(),
      builder: (context, viewModel, child) => Scaffold(
        appBar: AppBar(
          leading: InkWell(
            onTap: () async {
              SharedPreferences sharedPreference =
                  await SharedPreferences.getInstance();
              sharedPreference.remove('email');
              viewModel.navigateToLogin();
            },
            child: Icon(Icons.logout),
          ),
        ),
        body: screens[viewModel.selectedTab], // Display the selected screen
        bottomNavigationBar: BottomNavigationBar(
          // unselectedLabelStyle: TextStyle(color: Colors.blue),
          selectedItemColor: colorButtons,
          unselectedItemColor: Colors.black,
          // selectedLabelStyle: TextStyle(color: colorButtons),
          currentIndex: viewModel.selectedTab, // Bind current index
          onTap: (index) => viewModel.changeTab(index), // Handle tab change
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.shop_rounded),
              label: "Shop",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "Explore",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_checkout_rounded),
              label: "Cart",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline),
              label: "Favorites",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.black,
              ),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}
