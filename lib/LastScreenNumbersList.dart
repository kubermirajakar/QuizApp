import 'package:flutter/material.dart';

class LastScreenNumbersList extends StatelessWidget {
  const LastScreenNumbersList(this.num, {super.key});

  final String num;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: Color(0xfff6b9b5),
      ),
      child: Text(num, style: TextStyle(color: Colors.black)),
    );
  }
}
