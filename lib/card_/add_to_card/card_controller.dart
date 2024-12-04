import 'package:get/get.dart';

class CartController extends GetxController {
  // Observable list for cart items
  var cartItems = <Map<String, dynamic>>[].obs;

  // Method to add a product to the cart
  void addToCart(Map<String, dynamic> product) {
    if (!cartItems.contains(product)) {
      cartItems.add(product);
    }
  }

  // Method to remove a product from the cart
  void removeFromCart(Map<String, dynamic> product) {
    cartItems.remove(product);
  }
}
