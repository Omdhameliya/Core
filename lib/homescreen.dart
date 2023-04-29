import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

TextEditingController txtInput = TextEditingController();
TextEditingController txtInput1 = TextEditingController();
List<int> tableAns = [];
int inputNumber = 1;
int inputNumber1 = 1;
bool check = true;
var formkey = GlobalKey<FormState>();

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          elevation: 0,
          title: Text("Multiplication App"),
          actions: [
            IconButton(
                onPressed: () {
                  setState(() {
                    tableAns.clear();
                  });
                },
                icon: Icon(Icons.refresh)),
          ],
        ),
        body: SingleChildScrollView(
          child: Form(
            key: formkey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    onTapOutside: (event) => false,
                    keyboardType: TextInputType.number,
                    controller: txtInput,
                    validator: (value) {
                      if (inputNumber < 0 || check == false) {
                        return "enter valid number !";
                      } else {
                        null;
                      }
                    },
                    decoration: const InputDecoration(
                        labelText: "Table no.1",
                        labelStyle: TextStyle( color: Colors.blueAccent),
                        focusedBorder:OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blueAccent,width: 2)
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 2,color: Colors.blueAccent),
                        ),
                        enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blueAccent,width: 1)),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(width: 1.5, color: Colors.blueAccent),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    onTapOutside: (event) => false,
                    keyboardType: TextInputType.number,
                    controller: txtInput1,
                    validator: (value) {
                      if (inputNumber1 < 0 || check == false) {
                        return "enter valid number !";
                      } else {
                        null;
                      }
                    },
                    decoration: const InputDecoration(
                        labelText: "Table no.2",
                        labelStyle: TextStyle( color: Colors.blueAccent),
                        focusedBorder:OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blueAccent,width: 2)
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 2,color: Colors.blueAccent),
                        ),
                        enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blueAccent,width: 1)),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(width: 1.5, color: Colors.blueAccent),
                        )),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      tableAns.clear();
                      inputNumber1 = int.parse(txtInput1.text);
                      formkey.currentState!.validate();
                      for (int i = 1; i <= 10; i++) {
                        tableAns.add(i);
                      }
                      print(inputNumber1);
                      formkey.currentState!.deactivate();
                    });
                    setState(() {
                      tableAns.clear();
                      inputNumber = int.parse(txtInput.text);
                      formkey.currentState!.validate();
                      for (int i = 1; i <= 10; i++) {
                        tableAns.add(i);
                      }
                      print(inputNumber);
                      formkey.currentState!.deactivate();
                    });
                  },
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blueAccent)),
                  child: Text("Submit"),),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      padding: EdgeInsets.all(10),
                      margin:  EdgeInsets.all(10),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue,width: 2),
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blueAccent,
                      ),
                      alignment: Alignment.center,
                      child: Center(
                        child: ListView.builder(

                          itemBuilder: (context, index) => Center(
                            child: Row(
                              children: [
                                Text(
                                  "${inputNumber1} * ${index + 1} = ${inputNumber1 * (index + 1)}",style: TextStyle(fontSize: 30,color: Colors.white),
                                ),
                                SizedBox(width: 50,),
                                Text(
                                  "${inputNumber} * ${index + 1} = ${inputNumber * (index + 1)}",style: TextStyle(fontSize: 30,color: Colors.white),
                                ),

                              ],
                            ),
                          ),
                          itemCount: tableAns.length,
                          shrinkWrap: true,
                        ),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
