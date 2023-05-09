import 'package:flutter/material.dart';

class Digital_Clock extends StatefulWidget {
  const Digital_Clock({Key? key}) : super(key: key);

  @override
  State<Digital_Clock> createState() => _Digital_ClockState();
}

class _Digital_ClockState extends State<Digital_Clock> {
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
    return Scaffold(
      body:   Center(
        child: Text('$h : $m : $s  $t',style: const TextStyle(
          fontSize: 40,color: Colors.black,
          fontWeight: FontWeight.w800,
        ),),
      ),
    );
  }
}
