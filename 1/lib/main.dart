import 'package:contact_diary/splash_screen.dart';
import 'package:contact_diary/utils/image_utils.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(
    MyApp(),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  bool Dark = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: (Dark) ? ThemeMode.dark : ThemeMode.light,
      debugShowCheckedModeBanner: false,
      initialRoute: 'splash_screen',
      routes: {
        'splash_screen': (context) => splash_screen(),
        '/': (context) =>
            Scaffold(
              appBar: AppBar(
                title: Text("Contacts"),
                actions: [
                  IconButton(
                    icon: Icon(Icons.circle),
                    onPressed: () {
                      setState(() {
                        Dark = !Dark;
                      });
                    },
                  ),
                  Icon(Icons.more_vert),
                ],
              ),
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Image.network("https://cdn-icons-png.flaticon.com/512/6028/6028430.png",width: 200,color: (Dark) ? Colors.white : Colors.black),
                     Text("You have no contacts yet",
                     style: TextStyle(
                       fontSize: 20,
                       color: Colors.grey,
                     ),
                     )
                   ],
                ),
              ),
              floatingActionButton: FloatingActionButton(backgroundColor: Colors.blue,
                  child: Icon(Icons.add),
              onPressed: (){},),
            ),
      },
    );
  }
}