import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;
  Result(
    this.resultScore,
    this.resetHandler,
  );

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = "You are awesome and innocent!";
    } else if (resultScore <= 12) {
      resultText = "pretty likeable";
    } else if (resultScore <= 16) {
      resultText = "You are ... strange?!";
    } else {
      resultText = "You are so bad";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: ElevatedButton(
              onPressed: resetHandler,
              style: ElevatedButton.styleFrom(
                primary: Colors.orange, // mau button
                onPrimary: Colors.white, // mau chu
              ),
              child: const Text(
                "Restart Quiz!",
                style: TextStyle(
                    //color: Colors.blue,
                    ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
