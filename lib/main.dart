import 'package:flutter/material.dart';
import 'package:pr_5/views/screens/Cart_Page.dart';
import 'package:pr_5/views/screens/Home_Page.dart';
import 'package:pr_5/views/screens/SplashScreen.dart';

void main ()
{
  runApp(const MyApp(),);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'SplashScreen',
      routes: {
        '/': (context) => const Home_Page(),
        'Cart_Page': (context) => const Cart_Page(),
        'SplashScreen': (context) => const SplashScreen(),
      },
    );
  }
}
