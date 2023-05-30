import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.change, {super.key});

  final void Function() change;

  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Opacity(
            opacity: 0.7,
            child: Image.asset(
              'assets/quiz-logo.png',
              width: 300,
              // color: Color(0x9fffffff),
            ),
          ),
          SizedBox(
            height: 80,
          ),
          Text(
            'Welcome to Quiz App',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            onPressed: change,
            style: OutlinedButton.styleFrom(
              foregroundColor: Color(0xfffefefe),
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text('Quiz'),
          )
        ],
      ),
    );
  }
}
