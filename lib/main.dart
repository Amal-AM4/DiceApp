import 'package:flutter/material.dart';
import 'dart:math';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.green.shade900,
        appBar: AppBar(backgroundColor: Colors.green.shade900),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var diceNum = 1;
  final player = AudioPlayer(); // AudioPlayer instance

  void rollDice() async {
    setState(() {
      diceNum = Random().nextInt(6) + 1;
    });

    // play sound
    await player.play(AssetSource('audio/dice-142528.mp3'));

    print('$diceNum btn is pressed.');
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 20.0),
            child: Text(
              'Dice',
              style: TextStyle(
                color: Colors.white,
                fontSize: 64.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Pacifico',
              ),
            ),
          ),
          Container(
            height: 150.0,
            width: 150.0,
            child: TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.green.shade900,
              ),
              onPressed: rollDice,
              child: Image.asset('assets/images/dice$diceNum.png'),
            ),
          ),
          Container(
            child: Text(
              'Your Lucky Dices: $diceNum',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
