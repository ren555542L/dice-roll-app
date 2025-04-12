import 'package:flutter/material.dart';
import 'package:dice_roller/dice_roller.dart';

class GradientStyle extends StatelessWidget {
  const GradientStyle(this.color1, this.color2,
      {super.key}); // Add super - refers to the parent class - StatelessWidget
  const GradientStyle.purple({super.key})
      : color1 = Colors.purple,
        color2 = Colors
            .deepPurple; // Add super - refers to the parent class - StatelessWidget
  final Color color1; // Add final - to make the variable immutable
  final Color color2; // Add final - to make the variable immutable

  @override // Add override - to override the build method of the parent class
  Widget build(context) {
    // Add context - to access the context of the parent class
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: DiceRoller(),
      ),
    );
  }
}
