import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          title: const Text('Dice'),
          backgroundColor: Colors.teal,
        ),
        body: const DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  void changeLeftNumber() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
    });
  }

  void changeRightNumber() {
    setState(() {
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(38.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width:
                  MediaQuery.of(context).size.width * 0.5, //50% width of screen
              child: TextButton(
                onPressed: () {
                  changeLeftNumber();
                },
                child: Image.asset('images/dice$leftDiceNumber.png'),
              ),
            ),
            const Divider(color: Colors.white),
            SizedBox(
              width:
                  MediaQuery.of(context).size.width * 0.5, //50% width of screen
              child: TextButton(
                onPressed: () {
                  changeRightNumber();
                },
                child: Image.asset('images/dice$rightDiceNumber.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
