import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../home_/homr_screen.dart';
import 'loings_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> _register() async {
    if (_nameController.text.trim().isEmpty ||
        _emailController.text.trim().isEmpty ||
        _passwordController.text.trim().isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Please fill in all fields")),
      );
      return;
    }

    try {
      UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),
      );

      // Optional: Set display name
      await userCredential.user?.updateDisplayName(_nameController.text.trim());
      await userCredential.user?.reload(); // Reload the user.

      final email = userCredential.user?.email ?? "No Email"; // Fallback
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Account created for $email!")),
      );

      // Navigate to HomePageScreen
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomepageScreen()),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Registration failed: $e")),
      );
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 140,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "SignUp",
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            const SizedBox(height: 8),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()),
                );
              },
              child: const Text(
                "Already have Account? Login",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
          ],
        ),
        backgroundColor: Colors.indigo.shade500,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Name",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                CustomTextField(
                  controller: _nameController,
                  hintText: "Enter your name",
                ),
                const SizedBox(height: 16),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Email",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                CustomTextField(
                  controller: _emailController,
                  hintText: "Enter your email",
                ),
                const SizedBox(height: 16),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Password",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                CustomTextField(
                  controller: _passwordController,
                  obscureText: true,
                  hintText: "Enter your password",
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: _register,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.indigo.shade500,
                    minimumSize: const Size(double.infinity, 40),
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                  ),
                  child: const Text(
                    "Register",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                const SizedBox(height: 10),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const HomepageScreen()),
                    );
                  },
                  child: const Text(
                    "_____ or SignIn using _____",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final bool obscureText;
  final String hintText;

  const CustomTextField({
    super.key,
    required this.controller,
    this.obscureText = false,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(4),
      ),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(fontSize: 16, color: Colors.grey),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(vertical: 8.0),
        ),
      ),
    );
  }
}
