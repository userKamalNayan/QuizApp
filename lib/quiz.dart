import 'package:flutter/cupertino.dart';
import 'package:quiz_app/question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  var questionIndex;
  final Function answerQuestion;
  List<Map<String, Object>> questions;

  Quiz({
    @required this.questionIndex,
    @required this.answerQuestion,
    @required this.questions});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          (questions[questionIndex])['question'],
        ),
        ...(questions[questionIndex]['answer'] as List<Map<String,Object>>).map((answer) {

          return Answer(()=> answerQuestion(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}
