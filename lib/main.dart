import 'package:flutter/material.dart';
import 'package:untitled/views/screens/Analog_Clock.dart';
import 'package:untitled/views/screens/Digital_Clock.dart';
import 'package:untitled/views/screens/Live_Watch.dart';

void main() {
  runApp(
    const MyApp(),
  );
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const Analog_Clock(),
      },
    );
  }
}