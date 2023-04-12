import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("EMI Calculator"),
          centerTitle: true,
          elevation: 0,
          leading: const Icon(Icons.grid_view),
          backgroundColor: const Color(0xff20295D),
        ),
        body: const MyApp(),
      ),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  double loanAmount = 10000, interestRate = 5, loanTenure = 2, ans = 0;

  @override
  Widget build(BuildContext context) {
    double H = MediaQuery.of(context).size.height;
    double W = MediaQuery.of(context).size.width;
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          height: H,
          width: W,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xff20295C),
                Color(0xff0F2027),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0, 1],
            ),
          ),
          child: Column(
            children: [
              const SizedBox(height: 20),
              const Text(
                "Your Loan EMI is",
                style: TextStyle(
                  color: Color(0xffE5E6E8),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "₹ ${ans.toInt()}",
                    style: const TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(width: 5),
                  const Text(
                    "Month",
                    style: TextStyle(
                      color: Color(0xffFFFFFF),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          height: 600,
          width: W,
          decoration: const BoxDecoration(
            color: Color(0xffEFEFEF),
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(50),
            ),
          ),
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    const SizedBox(height: 30,),
                    const Text("Loan Amount",
                      style: TextStyle(
                        fontSize: 27,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff414141),
                      ),
                    ),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        const Text("Loan Amount",
                          style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.w600,
                            color: Color(0xffE5E6E8),
                          ),
                        ),
                        Text("${loanAmount.toInt()}",
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 35),
                      child: SliderTheme(
                        data: const SliderThemeData(
                          trackHeight: 1,
                          thumbShape: RoundSliderThumbShape(enabledThumbRadius: 7),
                          overlayShape: RoundSliderOverlayShape(overlayRadius: 5),
                          thumbColor: Color(0xff12205A),
                          activeTrackColor: Color(0xffD9E0EC),
                          inactiveTrackColor: Color(0xffD9E0EC),

                        ),
                        child: Slider(
                          min: 10000,
                          max: 1000000,
                          onChanged: (val){
                            setState(() {
                              loanAmount = val;
                            });
                          },
                          divisions: 99,
                          value: loanAmount,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    const SizedBox(height: 30,),
                    const Text("Interest Rate",
                      style: TextStyle(
                        fontSize: 27,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff414141),
                      ),
                    ),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        const Text("Interest Rate",
                          style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.w600,
                            color: Color(0xffE5E6E8),
                          ),
                        ),
                        Text("${interestRate.toInt()}%",
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 35),
                      child: SliderTheme(
                        data: const SliderThemeData(
                          trackHeight: 1,
                          thumbShape: RoundSliderThumbShape(enabledThumbRadius: 7),
                          overlayShape: RoundSliderOverlayShape(overlayRadius: 5),
                          thumbColor: Color(0xff12205A),
                          activeTrackColor: Color(0xffD9E0EC),
                          inactiveTrackColor: Color(0xffD9E0EC),

                        ),
                        child: Slider(
                          min: 5,
                          max: 30,
                          onChanged: (val){
                            setState((){
                              interestRate = val;
                            });
                          },
                          value: interestRate,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    const SizedBox(height: 30,),
                    const Text("Loan Tenure",
                      style: TextStyle(
                        fontSize: 27,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff414141),
                      ),
                    ),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        const Text("Loan Tenure",
                          style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.w600,
                            color: Color(0xffE5E6E8),
                          ),
                        ),
                        Text("${loanTenure.toInt()} Month",
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 35),
                      child: SliderTheme(
                        data: const SliderThemeData(
                          trackHeight: 1,
                          thumbShape: RoundSliderThumbShape(enabledThumbRadius: 7),
                          overlayShape: RoundSliderOverlayShape(overlayRadius: 5),
                          thumbColor: Color(0xff12205A),
                          activeTrackColor: Color(0xffD9E0EC),
                          inactiveTrackColor: Color(0xffD9E0EC),

                        ),
                        child: Slider(
                          min: 2,
                          max: 60,
                          onChanged: (val){
                            setState(() {
                              loanTenure = val;
                            });
                          },
                          value: loanTenure,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Center(
                  child: InkWell(
                    onTap: (){
                      setState(() {
                        int P = loanAmount.toInt();
                        double R = interestRate.toInt() / 12 / 100;
                        int N = loanTenure.toInt();

                        ans = (P * R * pow((1+R), N) / (pow((1+R), N)-1));
                      });
                    },
                    child: Container(
                      height: 60,
                      width: 230,
                      decoration: BoxDecoration(
                        color: const Color(0xffE7EAFF),
                        border: Border.all(
                          color: const Color(0xffB0B5D3),
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      alignment: Alignment.center,
                      child: const Text("Calculate",
                        style: TextStyle(
                          fontSize: 30,
                          color: Color(0xff273064),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

