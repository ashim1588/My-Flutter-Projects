import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyCoolApp());
}

class MyCoolApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyCoolAppState();
  }
}

class _MyCoolAppState extends State<MyCoolApp> {
  final _questions = const [
    {
      'questionText': 'Who is CEO Of Meta?',
      'answers': [
        {'text': 'Mark Zuckerbergg ', 'score': 10},
        {'text': 'Elon', 'score': 0},
        {'text': 'Ratan Tata', 'score': 0},
        {'text': 'Mukesh Ambani', 'score': 0}
      ],
    },
    {
      'questionText': 'Who is the CEO of Tesla?',
      'answers': [
        {'text': 'Elon', 'score': 10},
        {'text': 'Satya', 'score': 0},
        {'text': 'Sundar', 'score': 0},
        {'text': 'Adani', 'score': 0}
      ],
    },
    {
      'questionText': 'Who is the Richest?',
      'answers': [
        {'text': 'Elon', 'score': 10},
        {'text': 'Jeff', 'score': 0},
        {'text': 'Mukesh', 'score': 0},
        {'text': 'Mark', 'score': 0}
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;
  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore = _totalScore + score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We hve more Questions');
    } else
      print('No More Questions');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First app'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
