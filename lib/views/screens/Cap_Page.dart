import 'package:flutter/material.dart';

import 'Class_Page.dart';
class Cap extends StatefulWidget {
  const Cap({Key? key}) : super(key: key);
  @override
  State<Cap> createState() => _CapState();
}
class _CapState extends State<Cap> {
  get cap1 => null;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        title: const Text("Cap"),
      ),
      body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: cap1.map((e) => Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.all(10),
                  height: 200,
                  width: 350,
                  decoration: const BoxDecoration(
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
                      const SizedBox(width: 30),
                      Column(
                        mainAxisAlignment:
                        MainAxisAlignment.center,
                        children: [
                          Text('${e.Name}',style: const
                          TextStyle(fontSize: 15,fontWeight: FontWeight.w700),),
                          Text('💲 ${e.price}'),
                          const SizedBox(height: 20),
                          FloatingActionButton(
                              mini: true,
                              child: const Icon(Icons.add),
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
