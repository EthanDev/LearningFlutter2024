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
          Image.asset('assets/images/quiz-logo.png', width: 200),
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
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.purple,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
            ),
            child: const Text('Start Quiz'),
          ),
        ],
      ),
    );
  }
}
