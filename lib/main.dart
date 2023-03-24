
import 'package:flutter/material.dart';
import 'package:resume_builder/views/screens/HomePage.dart';
import 'package:resume_builder/views/screens/build_options.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => HomePage(),
        'build_options': (context) => BuildOption(),
      },
    ),
  );
}
