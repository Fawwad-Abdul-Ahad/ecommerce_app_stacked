import 'package:ecommerce_app/ui/common/app_colors.dart';
import 'package:ecommerce_app/ui/common/ui_helpers.dart';
import 'package:ecommerce_app/ui/views/locationPicker/location_picker_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';

class LocationPickerView extends StatelessWidget {
  const LocationPickerView({super.key});


  @override
  Widget build(BuildContext context) {

    TextEditingController searchController = TextEditingController();
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return ViewModelBuilder.reactive(
         onViewModelReady: (viewModel) {
        // Initialization logic like you would in initState
        viewModel.superInitState();
      },
        viewModelBuilder: () => LocationPickerViewModel(  ),
        builder: (context, viewModel, child) => Scaffold(
             appBar: AppBar(
                leading: InkWell(
                  onTap: (){
                    viewModel.navigateBack();
                  },
                  child: Icon(Icons.arrow_back_ios)),
              ),
              body: Container(
                width: screenWidth * 1,
                height: screenHeight * 1,
                padding: EdgeInsets.all(15),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/illustration.png'),
                    SizedBox(height: screenHeight*0.04,),
                    Text(
                      "Select Your Location",
                      style: GoogleFonts.poppins(
                          fontSize: getResponsiveMassiveFontSize(context),
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height: screenHeight*0.01,),
                    Text(
                      textAlign: TextAlign.center,
                      "Swithch on your location to stay in tune with what's happening in your area",
                      style: GoogleFonts.poppins(
                          color: const Color.fromARGB(255, 123, 123, 123), fontWeight: FontWeight.w500),
                    ),
                    TextField(
                      controller: viewModel.searchController,
                      decoration: InputDecoration(
                        hintText: 'Search Location',
                        labelText:'Your zone',

                      ),
                    ),
                    Visibility(
                      visible: searchController.text.isEmpty?false:true,
                      child: Expanded(child: ListView.builder(
                        itemCount: viewModel.listoflocation.length,
                        itemBuilder: (context,index){
                         return Row(
                          children: [
                            Text("index"),
                            Text('$index'),
                          ],
                         );
                      })),
                    ),
                        SizedBox(height: screenHeight*0.02,),

                    ElevatedButton(onPressed: (){

                    }, child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.location_searching,color: const Color.fromARGB(255, 51, 51, 51),),
                        SizedBox(width: screenWidth*0.04,),
                        Text("My Location",style: GoogleFonts.poppins(fontSize: getResponsiveXXLFontSize(context),color:primaryColor,fontWeight: FontWeight.w500),),
                      ],
                    ))
                    
                  ],
                ),

              ),
              floatingActionButton: FloatingActionButton(
            backgroundColor: primaryColor,
            onPressed: (){
              viewModel.navigateToLogin();
          },child: Icon(Icons.arrow_forward_ios,color: Colors.white,)),
            ));
  }
}
