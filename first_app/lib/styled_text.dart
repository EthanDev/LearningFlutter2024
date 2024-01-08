import 'package:flutter/material.dart'; // Flutter library

class StyledText extends StatelessWidget {
  const StyledText(this.text, {super.key}); // constructor. this.text is a required parameter that's value is assigned to the class variable with the same name

  // class variables / properties
  final String text; // use final if the variable is not going to change

  @override // Override the build method
  Widget build(context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 28,
        color: Colors.white,
      ),
    );
  }
}
