import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
//  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> questions = [
      {
        'text': 'Whats your favorite color?',
        'answers': ['black', 'red', 'green'],
      },
      {
        'text': 'Whats your favorite animal?',
        'answers': ['collie', 'elephant', 'cheshire cat'],
      },
      {
        'text': 'Whats your favorite language?',
        'answers': ['php', 'go', 'sql', 'dart', 'js'],
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('New App'),
        ),
        body: Column(
          children: <Widget>[
            Question(questions.elementAt(_questionIndex)['text']),
            ...(questions[_questionIndex]['answers'] as List<String>).map((a) {
              return Answer(_answerQuestion, a);
            }).toList(),
          ],
        ),
      ),
    );
  }
}
