import 'package:flutter/material.dart';
import 'package:unis/home.dart';
import 'package:unis/pages/dashboard.dart';
import 'package:unis/pages/menu.dart';


void main() => runApp(MaterialApp(
    routes:{
      '/' : (context) => Dashboard(),
      '/menu' : (context) => Menu(),
      '/home' : (context) => Home(),
    }
  ));


