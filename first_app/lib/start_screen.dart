import 'package:flutter/material.dart'; // Flutter library

// StartScreen Class - StatelessWidget - There are no changes on the screen
class StartScreen extends StatelessWidget {
  // constructor
  const StartScreen({super.key});

  @override // Override a method expected by StatelessWidget
  Widget build(context) {
    // return a widget
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png', 
            width: 200,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          const SizedBox(height: 80),
          const Text(
            'Learn Flutter the fun way!',
            style: TextStyle(
              fontSize: 24,
              color: Color.fromARGB(255, 255, 255, 255),
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 30),
          // Outlined button
          OutlinedButton.icon(
            onPressed: () {
              // ...
            },
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              
            ),
            icon:const Icon(Icons.arrow_right_alt),
            label: const Text('Start Quiz'),
          ),
        ],
      ),
    );
  }
}
