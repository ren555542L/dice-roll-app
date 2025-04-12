import 'package:flutter/material.dart';
import 'dart:math';

var randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller(
      {super.key}); // can add const as both clases are seperated but cant add in _diceRollerState
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDice = 'assets/images/dice-2.png';
  void rollDice() {
    var random = randomizer.nextInt(6) + 1;
    setState(() {
      // setState is used to update the UI
      activeDice = 'assets/images/dice-$random.png';
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(activeDice, width: 200),
        // const SizedBox(height: 20), another method to add space
        TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 15),
              padding: const EdgeInsets.only(top: 20),
            ),
            child: const Text('Press to roll')),
      ],
    );
  }
}
