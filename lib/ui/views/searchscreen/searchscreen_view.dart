import 'package:ecommerce_app/ui/views/searchscreen/searchscreen_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';

class Product {
  String name;
  String image;
  Color? color;
  VoidCallback? navigation;
  Product({required this.name, required this.image,required this.color, this.navigation});
}

class SearchscreenView extends StatelessWidget {
  SearchscreenView({super.key});

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return ViewModelBuilder.reactive(
      viewModelBuilder: () => SearchScreenViewModel(),
      builder: (context, viewModel, child) => Scaffold(
        body: SafeArea(
          child: Container(
            width: screenWidth * 1,
            height: screenHeight * 1,
            padding: EdgeInsets.all(12),
            child: Column(
              children: [
                Text(
                  "Find Products",
                  style: GoogleFonts.poppins(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: screenHeight * 0.02),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: TextField(
                    onChanged: (value) => viewModel.filterProducts(value),
                    controller: searchController,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: "Search here",
                      hintStyle: GoogleFonts.poppins(
                        color: const Color.fromARGB(255, 132, 132, 132),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * 0.02),
                Expanded(
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, // Two products per line
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: 0.9, // Adjust to control height/width ratio
                    ),
                    itemCount: viewModel.filteredList.length,
                    itemBuilder: (context, index) {
                     if(viewModel.filteredList.isEmpty){
                      return Center(child: Text("No Item"),);
                     }
                     else{
                       return Padding(
                        padding: const EdgeInsets.all(1.0),
                        child: InkWell(
                          onTap: (){
                            viewModel.filteredList[index].navigation!();
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color:viewModel.filteredList[index].color,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: screenHeight * 0.1,
                                  child: Image.asset(viewModel.filteredList[index].image),
                                ),
                                SizedBox(height: 8), // Add spacing between image and text
                                Text(viewModel.filteredList[index].name,textAlign: TextAlign.center,style: GoogleFonts.poppins(fontWeight: FontWeight.w500),),
                              ],
                            ),
                          ),
                        ),
                      );
                     }
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
