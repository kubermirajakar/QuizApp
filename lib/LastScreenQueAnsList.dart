import 'package:flutter/material.dart';

class LastScreenQueAnsList extends StatelessWidget {
  const LastScreenQueAnsList(this.e, {super.key});

  final Map<String, Object> e;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              (e['Question']).toString(),
              style: TextStyle(
                  color: Color(0xfffafafa),
                  fontSize: 13,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Correct answer : ' + (e['Answer']).toString(),
              style: TextStyle(
                  color: Color(0xff4196f6),
                  fontSize: 10,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 7,
            ),
            Text(
              'Your answer : ' + (e['User-answerd']).toString(),
              style: TextStyle(
                  color: Color(0xffe51e70),
                  fontSize: 10,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
