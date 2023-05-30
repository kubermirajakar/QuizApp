import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:quizapp/Data/Questions.dart';
import 'package:quizapp/QuestionSummary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(
      {super.key, required this.choosenAnsers, required this.endQuiz});

  final List<String> choosenAnsers;
  final void Function() endQuiz;

  List<Map<String, Object>> getSummaryData() {
    List<Map<String, Object>> data = [];

    for (int i = 0; i < choosenAnsers.length; i++) {
      data.add({
        'Question-index': i,
        'Question': Questions[i].text,
        'Answer': Questions[i].answer[0],
        'User-answerd': choosenAnsers[i]
      });
    }

    return data;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numOfTotalQues = Questions.length;
    final numCorrectOptons = summaryData.where((element) {
      return element['Answer'] == element['User-answerd'];
    }).length;
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                'You have answerd $numCorrectOptons of $numOfTotalQues questions correctly'),
            SizedBox(
              height: 20,
            ),
            QuestionSummary(summaryData),
            TextButton(
              onPressed: endQuiz,
              child: Text('End quiz'),
            )
          ],
        ),
      ),
    );
  }
}
