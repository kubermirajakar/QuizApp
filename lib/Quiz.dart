import 'dart:html';

import 'package:flutter/material.dart';
import 'package:quizapp/Data/Questions.dart';
import 'package:quizapp/ResultsScreen.dart';
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

  List<String> answersSelected = [];

  void SelectedAnswer(String ans) {
    answersSelected.add(ans);
    if (answersSelected.length == Questions.length) {
      setState(() {
        currentScreen = 'result-screen';
        // answersSelected = [];
      });
    }
  }

  var currentScreen = 'start-screen';
  // var currentScreen = 'result-screen';

  void endQuiz() {
    setState(() {
      // currentScreen = QuestionsState();
      print(answersSelected);
      answersSelected = [];
      currentScreen = 'start-screen';
      print(answersSelected);
    });
  }

  void change() {
    setState(() {
      // currentScreen = QuestionsState();
      currentScreen = 'end-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
                : (currentScreen == 'end-screen'
                    ? QuestionsState(SelectedAnswer: SelectedAnswer)
                    : ResultsScreen(
                        choosenAnsers: answersSelected,
                        endQuiz: endQuiz,
                      ))),
      ),
    );
  }
}

// currentScreen == 'start-screen'
//               ? StartScreen(change)
//               : QuestionsState(
//                   SelectedAnswer: SelectedAnswer,
//                 ),
