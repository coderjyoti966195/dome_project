import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../home_/homr_screen.dart';
import 'loings_screen.dart';


class AuthWrapper extends StatelessWidget {
  const AuthWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    final FirebaseAuth auth = FirebaseAuth.instance;

    if (auth.currentUser != null) {
      return   HomepageScreen(); // Redirect to Home if logged in
    } else {
      return   LoginScreen(); // Redirect to Login
    }
  }
}