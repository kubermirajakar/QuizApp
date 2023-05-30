import 'package:flutter/material.dart';
import 'package:quizapp/LastScreenNumbersList.dart';
import 'package:quizapp/LastScreenQueAnsList.dart';

class QuestionSummary extends StatelessWidget {
  QuestionSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (e) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Text(((e['Question-index'] as int) + 1).toString()),
                  LastScreenNumbersList(
                      ((e['Question-index'] as int) + 1).toString()),
                  SizedBox(
                    width: 20,
                  ),
                  LastScreenQueAnsList(e),
                  // Expanded(
                  //   child: Column(
                  //     children: [
                  //       Text((e['Question']).toString()),
                  //       Text((e['Answer']).toString()),
                  //       Text((e['User-answerd']).toString())
                  //     ],
                  //   ),
                  // )
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
