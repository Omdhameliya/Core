import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String name = '';
  int income = 0;
  int i = 0;
  int expenses = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double h = size.height;
    double w = size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          "Budget Tracker",
          style: TextStyle(
            fontSize: h * 0.03,
            color: Colors.black,
            letterSpacing: 1,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xfffa9702),
      ),
      body: Padding(
        padding: EdgeInsets.all(w * 0.05),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter Your Name',
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(w * 0.05),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.green,
                    width: 1.25,
                  ),
                  borderRadius: BorderRadius.circular(w * 0.05),
                ),
              ),
              onChanged: (val) {
                name = val;
              },
            ),
            SizedBox(
              height: h * 0.05,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter Your Income',
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(w * 0.05),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.green,
                    width: 1.25,
                  ),
                  borderRadius: BorderRadius.circular(w * 0.05),
                ),
              ),
              onChanged: (val) {
                income = int.parse(val);
              },
            ),
            SizedBox(
              height: h * 0.05,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  if (name != '' && income > 0) {
                    Navigator.of(context).pushNamed(
                      'TrackerPage',
                      arguments: {
                        'name': name,
                        'income': income,
                        'expenses': expenses,
                        'i': i,
                      },
                    );
                  }
                });
              },
              child: Container(
                height: h * 0.07,
                width: w * 0.4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(h * 0.04),
                  color: Color(0xff1298ff),
                ),
                alignment: Alignment.center,
                child: Text(
                  'LOGIN',
                  style: TextStyle(
                    fontSize: h * 0.025,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Color(0xfffc58fc),
    );
  }
}
