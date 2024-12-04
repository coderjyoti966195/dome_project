


import 'package:flutter/material.dart';

 import '../history_/history_screen.dart';
import '../payment_/payment_screen.dart';
import '../profile_/profile_screen.dart';
import '../pruduct_/shop_screen.dart';

class HomepageScreen extends StatefulWidget {
  const HomepageScreen({super.key});
  @override
  State<HomepageScreen> createState() => _HomepageScreenState();
}
class _HomepageScreenState extends State<HomepageScreen> {
  int _selectedIndex = 0;
  static final List<Widget> _pages = <Widget>[
    ShopScreen(),
      // const FavoriteScreen(),
    PaymentScreen(),
    const HistoryScreen(),
    ProfileScreen(),
  ];

   void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _pages[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.greenAccent.shade100,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home', // Removed extra comma here
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.payment),
            label: 'Payment',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
