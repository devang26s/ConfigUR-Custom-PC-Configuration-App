// Details about built modual

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class DetailsScreen extends StatelessWidget {
  // const DetailsScreen({ Key? key }) : super(key: key);
  final String name;
  final String description;
  final String image;
  final String price;
  final String longDescription;
  final String processor;
  final String ram;

  DetailsScreen(
      {required this.description,
      required this.image,
      required this.name,
      required this.price,required this.longDescription,required this.processor,required this.ram});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent,elevation: 0,iconTheme: IconThemeData(color: Colors.blueGrey),),
      backgroundColor: Colors.cyan,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
              child: Padding(
            padding: const EdgeInsets.only(top: 12.0, bottom: 20),
            child: Container(
                height: 250,
                width: 300,
                color: Colors.grey,
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                )),
          )),
          Center(
            child: Text(
              name,
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          //  Padding(
          //    padding: const EdgeInsets.only(left: 8.0),
          //    child: Text('Description : ',style: const TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
          //  ),
          Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: Container(
              height: 90,
              width: MediaQuery.of(context).size.width,
              color: Colors.transparent,
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      'Description : ',
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      longDescription,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: Container(
              height: 30,
              width: MediaQuery.of(context).size.width,
              color: Colors.transparent,
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      'Processor : ',
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      processor,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: Container(
              height: 30,
              width: MediaQuery.of(context).size.width,
              color: Colors.transparent,
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      'Ram :           ',
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      ram,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: Container(
              height: 30,
              width: MediaQuery.of(context).size.width,
              color: Colors.transparent,
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      'Price :          ',
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      price,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
            ),
          ),
          
          
        ],
      ),
    );
  }
}
