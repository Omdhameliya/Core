import 'dart:math';
import 'package:flutter/material.dart';
class LiveWatch extends StatefulWidget {

  const LiveWatch({Key? key}) : super(key: key);
  @override
  State<LiveWatch> createState() => _LiveWatchState();
}
class _LiveWatchState extends State<LiveWatch> {
  int s = 0;
  int m = 0;
  int h = 0;

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
    Size size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
    return Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Transform.rotate(
              angle: ((s + 15) * pi) / 30,
              child: Divider(
                color: Colors.lightBlueAccent,
                indent: 108,
                thickness: height * 0.004,
                endIndent: width / 2,
              ),
            ),
            Transform.scale(
              scale: 7.5,
              child: CircularProgressIndicator(
                value: s / 60,
                color: Colors.lightBlueAccent,
                strokeWidth: 2,
              ),
            ),
            Transform.rotate(
              angle: ((m + 15) * pi) / 30,
              child: Divider(
                color: Colors.lightBlue,

                thickness: height * 0.006,
                indent: 127,
                endIndent: width * 0.5,
              ),
            ), Transform.scale(
              scale: 6.5,
              child: CircularProgressIndicator(
                value: m / 60,
                color: Colors.lightBlue,
                strokeWidth: 2,
              ),
            ),
            Transform.rotate(
              angle: ((h + 15) * pi) / 6,
              child: Divider(
                color: Colors.blueAccent,
                thickness: height * 0.008,
                indent: 145,
                endIndent: width * 0.5,
              ),
            ),Transform.scale(
              scale: 5.5,
              child: CircularProgressIndicator(
                value: h / 12,
                color: Colors.blueAccent,
                strokeWidth: 2,
              ),
            ),

            Text('$h : $m : $s',style: const TextStyle(
              fontSize: 40,color: Colors.white,
              fontWeight: FontWeight.w800,
            ),),
          ],
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}