import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Utils.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("INVOICE"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            SizedBox(height: 10,),
            TextFormField(
              controller: nameController,
              validator: (val) {
                if (val!.isEmpty) {
                  return "Enter your name first...";
                }
                return null;
              },
              onSaved: (val) {
                name = val;
              },
              textInputAction: TextInputAction.next,
              decoration: const InputDecoration(
                hintText: "Enter Your Name",),
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Expanded(flex: 2,
                  child: TextFormField(
                    controller: ageController,
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Enter Your Age first...";
                      }
                      return null;
                    },
                    onSaved: (val) {
                      age = val;
                    },
                    textInputAction: TextInputAction.next,
                    decoration: const InputDecoration(
                      hintText: "Enter Your Age",),
                  ),
                ),
                SizedBox(width: 30,),
                Expanded(flex: 2,
                  child: TextFormField(
                    controller: numberController,
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Enter Mobile Number first...";
                      }
                      return null;
                    },
                    onSaved: (val) {
                      number = val;
                    },
                    textInputAction: TextInputAction.next,
                    decoration: const InputDecoration(
                      hintText: "Enter Your Mobile Number",),
                  ),
                ),
              ],
            ),

            SizedBox(height: 50,),
            TextFormField(
          controller: inameController,
          validator: (val) {
            if (val!.isEmpty) {
              return "Enter your Item name first...";
            }
            return null;
          },
          onSaved: (val) {
            iname = val;
          },
          textInputAction: TextInputAction.next,
          decoration: const InputDecoration(
              hintText: "Items Name",),
          ),
            SizedBox(height: 20,),
            Row(
            children: [
              Expanded(flex: 2,
                child: TextFormField(
                controller: ipriceController,
                validator: (val) {
                  if (val!.isEmpty) {
                    return "Enter Item Price first...";
                  }
                  return null;
                },
                onSaved: (val) {
                  iprice = val;
                },
                textInputAction: TextInputAction.next,
                decoration: const InputDecoration(
                    hintText: "Item Price",),
                ),
              ),
              SizedBox(width: 30,),
              Expanded(flex: 2,
                child: TextFormField(
                  controller: iquantityController,
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Enter Item Quantity first...";
                    }
                    return null;
                  },
                  onSaved: (val) {
                    iquantity = val;
                  },
                  textInputAction: TextInputAction.next,
                  decoration: const InputDecoration(
                    hintText: "Item Quantity",),
                ),
              ),
            ],
          ),
            SizedBox(height: 450,),
            Center(
              child:
                SizedBox(
                  height: 50,
                  width: 200,
                  child: ElevatedButton(onPressed: () {
                    Navigator.of(context).pushNamed('Cart_Page');
                    onFieldSubmitted:
                        (val) {
                      if (contactFormKey.currentState!.validate()) {
                        contactFormKey.currentState!.save();

                        print("===============================");
                        print(name);
                        print(number);
                        print(age);
                        print(iname);
                        print(iprice);
                        print(iquantity);
                        print("===============================");
                      }
                    };

                  }, child: Text("Add To Cart", style: TextStyle(fontSize: 20),), ),
                ),
            ),
        ],
        ),
      ),
    );
  }
}
