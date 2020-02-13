import 'dart:html';

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
	home: Home(),
));

class Home extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		Color primary = Colors.red[700];
		const mainFontSize = 20.0;

		var userInfo = (args) {
			return Row(
				mainAxisAlignment: MainAxisAlignment.start,
				children: <Widget>[
					Padding(
						padding: EdgeInsets.all(10),
						child: Icon(
							args["icon"],
							color: primary,
							size: 30.0,
						),
					),
					Padding(
						padding: EdgeInsets.all(10),
						child: Text(
							args["name"],
							style: TextStyle(
								fontSize: 20,
							),
						),
					),
				],
			);
		};

		return Scaffold(
			backgroundColor: Colors.grey[100],
			appBar: AppBar(
				title: Text(
					'User Card',
					style: TextStyle(
						fontSize: mainFontSize * 1.5,
					),
				),
				backgroundColor: primary,
				centerTitle: true,
			),
			body: Column(
				children: <Widget>[
					Padding(
						padding: EdgeInsets.fromLTRB(20, 20, 20, 40),
						child: Center(
							child: CircleAvatar(
								backgroundImage: AssetImage('assets/imgs/user.jpg'),
								radius: 60.0,
							),
						),
					),
					Divider(
						height: 10.0,
						color: Colors.grey[250],							
					),
					Padding(
						padding: EdgeInsets.all(10),
						child: Column(
							children: <Widget>[
								userInfo({
									"name": "Mohssine",
									"icon": Icons.person,
								}),
								userInfo({
									"name": "mohssine@mohssine.ma",
									"icon": Icons.email,
								}),
								userInfo({
									"name": "0123456789",
									"icon": Icons.phone,
								}),
								userInfo({
									"name": "Web Developer",
									"icon": Icons.work,
								}),
								userInfo({
									"name": "123, x street, x city",
									"icon": Icons.location_on,
								}),
							],
						),
					),					
				],
			),
		);
	}
}

