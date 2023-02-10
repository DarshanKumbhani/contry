import 'package:flutter/material.dart';

void main() {
  List l1 = [
    "🇨🇴   Colombia   🇨🇴",
    "🇺🇲   USA   🇺🇲 ",
    "🇯🇴   Jordan   🇯🇴",
    "🇮🇳   India   🇮🇳",
    "🇨🇦   Canada   🇨🇦",
    "🇮🇩   Indonesia   🇮🇩",
    "🇿🇼   Zimbabwe   🇿🇼",
    "🇳🇵   Nepal   🇳🇵",
    "🇮🇶   Iraq   🇮🇶",
    "🇯🇵   Japan   🇯🇵",
    "🇮🇷   Iran   🇮🇷",
    "🇰🇿   Kazakhstan   🇰🇿",
    "🇲🇽   Mexico   🇲🇽",
    "🇪🇸   Spain   🇪🇸",
    "🇸🇬   Singapore   🇸🇬",
    "🇩🇰   Denmark   🇩🇰",
    "🇵🇹   Portugal   🇵🇹",
    "🇷🇴   Oman   🇷🇴",
    "🇷🇺   Russia   🇷🇺",
    "🇭🇺   Hungary   🇭🇺",
  ];
  List c1 = [
    Colors.orange,
    Colors.redAccent,
    Colors.green,
    Colors.yellow,
    Colors.redAccent,
    Colors.white70,
    Colors.black26,
    Colors.green,
    Colors.lightGreenAccent,
    Colors.white38,
    Colors.lightGreen,
    Colors.lightBlue,
    Colors.amber,
    Colors.orange.shade900,
    Colors.redAccent.shade700,
    Colors.blue.shade900,
    Colors.yellow.shade900,
    Colors.blueAccent.shade700,
    Colors.greenAccent.shade700,
    Colors.blueGrey,
  ];
  int i = 0;
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black26,
        title: Text(
          "Contry list",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: Icon(Icons.search),
      ),
      body: SingleChildScrollView(
        child: Column(

            children: l1
                .map(
                  (e) => CountryList(e, c1[i++]),
            )
                .toList(),
        ),
      ),
    ),
  ));
}
Widget CountryList(String l1, c1) {
  return Column(
    children: [
      SizedBox(height: 5),
      Container(
        width: double.infinity,
        height: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: c1,
            border: Border.all(color: Colors.black45, width: 5)),
        child: Center(
            child: Text(
              "$l1",
              style: TextStyle(
                  fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
            )),
      ),
    ],
  );
}
/*

 */
