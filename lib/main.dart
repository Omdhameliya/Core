import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar: AppBar(
          title: Text("flutter app"),
          centerTitle: true,
          backgroundColor: Colors.red,
          elevation: 5,
          leading: Icon(Icons.menu),
        ),
        body: Center(
          child: Text("Red & White Group of institutes\none step in changing education chain...",
          style : TextStyle(
            color: Colors.red,
          ),
        ),
      ),
    ),
  ),
  );
}

