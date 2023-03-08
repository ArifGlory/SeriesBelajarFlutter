import 'package:faker/faker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 1;
  final List<Map<String,dynamic>> myList = [
    {
      "Name" : "Arif",
      "Age" : 25,
      "favColor" : ["Navy","Green","Red","Green","Red","Green","Red","Green","Red","Green","Red"]
    },{
      "Name" : "Glory",
      "Age" : 26,
      "favColor" : ["Violet","Green","Red","Green","Red","Green","Red","Green","Red"]
    },
    {
      "Name" : "Rahman",
      "Age" : 27,
      "favColor" : ["Yellow","Green","Red","Green","Red"]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("mapping List"),
        ),
        body: ListView(
          children: myList.map((data){
            List myColor = data["favColor"];
            return Card(
              margin: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 10
              ),
              child: Container(
                margin: EdgeInsets.all(15),
                child: Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(),
                        Column(
                          children: [
                            Text(" Name : ${data['Name']}"),
                            Text(" Age : ${data['Age']}"),
                          ],
                        )
                      ],
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: myColor.map((warna){
                          return Container(
                            color: Colors.greenAccent,
                            child: Text(warna),
                            margin: EdgeInsets.symmetric(
                              vertical: 15,
                              horizontal: 10
                            ),
                            padding: EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 10
                            ),
                          );
                        }).toList(),
                      ),
                    )
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

class ChatItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;

  const ChatItem(
      {required this.imageUrl, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      subtitle: Text(subtitle),
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imageUrl),
      ),
      trailing: Text("10:00"),
    );
  }
}
