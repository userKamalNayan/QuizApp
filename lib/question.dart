import 'package:flutter/cupertino.dart';

class Question extends StatelessWidget {
  final String question;

  @override
  Widget build(BuildContext context) {
    return Padding(
      child: Text(
        question,
        style: TextStyle(fontSize: 25),
      ),
      padding: EdgeInsets.all(22),
    );

    throw UnimplementedError();
  }

  Question(this.question);
}
