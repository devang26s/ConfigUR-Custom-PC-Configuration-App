import 'package:flutter/material.dart';
import 'package:configur/screens/home.dart';

class listBuild extends StatefulWidget{
  @override
  _listBuild createState() => _listBuild();
}

class _listBuild extends State<listBuild>{

 String _dropdowngpu="none";
 String dropdownvalue = 'Intel i5 9th Gen & MSI Z390-A PRO';   
 String _ramdrop="none";
 String storage="none";
  // List of items in our dropdown menu
  var items = [    
    'Intel i5 9th Gen & MSI Z390-A PRO',
    'Intel i5 9th Gen & ASUS Prime Z390-P LGA1151',
    'Intel i5 9th Gen & MSI MPG Z390',
    'Intel i5 10th Gen & ASUS Prime B560M 1200',
    'Intel i5 9th Gen & MSI MPG Gaming plus',
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        iconTheme: IconThemeData(color: Colors.cyan),
        title: const Text(
          'BuildUR',style: TextStyle(color: Colors.cyan, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, fontFamily: 'play', fontSize: 27),
        ),
        elevation: 15,
      ),

      body: SingleChildScrollView(
        padding: EdgeInsets.all(15),
        child: Column(
          children: <Widget>[
            Text("UR build Space", style: TextStyle(color: Colors.cyan, fontWeight: FontWeight.bold, fontSize: 20, fontFamily: 'play'),),
            Padding(
              padding: EdgeInsets.only(top: 8, bottom: 4),
              child: TextField(
                decoration: InputDecoration(border: OutlineInputBorder(),
                labelText: 'Give build name',
                ),
              )
            ),
            
            Padding(padding: EdgeInsets.only(bottom: 5)),
            Text('Select Processor and MotherBoard Pair', style: TextStyle(color: Colors.cyan, fontWeight: FontWeight.bold, fontSize: 20, fontFamily: 'play'),),

            Padding(
              padding: EdgeInsets.all(10),
              child: DropdownButton(
                isExpanded: true,
              value: dropdownvalue,
              icon: const Icon(Icons.keyboard_arrow_down),    
              items: items.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              onChanged: (String? newValue) { 
                setState(() {
                  dropdownvalue = newValue!;
                });
              },
            ),
            ),

            Text("Selected Pair: "+dropdownvalue),
            Padding(padding: EdgeInsets.only(top: 5)),
            Text("Select GPU", style: TextStyle(color: Colors.cyan, fontWeight: FontWeight.bold, fontSize: 20, fontFamily: 'play'),),
            Padding(
              padding: EdgeInsets.all(3),
            ),
             ListTile(
                leading: Radio<String>(
                  value: 'RTX 3080',
                  groupValue: _dropdowngpu,
                  onChanged: (value) {
                    setState(() {
                      _dropdowngpu = value!;
                    });
                  },
                ),
                title: const Text('RTX 3080'),
              ),
              
              ListTile(
                leading: Radio<String>(
                  value: 'RTX 3060',
                  groupValue: _dropdowngpu,
                  onChanged: (value) {
                    setState(() {
                      _dropdowngpu = value!;
                    });
                  },
                ),
                title: const Text('RTX 3060'),
              ),

              ListTile(
                leading: Radio<String>(
                  value: 'RTX 2060',
                  groupValue: _dropdowngpu,
                  onChanged: (value) {
                    setState(() {
                      _dropdowngpu = value!;
                    });
                  },
                ),
                title: const Text('RTX 2060'),
              ),

              ListTile(
                leading: Radio<String>(
                  value: 'GTX 1650',
                  groupValue: _dropdowngpu,
                  onChanged: (value) {
                    setState(() {
                      _dropdowngpu = value!;
                    });
                  },
                ),
                title: const Text('GTX 1650'),
              ),
              const SizedBox(height: 25),
              Text("Selected GPU: "+_dropdowngpu),
              Padding(padding: EdgeInsets.only(top: 5)),
              Text("Select RAM Size", style: TextStyle(color: Colors.cyan, fontWeight: FontWeight.bold, fontSize: 20, fontFamily: 'play'),),
              Container(
                child: Column(children: [
                  ListTile(
                leading: Radio<String>(
                  value: '8 GB',
                  groupValue: _ramdrop,
                  onChanged: (value) {
                    setState(() {
                      _ramdrop = value!;
                    });
                  },
                ),
                title: const Text('8 GB'),
              ),

               ListTile(
                leading: Radio<String>(
                  value: '16 GB',
                  groupValue: _ramdrop,
                  onChanged: (value) {
                    setState(() {
                      _ramdrop = value!;
                    });
                  },
                ),
                title: const Text('16 GB'),
              ),

               ListTile(
                leading: Radio<String>(
                  value: '32 GB',
                  groupValue: _ramdrop,
                  onChanged: (value) {
                    setState(() {
                      _ramdrop = value!;
                    });
                  },
                ),
                title: const Text('32 GB'),
              ),

               ListTile(
                leading: Radio<String>(
                  value: '64 GB',
                  groupValue: _ramdrop,
                  onChanged: (value) {
                    setState(() {
                      _ramdrop = value!;
                    });
                  },
                ),
                title: const Text('64 GB'),
              ),
              const SizedBox(height: 25),
              Text("Selected RAM: "+_ramdrop),
              Padding(padding: EdgeInsets.only(top: 5)),
              Text("Select Storage", style: TextStyle(color: Colors.cyan, fontWeight: FontWeight.bold, fontSize: 20, fontFamily: 'play'),),
              
              Container(
                child: Column(children: [
                  ListTile(
                leading: Radio<String>(
                  value: '500GB HDD',
                  groupValue: storage,
                  onChanged: (value) {
                    setState(() {
                      storage = value!;
                    });
                  },
                ),
                title: const Text('500GB HDD'),
              ),
              ListTile(
                leading: Radio<String>(
                  value: '1TB HDD',
                  groupValue: storage,
                  onChanged: (value) {
                    setState(() {
                      storage = value!;
                    });
                  },
                ),
                title: const Text('1TB HDD'),
              ),
              ListTile(
                leading: Radio<String>(
                  value: '500GB SSD',
                  groupValue: storage,
                  onChanged: (value) {
                    setState(() {
                      storage = value!;
                    });
                  },
                ),
                title: const Text('500GB SSD'),
              ),
              const SizedBox(height: 25),
              Text("Selected Storage: "+ storage),
                ]),
              )
                ]),
              ),

              

              Center(
              child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.blueAccent, // background
                onPrimary: Colors.white, // foreground
                elevation: 1.0,
                //fixedSize:
              ),
              onPressed: () {
                showDialog(
                context: context,
                builder: (ctx) => AlertDialog(
                  backgroundColor: Colors.cyan,
                  title: Text(" Congratulations!! Build Sucessful"),
                  content: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                  
SizedBox(width: 15,),

                  
                  ],) //Text("You have raised a Alert Dialog Box"),
                  // actions: <Widget>[
                  //   FlatButton(
                  //     onPressed: () {
                  //       Navigator.of(ctx).pop();
                  //     },
                  //    // child: Text("okay"),
                  //   ),
                  // ],
                ),
              );
              },
              child: Text('Save Build'),
            ),
          ),

          ],
        ),
      ),

      
    );
  }
}