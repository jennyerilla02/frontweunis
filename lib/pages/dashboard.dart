import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.pinkAccent,
        foregroundColor: Colors.black,
        title: Text("Dashboard",
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.pinkAccent,
        elevation: 3.0,
        onTap: (int val){
          switch(val){
            case 0:
              Navigator.pushNamed(context, '/');
              break;
            case 1:
              Navigator.pushNamed(context, '/menu');
              break;
            case 2:
              Navigator.pushNamed(context, '/home');
          }
        },
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.pinkAccent,
              icon: Icon(Icons.home,
                color: Colors.black,),
      label: 'Home',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.pinkAccent,
            icon: Icon(Icons.album,
              color: Colors.black,),
    label: 'Menu',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person,
                color: Colors.black,),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

