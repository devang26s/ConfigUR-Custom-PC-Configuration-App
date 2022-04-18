// Adapter Screen

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class DetailsScreen extends StatelessWidget {
 // const DetailsScreen({ Key? key }) : super(key: key);
  final String name;
   final String description;
  final String image;
  final String price;

DetailsScreen({required this.description,required this.image,required this.name,required this.price});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text(name, style: TextStyle(fontFamily: 'play'),),
          Text(description),
          Text(image),
          Text(price),
        ],
      ),
    );
  }
}