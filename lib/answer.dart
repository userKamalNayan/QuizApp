import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  final Function selectHandler;
final String answer;

  Answer(this.selectHandler, this.answer);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(
          answer,
          textAlign: TextAlign.center
        ),
        textColor: Colors.white,
        color: Colors.blue,
        onPressed: selectHandler,
      ),
    );
  }
}
