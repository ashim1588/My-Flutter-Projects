import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  String get resultPhrase {
    var resultText;
    if (resultScore == 30) {
      resultText = 'Perfect, All questions were correct';
    } else if (resultScore == 20) {
      resultText = 'One Question was wrong';
    } else if (resultScore == 10) {
      resultText =
          'Only 1 question was right';
    } else {
      resultText =
      'All questions are wrong';
    }
    return resultText;
  }

  Result(this.resultScore, this.resetHandler);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: resetHandler,
            child: Text('Restart Quiz'),
            textColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}
