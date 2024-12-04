import 'package:flutter/material.dart';

import 'create_account.dart';
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue.shade50,
              ),
              child: const Icon(
                Icons.shopping_bag,
                size: 70,
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 22),
             const Text(
              'Shoppe',
              style: TextStyle(
                fontSize: 33,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 9),

            const Text(
              'Beautiful eCommerce UI Kit\n  for your online store',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 19,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 90),
             SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {

                  Navigator.push(context, MaterialPageRoute(builder: (context) => CreateAccountScreen(),));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text(
                  "Let's get started",
                  style: TextStyle(fontSize: 16,color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 16),
             const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'I already have an account',
                  style: TextStyle(fontSize: 14, color: Colors.black),
                ),
                SizedBox(width: 8),
                CircleAvatar(
                  backgroundColor: Colors.blue,
                  radius: 16,
                   child: Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
