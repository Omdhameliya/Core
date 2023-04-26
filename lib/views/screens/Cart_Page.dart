import 'dart:math';
import 'package:flutter/material.dart';

import 'Class_Page.dart';
class ADDCART extends StatefulWidget {
  const ADDCART({Key? key}) : super(key: key);
  @override
  State<ADDCART> createState() => _ADDCARTState();
}
class _ADDCARTState extends State<ADDCART> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    final data = ModalRoute.of(context)!.settings.arguments as PRO1;
    dynamic data1 = ModalRoute.of(context)!.settings.arguments as
    dynamic;
// final data1 = ModalRoute.of(context)!.settings.arguments as PRO2;
    return Scaffold(
      appBar: AppBar(
        title: Text("ADDCART"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: addcart.map((g) => Column(
              children: [
                Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.all(10),
                    height: 80,
                    width: 390,
                    color: Colors.blueGrey,
                    child: Row(
                      children: [
                        Container(
                          width: 60,
                          height: 90,
                          color: Colors.deepOrange,
                          child: Image.asset('${g.image}',fit:
                          BoxFit.cover,),
                        ),
                        SizedBox(width: 20),
                        Column(
                          children: [
                            Text('${g.Name}',style:
                            TextStyle(fontSize: 16,fontWeight: FontWeight.w700),),
                            Text('💲${g.price}'),
                          ],
                        ),
                        Spacer(),
                        FloatingActionButton(
                            child: Icon(Icons.remove),
                            mini: true,
                            onPressed: (){
                              setState(() {
                                addcart.remove(g);
                              });
                            }),
                        Text('💲 ${g.price}'),
                        FloatingActionButton(
                            child: Icon(Icons.add),
                            mini: true,
                            onPressed: (){
                            }),
                      ],
                    )
                ),
              ],
            ),).toList(),
          ),
        ),
      ),
    );
  }
}
