import 'dart:html';

import 'package:flutter/material.dart';
import 'package:quizapp/StartScreen.dart';
import 'package:quizapp/Questions.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  // Widget? currentScreen;

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   currentScreen = StartScreen(change);
  // }
  var currentScreen = 'start-screen';

  void change() {
    setState(() {
      // currentScreen = QuestionsState();
      currentScreen = 'end-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color(0xff703030),
              Color(0xff31339d),
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          ),
          child: currentScreen == 'start-screen'
              ? StartScreen(change)
              : QuestionsState(),
        ),
      ),
    );
  }
}
