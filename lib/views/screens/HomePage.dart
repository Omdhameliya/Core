import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        centerTitle: true,
        title: Text("Resume Builder",style: TextStyle(fontWeight: FontWeight.w500),),
        elevation: 0,
      ),
      body: Container(
        child: Column(
          children: [
            Center(child: Expanded(flex: 9,
              child: Container(
                color: Colors.blue,
                height: 50,
                width: double.infinity,
                child: Center(child: Text("RESUMES",
                  style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                    fontSize: 18,
                ),
                ),
                ),
              ),
            ),


            ),
            Expanded(flex: 1,
              child: Container(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    SizedBox(height: 100,),
                    Image.asset("assets/images/open-cardboard-box.png",
                    height: 70,),
                    Text("No Resumes + Create new resume",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                    )
                  ],

                ),



              ),),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed("build_options");
        },child: Icon(Icons.add),
      ),
    );
  }
}
