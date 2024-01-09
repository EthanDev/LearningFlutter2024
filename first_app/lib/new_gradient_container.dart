import 'package:flutter/material.dart';

import 'package:first_app/main_interface.dart';

// Global variables
const startAlignment = Alignment
    .topCenter; // using type inference, startAlignment is set at compile time hence the use of const
const endAlignment = Alignment
    .bottomCenter; // using type inference, endAlignment is set at compile time hence the use of const

class NewGradientContainer extends StatelessWidget {
  // constructor
  const NewGradientContainer(this.fromColor, this.toColor, {super.key});

  // alternative constructor
  const NewGradientContainer.custom({super.key})
      : fromColor = Colors.purple,
        toColor = Colors.deepPurple;

  final Color fromColor;
  final Color toColor;

  @override
  Widget build(context) {
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [fromColor, toColor],
                begin: startAlignment,
                end: endAlignment)),
        child: const Center(
          child: MainInterface(),
        ));
  }
}
