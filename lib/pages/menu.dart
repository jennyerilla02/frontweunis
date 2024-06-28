import 'package:flutter/material.dart';
import 'package:unis/services/product.dart';
import 'package:unis/services/menuCard.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  List products = <Product>[
    Product(productName: "Dark Choco", price: 49.99), //Product
    Product(productName: "Okinawa", price: 45.99), //Product
    Product(productName: "Red Velvet", price: 45.99), // Product
    Product(productName: "Matcha", price: 49.99),
    Product(productName: "Wintermelon", price: 49.99),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        foregroundColor: Colors.white70,
        title: Text(
          'Menu',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25.0,
            color: Colors.black,

          ),
        ),
        centerTitle: true,

      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: products.map((product) => Menucard(product: product)).toList(),
        ),
      ),
    );
  }
}