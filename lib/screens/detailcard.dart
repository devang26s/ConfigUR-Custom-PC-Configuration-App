import 'package:flutter/material.dart';


class Detailcard  extends StatelessWidget {
  //const ({ Key? key }) : super(key: key);
  final String name="Config PC-1 ";
  final String description="This is Config PC 1 which is specially\ndesigned for Programmers and coders.";
  final String image= 'assets/image/LP1.jpg';
  final String price="50,000/-";

 //Detailcard({required description,required image,required name,required price});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.blueGrey,iconTheme: IconThemeData(color: Colors.cyan)
      ),
      body: Column(
        children: [
          Image.asset(image),
          Text(name),
          Text(description),
          Text(price),
        ],
      ),
    );
  }
      
    
  }