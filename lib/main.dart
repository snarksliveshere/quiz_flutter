import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
//  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;
  int _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  final List<Map<String, Object>> _questions = const [
    {
      'text': 'Whats your favorite color?',
      'answers': [
        {'text': 'black', 'score': 10},
        {'text': 'red', 'score': 6},
        {'text': 'green', 'score': 3},
      ],
    },
    {
      'text': 'Whats your favorite animal?',
      'answers': [
        {'text': 'collie', 'score': 1},
        {'text': 'elephant', 'score': 3},
        {'text': 'cheshire cat', 'score': 2},
        {'text': 'cat', 'score': 10},
      ],
    },
    {
      'text': 'Whats your favorite language?',
      'answers': [
        {'text': 'php', 'score': 1},
        {'text': 'sql', 'score': 4},
        {'text': 'dart', 'score': 3},
        {'text': 'js', 'score': 10},
      ],
    },
  ];

  void _answerQuestion(int score) {
    _totalScore += score;
    if (_questionIndex < _questions.length) {}
    setState(() => _questionIndex++);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('New App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
