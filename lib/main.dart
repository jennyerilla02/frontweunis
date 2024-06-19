import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('UNIS'),
        ),
        backgroundColor: Colors.pinkAccent,
      ),
      body: Center(
        child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTG91kngIUypoh2VaLcWUXt7LaoC0gyS4qS_w&s'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.pinkAccent,
        child: Icon(
            Icons.add,
          color: Colors.black,
        ),
      ),
    ),
  ));
}

