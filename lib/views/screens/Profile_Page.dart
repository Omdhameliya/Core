import 'package:flutter/material.dart';
class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);
  @override
  State<Profile> createState() => _ProfileState();
}
class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
        title: Text("Profile",style: TextStyle(fontSize: 20,color:
        Colors.black),),
      ),
      body: Container(
        color: Colors.blueGrey,
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 50),
            Center(
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle
                ),
              ),
            ),
            SizedBox(height: 30),
            TextFormField(
              onTap: (){
              },
              decoration: InputDecoration(
                icon: Icon(Icons.person_rounded),
                hintText: "Full Name",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 30),
            TextFormField(
              onTap: (){
              },
              decoration: InputDecoration(
                icon: Icon(Icons.smartphone),
                hintText: "Mobile number",
                border: OutlineInputBorder(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}