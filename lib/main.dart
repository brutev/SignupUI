import 'package:flutter/material.dart';
import 'package:signup/login.dart';
import 'package:signup/register.dart';

void main() {
 runApp(MaterialApp(
   debugShowCheckedModeBanner: false,
   initialRoute: 'LOGIN',
   routes: {
     'LOGIN':(context)=>LoginPage(),

     'register':(context) => MyRegister()
   },
 ));
  }


