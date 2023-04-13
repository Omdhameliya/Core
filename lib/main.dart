import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: toDoApp(),
    ),
  );
}

class toDoApp extends StatefulWidget {
  const toDoApp({Key? key}) : super(key: key);

  @override
  State<toDoApp> createState() => _toDoAppState();
}

class _toDoAppState extends State<toDoApp> {
  int i = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("To-Do App",
          style: TextStyle(
            fontFamily: "Times New Roman",
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.orange.shade900,
        actions: [
          Icon(Icons.apps),
          SizedBox(width: 12),
        ],
      ),

      body: Padding(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Row(
            children: [
              Expanded(
                flex: 5,
                child: Column(
                  children: List.generate(
                    i,
                        (index) => Container(
                      height: 60,
                      margin: EdgeInsets.all(7),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          color: Colors.grey,
                          width: 1,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          (index < 3)
                              ?("${index + 9}:00\nAM")
                              :(index == 3)
                              ?("${index + 9}:00\nPM")
                              :("${index - 3}:00\nPM"),
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: "Times New Roman",
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 17,
                child: Column(
                  children: List.generate(
                      i,
                          (index) => Container(
                        height: 60,
                        margin: EdgeInsets.all(7),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Enter your To-Do here...",
                            hintStyle: TextStyle(
                              fontFamily: "Times New Roman",
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 1,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(
                                width: 1,
                              ),
                            ),
                          ),
                        ),
                      )
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            if(i < 12) {
              i++;
            }
          });
        },
        backgroundColor: Colors.orange.shade900,
        child: Icon(Icons.add),
      ),
    );
  }
}
