import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function _func;

  final String _text;

  Answer(this._func, this._text);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue[300],
        textColor: Colors.white,
        child: Text(_text),
        onPressed: _func,
      ),
    );
  }
}
