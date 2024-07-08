import 'package:flutter/material.dart';
import 'package:unis/home.dart';
import 'package:unis/pages/dashboard.dart';
import 'package:unis/pages/login.dart';
import 'package:unis/pages/menu.dart';
import 'package:unis/pages/signup.dart';


void main() => runApp(MaterialApp(
  initialRoute: '/login',
    routes:{
      '/' : (context) => Dashboard(),
      '/menu' : (context) => Menu(),
      '/home' : (context) => Home(),
      '/signup' : (context) => Signup(),
      '/login' : (context) => Login(),

    }
  ));


