import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('DICE'),
        centerTitle: true,
      ),
      backgroundColor: Colors.teal,
      body: HomePage(),
    ),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int leftDice = 1;
  int rightDice = 2;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FlatButton(
              onPressed: () {
                setState(() {
                  leftDice = Random().nextInt(6) + 1;
                  rightDice = Random().nextInt(6) + 1;
                });
              },
              child: Text('DICE ME')),
          Row(children: [
            Expanded(
              child: Image.asset('images/dice$leftDice.png'),
            ),
            SizedBox(width: 20.0),
            Expanded(
              child: Image.asset('images/dice$rightDice.png'),
            ),
          ])
        ],
      ),
    );
  }
}
