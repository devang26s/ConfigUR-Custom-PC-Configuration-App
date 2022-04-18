// Main dart file to initiate app

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:async';
import 'package:configur/screens/home.dart';
import 'package:alan_voice/alan_voice.dart';

void main(){runApp(MyApp());}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {

  _MyHomePageState() {
  /// Init Alan Button with project key from Alan Studio      
  AlanVoice.addButton("141bc9e02faed18a37bda306a8aa4b982e956eca572e1d8b807a3e2338fdd0dc/stage",
  buttonAlign: AlanVoice.BUTTON_ALIGN_LEFT);

  /// Handle commands from Alan Studio
  AlanVoice.onCommand.add((command) {
    debugPrint("got new command ${command.toString()}");
  });
}

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>   
                customHome()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white10,
        child:Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Image.asset('assets/graphics/ezgif.com-gif-maker.gif', height: 390, width: 390,),
              Padding(padding: EdgeInsets.only(bottom: 20)),
              const Text('ConfigUR', style: TextStyle(fontFamily: 'lobster', color: Colors.cyan, decoration: TextDecoration.none, fontSize: 40, letterSpacing: 1.8),),
              Padding(padding: EdgeInsets.only(bottom: 5))
          ]),
        )
    );
  }
}