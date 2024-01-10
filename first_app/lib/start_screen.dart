import 'package:flutter/material.dart'; // Flutter library

// StartScreen Class - StatelessWidget - There are no changes on the screen
class StartScreen extends StatelessWidget {

  // constructor
  const StartScreen({super.key});

  @override // Override a method expected by StatelessWidget
  Widget build(context) {
    // return a widget
    return const Text('Start Screen');
  }
}
