// Trending builds
import 'home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:url_launcher/url_launcher.dart';


_launchURLBrowser() async {
const url = 'https://www.corsair.com/us/en/Categories/Products/Systems/c/Cor_Systems';
if (await canLaunch(url)) {
	await launch(url);
} else {
	throw 'Could not launch $url';
}
}

_launchURLApp() async {
const url = 'https://www.corsair.com/us/en/Categories/Products/Systems/c/Cor_Systems';
if (await canLaunch(url)) {
	await launch(url, forceSafariVC: true, forceWebView: true);
} else {
	throw 'Could not launch $url';
}
}

class famousB extends StatelessWidget {
@override
Widget build(BuildContext context) {
	return MaterialApp(
	home: Scaffold(
		appBar: AppBar(
		title: Text('Famous Builds'),
		backgroundColor: Colors.blueGrey,
		),
		body: SafeArea(
		child: Center(
			child: Column(
			children: [
				Container(
				height: 250.0,
				),
				Text(
				'Famous Builds',
				style: TextStyle(
					fontSize: 30.0,
					color: Colors.blueGrey,
					fontWeight: FontWeight.bold,
				),
				),
				Container(
				height: 20.0,
				),
				RaisedButton(
				onPressed: _launchURLBrowser,
				child: Text('Open in Browser'),
				textColor: Colors.black,
				padding: const EdgeInsets.all(5.0),
				),
				Container(
				height: 20.0,
				),
				RaisedButton(
				onPressed: _launchURLApp,
				child: Text('Open in App'),
				textColor: Colors.black,
				padding: const EdgeInsets.all(5.0),
				),
			],
			),
		),
		),
	),
	);
}
}