// Developer list

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:configur/test/personone.dart';
import 'package:configur/test/persontwo.dart';

class aboutTeam extends StatefulWidget{

  @override
  _aboutTeam createState()=> _aboutTeam();
}

class _aboutTeam extends State<aboutTeam>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(centerTitle: true,backgroundColor: Colors.blueGrey,iconTheme: IconThemeData(color: Colors.cyan) ,title: Text('Team', style: TextStyle(color: Colors.cyan, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, fontFamily: 'play', fontSize: 27),), ),
      body: ListView(
        children: <Widget>[
          Padding(padding: EdgeInsets.all(3),
          child: ListTile(
            tileColor: Color.fromARGB(255, 214, 220, 223),
            leading: Image.asset('assets/image/devang.jpeg'),
            title: Text('Devang Soni', style: TextStyle(color: Colors.cyan, fontWeight: FontWeight.bold, fontSize: 20, fontFamily: 'play')),
            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>DevOne()),);},
          ),
         
          ),
          Padding(padding: EdgeInsets.all(3),
          child: ListTile(
            tileColor: Color.fromARGB(255, 214, 220, 223),
            leading: Image.asset('assets/image/vedant.jpg'),
            title: Text('Vedant Soni', style: TextStyle(color: Colors.cyan, fontWeight: FontWeight.bold, fontSize: 20, fontFamily: 'play')),
            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>DevTwo()),);},
          )
          )
        ],
      ),
    );
  }
}