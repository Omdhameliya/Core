import 'package:flutter/material.dart';

import '../../utils/GlobalVariable.dart';

class DeclarationPage extends StatefulWidget {
  const DeclarationPage({Key? key}) : super(key: key);

  @override
  State<DeclarationPage> createState() => _DeclarationPageState();
}

class _DeclarationPageState extends State<DeclarationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Declaration"),
        centerTitle: true,
        toolbarHeight: 120,
        elevation: 0,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.grey,
        child: Align(
          alignment: Alignment.topCenter,
          child: SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.all(25),
              color: Colors.white,
              width: 500,
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Declaration"),
                        Switch(
                          value: swicthVal,
                          onChanged: (val) {
                            setState(() {
                              swicthVal = val;
                            });
                          },
                        ),
                      ],
                    ),
                    (swicthVal) ? Container(
                      color: Colors.amber,
                    ) : Container(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}