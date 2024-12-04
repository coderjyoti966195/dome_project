 import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../home_/homr_screen.dart';
import 'Register_Screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> _login() async {
    String email = _emailController.text.trim();
    String password = _passwordController.text.trim();

    // Check if email or password is empty
    if (email.isEmpty || password.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Please fill in both email and password.")),
      );
      return; // Exit the method if fields are empty
    }

    // Password length check
    if (password.length < 6) {  // Firebase requires at least 6 characters
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Password must be at least 6 characters.")),
      );
      return; // Exit the method if password doesn't meet the requirement
    }

    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Welcome back, ${userCredential.user?.email}!")),
      );
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomepageScreen()),
      );
    } on FirebaseAuthException catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Login failed: ${e.message}")),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("An unknown error occurred: $e")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,  // Disable the default back button
        toolbarHeight: 140,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Welcome Back!",
              style: TextStyle(color: Colors.black, fontSize: 35),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                const Text(
                  "Don't have an account? ",
                  style: TextStyle(color: Colors.black38, fontSize: 16),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const RegisterScreen()),
                    );
                  },
                  child: const Text(
                    "SignUp",
                    style: TextStyle(color: Colors.blue),
                  ),
                )
              ],
            )
          ],
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.only(top: 110),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Email TextField
                  Padding(
                    padding: const EdgeInsets.only(right: 280),
                    child: Text("Email", style: TextStyle(fontSize: 15)),
                  ),
                  CustomTextField(
                    controller: _emailController,
                    hintText: "Enter your email", // Only show hint text
                  ),
                  const SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.only(right: 250),
                    child: Text("Password", style: TextStyle(fontSize: 15)),
                  ),
                  // Password TextField
                  CustomTextField(
                    controller: _passwordController,
                    obscureText: true,
                    hintText: "Enter your password", // Only show hint text
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: _login,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey.shade50, // Button color
                      minimumSize: const Size(double.infinity, 40), // Thinner height (40)
                      padding: const EdgeInsets.symmetric(vertical: 10), // Reduced padding
                      shape: RoundedRectangleBorder( // Set border radius to 0 for square edges
                        borderRadius: BorderRadius.zero,
                      ),
                    ),
                    child: const Text(
                      "Login",
                      style: TextStyle(color: Colors.black38, fontSize: 20),
                    ),
                  ),
                  const SizedBox(height: 40),  // Add spacing
                  Text(
                    "Forgot your password?",
                    style: TextStyle(
                      color: Colors.indigo,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 10),
                  // Text to navigate to Register screen
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => const RegisterScreen()),
                      );
                    },
                    child: const Text(
                      "____ or SignUp Using ____",
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Center the images horizontally
                    children: [
                      // First image with text
                      Column(
                        children: [
                          Image.network(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9-kV0_iXislyi6r-XlD3UMPyWzZuQOcWZU6pppNEm6SxrNeYFqQdlVTVcPGU_aAjGaIc&usqp=CAU",
                            width: 50,
                            height: 50,
                          ),
                          const SizedBox(height: 8),
                          const Text("Twitter", style: TextStyle(fontSize: 14, color: Colors.blue)),
                        ],
                      ),
                      // Second image with text
                      Column(
                        children: [
                          Image.network(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRySLCI_ES1btciGjehyRDx7C3-yhGC48XuRw&s",
                            width: 50,
                            height: 50,
                          ),
                          const SizedBox(height: 8),
                          const Text("Google", style: TextStyle(fontSize: 14, color: Colors.blue)),
                        ],
                      ),
                      // Third image with text
                      Column(
                        children: [
                          Image.network(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvn4en8qCRCttwRAAKBgVd9TRjUts6KV25xg&s",
                            width: 50,
                            height: 50,
                          ),
                          const SizedBox(height: 8),
                          const Text("Facebook", style: TextStyle(fontSize: 14, color: Colors.indigo)),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}