
import 'dart:async';

import 'package:animate_do/animate_do.dart';
 import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../home_/homr_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 8), () {
        Get.off(() =>  HomepageScreen());

    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo.shade300,
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: FadeInDown(
                duration: const Duration(milliseconds: 2000),
                child: Image.asset(
                  "assets/image/splash_image1.png",
                  height: 200,
                  width: 200,
                ),
              ),
            ),
            const Text(
              "STYLISH",
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            FadeInUp(
              duration: const Duration(milliseconds: 2000),
              child: const Text(
                "Find Your Style",
                style: TextStyle(
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                  fontFamily: "italic",
                  fontSize: 20,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
