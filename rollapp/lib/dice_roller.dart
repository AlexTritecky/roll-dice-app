import 'package:flutter/material.dart';
import 'dart:math';

import 'package:rollapp/style_text.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return DiceRollerState();
  }
}

class DiceRollerState extends State<DiceRoller> {
  var diceNumber = 1;
  void rollDice() {
    setState(() {
      diceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        StyleText('You rolled a $diceNumber'),
        const SizedBox(height: 30.0),
        Image.asset('assets/images/dice-$diceNumber.png',
            width: 250.0, height: 250.0),
        ElevatedButton(
          onPressed: rollDice,
          style: ButtonStyle(
              padding: MaterialStateProperty.all<EdgeInsets>(
                  const EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0)),
              shadowColor: MaterialStateColor.resolveWith(
                  (states) => Colors.deepPurpleAccent),
              backgroundColor:
                  MaterialStateProperty.all<Color>(Colors.deepPurpleAccent)),
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}
