// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import '../card_/card_controller.dart';
// import '../card_/card_screen.dart';
// import '../favorite_/favorite_screen.dart';
// import '../favorite_/favorites_controllers.dart';
//
// class ProductDetailScreen extends StatelessWidget {
//   final Map<String, dynamic> products;
//
//   const ProductDetailScreen({Key? key, required this.products, required Map<String, String> product})
//       : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     final FavoriteController favoriteController = Get.put(FavoriteController());
//     final CartController cartController = Get.put(CartController());
//
//     return Scaffold(
//       backgroundColor: Colors.greenAccent.shade100,
//       appBar: AppBar(
//         title: const Text(
//           "Product Detail",
//           style: TextStyle(color: Colors.white),
//         ),
//         backgroundColor: Colors.indigo.shade700,
//         elevation: 0,
//         actions: [
//           IconButton(
//             icon: const Icon(Icons.shopping_cart, color: Colors.white),
//             onPressed: () {
//               Get.to(() => const CartScreen());
//             },
//           ),
//           IconButton(
//             icon: const Icon(Icons.favorite, color: Colors.redAccent),
//             onPressed: () {
//               Get.to(() => const FavoriteScreen());
//             },
//           ),
//         ],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Center(
//               child: products['image'] != null
//                   ? Image.network(
//                 products['image'],
//                 height: 200,
//                 fit: BoxFit.cover,
//               )
//                   : const Icon(Icons.image, size: 9, color: Colors.red),
//             ),
//             const SizedBox(height: 20),
//             Text(
//               products['title'] ?? 'No Title',
//               style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//             ),
//             const SizedBox(height: 10),
//             Text(
//               '\$${products['price'] ?? '0'}',
//               style: const TextStyle(fontSize: 18, color: Colors.green),
//             ),
//             Row(
//               children: [
//                 _buildTimerBox("01"),
//                 Text(":"),
//                 _buildTimerBox("36"),
//                 Text(":"),
//                 _buildTimerBox("58"),
//               ],
//             ),
//           ],
//         ),
//             const SizedBox(height: 20),
//              Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 ElevatedButton.icon(
//                   onPressed: () {
//                     favoriteController.addToFavorites(products);
//                     Get.snackbar("Favorite", "Product added to favorites!",
//                         snackPosition: SnackPosition.BOTTOM);
//                   },
//                   icon: const Icon(Icons.favorite_border),
//                   label: const Text("Favorites"),
//                 ),
//                 ElevatedButton.icon(
//                   onPressed: () {
//                     cartController.addToCart(products);
//                     Get.snackbar("Cart", "Product added to cart!",
//                         snackPosition: SnackPosition.BOTTOM);
//                   },
//                   icon: const Icon(Icons.shopping_cart),
//                   label: const Text("Add to Cart"),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../card_/add_to_card/card_controller.dart';
import '../card_/add_to_card/card_screen.dart';
import '../favorite_/favorite_screen.dart';
import '../favorite_/favorites_controllers.dart';

class ProductDetailScreen extends StatelessWidget {
  final Map<String, dynamic> products;

  const ProductDetailScreen({Key? key, required this.products, required Map<String, String> product})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final FavoriteController favoriteController = Get.put(FavoriteController());
    final CartController cartController = Get.put(CartController());

    return Scaffold(
      backgroundColor: Colors.greenAccent.shade100,
      appBar: AppBar(
        title: const Text(
          "Product Detail",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.indigo.shade700,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart, color: Colors.white),
            onPressed: () {
              Get.to(() => const CartScreen());
            },
          ),
          IconButton(
            icon: const Icon(Icons.favorite, color: Colors.redAccent),
            onPressed: () {
              Get.to(() => const FavoriteScreen());
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: products['image'] != null
                  ? Image.network(
                products['image'],
                height: 200,
                fit: BoxFit.cover,
              )
                  : const Icon(Icons.image, size: 48, color: Colors.red),
            ),
            const SizedBox(height: 20),
            Text(
              products['title'] ?? 'No Title',
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              '\$${products['price'] ?? '0'}',
              style: const TextStyle(fontSize: 18, color: Colors.green),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Padding(
                padding: const EdgeInsets.only( ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildTimerBox("01"),
                    const Text(":"),
                    _buildTimerBox("36"),
                    const Text(":"),
                    _buildTimerBox("58"),
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 67),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {
                      favoriteController.addToFavorites(products);
                      Get.snackbar("Favorite", "Product added to favorites!",
                          snackPosition: SnackPosition.BOTTOM);
                    },
                    icon: const Icon(Icons.favorite_border),
                    label: const Text("Favorites"),
                  ),
                  ElevatedButton.icon(
                    style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.indigo)),
                    onPressed: () {
                      cartController.addToCart(products);
                      Get.snackbar("Cart", "Product added to cart!",
                          snackPosition: SnackPosition.BOTTOM);
                    },
                    icon: const Icon(Icons.shopping_cart,color:Colors.white ,),
                    label: const Text("Add to Cart",style: TextStyle(color: Colors.white),),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Timer Box Helper Widget
  Widget _buildTimerBox(String value) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade400,
            blurRadius: 4,
            offset: const Offset(2, 2),
          ),
        ],
      ),
      alignment: Alignment.center,
      child: Text(
        value,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }
}
