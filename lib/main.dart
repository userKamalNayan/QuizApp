import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:quiz_app/answer.dart';
import 'package:quiz_app/question.dart';
import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Quiz App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var _questionIndex = 0;
  var _totalScore =0;

  var questions = [
    {
      'question': 'What\'s your favourite color',
      'answer': [
        {'text': 'Black', 'score': 10},
        {'text': 'White', 'score': 5},
        {'text': 'Blue', 'score': 3},
        {'text': 'Green', 'score': 1}
      ],
    },
    {
      'question': 'What\'s your favourite animal',
      'answer': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 11},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 9}
      ],
    },
    {
      'question': 'What\'s your favourite fruit',
      'answer': [ {'text': 'Apple', 'score': 1},
        {'text': 'Mango', 'score': 1},
        {'text': 'Grapes', 'score': 1},
        {'text': 'Banana', 'score': 1},]

    },
  ];


  void _answerQuestion(int score) {
    _totalScore+=score;
    print("total Score = $_totalScore");
      setState(() {
        _questionIndex = _questionIndex + 1;
      });

  }

  void _resetQuiz()
  {
    setState(() {
      _totalScore =0;
      _questionIndex =0;

    });

  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: _questionIndex < questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: questions,
                )
              : Result(_totalScore,_resetQuiz),
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
