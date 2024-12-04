// // import 'package:flutter/material.dart';
// // import 'package:get/get.dart';
// // import 'package:get/get_core/src/get_main.dart';
// //
// //  import 'favorites_controllers.dart';
// //
// // class FavoriteScreen extends StatelessWidget {
// //   final FavoritesControllert favoritesController = Get.find<FavoritesControllert>();
// //   final List<Map<String, String>> products = [];
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text("Favorites"),
// //       ),
// //       body: Obx(() {
// //         final favorites = favoritesController.favorites;
// //
// //         if (favorites.isEmpty) {
// //           return const Center(
// //             child: Text("No favorites yet!"),
// //           );
// //         }
// //
// //         return ListView.builder(
// //           itemCount: favorites.length,
// //           itemBuilder: (context, index) {
// //             final favoriteIndex = favorites[index];
// //             final product = products[favoriteIndex];
// //
// //             return Card(
// //               child: ListTile(
// //                 leading: Image.network(product['image']!),
// //                 title: Text(product['title']!),
// //                 subtitle: Text(product['price']!),
// //                 trailing: IconButton(
// //                   icon: const Icon(Icons.delete, color: Colors.red,),
// //                   onPressed: () {
// //                     favoritesController.toggleFavorite(favoriteIndex);
// //                   },
// //                 ),
// //               ),
// //             );
// //           },
// //         );
// //       }),
// //     );
// //   }
// // }
//
//
//
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// import 'favorites_controllers.dart';
//
// class FavoriteScreen extends StatelessWidget {
//   const FavoriteScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     final FavoriteController favoriteController = Get.find<FavoriteController>();
//
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Favorite Products", style: TextStyle(color: Colors.white)),
//         backgroundColor: Colors.indigo.shade700,
//       ),
//       body: Obx(() {
//         return Container(
//           height: 120,
//           child: favoriteController.favoriteProducts.isEmpty
//               ? const Center(child: Text("No favorites added yet!"))
//               : Card(
//             color: Colors.greenAccent.shade100,
//                 child: ListView.builder(
//                           itemCount: favoriteController.favoriteProducts.length,
//                           itemBuilder: (context, index) {
//                 final product = favoriteController.favoriteProducts[index];
//                 return ListTile(
//                   leading: Image.network(product['image'] ?? '', width: 50, height: 50),
//                   title: Text(product['title'] ?? 'No Title'),
//                   subtitle: Text('\$${product['price'] ?? '0'}'),
//                   trailing: IconButton(
//                     icon: const Icon(Icons.delete, color: Colors.red),
//                     onPressed: () {
//                       favoriteController.removeFromFavorites(product);
//                     },
//                   ),
//                 );
//                           },
//                         ),
//               ),
//         );
//       }),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../favorite_/favorites_controllers.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final FavoriteController favoriteController = Get.find<FavoriteController>();

    return Scaffold(
      appBar: AppBar(
        title: Center(child: const Text('Favorites',style: TextStyle(color: Colors.white),)),
        backgroundColor: Colors.greenAccent.shade700,
      ),
      body: Obx(() {
        if (favoriteController.favoriteItems.isEmpty) {
          return const Center(
            child: Text('No items in favorites'),
          );
        }
        return Container(
          height: 140,
          child: Card(
              color: Colors.greenAccent.shade100,
            child: ListView.builder(
              itemCount: favoriteController.favoriteItems.length,
              itemBuilder: (context, index) {
                final product = favoriteController.favoriteItems[index];
                return ListTile(
                  leading: product['image'] != null
                      ? Image.network(product['image'], width: 50)
                      : const Icon(Icons.image,size: 34,),
                  title: Text(product['title'] ?? 'No Title'),
                  subtitle: Center(child: Text('\$${product['price'] ?? '0'}')),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete, color: Colors.red),
                    onPressed: () {
                      favoriteController.removeFromFavorites(product);
                    },
                  ),
                );
              },
            ),
          ),
        );
      }),
    );
  }
}
