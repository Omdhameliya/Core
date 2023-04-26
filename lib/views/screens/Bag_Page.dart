import 'package:flutter/material.dart';
import 'Class_Page.dart';
class Bag extends StatefulWidget {
  const Bag({Key? key}) : super(key: key);
  @override
  State<Bag> createState() => _BagState();
}
class _BagState extends State<Bag> {
  get bag1 => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        title: Text("Bag"),
      ),
      body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: bag1.map(
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
                          Text('${e.Name}',style:
                          TextStyle(fontSize: 15,fontWeight: FontWeight.w700),),
                          Text('💲 ${e.price}'),
                          SizedBox(height: 20),
                          FloatingActionButton(
                              mini: true,
                              child: Icon(Icons.add),
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
          )
      ),
    );
  }
}
