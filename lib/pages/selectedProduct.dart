import 'package:flutter/material.dart';
import 'package:unis/services/product.dart';

class Selectedproduct extends StatefulWidget {
  final Product product;
  const Selectedproduct({super.key,required this.product});

  @override
  State<Selectedproduct> createState() => _SelectedproductState();
}

class _SelectedproductState extends State<Selectedproduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        foregroundColor: Colors.black,
        title: Text("Order",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(widget.product.productName),
              Text(widget.product.description),
            ],
          ),
          Row(
            children: [
              Text(widget.product.price.toString()),
            ],
          ),
          Row(
            children: [
              IconButton(onPressed: (){},
                  icon: )
            ],
          )
        ],
      ),
    );
  }
}

