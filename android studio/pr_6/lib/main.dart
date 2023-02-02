import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(' 🛍 List of Fruits'),
          centerTitle: true,
          backgroundColor: const Color(0xff02ab86),
        ),
        body: Center(
          child: RichText(
            textAlign: TextAlign.start,
            text: const TextSpan(
              children: [
                TextSpan(
                  text: "🍎 Apple\n",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 30,
                  ),
                ),
                TextSpan(
                  text: "🍇 Greps\n",
                  style: TextStyle(
                    color: Color(0xffc35ae6),
                    fontSize: 30,
                    height: 1.5,
                  ),
                ),
                TextSpan(
                  text: "🍒 Cherry\n",
                  style: TextStyle(
                    color: Colors.purple,
                    fontSize: 30,
                    height: 1.5,
                  ),
                ),
                TextSpan(
                  text: "🍓 Strawberry\n",
                  style: TextStyle(
                    color: Color(0xffcc048d),
                    fontSize: 30,
                    height: 1.5,
                  ),
                ),
                TextSpan(
                  text: "🥭 Mango\n",
                  style: TextStyle(
                    color: Colors.orange,
                    fontSize: 30,
                    height: 1.5,
                  ),
                ),
                TextSpan(
                  text: "🍍 Pineapple\n",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 30,
                    height: 1.5,
                  ),
                ),
                TextSpan(
                  text: "🍋 Lemon\n",
                  style: TextStyle(
                    color: Color(0xfff7d023),
                    fontSize: 30,
                    height: 1.5,
                  ),
                ),
                TextSpan(
                  text: "🍉 Watermelon\n",
                  style: TextStyle(
                    color: Color(0xfa7e36bf),
                    fontSize: 30,
                    height: 1.5,
                  ),
                ),
                TextSpan(
                  text: "🥥 Coconut\n",
                  style: TextStyle(
                    color: Color(0xff361e00),
                    fontSize: 30,
                    height: 1.5,
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