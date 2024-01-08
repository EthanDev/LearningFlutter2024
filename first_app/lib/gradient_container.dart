import 'package:flutter/material.dart'; // Flutter library

import 'package:first_app/styled_text.dart'; // StyledText class

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
      child: const Center(
        child: StyledText('Hello World'), // You dont have to pass a value for the named key argument because named arguments are by default optional
      ),
    );
  }
}
