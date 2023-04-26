import 'dart:math';
import 'package:flutter/material.dart';
import 'package:invoice_generater/views/screens/pdf_Page.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:flutter/material.dart';

import 'Class_Page.dart';
import 'Questions_Bank_Page.dart';
class HOMEPAGE extends StatefulWidget {
  const HOMEPAGE({Key? key}) : super(key: key);
  @override
  State<HOMEPAGE> createState() => _HOMEPAGEState();
}
class _HOMEPAGEState extends State<HOMEPAGE> {
  final pdf = pw.Document();
  List<Map> allbutton = [
    {
      'title': 'All',
      'route': 'all',
    },
    {
      'title': 'Footwear',
      'route': 'Footwear',
    },
    {
      'title': 'Watches',
      'route': 'watches',
    },
    {
      'title': 'Bag',
      'route': 'bag',
    }, {
      'title': 'Cap',
      'route': 'cap',
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        actions: [
          FloatingActionButton(
              mini: true, child: Icon(Icons.message), onPressed:
              () {}),
          FloatingActionButton(
              mini: true, child: Icon(Icons.person_rounded),
              onPressed: () {
                Navigator.of(context).pushNamed('profilepage');
              }),
        ],
        backgroundColor: Colors.white70,
        centerTitle: true,
        title: Text(
          "Home",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(5),
        height: 800,
        width: 390,
        color: Colors.white70,
        child: Column(
          children: [
            Expanded(
              flex: 11,
              child: SingleChildScrollView(
                  child: Column(
                    children: [
                  Row(
                  children: [
                  Expanded(
                  flex: 9,
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText:
                          "Search🔍",
                          border: OutlineInputBorder(),
                    ),
                  )),
              SizedBox(width: 5),
              Expanded(
                child: FloatingActionButton(
                  onPressed: () {
                  },
                  child: Icon(Icons.settings),
                ),
              ),
              ],
            ),
            SizedBox(height: 30),
            Container(
              height: 200,
              width: 390,
              color: Colors.deepOrange,
              child: Image.asset(
                'assetes/images/Home/s1.jpg',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: allbutton
                    .map((e) => Container(
                    margin: EdgeInsets.all(10),
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed(e['route']);
                        },
                        child: Text(e['title']))))
                    .toList(),
              ),
            ),
            Row(
              children: [
                SizedBox(height: 20),
                Text(
                  'Popular',
                  style: TextStyle(
                      fontSize: 25, fontWeight:
                  FontWeight.bold),
                ),
                Spacer(),
                Text(
                  'View All',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Column(
              children: [
                Row(
                  children: [
                    Column(
                      children: pro1
                          .map(
                            (e) => Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.all(10),
                          height: 200,
                          width: 350,
                          decoration: BoxDecoration(
                              color: Colors.white70
                          ),
                          child: Row(
                            children: [
                              Container(
                                  height: 180,
                                  width: 190,
                                  color: Colors.indigo,
                                  child: Image.asset(
                                    '${e.image}',
                                    fit: BoxFit.cover,
                                  )),
                              SizedBox(width: 30),
                              Column(
                                mainAxisAlignment:
                                MainAxisAlignment.center,
                                children: [
                                  Text('${e.Name}',style: TextStyle(fontSize: 15,fontWeight:
                                  FontWeight.w700),),
                                  Text('💲${e.price}'),
                                      SizedBox(height: 20),
                                  FloatingActionButton(
                                      mini: true,
                                      child:
                                      Icon(Icons.add),
                                      onPressed: (){
                                        addcart.add(e);
                                        Navigator.of(context).pushNamed('addcart',arguments: e);
                                      })
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                          .toList(),
                    ),
                    SizedBox(width: 10),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    ),
    Expanded(
        child: Container(
            height: 50,
            decoration: BoxDecoration(
            color: Colors.white70,
            borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisAlignment:
              MainAxisAlignment.spaceEvenly,
                children: [
                IconButton(onPressed: () {}, icon:Icon(Icons.home)),
                IconButton(onPressed: () {}, icon:Icon(Icons.favorite)),
                IconButton(onPressed: () async{
                await generatPDF();
                },
                icon: Icon(Icons.picture_as_pdf)),
                IconButton(
                onPressed: () {
                Navigator.of(context).pushNamed('addcart');
                },
                icon: Icon(Icons.shopping_cart)),
              ],
              ),
            )),
            ],
        )),
        );
  }
}
