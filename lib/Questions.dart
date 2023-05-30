import 'package:flutter/material.dart';
import 'package:quizapp/Data/Questions.dart';
import 'package:quizapp/Model/AnswerButton.dart';

class QuestionsState extends StatefulWidget {
  const QuestionsState({super.key});

  @override
  State<StatefulWidget> createState() {
    return _QuestionsState();
  }
}

class _QuestionsState extends State<QuestionsState> {
  var currentQuestion = 1;

  void increaseQuestion() {
    setState(() {
      currentQuestion++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var que = Questions[currentQuestion];
    return SizedBox(
        width: double.infinity,
        child: Container(
          margin: const EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                que.text,
                style: TextStyle(
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 30,
              ),

              ...que.ShuffeledQuestion().map(
                (e) => AnswerButton(answerText: e, onTap: increaseQuestion),
              ),
              // AnswerButton(
              //   answerText: 'Answer1',
              //   onTap: () {},
              // ),
              // AnswerButton(
              //   answerText: 'Answer1',
              //   onTap: () {},
              // ),
              // AnswerButton(
              //   answerText: 'Answer1',
              //   onTap: () {},
              // ),
            ],
          ),
        ));
  }
}
