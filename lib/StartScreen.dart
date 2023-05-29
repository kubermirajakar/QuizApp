import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/quiz-logo.png',
            width: 300,
          ),
          SizedBox(
            height: 80,
          ),
          const Text('Welcome to Quiz App'),
          SizedBox(
            height: 80,
          ),
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            child: const Text('Quiz'),
          )
        ],
      ),
    );
  }
}
