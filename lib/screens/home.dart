// Home page dashboard

import 'dart:math';
import 'package:configur/screens/blogs.dart';
import 'package:configur/screens/detailcard.dart';
import 'package:configur/screens/firstcard.dart';
import 'package:flutter/material.dart';
import 'package:configur/test/buildlist.dart';
// import 'package:configur/test/detail.dart';
import 'package:configur/test/samplescreen.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:configur/screens/aboutteam.dart';
import 'package:configur/screens/famousB.dart';


class customHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  get isDialOpen => null;
  final _advancedDrawerController = AdvancedDrawerController();

  @override
  Widget build(BuildContext context) {
    return AdvancedDrawer(
      backdropColor: Colors.blueGrey,
      controller: _advancedDrawerController,
      animationCurve: Curves.easeInOut,
      animationDuration: const Duration(milliseconds: 300),
      animateChildDecoration: true,
      rtlOpening: false,
      disabledGestures: false,
      childDecoration: const BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(16)),
      ),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          elevation: 10,
          iconTheme: IconThemeData(color: Colors.cyan),
          centerTitle: true,
          title: const Text('ConfigUR', style: TextStyle(color: Colors.cyan, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, fontFamily: 'play', fontSize: 27),),
          leading: IconButton(
            onPressed: _handleMenuButtonPressed,
            icon: ValueListenableBuilder<AdvancedDrawerValue>(
              valueListenable: _advancedDrawerController,
              builder: (_, value, __) {
                return AnimatedSwitcher(
                  duration: Duration(milliseconds: 250),
                  child: Icon(
                    value.visible ? Icons.clear : Icons.menu,
                    key: ValueKey<bool>(value.visible),
                  ),
                );
              },
            ),
          ),
        ),
        floatingActionButton: SpeedDial(
          elevation: 30,
          animationAngle: pi,
          useRotationAnimation: false,
          animatedIcon: AnimatedIcons.menu_close,
          openCloseDial: isDialOpen,
          backgroundColor: Colors.blueGrey,
          overlayOpacity: 0.5,
          spacing: 15,
          spaceBetweenChildren: 13,
          closeManually: false,
          children: [
            SpeedDialChild(
                child: Icon(Icons.article_rounded),
                label: 'Explore Builds',
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SampleScreen()),);
                }
            ),
            SpeedDialChild(
                child: Icon(Icons.add),
                label: 'New Build',
                onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>listBuild()),);
                }
            ),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: Container(
          width: double.infinity,
          // height: double.infinity,
          color: Colors.grey[100],
          padding: EdgeInsets.fromLTRB(10, 5, 10, 0),
          // alignment: Alignment.center,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            
            color: Colors.blueGrey,
            elevation: 15,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  title: Text('Config-UR', style: TextStyle(color: Colors.cyan, fontSize: 24, fontFamily: 'play'),),
                  contentPadding: EdgeInsets.only(left: 10),
                  subtitle: Text('Demo Build', style: TextStyle(fontSize: 18),),
                ),
                ButtonBar(
                  children: <Widget>[
                    RaisedButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> Detailcard()));
                      },
                      child: const Text('Explore',style: TextStyle(fontFamily: 'play'),),
                    )
                  ],
                )
              ],
            ),
          ),
          
        ),
      ),
      drawer: SafeArea(
        child: Container(
          child: ListTileTheme(
            textColor: Colors.white,
            iconColor: Colors.white,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: 128.0,
                  height: 128.0,
                  margin: const EdgeInsets.only(
                    top: 24.0,
                    bottom: 64.0,
                  ),
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    color: Colors.black26,
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    'assets/image/sample3.jpg',
                  ),
                ),
                ListTile(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> blog()));
                  },
                  leading: Icon( Icons.menu_book),
                  title: Text('Read Article', style: TextStyle(color: Colors.cyan, fontWeight: FontWeight.bold),),
                ),
                ListTile(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> famousB()));
                  },
                  leading: Icon( Icons.desktop_windows),
                  title: Text('Explore famous builds', style: TextStyle(color: Colors.cyan, fontWeight: FontWeight.bold),),
                ),
                ListTile(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> aboutTeam()));
                  },
                  leading: Icon(Icons.account_circle_rounded),
                  title: Text('About Team', style: TextStyle(color: Colors.cyan, fontWeight: FontWeight.bold),),
                ),
                Spacer(),
                DefaultTextStyle(
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white54,
                  ),
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                      vertical: 16.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );

  }

  void _handleMenuButtonPressed() {
    _advancedDrawerController.showDrawer();
  }
}