import 'package:flutter/material.dart';

class BuildOption extends StatefulWidget {
  List<Map<String,  dynamic>> allbuildOptions = [
    {
      "images": "assets/images/contact-books.png",
      "title": "Contact Info",
      "route": "contact_info_page",
    },
    {
      "images": "assets/images/briefcase.png",
      "title": "Carrier Objective",
      "route": "carrier_objective_page",
    },
    {
      "images": "assets/images/user.png",
      "title": "Prsonal Details",
      "route": "personal_dtails_page",
    },
    {
      "images": "assets/images/mortarboard.png",
      "title": "Education",
      "route": "education_page",
    },
    {
      "images": "assets/images/thinking.png",
      "title": "Experiences",
      "route": "experience_page",
    },
    {
      "images": "assets/images/declaration.png",
      "title": "Technical Skills",
      "route": "technical_skills_page",
    },
    {
      "images": "assets/images/open-book.png",
      "title": "Intrest",
      "route": "intrest_hobbies_page",
    },
    {
      "images": "assets/images/project.png",
      "title": "Project",
      "route": "project_page",
    },
    {
      "images": "assets/images/experience.png",
      "title": "Achivement",
      "route": "achivement_page",
    },
    {
      "images": "assets/images/handshake.png",
      "title": "Reference",
      "route": "reference_page",
    },
    {
      "images": "assets/images/declaration.png",
      "title": "Declaration",
      "route": "declaration_page",
    },
  ];
   BuildOption({Key? key}) : super(key: key);

  @override
  State<BuildOption> createState() => _BuildOptionState();
}

class _BuildOptionState extends State<BuildOption> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 120,
        leading: Icon(Icons.arrow_back),
        centerTitle: true,
        title: Text("Resume Workspace"),
        elevation: 0,
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              height: 60,
              width: double.infinity,
              child: Center(
                child: Text("Build Options",
                  style: TextStyle(color: Colors.white,
                    fontSize: 18),
                ),
              ),
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
