import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'card_controller.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CartController cartController = Get.find<CartController>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
        backgroundColor: Colors.indigo,
      ),
      body: Obx(() {
        if (cartController.cartItems.isEmpty) {
          return const Center(
            child: Text('No items in cart'),
          );
        }
        return Container(
          height: 140,
          child: Card(
            color: Colors.greenAccent.shade200,
            child: ListView.builder(
              itemCount: cartController.cartItems.length,
              itemBuilder: (context, index) {
                final product = cartController.cartItems[index];
                return ListTile(
                  leading: product['image'] != null
                      ? Image.network(product['image'], width: 50)
                      : const Icon(Icons.image),
                  title: Text(product['title'] ?? 'No Title'),
                  subtitle: Text('\$${product['price'] ?? '0'}'),
                );
              },
            ),
          ),
        );
      }),
    );
  }
}
