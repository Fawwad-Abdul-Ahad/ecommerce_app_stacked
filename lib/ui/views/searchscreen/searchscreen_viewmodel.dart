
import 'package:ecommerce_app/app/app.locator.dart';
import 'package:ecommerce_app/ui/views/beverages/beverages_screen_view.dart';
import 'package:ecommerce_app/ui/views/searchscreen/searchscreen_view.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SearchScreenViewModel extends BaseViewModel {
  navigationtoBeveragesView(){
  navigationService.navigateToView(BeveragesView());
  
  }
  final navigationService = locator<NavigationService>();
  List<Product> proList = [
    Product(name: 'Fresh Fruits and Vegetables', image: 'assets/images/Fruits.png',color: const Color.fromARGB(255, 196, 255, 198)),
    Product(name: 'Cooking Oil and Ghee', image: 'assets/images/oil.png',color: const Color.fromARGB(255, 179, 221, 255)),
    Product(name: 'Meat and Fish', image: 'assets/images/MeatandFish.png',color: const Color.fromARGB(255, 255, 248, 189)),
    Product(name: 'Bakery and Snacks', image: 'assets/images/snacks.png',color: const Color.fromARGB(255, 255, 199, 195)),
    Product(name: 'Dairy and Eggs', image: 'assets/images/eggs.png',color: const Color.fromARGB(255, 255, 224, 179)),
    Product(name: 'Beverages', image: 'assets/images/Fruits.png',color: const Color.fromARGB(255, 184, 223, 255),navigation: (){
      locator<NavigationService>().navigateToView(BeveragesView());
    },),
  ];

  List<Product> filteredList = [];
  String searchQuery = '';

  SearchScreenViewModel() {
    // Initially show all products
    filteredList = proList;
  }

  void filterProducts(String query) {
    searchQuery = query;
    if (searchQuery.isEmpty) {
      filteredList = proList;
    } else {
      filteredList = proList
          .where((product) =>
              product.name.toLowerCase().contains(searchQuery.toLowerCase()))
          .toList();
    }
    notifyListeners(); // Notify UI to rebuild
  }

}
