import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sparemart2/Auth/login.dart';
import 'package:sparemart2/Auth/signup.dart';
import 'package:sparemart2/models/shop.dart';
import 'package:sparemart2/pages/cart_page.dart';
import 'package:sparemart2/pages/intro_page.dart';
import 'package:sparemart2/pages/menu_page.dart';
import 'package:sparemart2/pages/see_all.dart';
import 'package:sparemart2/prands/pages/home_pages.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

 void main() async{
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: "AIzaSyDVG57mPfNeiFFOtjtFKNw1HV4J0N0hrcM",
        appId: "1:36497232687:android:6d11ebe08dd178647787da",
        messagingSenderId: "36497232687",
        projectId: "sparemart2-e115d",
        storageBucket: "sparemart2-e115d.firebasestorage.app"),
      
      
  );
  runApp(
    ChangeNotifierProvider(create: (context) =>Shop(),child: const MyApp(),)
  );
 }
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override


  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home:(FirebaseAuth.instance.currentUser != null &&FirebaseAuth.instance.currentUser!.emailVerified) ?  const IntroPage() :  const Login(),
        routes: {
          "signup" : (context) =>  const SignUp(),
        "login" : (context) =>  const Login(),
        "intro_page" : (context) => const IntroPage(),
        "home_pages" : (context) => const HomePage1(),
        '/menupage': (context) => const MenuPage(),
        '/cartpage': (context) => const CartPage(),
         "see_all" : (context) => const SeeAll(),
       
       
      },
    );
  }
}
