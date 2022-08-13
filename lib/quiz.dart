import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final int questionIndex;
  final List<Map<String, Object>> questions;
  final Function answerQuestion;

  Quiz({
    required this.answerQuestion,
    required this.questions,
    required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Question(
            question: questions[questionIndex]['questionText'],
          ),
          ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
              .map(
            (answer) {
              return Answer(
                () => answerQuestion(answer['score']),
                answer['text'].toString(),
              );
            },
          ).toList(),
        ],
      ),
    );
  }
}
