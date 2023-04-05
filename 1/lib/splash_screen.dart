import 'dart:async';

import 'package:flutter/material.dart';

class splash_screen extends StatefulWidget {
  const splash_screen({Key? key}) : super(key: key);

  @override
  State<splash_screen> createState() => _splash_screenState();
}
class _splash_screenState extends State<splash_screen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),(){
      Navigator.of(context).pushReplacementNamed(('/'),);
    }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlutterLogo(size: 300,),
            SizedBox(height: 50,),
            SizedBox(width: 200,child: LinearProgressIndicator()),
            SizedBox(height: 50,),
            Text("Hello Welcome",
              style: TextStyle(
                fontSize: 26,
                color: Colors.blue,
              ),)
          ],
        ),
      ),
    );
  }
}
