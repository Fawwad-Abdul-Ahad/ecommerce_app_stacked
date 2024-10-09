import 'package:ecommerce_app/ui/services/addtoCart.dart';
import 'package:stacked/stacked.dart';

import '../../../app/app.locator.dart';

class AddtocartViewmodel extends BaseViewModel {
  final cartService = locator<CartService>();
  
  List<Map<String, dynamic>> get cartList => cartService.cartItems;

  void addtoCartFunc(String proImg, String proName, String proPrice, int proQuantity) {
    cartService.addtoCart(proImg, proName, proPrice, proQuantity: proQuantity);
    notifyListeners();
  }

  void incQuantityFunc(String proName) {
    cartService.incQuantity(proName);
    notifyListeners();
  }

  void decQuantityFunc(String proName) {
    cartService.decQuantity(proName);
    notifyListeners();
  }

  void removeCartFunc(String proName) {
    cartService.removeCart(proName);
    notifyListeners();
  }

  void clearCartFunc() {
    cartService.clearCart();
    notifyListeners();
  }
}
