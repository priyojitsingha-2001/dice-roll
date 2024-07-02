import 'package:flutter/material.dart';
import 'package:dice_roll/gradient_container.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: GradientContainer(
        Color.fromARGB(255, 21, 18, 30),
        Color.fromARGB(255, 45, 7, 98),
      ),
    ),
  ));
}
