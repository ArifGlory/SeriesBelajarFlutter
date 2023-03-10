import 'package:flutter/material.dart';
class MyHomePage extends StatelessWidget {
  const MyHomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Judul App"),
        centerTitle: false,
        // ignore: prefer_const_constructors
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showDialog(context: context,
              builder: (context){
                return AlertDialog(
                  title: Text("Konformasi ?"),
                );
              }
          );
        },
        child: Icon(Icons.delete),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}