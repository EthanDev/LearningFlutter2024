import 'package:flutter/material.dart'; // Flutter library

const startAlignment = Alignment
    .topLeft; // using type inference, startAlignment is set at compile time hence the use of const
const endAlignment = Alignment
    .bottomRight; // using type inference, endAlignment is set at compile time hence the use of const

// GradientContainer
// extends StatelessWidget - Adds data and logic from the class
class GradientContainer extends StatelessWidget {
  // constructor
  const GradientContainer(this.fromColor, this.toColor,
      {super.key}); // super.key - passes the key to the parent class - StatelessWidget

  // alternative constructor - you are allowed to have a second constructor function in a class
  const GradientContainer.purple({super.key})
      : fromColor = Colors.purple,
        toColor = Colors.deepPurple;

  final Color fromColor;
  final Color toColor;

  @override // Override the build method
  // The build method is called by the Flutter framework to show the widget on the screen
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            fromColor,
            toColor
          ],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: Image.asset('assets/images/dice-2.png', width: 200.0, height: 200.0)
      ),
    );
  }
}
