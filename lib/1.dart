import 'package:contry/main.dart';
import 'package:flutter/material.dart';

voidmain() {
  List l1 = ["india", "japan", "america", "london", "africa"];
  List c2 = [
    Colors.blue,
    Colors.blueAccent,
    Colors.lightBlueAccent,
    Colors.purpleAccent,
    Colors.green,
  ];

  int i = 0;
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.purpleAccent,
        leading: Icon(
          Icons.search_off,
        ),
        title: Text(
          "Country",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
            children:l1
            .map(
                (e)=> ContryList(e,c2[i++])
            )
                .toList(),



      ),
    ),
  ),
  ));
}

Widget ContryList(String l1, c2) {
  return Column(
    children: [
      SizedBox(height: 50),
      Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.black, width: double.infinity)),
        color: c2,
        child: Center(
          child: Text("$l1", style: TextStyle(fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black45),),
        ),
      ),


    ],
  );
}




