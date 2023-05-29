import 'package:flutter/material.dart';
import 'package:quizapp/StartScreen.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
          body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color(0xff703030),
            Color(0xff31339d),
          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
        ),
        child: StartScreen(),
      )),
    ),
  );
}
