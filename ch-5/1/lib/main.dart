import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter App",
          style: TextStyle(
            color: Colors.black,
          ),
          ),
          centerTitle: true,
          backgroundColor: Colors.amber,
          leading: Icon(Icons.menu,
          color: Colors.black,),
        ),
        body: Center(
          child: Text(
            "Red & White",
            style: TextStyle(
              fontSize: 55,
              color: Colors.red,
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.double,
              decorationColor: Colors.amber,
            ),
          ),
        ),
        backgroundColor: Colors.black,
      ),
    ),
  );
}

