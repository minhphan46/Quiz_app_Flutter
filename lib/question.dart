import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  late final question;
  Question({required this.question});
  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: const EdgeInsets.all(5),
      margin: const EdgeInsets.all(10),
      child: Text(
        "$question",
        style: const TextStyle(
          fontSize: 18,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
