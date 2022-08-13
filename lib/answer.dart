import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answer;
  // ignore: use_key_in_widget_constructors
  const Answer(this.selectHandler, this.answer);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5),
      width: 200,
      child: ElevatedButton(
        onPressed: selectHandler,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.lightBlueAccent),
        ),
        child: Text(
          answer.toString(),
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
