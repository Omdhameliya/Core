import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AgeCalculator(),
    ),
  );
}

class AgeCalculator extends StatefulWidget {
  const AgeCalculator({Key? key}) : super(key: key);
  @override
  State<AgeCalculator> createState() => _AgeCalculatorState();
}

class _AgeCalculatorState extends State<AgeCalculator> {
  DateTime today = DateTime.now();
  int birthDate = 0;
  int birthMonth = 0;
  int birthYear = 0;
  String presentDate = "00";
  String presentMonth = "00";
  String presentYear = "00";
  String nextDate = "00";
  String nextMonth = "00";
  TextEditingController dateController = TextEditingController();
  TextEditingController monthController = TextEditingController();
  TextEditingController yearController = TextEditingController();

  List monthName = [
    'Jan',
    'Feb',
    'Mar',
    'Apr',
    'May',
    'Jun',
    'Jul',
    'Aug',
    'Sep',
    'Oct',
    'Nov',
    'Dec'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text("Age Calculator"),
        centerTitle: true,
        backgroundColor: const Color(0xff203A43),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
              flex: 10,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Today's Date"),
                  const SizedBox(
                    height: 5,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText:
                      "${today.day} ${monthName[today.month - 1]}, ${today.year}",
                      hintStyle: const TextStyle(
                        color: Color(0xff1C003E),
                      ),
                      enabled: false,
                      disabledBorder: const OutlineInputBorder(),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 10,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Date Of Birth"),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          cursorHeight: 25,
                          cursorColor: const Color(0xff13547A),
                          controller: dateController,
                          onChanged: (val) {
                            setState(() {
                              birthDate = int.parse(val);
                            });
                          },
                          textAlign: TextAlign.center,
                          decoration: const InputDecoration(
                            hintText: "DD",
                            hintStyle: TextStyle(
                              color: Color(0xffE5E5E5),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xff203A43),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xff203A43),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: TextField(
                          cursorHeight: 25,
                          cursorColor: const Color(0xff13547A),
                          controller: monthController,
                          onChanged: (val) {
                            setState(() {
                              birthMonth = int.parse(val);
                            });
                          },
                          textAlign: TextAlign.center,
                          decoration: const InputDecoration(
                            hintText: "MM",
                            hintStyle: TextStyle(
                              color: Color(0xffE5E5E5),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xff203A43),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xff203A43),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: TextField(
                          cursorHeight: 25,
                          cursorColor: const Color(0xff13547A),
                          controller: yearController,
                          onChanged: (val) {
                            setState(() {
                              birthYear = int.parse(val);
                            });
                          },
                          textAlign: TextAlign.center,
                          decoration: const InputDecoration(
                            hintText: "YYYY",
                            hintStyle: TextStyle(
                              color: Color(0xffE5E5E5),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xff203A43),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xff203A43),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 8,
              child: Row(
                children: [
                  Expanded(
                    child: Ink(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          color: const Color(0xff13547A),
                        ),
                      ),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            dateController.clear();
                            monthController.clear();
                            yearController.clear();
                            birthDate = 0;
                            birthMonth = 0;
                            birthYear = 0;
                            presentYear = "00";
                            presentMonth = "00";
                            presentDate = "00";
                            nextMonth = "00";
                            nextDate = "00";
                          });
                        },
                        splashColor: const Color(0xff13547A),
                        child: Container(
                          height: 55,
                          alignment: Alignment.center,
                          child: const Text(
                            "Clear",
                            style: TextStyle(
                              fontSize: 25,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: Ink(
                      decoration: BoxDecoration(
                        color: const Color(0xff13547A),
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          color: const Color(0xff13547A),
                        ),
                      ),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            (birthMonth >= today.month)
                                ? (birthMonth == today.month)
                                ? (today.day >= birthDate)
                                ? presentYear =
                                (today.year - birthYear).toString()
                                : presentYear =
                                (today.year - (birthYear + 1))
                                    .toString()
                                : presentYear =
                                (today.year - (birthYear + 1))
                                    .toString()
                                : presentYear =
                                (today.year - birthYear).toString();
//Month
                            if (birthMonth == today.month) {
                              if (birthDate == today.day) {
                                presentMonth =
                                    (birthMonth - today.month).toString();
                                nextMonth = (12 - (birthMonth - today.month))
                                    .toString();
                              } else if (birthDate < today.day) {
                                presentMonth =
                                    (birthMonth - (today.month)).toString();
                                nextMonth =
                                    (12 - ((birthMonth - (today.month)) + 1))
                                        .toString();
                              } else {
                                nextMonth =
                                    (birthMonth - today.month).toString();
                                presentMonth =
                                    (12 - ((birthMonth - today.month) + 1))
                                        .toString();
                              }
                            } else if (birthMonth > today.month) {
                              if (birthDate == today.day) {
                                nextMonth =
                                    (birthMonth - today.month).toString();
                                presentMonth = (12 - (birthMonth - today.month))
                                    .toString();
                              } else if (birthDate < today.day) {
                                nextMonth =
                                    (birthMonth - (today.month + 1)).toString();
                                presentMonth = (12 -
                                    ((birthMonth - (today.month + 1)) + 1))
                                    .toString();
                              } else {
                                nextMonth =
                                    (birthMonth - today.month).toString();
                                presentMonth =
                                    (12 - ((birthMonth - today.month) + 1))
                                        .toString();
                              }
                            } else {
                              if (birthDate == today.day) {
                                presentMonth =
                                    (today.month - birthMonth).toString();
                                nextMonth = (12 - (today.month - birthMonth))
                                    .toString();
                              } else if (birthDate < today.day) {
                                presentMonth =
                                    (today.month - birthMonth).toString();
                                nextMonth =
                                    (12 - ((today.month - birthMonth) + 1))
                                        .toString();
                              } else {
                                presentMonth =
                                    (today.month - (birthMonth + 1)).toString();
                                nextMonth = (12 - (today.month - birthMonth))
                                    .toString();
                              }
                            }
//Day
                            if (today.day == birthDate) {
                              presentDate = (today.day - birthDate).toString();
                              nextDate = (today.day - birthDate).toString();
                            } else if (today.day > birthDate) {
                              presentDate = (today.day - birthDate).toString();
                              nextDate =
                                  (31 - (today.day - birthDate)).toString();
                            } else {
                              nextDate = (birthDate - today.day).toString();
                              presentDate =
                                  (31 - (birthDate - today.day)).toString();
                            }
                          });
                        },
                        splashColor: Colors.white,
                        child: Container(
                          height: 55,
                          alignment: Alignment.center,
                          child: const Text(
                            "Calculate",
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(
              flex: 2,
            ),
            Expanded(
              flex: 15,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Present Age"),
                  const SizedBox(
                    height: 8,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        gradient: const LinearGradient(
                          colors: [
                            Color(0xff13547A),
                            Color(0xff203A43),
                          ],
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                presentYear,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                              const Text(
                                "Year",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              )
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                presentMonth,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                              const Text(
                                "MM",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                presentDate,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                              const Text(
                                "DD",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(
              flex: 3,
            ),
            Expanded(
              flex: 15,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Next Birthday"),
                  const SizedBox(
                    height: 8,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        gradient: const LinearGradient(
                          colors: [
                            Color(0xff6BBED9),
                            Color(0xff006acb),
                          ],
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                nextMonth,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                              const Text(
                                "MM",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                nextDate,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                              const Text(
                                "DD",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
