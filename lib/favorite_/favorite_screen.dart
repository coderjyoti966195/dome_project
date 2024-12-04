import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

 import 'favorites_controllers.dart';

class FavoriteScreen extends StatelessWidget {
  final FavoritesControllert favoritesController = Get.find<FavoritesControllert>();
  final List<Map<String, String>> products = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Favorites"),
      ),
      body: Obx(() {
        final favorites = favoritesController.favorites;

        if (favorites.isEmpty) {
          return const Center(
            child: Text("No favorites yet!"),
          );
        }

        return ListView.builder(
          itemCount: favorites.length,
          itemBuilder: (context, index) {
            final favoriteIndex = favorites[index];
            final product = products[favoriteIndex];

            return Card(
              child: ListTile(
                leading: Image.network(product['image']!),
                title: Text(product['title']!),
                subtitle: Text(product['price']!),
                trailing: IconButton(
                  icon: const Icon(Icons.delete, color: Colors.red,),
                  onPressed: () {
                    favoritesController.toggleFavorite(favoriteIndex);
                  },
                ),
              ),
            );
          },
        );
      }),
    );
  }
}