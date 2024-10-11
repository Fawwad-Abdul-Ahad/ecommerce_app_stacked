import 'package:ecommerce_app/ui/services/addtoCart.dart';
import 'package:stacked/stacked.dart';

import '../../../app/app.locator.dart';

class AddtocartViewmodel extends BaseViewModel {
  final cartService = locator<CartService>();
  
  double totPrice = 0;
  List<Map<String, dynamic>> get cartList => cartService.cartItems;

  void addtoCartFunc(String proImg, String proName, String proPrice, int proQuantity) {
    cartService.addtoCart(proImg, proName, proPrice, proQuantity: proQuantity);
    calcPriceFunc();
    notifyListeners();
  }

  void incQuantityFunc(String proName) {
    cartService.incQuantity(proName);
    calcPriceFunc();
    notifyListeners();  
  }

  void decQuantityFunc(String proName) {
    cartService.decQuantity(proName);
    calcPriceFunc();
    notifyListeners();
  }

  void removeCartFunc(String proName) {
    cartService.removeCart(proName);
    calcPriceFunc();
    notifyListeners();
  }

  void clearCartFunc() {
    cartService.clearCart();
    calcPriceFunc();
    notifyListeners();
  }

  void calcPriceFunc(){
    totPrice = cartService.calcPrice();
    notifyListeners();
  }

  // void sumPrice(){
  //   cartService.cartItems[];
  // }
}
