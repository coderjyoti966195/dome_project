 import 'package:demo_project/login/splash_screen.dart';
  import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'favorite_/favorites_controllers.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  Get.put(FavoritesController);
  // Get.lazyPut(()=>FavoritesControllert());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home:SplashScreen(),
     );
  }
}





// import 'package:demo_project/rigistion_.dart';
// import 'package:demo_project/splash_screen.dart';
//  import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// import 'firebase_options.dart';
// import 'homescreen.dart';
// import 'loings_screen.dart';
//
// void main() async{
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       debugShowCheckedModeBanner: false,
//       initialRoute: '/splash',
//       getPages: [
//         GetPage(name: '/splash', page: () => const SplashScreen()),
//         GetPage(name: '/login', page: () => const LoginScreen()),
//         GetPage(name: '/register', page: () =>  RegisterScreen()),
//         GetPage(name: '/home', page: () =>   HomeScreen()),
//       ],
//     );
//   }
// }