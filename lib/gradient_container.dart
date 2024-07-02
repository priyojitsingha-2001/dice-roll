import 'package:dice_roll/dice_roller.dart';
import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomLeft;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});

  // we can also create constructors like this
  const GradientContainer.purlpe({super.key})
      : color1 = Colors.deepPurple,
        color2 = Colors.indigo;

  final Color color1;
  final Color color2;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      // child: const StyledText('⚔️ Game of Thrones ⚔️'),
      child:DiceRoller(),
    );
  }

  // this is another way of accepting an array of colors

  // const GradientContainer({super.key, required List<Color> this.colors });

  // final List<Color> colors;

  // @override
  // Widget build(context) {
  //   return Container(
  //     decoration: BoxDecoration(
  //       gradient: LinearGradient(
  //         colors: colors,
  //         begin: startAlignment,
  //         end: endAlignment,
  //       ),
  //     ),
  //     child: const StyledText('⚔️ Game of Thrones ⚔️'),
  //   );
  // }

  // here the colors are hard coded

  // const GradientContainer({super.key});
  // @override
  // Widget build(context) {
  //   return Container(
  //     decoration: BoxDecoration(
  //       gradient: LinearGradient(
  //         colors: const [
  //           Color.fromARGB(255, 21, 18, 30),
  //           Color.fromARGB(255, 45, 7, 98),
  //         ],
  //         begin: startAlignment,
  //         end: endAlignment,
  //       ),
  //     ),
  //     child: const StyledText('⚔️ Game of Thrones ⚔️'),
  //   );
  // }
}
