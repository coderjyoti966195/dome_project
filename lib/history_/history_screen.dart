// import 'package:flutter/material.dart';
//
// class HistoryScreen extends StatelessWidget {
//   final List<Map<String, String>> historyItems = [
//     {
//       "image": "https://images.meesho.com/images/products/434846730/azccd_1200.jpg",
//       "name": "Stylish Dress",
//       "date": "2024-12-06",
//       "price": "\$25.00"
//     },
//     {
//       "image": "https://t4.ftcdn.net/jpg/07/63/26/85/360_F_763268538_sk7wNf87lh0ioZMnAnLBOBlf1unB2RNi.jpg",
//       "name": "Polo T-Shirt",
//       "date": "2024-12-6",
//       "price": "\$15.00"
//     },
//     {
//       "image": "https://t3.ftcdn.net/jpg/07/18/24/18/240_F_718241833_s8eYw32e83cSwQsnyYzwaAbvM0Jy0ZoU.jpg",
//       "name": "Elegant Saree",
//       "date": "2024-12-6",
//       "price": "\$30.00"
//     },
//     {
//       "image": "https://m.media-amazon.com/images/I/71RlOgFT-wL._SY695_.jpg",
//       "name": "Summer Shorts",
//       "date": "2024-12-6",
//       "price": "\$12.00"
//     },
//     {
//       "name": "Dresses",
//       "date": "2024-12-6",
//     "price": "\$12.00",
//       "image":
//       "https://images.meesho.com/images/products/434846730/azccd_1200.jpg"
//     },
//     {
//       "date": "2024-12-6",
//       "name": "Pants",
//       "image":
//       "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQskcBnr-7IlMjf3d3uAgbKV2t6hqZFeqLyCQ&s"
//     },
//   ];
//
//     HistoryScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title:   Text("Shopping History"),
//         backgroundColor: Colors.indigo,
//       ),
//       body: SafeArea(
//         child: Padding(
//           padding:   EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Expanded(
//                 child: ListView.builder(
//                   itemCount: historyItems.length,
//                   itemBuilder: (context, index) {
//                     final item = historyItems[index];
//                     return Card(
//                       margin:   EdgeInsets.symmetric(vertical: 8.0),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                       elevation: 2,
//                       child: ListTile(
//                         leading: ClipRRect(
//                           borderRadius: BorderRadius.circular(8),
//                           child: Image.network(
//                             item['image']!,
//                             width: 60,
//                             height: 60,
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                         title: Text(
//                           item['name']!,
//                           style:   TextStyle(
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         subtitle: Text(
//                           "Purchased on: ${item['date']!}",
//                           style:   TextStyle(fontSize: 12, color: Colors.grey),
//                         ),
//                         trailing: Text(
//                           item['price']!,
//                           style:   TextStyle(
//                             fontWeight: FontWeight.bold,
//                             color: Colors.green,
//                           ),
//                         ),
//                       ),
//                     );
//                   },
//                 ),
//               ),
//                 SizedBox(height: 16),
//               ElevatedButton(
//                 onPressed: () {
//                   // Add clear history functionality here
//                 },
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.red,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                   padding: const EdgeInsets.symmetric(vertical: 16),
//                 ),
//                 child: const Center(
//                   child: Text(
//                     "Clear History",
//                     style: TextStyle(fontSize: 16, color: Colors.white),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class HistoryScreen extends StatefulWidget {
  @override
  _HistoryScreenState createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  List<Map<String, String>> historyItems = [
    {
      "image": "https://images.meesho.com/images/products/434846730/azccd_1200.jpg",
      "name": "Stylish Dress",
      "date": "2024-12-01",
      "price": "\$25.00"
    },
    {
      "image": "https://t4.ftcdn.net/jpg/07/63/26/85/360_F_763268538_sk7wNf87lh0ioZMnAnLBOBlf1unB2RNi.jpg",
      "name": "Polo T-Shirt",
      "date": "2024-11-25",
      "price": "\$15.00"
    },
    {
      "image": "https://t3.ftcdn.net/jpg/07/18/24/18/240_F_718241833_s8eYw32e83cSwQsnyYzwaAbvM0Jy0ZoU.jpg",
      "name": "Elegant Saree",
      "date": "2024-11-18",
      "price": "\$30.00"
    },
    {
      "image": "https://m.media-amazon.com/images/I/71RlOgFT-wL._SY695_.jpg",
      "name": "Summer Shorts",
      "date": "2024-11-10",
      "price": "\$12.00"
    },
    {
      "image": "https://images.meesho.com/images/products/434846730/azccd_1200.jpg",
      "name": "Stylish Dress",
      "date": "2024-12-06",
      "price": "\$25.00"
    },
    {
      "image": "https://t4.ftcdn.net/jpg/07/63/26/85/360_F_763268538_sk7wNf87lh0ioZMnAnLBOBlf1unB2RNi.jpg",
      "name": "Polo T-Shirt",
      "date": "2024-12-6",
      "price": "\$15.00"
    },
    {
      "image": "https://t3.ftcdn.net/jpg/07/18/24/18/240_F_718241833_s8eYw32e83cSwQsnyYzwaAbvM0Jy0ZoU.jpg",
      "name": "Elegant Saree",
      "date": "2024-12-6",
      "price": "\$30.00"
    },
    {
      "image": "https://m.media-amazon.com/images/I/71RlOgFT-wL._SY695_.jpg",
      "name": "Summer Shorts",
      "date": "2024-12-6",
      "price": "\$12.00"
    },

  ];

  void clearHistory() {
    setState(() {
      historyItems.clear();
    });
  }

  void deleteItem(int index) {
    setState(() {
      historyItems.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Shopping History",style: TextStyle(color: Colors.white),)),
        backgroundColor: Colors.indigo,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: historyItems.isEmpty
                    ? Center(
                  child: Text(
                    "No history available.",
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                )
                    : ListView.builder(
                  itemCount: historyItems.length,
                  itemBuilder: (context, index) {
                    final item = historyItems[index];
                    return Card(
                      margin: const EdgeInsets.symmetric(vertical: 8.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      elevation: 2,
                      child: ListTile(
                        leading: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.network(
                            item['image']!,
                            width: 60,
                            height: 60,
                            fit: BoxFit.cover,
                          ),
                        ),
                        title: Text(
                          item['name']!,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text(
                          "Purchased on: ${item['date']!}",
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              item['price']!,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.green,
                              ),
                            ),
                            IconButton(
                              icon: Icon(Icons.delete, color: Colors.red),
                              onPressed: () => deleteItem(index),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: clearHistory,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
                child: const Center(
                  child: Text(
                    "Clear History",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
