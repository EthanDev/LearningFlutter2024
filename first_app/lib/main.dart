// Flutter imports
import 'package:flutter/material.dart'; // Flutter library

// Imports from other files
import 'package:first_app/gradient_container.dart'; // GradientContainer class

// Custom function definition
void main() {
  //display a material app widget on the screen
  // const - keyword provided by dart - to help runtime performance of the app
  //         allows the duplication of memory in the app
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          Color.fromARGB(255, 59, 3, 104),
          Color.fromARGB(255, 157, 81, 220),
        ),
      ),
    ),
  ); // Flutter instruction to start the app to show what should be shown on the screen
}
