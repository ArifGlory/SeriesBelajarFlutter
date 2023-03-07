import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<Widget> myList = [
    Container(
      width: 300,
      height: 200,
      color: Colors.amber,
    ),
    Container(
      width: 300,
      height: 200,
      color: Colors.blue,
      margin: EdgeInsets.all(3),
    ),
    Container(
      width: 50,
      height: 200,
      color: Colors.red,
      margin: EdgeInsets.all(3),
    ),
    Container(
      width: 300,
      height: 200,
      color: Colors.purpleAccent,
      margin: EdgeInsets.all(3),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("List View"),
        ),
        body: ListView(
          children: myList,
        ),
      ),
    );
  }
}
