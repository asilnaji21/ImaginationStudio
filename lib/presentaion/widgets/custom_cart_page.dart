

import 'package:flutter/material.dart';

class CustomMycart extends StatelessWidget {
  final String productName;
  final String price;

  CustomMycart({required this.productName, required this.price, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 224, 224, 224),
        borderRadius: BorderRadius.circular(15),
      ),

      padding:const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Image.asset(
            'assets/Gardens.jpg',
            width: 85.0,
            height: 84.07,
          ),
          const SizedBox(width: 16.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                productName,
                style:const  TextStyle(fontSize: 30),
              ),
              Text(
                price,
                style: const TextStyle(fontSize: 30),
              ), 
            ],
          ),
          const Spacer(),
          IconButton(
            icon: const Icon(Icons.delete),
            onPressed: () {},
          ),
          const Column(
            children: <Widget>[
              Icon(Icons.add_circle),
              Text("on"),
              Icon(Icons.remove_circle),
            ],
          ),
        ],
      ),
    );
  }
}
