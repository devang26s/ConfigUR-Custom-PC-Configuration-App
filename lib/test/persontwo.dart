// Developer Profile Vedant

import 'package:contactus/contactus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class DevTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: ContactUsBottomAppBar(
          companyName: 'Vedant Soni',
          textColor: Colors.white,
          backgroundColor: Colors.white30,
          email: 'sonivedant66@gmail.com',
          textFont: 'play',
        ),
        backgroundColor: Colors.blueGrey,
        body: ContactUs(
            cardColor: Colors.white,
            textColor: Colors.blueGrey,
            logo: AssetImage('assets/image/vedant.jpg'),
            email: 'sonivedant66@gmail.com',
            companyName: 'Vedant Soni',
            companyColor: Colors.teal.shade100,
            dividerThickness: 2,
            phoneNumber: '+918469993557',
            
            githubUserName: 'https://github.com/Vedant-Soni',
            linkedinURL:
                'https://www.linkedin.com/in/vedant-soni01/',
            tagLine: 'Flutter Developer, Cyber Security',
            taglineColor: Colors.teal.shade100,
            textFont: 'play',
            ),
      ),
    );
  }
}