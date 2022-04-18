// Pre Built systems to navigate file

import 'package:flutter/material.dart';
import 'package:configur/test/detail.dart';
import 'package:flutter/cupertino.dart';


class SampleScreen extends StatefulWidget {
  const SampleScreen({ Key? key }) : super(key: key);

  @override
  _SampleScreenState createState() => _SampleScreenState();
}

class _SampleScreenState extends State<SampleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Product List', style: TextStyle(color: Colors.cyan, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, fontFamily: 'play', fontSize: 27),), centerTitle: true, elevation: 10, backgroundColor: Colors.blueGrey, iconTheme: IconThemeData(color: Colors.cyan),),
      body:
     SafeArea(
       child: ListView.builder(itemCount: productsList.length,itemBuilder: (context,index)=>
       Padding(
         padding: const EdgeInsets.all(8.0),
         child: GestureDetector(
           onTap: (){
             Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailsScreen(description: productsList[index].description, image: productsList[index].image, name: productsList[index].name, price: productsList[index].price,longDescription: productsList[index].longDescription,ram: productsList[index].ram,processor: productsList[index].processor,)));
           },
           child: Container(
              color: Colors.blueGrey.shade50,
              height: 110,
              width: MediaQuery.of(context).size.width,
              child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Container(
                    height: 100,
                    width: 100,
                    color: Colors.white,
                    child: Image.asset(productsList[index].image)
                  ),
                ),
                SizedBox(width: 50,),
                Column(
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(productsList[index].name, style: TextStyle(fontFamily: 'play'),),
                     const SizedBox(height: 10,),
                    Text(productsList[index].description),
                     const SizedBox(height: 10,),
                    Text(productsList[index].price),
                  ],
                )
              ],),
            ),
         ),
       ),),
     ),
      
    );
  }
}




class SampleList{
  final String name;
 final String description;
  final String image;
  final String price;
  final String longDescription;
  final String processor;
  final String ram;


SampleList({required this.description,required this.image,required this.name,required this.price,required this.longDescription,required this.processor,required this.ram});

}

List<SampleList> productsList = [
  SampleList(description: 'For Programming', image: 'assets/image/LP1.jpg', name: 'Config PC 1', price: '50,000/-',longDescription: 'This is Config PC 1 which\nis specially designed\nfor Programmers and\ncoders.',processor: 'Intel Core i5 9th Gen',ram: '16 GB'),
  SampleList(description: 'For Gaming', image: 'assets/image/LP2.jpg', name: 'Config PC 2', price: '75,000/-',longDescription: 'This is Config PC 2 which\nis specially designed for\nGame lovers.',processor: 'Intel Core i7 9th Gen',ram: '32 GB'),
  SampleList(description: 'For Graphics', image: 'assets/image/LP3.jpg', name: 'Config PC 3', price: '45,500/-',longDescription: 'This is Config PC 3 which\nis specially designed for\nGraphics Designer',processor: 'Intel Core i5 9th Gen',ram: '32 GB'),
  SampleList(description: 'For Android', image: 'assets/image/LP4.jpg', name: 'Config PC 4', price: '66,000/-',longDescription: 'This is Config PC 4 which\nis specially designed for\nAndroid Developer',processor: 'Intel Core i7 9th Gen',ram: '16 GB'),
  SampleList(description: 'For General purpose', image: 'assets/image/LP5.jpg', name: 'Config PC 5', price: '50,500/-',longDescription: 'This is Config PC 5 which\nis specially designed\nfor General use.',processor: 'Intel Core i5 7th Gen',ram: '64 GB'),
  SampleList(description: 'For College use', image: 'assets/image/LP6.jpg', name: 'Config PC 6', price: '49,000/-',longDescription: 'This is Config PC 6 which\nis specially designed\nfor College use',processor: 'Intel Core i7 9th Gen',ram: '32 GB'),
  SampleList(description: 'For Professionals', image: 'assets/image/LP4.jpg', name: 'Config PC 7', price: '68,200/-',longDescription: 'This is Config PC 7 which\nis specially designed\nfor Professional use',processor: 'Intel Core i5 7th Gen',ram: '16 GB'),
  SampleList(description: 'For Administrative', image: 'assets/image/LP2.jpg', name: 'Config PC 8', price: '56,400/-',longDescription: 'This is Config PC 8 which\nis specially designed\nfor Administrative work',processor: 'Intel Core i5 7th Gen',ram: '32 GB'),
  SampleList(description: 'For App development', image: 'assets/image/LP1.jpg', name: 'Config PC 9', price: '80,300/-',longDescription: 'This is Config PC 9 which\nis specially designed\nfor App developer',processor: 'Intel Core i5 8th Gen',ram: '32 GB'),
  SampleList(description: 'For Graphics', image: 'assets/image/LP3.jpg', name: 'Config PC 10', price: '50,000/-',longDescription: 'This is Config PC 10 which\nis specially designed\nfor Graphics designer',processor: 'Intel Core i5 8th Gen',ram: '16 GB'),
  SampleList(description: 'For Gaming', image: 'assets/image/LP6.jpg', name: 'Config PC 11', price: '45,500/-',longDescription: 'This is Config PC 11 which\nis specially designed\nfor Gamers',processor: 'Intel Core i5 7th Gen',ram: '32 GB'),
  SampleList(description: 'For System work', image: 'assets/image/LP1.jpg', name: 'Config PC 12', price: '73,400/-',longDescription: 'This is Config PC 12 which\nis specially designed\nfor System work',processor: 'Intel Core i5 9th Gen',ram: '64 GB'),

];