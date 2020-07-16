import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

class MyHomeApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyHomeAppState();
  }
}

class MyHomeAppState extends State<MyHomeApp> {
  var questionIndex = 0;
  var _totalScore = 0;

  var questions = [
    {
      'questionText': 'Whats your favourite color?',
      'answers': [
        {'text': 'Red', 'score': 8},
        {'text': 'Blue', 'score': 6},
        {'text': 'White', 'score': 4},
        {'text': 'Pink', 'score': 2},
      ],
    },
    {
      'questionText': 'Whats your favourite animal?',
      'answers': [
        {'text': 'Cockroach', 'score': 8},
        {'text': 'Cat', 'score': 6},
        {'text': 'Dog', 'score': 10},
        {'text': 'Pigeon', 'score': 4},
      ],
    },
    {
      'questionText': 'Whats your full name?',
      'answers': [
        {'text': 'Sumaiya Banu', 'score': 6},
        {'text': 'Sumaiya Banu Adam Basha', 'score': 8},
        {'text': 'Sumaiya Banu Mohamed Haneef', 'score': 10},
      ],
    },
  ];

  onButtonPressed(int score) {
    setState(() {
      questionIndex = questionIndex + 1;
      _totalScore += score;
    });
  }

  _restartQuiz() {
    setState(() {
      questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First Flutter App'),
        ),
        body: questionIndex < questions.length
            ? Quiz(
                onButtonPressed: onButtonPressed,
                questionIndex: questionIndex,
                questions: questions,
              )
            : Result(_totalScore, _restartQuiz),
      ),
    );
  }
}

void main() => runApp(MyHomeApp());
