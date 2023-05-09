import 'dart:math';

import 'package:flutter/material.dart';

class Analog_Clock extends StatefulWidget {
  const Analog_Clock({Key? key}) : super(key: key);

  @override
  State<Analog_Clock> createState() => _Analog_ClockState();
}

class _Analog_ClockState extends State<Analog_Clock> {
  int s = 0;
  int m = 0;
  int h = 0;
  String t = 'PM';

  void timer() {
    Future.delayed(
      const Duration(seconds: 1),
          () {
        setState(() {
          s = DateTime.now().second;
          m = DateTime.now().minute;
          h = DateTime.now().hour;
          if(h>12){
            h-=12;
            t = 'AM';
          }
          timer();
        });
      },
    );
  }
  @override
  void initState() {
    super.initState();
    timer();
  }
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            ...List.generate(60,
                  (index) => Transform.rotate(
                    angle: (index / 60) * (pi * 2),
                    child: Divider(
                      thickness: (index % 5 == 0) ? 5: 2,
                      endIndent: w * 0.95,
                      color: (index % 5 == 0) ? Colors.red: Colors.black,
                    ),
                  ),

            ),
            Transform.rotate(
              angle: ((s + 15) * pi) / 30,
              child: Divider(
                color: Colors.lightBlueAccent,
                indent: 108,
                thickness: h * 0.004,
                endIndent: w / 2,
              ),
            ),
            Transform.rotate(
              angle: ((m + 15) * pi) / 30,
              child: Divider(
                color: Colors.lightBlue,

                thickness: h * 0.006,
                indent: 127,
                endIndent: w * 0.5,
              ),
            ),
            Transform.rotate(
              angle: ((h + 15) * pi) / 6,
              child: Divider(
                color: Colors.blueAccent,
                thickness: h * 0.008,
                indent: 145,
                endIndent: w * 0.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
