

import 'package:flutter/material.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/one.jpg'),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('No ads while \nListening music',
            textAlign: TextAlign.center,
            style: TextStyle(
            fontSize: 30,
            color: Color.fromARGB(255, 255, 199, 59),fontWeight: FontWeight.bold,
          ),),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 40),
          child: Text('Listening to music is very comfortable without any annoying adds',
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 19, 54, 33)

            ),),
        )
      ],
    );
  }
}
