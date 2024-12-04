import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, String>> products = [
    {
      "name": "Product 1",
      "image":"https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcTIDx_dTTYrO_2vD6RLVp7IZXXLB29A5n4y7CCvaWVkeeHUvGFRevGZ6MsPjz68bHeKUzBlFUkzu3iNzWJMnhRxv0XYgnobWK2JEM-HYCQ8ReDXQK9lNJP_uQ"
      "https://via.placeholder.com/150",
      "price": "₹500",
    },
    {
      "name": "Product 2",
      "image": "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQMZ7FqRtJ7PZEjWN6JOnT4Hry1fJU1byVIUALQixKzCtY95wCe"
      "https://via.placeholder.com/150",
      "price": "₹800",
    },
    {
      "name": "Product 3",
      "image":"https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcSiH56SkW-01NeQxch7p-ljbUOkI3HVkuYp-H8eMuf7p6-tjyyKllrp29WTp1MX5xiQPq3rucqIPwBgAKQhpwmb6JfX2iLxebtXcWz6AhG20G1k5q-8moQtFQ"
      "https://via.placeholder.com/150",
      "price": "₹1200",
    },
    {
      "name": "Product 4",
      "image":"https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcSS9zXq5h-t3EBmIAYTjMJMRUEpWM6G62sNCfZA8ATbQsC9_dfVnLtjCpzmWZlkvidCAMj7nengkaWPneXt0wG-KqnokAC6QWuZ5mOZXFsf-aKRkZYARCVITQ"
      "https://via.placeholder.com/150",
      "price": "₹1500",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Welcome to ShopEase!",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                "Explore our collection",
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              const SizedBox(height: 16),
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 0.7,
                  ),
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    final product = products[index];
                    return Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      elevation: 4,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.vertical(
                                top: Radius.circular(12)),
                            child: Image.network(
                              product["image"]!,
                              height: 120,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  product["name"]!,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  product["price"]!,
                                  style: const TextStyle(
                                    fontSize: 14,
                                    color: Colors.green,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Spacer(),
                          Align(
                            alignment: Alignment.center,
                            child: ElevatedButton(
                              onPressed: () {
                                // Add to cart functionality
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              child: const Text(
                                "Add to Cart",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
