import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {

  // Constructor - accept super class and forward the key to the super class - StatefulWidget
  const DiceRoller({super.key});

 // Returns a state object - a type of flutter widget - 
 // a generic type - to the flutter what type of state object it is to be managed
  @override
  State<DiceRoller> createState() { 

    return _DiceRollerState(); // Execute the constructor of DiceRollerState, 
                              // Dart automatically creates a constructor if you do not create one
  }
}

// The _ means that the state class is private and can only be used in this file
// meant to be used internally 
class _DiceRollerState extends State<DiceRoller> {

  var activeDiceImage = 'assets/images/dice-1.png';

  // rollDice - function that is called when the button is pressed
  void rollDice() {
    // setState - function that tells flutter that the state has changed and execute the build method again
    // setState is a function that is inherited from the State class
    setState(() {
      activeDiceImage = 'assets/images/dice-4.png';
    });
  }

  // Returns a widget - a type of flutter widget
  @override
  Widget build(BuildContext context) {
    return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
                Image.asset(
                    activeDiceImage,
                    width: 200.0,
                    height: 200.0
                ), // Image.asset - loads an image from the assets folder
                const SizedBox(height: 20), // SizedBox - creates a box with a specific size, any content that does not fit will be clipped
                TextButton(
                  onPressed: rollDice, 
                  style: TextButton.styleFrom(
                    //padding: const EdgeInsets.only(
                    //    top: 20
                    // ), 
                    foregroundColor: Colors.white, 
                    textStyle: const TextStyle(fontSize: 28)
                  ), // TextButton.styleFrom - allows you to change the style of the button
                  child: const Text('Roll Dice')
              )
            ],
        );
  }
}