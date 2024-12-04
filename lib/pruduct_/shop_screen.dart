import 'package:demo_project/pruduct_/pruduct_detail.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../favorite_/favorite_screen.dart';
import '../payment_/payment_screen.dart';
import '../profile_/profile_Screen.dart';

class ShopScreen extends StatelessWidget {
  final List<Map<String, String>> categories = [
    {
      "name": "Dresses",
      "image":
          "https://images.meesho.com/images/products/434846730/azccd_1200.jpg"
    },
    {
      "name": "Pants",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQskcBnr-7IlMjf3d3uAgbKV2t6hqZFeqLyCQ&s"
    },
    {
      "name": "Skirts",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-0do1Hq5Dm-Er7bJBwDk6y04KDKjZNX9A4A&s"
    },
    {
      "name": "Shorts",
      "image": "https://m.media-amazon.com/images/I/71RlOgFT-wL._SY695_.jpg"
    },
    {
      "name": "Jackets",
      "image":
          "https://hips.hearstapps.com/hmg-prod/images/launchmetrics-paris-str-f20-146b-66bb88a7cdf57.jpg?crop=0.668xw:1.00xh;0.240xw,0&resize=1120:*"
    },
    {
      "name": "Hoodies",
      "image":
          "https://shoezero.com/cdn/shop/articles/two_hoodies.webp?v=1691590215&width=2048"
    },
    {
      "name": "Shirts",
      "image":
          "https://t4.ftcdn.net/jpg/07/63/26/85/360_F_763268538_sk7wNf87lh0ioZMnAnLBOBlf1unB2RNi.jpg"
    },
    {
      "name": "Polo",
      "image":
          "https://rukminim2.flixcart.com/image/832/832/xif0q/shirt/d/z/n/m-a15068-sheetal-associates-original-imah49y2sfqwafh6.jpeg?q=70&crop=false"
    },
    {
      "name": "T-shirts",
      "image":
          "https://cdn.pixabay.com/photo/2024/04/29/04/21/tshirt-8726716_640.jpg"
    },
    {
      "name": "Tunics",
      "image": "https://m.media-amazon.com/images/I/61ZfwTfyumL._SY879_.jpg"
    },
  ];

  final List<Map<String, String>> products = [
    {
      "image":
          "https://img.freepik.com/premium-photo/happy-stylish-pretty-indian-girl-saree-with-jewelry_5095-738.jpg",
      "title": "Happy stylish pretty Indian girl in a saree with jewelry",
      "price": "\$20.00"
    },
    {
      "image":
          "https://t4.ftcdn.net/jpg/07/63/71/27/240_F_763712726_CFix3eQ8DoUhPCIhAazezK9r7YT8I17z.jpg",
      "title":
          "Close up portrait of colorful shiny indian saree hanging on a clothing rack",
      "price": "\$582px.00"
    },
    {
      "image":
          "https://t4.ftcdn.net/jpg/08/17/97/01/240_F_817970106_dakfSRrzEHMW8PhgnmKZVBY00SFnwUtJ.jpg",
      "title": "indian saree culture, women in vibrant silk sarees",
      "price": "\$4368px .00"
    },
    {
      "image":
          "https://t3.ftcdn.net/jpg/07/18/24/18/240_F_718241833_s8eYw32e83cSwQsnyYzwaAbvM0Jy0ZoU.jpg",
      "title": "Stylish orange party dress. Handloom saree salon. Banner ",
      "price": "\$3456px.00"
    },
    {
      "image":
          "https://as2.ftcdn.net/v2/jpg/01/75/77/37/1000_F_175773797_jsxmDiyFLppjuH5nKk7TximTeqCHEvin.jpg",
      "title":
          "Portrait of beautiful indian girl. Young hindu woman model with kundan jewelry set. Traditional Indian costume lehenga choli or sari",
      "price": "\$3456px.00"
    },
    {
      "image":
          "https://as1.ftcdn.net/v2/jpg/07/18/24/18/1000_F_718241850_kdAkWg2aFLqwUw0lsiou78IkYpv8RH06.jpg",
      "title":
          "Saree Indian dress in white luxury boutique background. Indian attire in fashion store.",
      "price": "\$456px.00"
    },
    {
      "image":
          "https://as2.ftcdn.net/v2/jpg/08/17/97/01/1000_F_817970106_dakfSRrzEHMW8PhgnmKZVBY00SFnwUtJ.jpg",
      "title":
          "traditional indian fashion, vibrant silk saris adorning women at festive events showcase the",
      "price": "\$2148px.00"
    },
    {
      "image":
          "https://as1.ftcdn.net/v2/jpg/08/17/95/70/1000_F_817957097_iLkvJK0SzH0tSyfQd6bLmtX3MzJDEXZE.jpg",
      "title":
          "indian silk sarees, vibrant silk sarees adorning women at festive events showcase the diverse beauty of indian textiles and fashion",
      "price": "\$3456px.00"
    },
    {
      "image":
          "https://as1.ftcdn.net/v2/jpg/06/53/18/30/1000_F_653183032_049J8vr9WDRZM4a37R56EocRX2l8T4RL.jpg",
      "title":
          "traditional indian fashion, vibrant silk saris adorning women at festive events showcase the cultural",
      "price": "\$340px.00"
    },
    {
      "image":
          "https://t4.ftcdn.net/jpg/10/84/83/13/240_F_1084831310_ubu5YHrsBRE8CpW967lANsPEJ1Asnyrm.jpg",
      "title":
          "Coats hanging on a rack on wooden hangers. Winter clothing, upcycled closet of clothes,",
      "price": "\$200px.00"
    },
    {
      "image":
          "https://t4.ftcdn.net/jpg/07/63/71/27/240_F_763712726_CFix3eQ8DoUhPCIhAazezK9r7YT8I17z.webp",
      "title":
          "Close up portrait of colorful shiny indian saree hanging on a clothing rack",
      "price": "\$3000px.00"
    },
    {
      "image":
          "https://as2.ftcdn.net/v2/jpg/07/63/71/35/1000_F_763713524_T0IOhzXHo5r3dxHYUBAPk3NZdd4RzVwt.jpg",
      "title":
          "Close up portrait of vibrant colourful frocks hanging on textile clothing store",
      "price": "\$9800px.00"
    },
    {
      "image":
          "https://as2.ftcdn.net/v2/jpg/07/63/71/27/1000_F_763712720_8sbjqCm4lwP3ebir9o1IpEnyxq4T9X1O.jpg",
      "title":
          "Close up portrait of vibrant colourful frocks hanging on textile clothing store",
      "price": "\$9800px.00"
    },
    {
      "image":
          "https://as2.ftcdn.net/v2/jpg/06/53/18/27/1000_F_653182749_1uOAL3vMkxwKHLtgrVQw2R9uzKRvl9Od.jpg",
      "title": "Close up portrait of vibrant clothing store",
      "price": "\$9800px.00"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.indigo.shade700,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              label: "home"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_border,
                color: Colors.white,
              ),
              label: "favorite"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.payment,
                color: Colors.white,
              ),
              label: "payment"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_bag_outlined,
                color: Colors.white,
              ),
              label: "shopping"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.white,
              ),
              label: "profile"),
        ],
        onTap: (index) {
          switch (index) {
            case 0: // Home
              // Get.to(FavoriteScreen());
              break;
            case 1: // Favorite
              Get.to(FavoriteScreen());
              break;
            case 2: // Payment
              Get.to(PaymentScreen());
              break;
            case 3: // Shopping
              // Get.to(ShoppingCartScreen());
              break;
            case 4: // Profile
              Get.to(ProfileScreen());
              break;
          }
        },
//////////////////////////////////////////
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Shop",
                    style: TextStyle(fontSize: 24, color: Colors.indigo),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 16.0),
                      height: 40,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Search...",
                          hintStyle: TextStyle(color: Colors.grey),
                          filled: true,
                          fillColor: Colors.grey[200],
                          prefixIcon: Icon(Icons.search, color: Colors.grey),
                          suffixIcon: IconButton(
                            onPressed: () {
                              // Add your camera functionality here
                            },
                            icon: const Icon(Icons.camera_alt_outlined),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                  // IconButton(
                  //   onPressed: () {
                  //    },
                  //   icon: const Icon(Icons.favorite,size: 29,),
                  // ),
                ],
              ),
              const SizedBox(height: 16),
              SizedBox(
                height: 90,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 12.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundImage:
                                NetworkImage(categories[index]['image']!),
                            radius: 30,
                          ),
                          const SizedBox(height: 8),
                          Text(
                            categories[index]['name']!,
                            style: const TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                "   All Items...",
                style: TextStyle(fontSize: 20, color: Colors.indigo),
              ),
              const SizedBox(height: 12),
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 12,
                    crossAxisSpacing: 12,
                    childAspectRatio: 0.7,
                  ),
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 90,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        elevation: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: const BorderRadius.vertical(
                                top: Radius.circular(12),
                              ),
                              child: Stack(children: [
                                GestureDetector(
                                  onTap: () {
                                    // Navigate to the ProductDetailScreen and pass the product data
                                    Get.to(
                                      ProductDetailScreen(
                                        product: products[index],
                                        products: products[index],
                                      ),
                                    );
                                  },
                                  child: Image.network(
                                    products[index]["image"]!,
                                    height: 120,
                                    width: double.infinity,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                // IconButton(
                                //   style: ButtonStyle(backgroundColor:WidgetStatePropertyAll(Colors.pink)),
                                //   icon: const Icon(Icons.favorite_border,color: Colors.white,size: 22,),
                                //   onPressed: () {
                                //     // Get.to(FavoriteScreen());
                                //
                                //   },
                                // ),
                                // IconButton(
                                //   onPressed: () {
                                //     Get.to(FavoriteScreen());
                                //
                                //     print("Favorite icon tapped");
                                //   },
                                //   icon: const Icon(
                                //     Icons.favorite,color: Colors.white,
                                //   ),
                                // )
                              ]),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                products[index]["title"]!,
                                style: const TextStyle(fontSize: 12),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Text(
                                products[index]["price"]!,
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
