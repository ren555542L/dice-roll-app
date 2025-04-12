import 'package:flutter/material.dart';
import 'package:dice_roller/gradient_style.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 190, 255, 13),
        body: GradientStyle(Colors.orange, Colors.yellow),
      ),
    ),
  );
}
