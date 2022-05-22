import 'package:dicegame/dicescreen.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
   const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueAccent,
        appBar: AppBar(
          title:const Text("Dice Game"),
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
        ),
        body:const DiceScreen(),
      ),
    );
  }
}
