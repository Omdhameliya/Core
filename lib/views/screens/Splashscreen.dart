import 'dart:async';

import 'package:flutter/material.dart';

import '../utils/ImageUtils.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  initState() {
    super.initState();

    Duration duration = const Duration(seconds: 3);

    Timer(duration, () {
      Navigator.of(context).pushReplacementNamed('/');
    });
  }

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.network("https://th.bing.com/th/id/OIP.cJIVil0nuf3Jvn_DoDXivQHaG0?w=203&h=187&c=7&r=0&o=5&dpr=1.5&pid=1.7"),
            SizedBox(width: w * 0.4,
              child: LinearProgressIndicator(
                color: Colors.blueAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}