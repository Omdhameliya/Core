import 'package:flutter/material.dart';


void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BMIApp(),
    ),
  );
}


class BMIApp extends StatefulWidget {
  const BMIApp({Key? key}) : super(key: key);


  @override
  State<BMIApp> createState() => _BMIAppState();
}


class _BMIAppState extends State<BMIApp> {
  double mySliderVal = 1;
  int w = 10;
  int a = 1;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "BMI Calculator",
          style: TextStyle(
            fontSize: 30,
          ),
        ),
        backgroundColor: const Color(0xff090e21),
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 225,
                  width: 175,
                  decoration: BoxDecoration(
                    color: const Color(0xff1d1e33),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  alignment: Alignment.center,
                  child: RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: "\n♀",
                          style: TextStyle(
                            color: Colors.pink,
                            fontSize: 100,
                            height: 1,
                          ),
                        ),
                        TextSpan(
                          text: "\n\n\nFemale",
                          style: TextStyle(
                              color: Colors.white, fontSize: 20, height: 0.1),

                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  height: 225,
                  width: 175,
                  decoration: BoxDecoration(
                    color: const Color(0xff3B3C4D),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  alignment: Alignment.center,
                  child: RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: "\n♂",
                          style: TextStyle(
                            color: Color(0xffeb1555),
                            fontSize: 100,
                            height: 1,
                          ),
                        ),
                        TextSpan(
                          text: "\n\n\nMale",
                          style: TextStyle(
                              color: Colors.white, fontSize: 20, height: 0.1),
                        )
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 225,
                  width: 400,
                  decoration: BoxDecoration(
                    color: const Color(0xff1d1e33),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        child: Text(
                          "HEIGHT",
                          style: TextStyle(
                            color: Color(0xff626473),
                            height: 3,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Expanded(
                          flex: 2,
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: mySliderVal.toInt().toString(),
                                  style: const TextStyle(
                                    fontSize: 40,
                                    height: 2,
                                    color: Colors.white,
                                  ),
                                ),
                                const TextSpan(
                                  text: "  cm",
                                  style: TextStyle(
                                    color: Color(0xff626473),
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                          )),
                      Expanded(
                          child: SliderTheme(
                            data: const SliderThemeData(
                              activeTrackColor: Color(0xff555555),
                              inactiveTrackColor: Color(0xff555555),
                              thumbColor: Color(0xffeb1555),
                              trackHeight: 1,
                            ),
                            child: Slider(
                                value: mySliderVal,
                                min: 1,
                                max: 200,
                                onChanged: (val) {
                                  setState(() {
                                    mySliderVal = val;
                                  });
                                }),
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 225,
                  width: 175,
                  decoration: BoxDecoration(
                    color: const Color(0xff1d1e33),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      const Expanded(
                        child: Text(
                          "Weight",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            height: 3,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "$w",
                          style: const TextStyle(
                              color: Colors.white, fontSize: 40, height: 1),
                        ),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  w--;
                                });
                              },
                              child: Container(
                                height: 35,
                                width: 35,
                                decoration: const BoxDecoration(
                                  color: Color(0xff4c4f5e),
                                  shape: BoxShape.circle,
                                ),
                                alignment: Alignment.center,
                                child: const Icon(
                                  Icons.remove,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  w++;
                                });
                              },
                              child: Container(
                                height: 35,
                                width: 35,
                                decoration: const BoxDecoration(
                                  color: Color(0xff4c4f5e),
                                  shape: BoxShape.circle,
                                ),
                                alignment: Alignment.center,
                                child: const Icon(
                                  Icons.add,
                                  color: Colors.redAccent,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 225,
                  width: 175,
                  decoration: BoxDecoration(
                    color: const Color(0xff1d1e33),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      const Expanded(
                        child: Text(
                          "Age",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            height: 3,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "$a",
                          style: const TextStyle(
                              color: Colors.white, fontSize: 40, height: 1),
                        ),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  a--;
                                });
                              },
                              child: Container(
                                height: 35,
                                width: 35,
                                decoration: BoxDecoration(
                                  color: Color(0xff4c4f5e),
                                  shape: BoxShape.circle,
                                ),
                                alignment: Alignment.center,
                                child: Icon(
                                  Icons.remove,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  a++;
                                });
                              },
                              child: Container(
                                height: 35,
                                width: 35,
                                decoration: const BoxDecoration(
                                  color: Color(0xff4c4f5e),
                                  shape: BoxShape.circle,
                                ),
                                alignment: Alignment.center,
                                child: const Icon(
                                  Icons.add,
                                  color: Colors.redAccent,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Ink(
              decoration: BoxDecoration(
                color: const Color(0xffeb1555),
                borderRadius: BorderRadius.circular(100),
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(100),
                splashColor: Colors.white,
                onTap: () {
                  setState(() {
                    print("${w % mySliderVal * mySliderVal}");
                  });
                },
                child: Container(
                  width: 400,
                  alignment: Alignment.center,
                  child: const Text(
                    "Calculate",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      backgroundColor: const Color(0xff090e21),
    );
  }
}
