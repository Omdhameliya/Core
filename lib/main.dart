import 'package:flutter/material.dart';
import 'package:invoice_generater/views/screens/Bag_Page.dart';
import 'package:invoice_generater/views/screens/Cap_Page.dart';
import 'package:invoice_generater/views/screens/Cart_Page.dart';
import 'package:invoice_generater/views/screens/Home_Page.dart';
import 'package:invoice_generater/views/screens/Profile_Page.dart';
import 'package:invoice_generater/views/screens/Watches.dart';
void main(){
  runApp(
    MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: 'splachsceen',
        routes: {
          '/':(context) => HOMEPAGE(),
          'addcart':(context) => ADDCART(),
          'profilepage':(context) => Profile(),
          'watches' :(context) => Watches(),
          'bag' :(context) => Bag(),
          'cap' :(context) => Cap(),
        }
    ),
  );
}
