import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int _resultScore;
  final Function _reset;

  Result(this._resultScore, this._reset);

  String get resultPhrase {
    String text;
    if (_resultScore <= 8) {
      text = 'awesome';
    } else if (_resultScore <= 12) {
      text = 'in middle of something';
    } else {
      text = 'hm...';
    }
    return text;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            this.resultPhrase,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Restart quiz'),
            textColor: Colors.blue,
            onPressed: _reset,
          ),
        ],
      ),
    );
  }
}
