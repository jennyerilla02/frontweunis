import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';

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
      backgroundColor: Colors.pink[50],
      body: Padding(
        padding: const EdgeInsets.fromLTRB(25.0, 150.0, 25.0, 0),
        child: Container(
          child: SafeArea(
            child: Column(
              children: [
                FlutterCarousel(
                  options: CarouselOptions(
                    height: 400.0,
                    autoPlay:true,
                    autoPlayAnimationDuration: Duration(seconds: 5),
                    showIndicator: true,
                    slideIndicator: CircularSlideIndicator(),
                  ),
                  items: [
                    'assets/album.jpg',
                    'assets/book.jpg',
                    'assets/postcard.jpg',
                    'assets/4cut.jpg',
                    'assets/can badge.jpg',
                    'assets/pouch.jpg',
                    'assets/wappen.jpg',
                  ].map((String imagePath) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(
                            color: Colors.pink,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.asset(
                              imagePath,
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
        ),
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
              Navigator.pushNamed(context, '/profile');
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
                color: Colors.black),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}