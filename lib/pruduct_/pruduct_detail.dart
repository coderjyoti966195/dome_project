import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:share_plus/share_plus.dart';

import '../favorite_/favorite_screen.dart';

class ProductDetailScreen extends StatelessWidget {
void shareOnWhatsApp(String message) {
  Share.share(message);
}
  final Map<String, dynamic> products;
  final dynamic product;

  const ProductDetailScreen(
      {super.key, required this.product, required this.products});

  @override
  Widget build(BuildContext context) {
    final String title = products['title'] ?? 'No Title Available';
    final String image = products['image'] ?? '';
    final String description =
        product['description'] ?? 'No description available.';

    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("ProductDetail",style: TextStyle(color: Colors.white),)),
         backgroundColor: Colors.indigo.shade700,
         elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.screen_share, color: Colors.white),
            onPressed: () {
              shareOnWhatsApp("Check out this amazing product!");
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
              child: image.isNotEmpty
                  ? Image.network(
                      image,
                      height: 200,
                      fit: BoxFit.cover,
                    )
                  : Icon(Icons.image, size: 10, color: Colors.red),
            ),
            const SizedBox(height: 20),
            Text(
              title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              '\$${products['price'] ?? '0'}',
              style: const TextStyle(
                fontSize: 18,
                color: Colors.green,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Product Description:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const Text(
              "Variations",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                _VariationChip(label: "Pink"),
                _VariationChip(label: "M"),
              ],
            ),
            const Spacer(),

            IconButton(
              icon: const Icon(Icons.favorite_border),
              onPressed: () {
                Get.to(FavoriteScreen());
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Added to favorites!")),
                );
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton.icon(
                  style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.black45)),
                  onPressed: () {
                    // Add to cart functionality
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Added to cart!")),
                    );
                  },
                  icon: const Icon(Icons.shopping_cart,color: Colors.white,),
                  label: const Text("Add to cart",style: TextStyle(color: Colors.white),),
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _VariationChip extends StatelessWidget {
  final String label;

  const _VariationChip({required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        label,
        style: const TextStyle(fontSize: 14),
      ),
    );
  }
}






// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:provider/provider.dart';
//
// import '../favorite_/favorite_screen.dart';
//
// class ProductDetailScreen extends StatelessWidget {
//   final Map<String, dynamic> products;
//   final dynamic product;
//
//   const ProductDetailScreen(
//       {super.key, required this.product, required this.products});
//
//   @override
//   Widget build(BuildContext context) {
//     final String title = products['title'] ?? 'No Title Available';
//     final String image = products['image'] ?? '';
//     final String description =
//         product['description'] ?? 'No description available.';
//
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           "Product Detail",
//           style: TextStyle(color: Colors.white),
//         ),
//         backgroundColor: Colors.indigo.shade700,
//         elevation: 0,
//         actions: [
//           IconButton(
//             icon: const Icon(Icons.share, color: Colors.white),
//             onPressed: () {
//               // Share functionality
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
//               child: image.isNotEmpty
//                   ? Image.network(image, height: 200, fit: BoxFit.cover)
//                   : const Icon(Icons.image, size: 100, color: Colors.red),
//             ),
//             const SizedBox(height: 20),
//             Text(
//               title,
//               style: const TextStyle(
//                 fontSize: 20,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             const SizedBox(height: 10),
//             Text(
//               '\$${products['price'] ?? '0'}',
//               style: const TextStyle(fontSize: 18, color: Colors.green),
//             ),
//             const SizedBox(height: 20),
//             const Text(
//               'Product Description:',
//               style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//             ),
//             const SizedBox(height: 16),
//             const Text(
//               "Variations",
//               style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//             ),
//             Row(
//               children: const [
//                 _VariationChip(label: "Pink"),
//                 _VariationChip(label: "M"),
//               ],
//             ),
//             const Spacer(),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 ElevatedButton.icon(
//                   style: ButtonStyle(
//                       backgroundColor: WidgetStatePropertyAll(Colors.black45)),
//                   onPressed: () {
//                     context.read<FavoriteScreen>().addToCart(product);
//                     ScaffoldMessenger.of(context).showSnackBar(
//                       const SnackBar(
//                           content: Text(
//                         "Added to cart!",
//                         style: TextStyle(color: Colors.white),
//                       )),
//                     );
//                   },
//                   icon: const Icon(
//                     Icons.shopping_cart,
//                     color: Colors.white,
//                   ),
//                   label: const Text(
//                     "Add to cart",
//                     style: TextStyle(
//                       color: Colors.white,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class _VariationChip extends StatelessWidget {
//   final String label;
//
//   const _VariationChip({required this.label});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.only(right: 8),
//       padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
//       decoration: BoxDecoration(
//         color: Colors.grey.shade200,
//         borderRadius: BorderRadius.circular(12),
//       ),
//       child: Text(
//         label,
//         style: const TextStyle(fontSize: 14),
//       ),
//     );
//   }
// }
