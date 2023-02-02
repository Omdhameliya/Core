import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Red & White'),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: RichText(
            textAlign: TextAlign.start,
            text: TextSpan(
              children: [
                const TextSpan(
                  text: "            G",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const TextSpan(
                  text: "R",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const TextSpan(
                  text: "APHICS\n",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const TextSpan(
                  text: "   FLUTT",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    height: 2,
                  ),
                ),
                const TextSpan(
                  text: "E",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const TextSpan(
                  text: "R\n",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const TextSpan(
                  text: "         AN",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    height: 2,
                  ),
                ),
                const TextSpan(
                  text: "D",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const TextSpan(
                  text: "ROID\n",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const TextSpan(
                  text: "DESIGN",
                  style: TextStyle(
                    color: Colors.orangeAccent,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    height: 2,
                  ),
                ),
                const TextSpan(
                  text: "&",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const TextSpan(
                  text: "DEVELOP\n",
                  style: TextStyle(
                    color: Colors.orangeAccent,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const TextSpan(
                  text: "           W",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    height: 2,
                  ),
                ),
                const TextSpan(
                  text: "EB\n",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const TextSpan(
                  text: "       FAS",
                  style: TextStyle(
                    color: Colors.yellow,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    height: 2,
                  ),
                ),
                const TextSpan(
                  text: "H",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const TextSpan(
                  text: "ION\n",
                  style: TextStyle(
                    color: Colors.yellow,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: "ANIMAT",
                  style: TextStyle(
                    color: Colors.green.shade700,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    height: 2,
                  ),
                ),
                const TextSpan(
                  text: "I",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: "ON\n",
                  style: TextStyle(
                    color: Colors.green.shade700,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const TextSpan(
                  text: "             I",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    height: 2,
                  ),
                ),
                const TextSpan(
                  text: "T",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const TextSpan(
                  text: "A-CS+\n",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const TextSpan(
                  text: "     GAM",
                  style: TextStyle(
                    color: Colors.orangeAccent,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    height: 2,
                  ),
                ),
                const TextSpan(
                  text: "E",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
        backgroundColor: Colors.black,
      ),
    ),
  );
}
