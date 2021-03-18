import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  var taotalScore;
  final Function resetQuiz;

  Result(this.taotalScore, this.resetQuiz);

  String get resultPhrase {
    var resultText = 'You did it.';

    if (taotalScore <= 8)
      resultText = ' you are awesome and innocent !!! 😁';
    else if (taotalScore <= 12)
      resultText = 'Pretty likable! 😉';
    else if (taotalScore <= 16)
      resultText = 'You are .... strange ! 😐';
    else
      resultText = 'You nailed it. 🤘';

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(28.0),
            child: Text(
              resultPhrase,
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          FlatButton(
              onPressed: resetQuiz,
              textColor: Colors.blue,
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text(
                  'Restart Quiz',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Cochin'
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
