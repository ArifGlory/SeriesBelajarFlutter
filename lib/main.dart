import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'home.dart';

main() {
  runApp(MyApp());
}

class MyApp  extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors

    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}



