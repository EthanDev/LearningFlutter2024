// Flutter imports
import 'package:flutter/material.dart'; // Flutter library

// Imports from other files
import 'package:first_app/gradient_container.dart'; // GradientContainer class

// Custom function definition
void main() {
  //display a material app widget on the screen
  // const - keyword provided by dart - to help runtime performance of the app
  //         allows the duplication of memory in the app
  runApp( // runApp() tells Flutter what to display on the screen (i.e. which UI elements to display)
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer.purple()
        ),
      ),
    );
}
