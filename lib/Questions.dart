import 'package:flutter/material.dart';
import 'package:quizapp/Data/Questions.dart';
import 'package:quizapp/Model/AnswerButton.dart';

class QuestionsState extends StatefulWidget {
  const QuestionsState({super.key, required this.SelectedAnswer});

  final void Function(String ans) SelectedAnswer;

  @override
  State<StatefulWidget> createState() {
    return _QuestionsState();
  }
}

class _QuestionsState extends State<QuestionsState> {
  var currentQuestion = 0;

  void increaseQuestion(String ans) {
    widget.SelectedAnswer(ans);
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
                (e) => AnswerButton(
                    answerText: e,
                    onTap: () {
                      increaseQuestion(e);
                    }),
              ),
            ],
          ),
        ));
  }
}
