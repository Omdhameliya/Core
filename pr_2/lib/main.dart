import 'package:flutter/material.dart';


void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Calc(),
    ),
  );
}


class Calc extends StatefulWidget {
  const Calc({Key? key}) : super(key: key);


  @override
  State<Calc> createState() => _CalcState();
}


class _CalcState extends State<Calc> {
  int a = 1;
  int b = 2;
  int c = 3;
  int d = 4;
  int e = 5;
  int f = 6;
  int g = 7;
  int h = 8;
  int i = 9;
  int j = 0;
  int k = 00;


  int firstVal = 0;
  int secondVal = 0;
  String Symbol = "";


  String p = "+";
  String q = "-";
  String r = "*";
  String s = "/";
  String t = "%";


  String x = ".";


  String ans = "";
  int total = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                height: 100,
                width: 400,
                color: Colors.white,
                alignment: Alignment.bottomRight,
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "   $ans",
                        style: const TextStyle(
                          color: Color(0xff8D8D8D),
                          fontSize: 30,
                        ),
                      ),
                      TextSpan(
                        text: "\n\n $total  ",
                        style: const TextStyle(
                          color: Color(0xff2E2D32),
                          fontSize: 60,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Text(
              "-----------------------------------------------------------------------------------------------------------------------------",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                ans = "";
                                total = 0;
                                firstVal = 0;
                                secondVal = 0;
                                Symbol = "";
                              });
                            },
                            child: Container(
                              height: 60,
                              width: 150,
                              decoration: BoxDecoration(
                                color: const Color(0xffFF5A66),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              alignment: Alignment.center,
                              child: const Text(
                                "AC",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 50,
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                ans = ans + (t).toString();
                                Symbol = t;
                              });
                            },
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              alignment: Alignment.center,
                              child: const Text(
                                "%",
                                style: TextStyle(
                                  color: Color(0xff929292),
                                  fontSize: 25,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                ans = ans + (s).toString();
                                Symbol = s;
                              });
                            },
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              alignment: Alignment.center,
                              child: const Text(
                                "/",
                                style: TextStyle(
                                  color: Color(0xffFF5A66),
                                  fontSize: 25,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                ans = ans + (g).toString();
                                if (Symbol == "+" ||
                                    Symbol == "-" ||
                                    Symbol == "*" ||
                                    Symbol == "/" ||
                                    Symbol == "%") {
                                  firstVal = (firstVal * 10) + g;
                                } else {
                                  secondVal = (secondVal * 10) + g;
                                }
                              });
                            },
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                "$g",
                                style: const TextStyle(
                                  fontSize: 25,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 50,
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                ans = ans + (h).toString();
                                if (Symbol == "+" ||
                                    Symbol == "-" ||
                                    Symbol == "*" ||
                                    Symbol == "/" ||
                                    Symbol == "%") {
                                  firstVal = (firstVal * 10) + h;
                                } else {
                                  secondVal = (secondVal * 10) + h;
                                }
                              });
                            },
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                "$h",
                                style: const TextStyle(
                                  fontSize: 25,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 60,
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                ans = ans + (i).toString();
                                if (Symbol == "+" ||
                                    Symbol == "-" ||
                                    Symbol == "*" ||
                                    Symbol == "/" ||
                                    Symbol == "%") {
                                  firstVal = (firstVal * 10) + i;
                                } else {
                                  secondVal = (secondVal * 10) + i;
                                }
                              });
                            },
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                "$i",
                                style: const TextStyle(
                                  fontSize: 25,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 22,
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                ans = ans + (r).toString();
                                Symbol = r;
                              });
                            },
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              alignment: Alignment.bottomCenter,
                              child: const Text(
                                "*",
                                style: TextStyle(
                                  color: Color(0xffFF5A66),
                                  fontSize: 25,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                ans = ans + (d).toString();
                                if (Symbol == "+" ||
                                    Symbol == "-" ||
                                    Symbol == "*" ||
                                    Symbol == "/" ||
                                    Symbol == "%") {
                                  firstVal = (firstVal * 10) + d;
                                } else {
                                  secondVal = (secondVal * 10) + d;
                                }
                              });
                            },
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                "$d",
                                style: const TextStyle(
                                  fontSize: 25,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 50,
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                ans = ans + (e).toString();
                                if (Symbol == "+" ||
                                    Symbol == "-" ||
                                    Symbol == "*" ||
                                    Symbol == "/" ||
                                    Symbol == "%") {
                                  firstVal = (firstVal * 10) + e;
                                } else {
                                  secondVal = (secondVal * 10) + e;
                                }
                              });
                            },
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                "$e",
                                style: const TextStyle(
                                  fontSize: 25,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 60,
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                ans = ans + (f).toString();
                                if (Symbol == "+" ||
                                    Symbol == "-" ||
                                    Symbol == "*" ||
                                    Symbol == "/" ||
                                    Symbol == "%") {
                                  firstVal = (firstVal * 10) + f;
                                } else {
                                  secondVal = (secondVal * 10) + f;
                                }
                              });
                            },
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                "$f",
                                style: const TextStyle(
                                  fontSize: 25,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 22,
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                ans = ans + (q).toString();
                                Symbol = q;
                              });
                            },
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              alignment: Alignment.bottomCenter,
                              child: const Text(
                                "-",
                                style: TextStyle(
                                  color: Color(0xffFF5A66),
                                  fontSize: 50,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                ans = ans + (a).toString();
                                if (Symbol == "+" ||
                                    Symbol == "-" ||
                                    Symbol == "*" ||
                                    Symbol == "/" ||
                                    Symbol == "%") {
                                  firstVal = (firstVal * 10) + a;
                                } else {
                                  secondVal = (secondVal * 10) + a;
                                }
                              });
                            },
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                "$a",
                                style: const TextStyle(
                                  fontSize: 25,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 50,
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                ans = ans + (b).toString();
                                if (Symbol == "+" ||
                                    Symbol == "-" ||
                                    Symbol == "*" ||
                                    Symbol == "/" ||
                                    Symbol == "%") {
                                  firstVal = (firstVal * 10) + b;
                                } else {
                                  secondVal = (secondVal * 10) + b;
                                }
                              });
                            },
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                "$b",
                                style: const TextStyle(
                                  fontSize: 25,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 60,
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                ans = ans + (c).toString();
                                if (Symbol == "+" ||
                                    Symbol == "-" ||
                                    Symbol == "*" ||
                                    Symbol == "/" ||
                                    Symbol == "%") {
                                  firstVal = (firstVal * 10) + c;
                                } else {
                                  secondVal = (secondVal * 10) + c;
                                }
                              });
                            },
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                "$c",
                                style: const TextStyle(
                                  fontSize: 25,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                ans = ans + (p).toString();
                                Symbol = p;
                              });
                            },
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              alignment: Alignment.bottomCenter,
                              child: const Text(
                                "+",
                                style: TextStyle(
                                  color: Color(0xffFF5A66),
                                  fontSize: 25,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                ans = ans + (k).toString();
                                if (Symbol == "+" ||
                                    Symbol == "-" ||
                                    Symbol == "*" ||
                                    Symbol == "/" ||
                                    Symbol == "%") {
                                  firstVal = (firstVal * 10) + k;
                                } else {
                                  secondVal = (secondVal * 10) + k;
                                }
                              });
                            },
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              alignment: Alignment.bottomLeft,
                              child: const Text(
                                "00",
                                style: TextStyle(
                                  fontSize: 25,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 50,
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                ans = ans + (j).toString();
                                if (Symbol == "+" ||
                                    Symbol == "-" ||
                                    Symbol == "*" ||
                                    Symbol == "/" ||
                                    Symbol == "%") {
                                  firstVal = (firstVal * 10) + j;
                                } else {
                                  secondVal = (secondVal * 10) + j;
                                }
                              });
                            },
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                "$j",
                                style: const TextStyle(
                                  fontSize: 25,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 60,
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                ans = ans + (x).toString();
                              });
                            },
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              alignment: Alignment.bottomCenter,
                              child: const Text(
                                ".",
                                style: TextStyle(
                                  fontSize: 25,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 11,
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                if (Symbol == "+") {
                                  total = firstVal + secondVal;
                                } else if (Symbol == "-") {
                                  total = secondVal - firstVal;
                                } else if (Symbol == "*") {
                                  total = firstVal * secondVal;
                                } else if (Symbol == "/") {
                                  total = secondVal ~/ firstVal;
                                } else if (Symbol == "%") {
                                  total = firstVal % secondVal;
                                } else {
                                  total = 0;
                                }
                              });
                            },
                            child: Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                color: const Color(0xffFF5A66),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              alignment: Alignment.center,
                              child: const Text(
                                "=",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
