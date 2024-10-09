import 'package:ecommerce_app/ui/services/addtoCart.dart';

class CartService {
  bool isAddtoCart = false;
  List<Map<String, dynamic>> cartItems = [];

  void addtoCart(String proImg, String proName, String proPrice, {int proQuantity = 1}) {
    int index = cartItems.indexWhere((items) => items['proName'] == proName);

    if (index >= 0) {
      // If the item already exists, update its quantity
      cartItems[index]['proQuantity'] = cartItems[index]['proQuantity'] + proQuantity;
    } else {
      // Add new item to cart
      cartItems.add({
        'proImg': proImg,
        'proName': proName,
        'proPrice': proPrice,
        'proQuantity': proQuantity,
      });
    }
  }

  void addtoCartorNot() {
    isAddtoCart = !isAddtoCart;
  }

  void incQuantity(String proName) {
    int index = cartItems.indexWhere((items) => items['proName'] == proName);
    if (index >= 0) {
      cartItems[index]['proQuantity'] = cartItems[index]['proQuantity'] + 1;
    }
  }

  void decQuantity(String proName) {
    int index = cartItems.indexWhere((items) => items['proName'] == proName);
    if (index >= 0 && cartItems[index]['proQuantity'] > 1) {
      cartItems[index]['proQuantity'] = cartItems[index]['proQuantity'] - 1;
    }
  }

  void removeCart(String proName) {
    cartItems.removeWhere((items) => items['proName'] == proName);
  }

  void clearCart() {
    cartItems.clear();
  }
}
