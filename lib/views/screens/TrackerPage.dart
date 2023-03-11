import 'package:flutter/material.dart';

class TrackerPage extends StatefulWidget {
  const TrackerPage({Key? key}) : super(key: key);
  @override
  State<TrackerPage> createState() => _TrackerPageState();
}

class _TrackerPageState extends State<TrackerPage> {
  int income = 0;
  int totalBalance = 0;
  int expenses = 0;
  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> data =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    Size size = MediaQuery.of(context).size;
    double h = size.height;
    double w = size.width;
    income = data['income'];
    expenses = data['expenses'];
    totalBalance = income - expenses;
    return Scaffold(
      appBar: AppBar(
        title: Text("Welocome"),
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context)
                .pushNamedAndRemoveUntil('/', (route) => false);
          },
          child: Icon(
            Icons.home,
            size: h * 0.038,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(h * 0.02),
        child: Center(
          child: Column(
            children: [
              Expanded(
                flex: 8,
                child: Container(
                  height: h * 0.2,
                  width: w * 0.9,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(w * 0.1),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text(
                            "Total Balance",
                            style: TextStyle(
                              fontSize: h * 0.02,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            '₹ $totalBalance',
                            style: TextStyle(
                              fontSize: h * 0.042,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              height: h * 0.0017,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const Spacer(),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Transactions",
                      style: TextStyle(
                        fontSize: h * 0.025,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        height: h * 0.075,
        width: h * 0.075,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.black,
        ),
        child: Icon(Icons.add, size: h * 0.05, color: Colors.white),
      ),
    );
  }
}
