import 'package:flutter/material.dart';
import 'package:viva_1/views/screens/HomePage.dart';
import 'package:viva_1/views/screens/TrackerPage.dart';

void main() => runApp(
      MyApp(),
    );

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const HomePage(),
        'TrackerPage': (context) => const TrackerPage(),
      },
    );
  }
}
