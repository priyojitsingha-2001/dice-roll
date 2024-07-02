import 'package:flutter/material.dart';
import 'dart:math';

final randomizer=Random();
class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDice = 'assets/images/dice-1.png';
  void rollDice() {
    setState(() {
      activeDice = 'assets/images/dice-${randomizer.nextInt(6) + 1}.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            activeDice,
            width: 200,
          ),
          const SizedBox(
            height: 50,
          ),
          TextButton(
            onPressed: rollDice,
            style: ButtonStyle(
              padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
                  const EdgeInsets.all(20.0)),
              backgroundColor: WidgetStateProperty.all<Color>(Colors.blue),
              foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
            ),
            child: const Text(
              "Roll Dice",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
