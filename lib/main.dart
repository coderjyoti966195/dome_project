 import 'package:demo_project/login/splash_screen.dart';
  import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


void main() async {

    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
    runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home:SplashScreen(),
     );
  }
}

//
// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// import 'favorite_/favorites_controllers.dart';
// import 'firebase_options.dart';
// import 'home_/homr_screen.dart';
// import 'login/Register_Screen.dart';
// import 'login/loings_screen.dart';
// import 'login/splash_screen.dart';
//
// void main() async{
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
//   Get.put(FavoriteController());
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
//         // GetPage(name: '/splash', page: () => SplashScreen()),
//         // GetPage(name: '/login', page: () => LoginScreen()),
//         // GetPage(name: '/register', page: () =>  RegisterScreen()),
//         GetPage(name: '/home', page: () => const HomepageScreen()),
//       ],
//     );
//   }
// }
//
//
// import 'package:demo_project/login/auth_controller.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// import 'firebase_options.dart';
// import 'home_/homr_screen.dart';
// import 'login/Register_Screen.dart';
// import 'login/loings_screen.dart';
// import 'login/splash_screen.dart';
//
// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
//
//   // Properly initialize AuthController here
//   Get.put(AuthController()); // Instantiate the AuthController
//
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
//         GetPage(name: '/register', page: () => RegisterScreen()),
//         GetPage(name: '/home', page: () => HomepageScreen()),
//       ],
//     );
//   }
// }
