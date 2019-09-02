import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz({
    @required this.questions,
    @required this.answerQuestion,
    @required this.questionIndex
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(this.questions.elementAt(this.questionIndex)['text']),
        ...(this.questions[this.questionIndex]['answers'] as List<Map<String, Object>>)
            .map((a) => Answer(() =>this.answerQuestion(a['score']), a['text']))
            .toList(),
      ],
    );
  }
}
