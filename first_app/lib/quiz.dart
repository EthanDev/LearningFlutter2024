import 'package:flutter/material.dart';

// Get access to StartScreen class
import 'package:first_app/start_screen.dart';
import 'package:first_app/questions_screen.dart';

class Quiz extends StatefulWidget {
  // constructor function
  const Quiz({super.key});
 
 // CreateState just creates an instance of the State class connected to Quiz
  @override
  State<Quiz> createState() {
    return _QuizState(); // Return an instance of _QuizState
  }
}

// State class is a generic of type Quiz
class _QuizState extends State<Quiz> {

  // Storing a widget in a variable
  Widget activeScreen = const StartScreen(); // StartScreen is the default screen;

  // This method is called when the user taps the Start Quiz button
  switchScreen() {
    // setState() is a method of the State class - it tells Flutter to redraw the screen
    setState(() {
      activeScreen = const QuestionsScreen();
    });
  }

  @override
  Widget build(context){
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 218, 181, 238),
                Color.fromARGB(255, 183, 49, 237)
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: activeScreen,
        ),
      ),
    );
  }

}