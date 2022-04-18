// Developer profile Devang

import 'package:contactus/contactus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class DevOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: ContactUsBottomAppBar(
          companyName: 'Devang Soni',
          textColor: Colors.white,
          backgroundColor: Colors.white30,
          email: 'devangsoni074@gmail.com',
           textFont: 'play',
        ),
        backgroundColor: Colors.blueGrey,
        body: ContactUs(
            cardColor: Colors.white,
            textColor: Colors.blueGrey,
            logo: AssetImage('assets/image/devang.jpeg'),
            email: 'devangsoni074@gmail.com',
            companyName: 'Devang Soni',
            companyColor: Colors.teal.shade100,
            dividerThickness: 2,
            phoneNumber: '+919714864510',
            website: 'https://devangsoni.netlify.app/',
            githubUserName: 'https://github.com/klyntar26',
            linkedinURL:
                'https://www.linkedin.com/in/devangsoni26/',
            tagLine: 'Android Developer, Security Enthusiast',
            taglineColor: Colors.teal.shade100,
             textFont: 'play',
            ),
      ),
    );
  }
}