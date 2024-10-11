import 'package:ecommerce_app/ui/common/app_colors.dart';
import 'package:ecommerce_app/ui/common/ui_helpers.dart';
import 'package:ecommerce_app/ui/views/addtocart/addtocart_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:google_fonts/google_fonts.dart';

class AddtoCartView extends StatelessWidget {
  const AddtoCartView({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return ViewModelBuilder<AddtocartViewmodel>.reactive(
        viewModelBuilder: () => AddtocartViewmodel(),
        builder: (context, viewModel, child) => Scaffold(
            appBar: AppBar(
              title: Text(
                "My Cart",
                style: GoogleFonts.poppins(
                    fontSize: 24, fontWeight: FontWeight.w500),
              ),
              centerTitle: true,
            ),
            body: SingleChildScrollView(
              // Wrap in SingleChildScrollView
              child: viewModel.cartList.isNotEmpty
                  ? ListView.builder(
                      physics:
                          NeverScrollableScrollPhysics(), // Disable ListView scrolling
                      shrinkWrap: true, // Use available space
                      itemCount: viewModel.cartList.length,
                      itemBuilder: (context, index) {
                        final cartItem = viewModel.cartList[index];
                        // return Container(
                        //   width: screenWidth*1,

                        //   padding: EdgeInsets.all(10),
                        //   margin: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
                        //   decoration: BoxDecoration(
                        //     border: Border.all(color: Colors.grey),
                        //     borderRadius: BorderRadius.circular(10),
                        //   ),
                        //   child: Container(
                        //     width: screenWidth*1,
                        //     child: Row(
                        //       mainAxisAlignment: MainAxisAlignment.start,
                        //       children: [
                        //         Container(
                        //           width: screenWidth * 0.2,
                        //           child: Image.asset(
                        //             cartItem['proImg'] ?? 'assets/default_image.png',
                        //             width: screenWidth * 0.2,
                        //             height: screenHeight * 0.1,
                        //             fit: BoxFit.contain,
                        //           ),
                        //         ),
                        //         SizedBox(width: screenWidth * 0.02),
                        //         Container(
                        //           width: screenWidth * 0.4,
                        //           color: Colors.green,
                        //           child: Column(
                        //             crossAxisAlignment: CrossAxisAlignment.start,
                        //             children: [
                        //               Text(
                        //                 cartItem['proName'] ?? 'Unknown Product',
                        //                 style: GoogleFonts.poppins(
                        //                   fontSize: 16,
                        //                   fontWeight: FontWeight.w600,
                        //                 ),
                        //               ),
                        //               Text(
                        //                 "\$${cartItem['proPrice'] ?? '0.0'}",
                        //                 style: GoogleFonts.poppins(
                        //                   fontSize: 14,
                        //                   color: Colors.grey,
                        //                 ),
                        //               ),

                        //             ],
                        //           ),
                        //         ),
                        //         Container(
                        //           width: screenWidth * 0.1,
                        //           color: Colors.blue,
                        //           height: screenHeight * 0.1,
                        //           child: Row(
                        //             children: [
                        //               IconButton(
                        //                 icon: Icon(Icons.remove),
                        //                 onPressed: () {
                        //                   viewModel.decQuantityFunc(cartItem['proName']);
                        //                 },
                        //               ),
                        //               Text(
                        //                 "${cartItem['proQuantity'] ?? '1'}",
                        //                 style: GoogleFonts.poppins(fontSize: 16),
                        //               ),
                        //               IconButton(
                        //                 icon: Icon(Icons.add),
                        //                 onPressed: () {
                        //                   viewModel.incQuantityFunc(cartItem['proName']);
                        //                 },
                        //               ),
                        //             ],
                        //           ),
                        //         ),

                        //       ],
                        //     ),
                        //   ),
                        // );
                        return Container(
                          // margin: EdgeInsets.symmetric(horizontal: 10,vertical: 4),
                          padding: EdgeInsets.all(12),
                          width: screenWidth * 1,
                          height: screenHeight * 0.22,
                          // decoration:  BoxDecoration(
                          // // color: Colors.green,
                          //   border: Border.all(
                          //     width: 2,
                          //     color: const Color.fromARGB(255, 209, 209, 209)
                          //   ),
                          //   // borderRadius: BorderRadius.circular(12)s
                          // ),
                          child: Column(
                            children: [
                              Divider(
                                height: 12,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                height: screenHeight * 0.02,
                              ),
                              Center(
                                  child: Row(
                                    // mainAxisAlignment: main,
                                children: [
                                  Container(
                                    width: screenWidth * 0.25,
                                    height: screenHeight * 0.1,
                                    // color: Colors.green,
                                    child: Center(
                                      child:
                                          Image.asset('${cartItem['proImg']}'),
                                    ),
                                  ),
                                  SizedBox(
                                    width: screenWidth*0.05,
                                  ),
                                  Container(
                                    width: screenWidth * 0.35,
                                    height: screenHeight * 0.15,
                                    // color: Colors.green,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          cartItem['proName'] ??
                                              'Unknown Product',
                                          style: GoogleFonts.poppins(
                                            fontSize: 22,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        Text(
                                          "\$${cartItem['proPrice'] ?? '0.0'}",
                                          style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            color: Colors.grey,
                                          ),
                                        ),
                                        SizedBox(
                                          height: screenHeight * 0.01,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            InkWell(
                                              onTap: () {
                                                viewModel.decQuantityFunc(
                                                    cartItem['proName']);
                                              },
                                              child: Container(
                                                width: screenWidth * 0.1,
                                                height: screenHeight * 0.05,
                                                decoration: BoxDecoration(
                                                  // color: Colors.white,
                                                  border: Border.all(
                                                    color: greyColor,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                ),
                                                child: Icon(Icons.remove),
                                              ),
                                            ),
                                            Text(
                                              "${cartItem['proQuantity'] ?? '1'}",
                                              style: GoogleFonts.poppins(
                                                  fontSize: 18),
                                            ),
                                            InkWell(
                                              onTap: () {
                                                viewModel.incQuantityFunc(
                                                    cartItem['proName']);
                                              },
                                              child: Container(
                                                width: screenWidth * 0.1,
                                                height: screenHeight * 0.05,
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                      color: greyColor,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12)),
                                                child: Icon(Icons.add),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: screenWidth*0.1,
                                  ),
                                  Container(
                                    // alignment: ,
                                    width: screenWidth * 0.1,
                                    height: screenHeight * 0.15,
                                    // color: Colors.green,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          width: screenWidth*0.08,
                                          height: screenHeight*0.04,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color:const Color.fromARGB(255, 124, 124, 124)
                                            ),
                                            borderRadius: BorderRadius.circular(70)
                                          ),
                                          child: Icon(
                                            Icons.close,
                                            size: 24,
                                            color: const Color.fromARGB(255, 2, 2, 2),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )),
                            ],
                          ),
                        );
                      },
                    )
                  : Center(
                      child: Text(
                        "Your cart is empty",
                        style: GoogleFonts.poppins(fontSize: 18),
                      ),
                    ),
            )));
  }
}
