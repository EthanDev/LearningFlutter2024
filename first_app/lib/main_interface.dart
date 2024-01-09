import 'package:flutter/material.dart';

class MainInterface extends StatefulWidget {

  // Constructir
  const MainInterface({super.key});

  @override
  State<MainInterface> createState() => _MainInterfaceState();  

}

class _MainInterfaceState extends State<MainInterface> {

  @override
  Widget build(context) {

      final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));
        
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 200.0,
            height: 200.0,
          ),
          const SizedBox(height: 20), // divider
          const Text (
            'Learn Flutter The Fun Way',
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.bold
            )
          ),
          const SizedBox(height: 20), // divider
          ElevatedButton(
          style: style,
          onPressed: () {},
          child: const Text('Enabled'),
        ),
        ], // 

      ); // Column 
  } // build

} // _MainInterfaceState