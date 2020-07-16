import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function resultQuiz;

  Result(this.totalScore, this.resultQuiz);

  String get resultPhrase {
    return 'You did it and your score is ' + totalScore.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          FlatButton(
            onPressed: resultQuiz,
            child: Text('Restart Quiz'),
            textColor: Colors.blue,
          )
        ],
      ),
    );
  }
}
