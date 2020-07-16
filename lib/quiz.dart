import 'package:flutter/material.dart';

import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final Function onButtonPressed;
  final int questionIndex;
  final List<Map<String, Object>> questions;

  Quiz({
    @required this.onButtonPressed,
    @required this.questionIndex,
    @required this.questions,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['questionText'],
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map(
          (answer) {
            return Answer(
              () => onButtonPressed(answer['score']),
              answer['text'],
            );
          },
        ),
      ],
    );
  }
}
