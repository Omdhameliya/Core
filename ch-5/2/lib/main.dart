import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("My RNW"),
          centerTitle: true,
          backgroundColor: Colors.red,
          leading: Icon(Icons.menu),
        ),
        body: Center(
          child: Text.rich(
            textAlign:TextAlign.center,
            TextSpan(
              children: [
                TextSpan(
                    text: "RED & WHITE",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 55,
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: "\nMultimedia Education",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.red,
                  ),
                ),
                TextSpan(
                  text: "\nshaing 'skills' for 'scaling' higher...!!!",
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}

