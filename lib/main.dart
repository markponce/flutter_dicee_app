import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var random = new Random();
  int maxNum = 6;
  int leftDiceNumber = 1;
  int rightDiceNumber = 2;

//  _DicePageState() {
//    getRandomNumber();
//    leftDiceNumber = random.nextInt(maxNum) + 1;
//    rightDiceNumber = random.nextInt(maxNum) + 1;
//  }

  getRandomNumber() {
    setState(() {
      leftDiceNumber = random.nextInt(maxNum) + 1;
      rightDiceNumber = random.nextInt(maxNum) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {

    print('leftDiceNumber: $leftDiceNumber');
    print('rightDiceNumber: $rightDiceNumber');

    return Container(
      child: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                child: Image.asset('images/dice$leftDiceNumber.png'),
                onPressed: () {
                  getRandomNumber();
                },
              ),
            ),
            Expanded(
              child: FlatButton(
                child: Image.asset('images/dice$rightDiceNumber.png'),
                onPressed: () {
                  getRandomNumber();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
