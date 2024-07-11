import 'package:flutter/material.dart';
import 'package:unis/home.dart';
import 'package:unis/pages/dashboard.dart';
import 'package:unis/pages/menu.dart';
import 'package:unis/pages/signup.dart';
import 'package:unis/pages/login.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/' : (context) => Dashboard(),
    '/menu' : (context) => Menu(),
    '/profile' : (context) => Home(),
    '/signup' : (context) => Signup(),
    '/login' : (context) => Login(),
  },
));


