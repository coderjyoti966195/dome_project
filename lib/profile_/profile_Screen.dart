

import 'package:demo_project/profile_/profile_details.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  final List<Map<String, String>> profiles = [
    {
      "image":
          "https://t4.ftcdn.net/jpg/08/06/23/79/240_F_806237958_p6mYmjO9fziQ1VcTmsJwW1lLuXeX2jLY.jpg"
    },
    {
      "image":
          "https://t4.ftcdn.net/jpg/09/56/22/23/240_F_956222330_3W0Duz4GVeAiNEwEUDLsRPURCQVECkAO.jpg"
    },
    {
      "image":
          "https://t4.ftcdn.net/jpg/10/11/22/67/240_F_1011226730_BgflqbNg70Cb0FfILaCBApdnuz2Avwyi.jpg"
    },
    {
      "image":
          "https://as1.ftcdn.net/v2/jpg/09/49/94/16/1000_F_949941659_KmmxtXeLFPbSF5wLOy2OxK1ihsToUzcK.jpg"
    },
    {
      "image":
          "https://t3.ftcdn.net/jpg/10/11/22/68/240_F_1011226815_14Rg5BvMmb0V0NhAITgRLepmwzMa16dB.webp",
    },
    {
      "image":
          "https://t4.ftcdn.net/jpg/08/52/46/69/240_F_852466996_WkzWTVTqqUAoxINMCh5D1SZAFcP1SIzL.jpg"
    },
  ];
  final List<Map<String, String>> stories = [
    {
      "image":
          "https://i.pinimg.com/474x/ca/d3/39/cad3395814e388b01323ada58280316a.jpg",
      "label": "Live"
    },
    {
      "image":
          "https://i.pinimg.com/736x/4b/38/c6/4b38c6d5b0b6241579a8fe2575a2156b.jpg",
    },
    {
      "image":
          "https://i.pinimg.com/474x/a2/06/b2/a206b2b604113a23c1be4a218d2736ea.jpg",
    },
    {
      "image":
          "https://i.pinimg.com/474x/16/2f/3a/162f3a8563bb5642ba881e4f0b378373.jpg",
    },
    {
      "image":
          "https://i.pinimg.com/474x/ca/d3/39/cad3395814e388b01323ada58280316a.jpg",
    },
    {
      "image":
          "https://i.pinimg.com/474x/3b/c8/86/3bc886dac621cacc4d901246944f17f4.jpg",
    },
  ];

  final List<String> categories = [
    'Clothing',
    'Shoes',
    'Bags',
    'Lingerie',
  ];
  final List<Map<String, String>> product = [
    {
      "image":"https://t4.ftcdn.net/jpg/09/24/21/95/240_F_924219562_9tLzRob8sJdJJUSAwVSLuRure86Q8VLc.jpg",
       "title": "Happy stylish ",
      "price": "\$20.00"
    },
    {
      "image":
      "https://t4.ftcdn.net/jpg/07/63/96/51/240_F_763965108_pGBj5N3kqyLkdtmqlJqT1xTe56frjeqU.jpg",
      "title":"happy shapping",
      "price": "\$30.00"
    },
 {
      "image":
      "https://t4.ftcdn.net/jpg/07/26/94/47/240_F_726944795_D9X91glEosq3bRphdWVTII8FLQplI3it.jpg",
      "title":"happy shapping",
      "price": "\$30.00"
    },{
      "image":"https://t3.ftcdn.net/jpg/09/31/74/58/240_F_931745834_DWj34eGZpyackm2p1HZJEaj9dy33NjA1.webp",
       "title":"happy shapping",
      "price": "\$30.00"
    },
    {
      "image":"https://as2.ftcdn.net/v2/jpg/09/31/74/57/1000_F_931745723_3ahZe5xj0cPeKFhvDCJwZ3b9E4uaPww5.jpg",
       "title":"happy shapping",
      "price": "\$30.00"
    },
    {
      "image":"https://as2.ftcdn.net/v2/jpg/10/31/90/57/1000_F_1031905720_9SBo2pHTiEsGaw0816yMNrs6iRIDccl1.jpg",
       "title":"happy shapping",
      "price": "\$30.00"
    },


  ];


  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
              'https://t3.ftcdn.net/jpg/08/96/20/88/240_F_896208812_5LQl7jWX46LrxfB0MylqvSz9VS6pnaoz.jpg',
            ),
            onBackgroundImageError: (error, stackTrace) {
              print('Failed to load image: $error');
            },
            radius: 20,
          ),
        ),
        title: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue.shade700,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(33),
            ),
          ),
          onPressed: () {},
          child: const Text(
            "My Profile",
            style: TextStyle(color: Colors.white),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu_open_sharp, color: Colors.blue),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu_sharp, color: Colors.blue),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings, color: Colors.blue),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Hello, Romina!",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Card(
                color: Colors.blue[50],
                child: ListTile(
                  title: const Text(
                    "Announcement",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Text(
                    "Lorem ipsum dolor sit amet, adipiscing elit.",
                  ),
                  trailing: IconButton(
                    style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(Colors.blue)),
                    icon: const Icon(Icons.arrow_forward, color: Colors.white),
                    onPressed: () {},
                  ),
                ),
              ),
              // const Padding(
              //   padding: EdgeInsets.only(top: 20),
              //   child: Text(
              //     "Recently Viewed",
              //     style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              //   ),
              // ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                const Text(
                  "Recently Viewed",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    const Text(
                      "See All",
                      style: TextStyle(color: Colors.black),
                    ),
                    IconButton(
                      style: const ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll(Colors.blue)),
                      icon: const Icon(Icons.arrow_forward_rounded, color: Colors.white),
                      onPressed: () {

                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (context) =>
                            //         BeautyDatial(), // Replace NextScreen with your desired page
                            //   ),
                            // );
                          },



                    ),
                  ],
                )
              ]),
              SizedBox(
                height: 90,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: widget.profiles.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 12.0),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                          widget.profiles[index]['image']!,
                        ),
                        radius: 30,
                      ),
                    );
                  },
                ),
              ),
              const Text(
                "My Orders",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Chip(
                      label:
                          Text("To Pay", style: TextStyle(color: Colors.blue))),
                  Chip(
                      label: Text("To Receive",
                          style: TextStyle(color: Colors.blue))),
                  Chip(
                      label: Text("To Review",
                          style: TextStyle(color: Colors.blue))),
                ],
              ),
              const SizedBox(height: 16),
              const Text(
                "Stories",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 120,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: widget.stories.length,
                  itemBuilder: (context, index) {
                    final story = widget.stories[index];
                    return Padding(
                      padding: const EdgeInsets.only(right: 12.0),
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.network(
                              story['image']!,
                              height: 120,
                              width: 80,
                              fit: BoxFit.cover,
                            ),
                          ),
                          if (story.containsKey('label'))
                            Positioned(
                              top: 8,
                              left: 8,
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8,
                                  vertical: 4,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Text(
                                  story['label']!,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 11,
                                  ),
                                ),
                              ),
                            ),
                          const Positioned(
                            bottom: 8,
                            right: 8,
                            child: Icon(
                              Icons.play_circle_fill,
                              color: Colors.white,
                              size: 24,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),

          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            const Text(
              "New Items",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                const Text(
                  "See All",
                  style: TextStyle(color: Colors.black),
                ),
                IconButton(
                  style: const ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.blue)),
                  icon: const Icon(Icons.arrow_forward, color: Colors.white),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            BeautyDatial(), // Replace NextScreen with your desired page
                      ),
                    );
                  },
                ),
              ],
            )
          ]),

              // Container(
              //   height: 200,
              //   child: Card(
              //     child: GridView.builder(
              //       shrinkWrap: true,
              //       physics: const NeverScrollableScrollPhysics(),
              //       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              //         crossAxisCount: 2,
              //         crossAxisSpacing: 12,
              //         mainAxisSpacing: 12,
              //         childAspectRatio: 0.7,  // Adjusted the aspect ratio for better spacing
              //       ),
              //       itemCount: widget.product.length,
              //       itemBuilder: (context, index) {
              //         return Container(
              //           child: Card(
              //             elevation: 5,
              //             child: Column(
              //               crossAxisAlignment: CrossAxisAlignment.start,
              //               children: [
              //                 Image.network(
              //                   widget.product[index]['image']!,
              //                   height: 100,
              //                   width: double.infinity,
              //                   fit: BoxFit.cover,
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsets.all(8.0),
              //                   child: Center(
              //                     child: Text(
              //                       widget.product[index]['title']!,
              //                       style: const TextStyle(
              //                         fontSize: 14,
              //                         fontWeight: FontWeight.bold,
              //                       ),
              //                       overflow: TextOverflow.ellipsis, // Avoid title overflow
              //                       maxLines: 1,  // Limit title to 1 line
              //                     ),
              //                   ),
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsets.symmetric(horizontal: 8.0),
              //                   child: Center(
              //                     child:
              //                     Text(
              //                       widget.product[index]['price']!,
              //                       style: const TextStyle(color: Colors.green),
              //                     ),
              //                   ),
              //                 ),
              //               ],
              //             ),
              //           ),
              //         );
              //       },
              //     ),
              //   ),
              // )

              Container(
                height: 200,
                child: Card(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,  // Scroll horizontally
                    itemCount: widget.product.length,  // Number of items in your list
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 12.0), // Spacing between items
                        child: Container(
                          child: Card(
                            elevation: 5,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                 Image.network(
                                  widget.product[index]['image']!,
                                  height: 120,
                                  width: 150,
                                  fit: BoxFit.cover,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Center(
                                    child: Text(
                                      widget.product[index]['title']!,
                                      style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      overflow: TextOverflow.ellipsis, // Prevent text overflow
                                      maxLines: 1,  // Limit title to 1 line
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                  child: Center(
                                    child: Text(
                                      widget.product[index]['price']!,
                                      style: const TextStyle(color: Colors.green),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              )


            ],
          ),
        ),
      ),
    );
  }
}



