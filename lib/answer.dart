import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function onClickHandler;
  final String answerText;

  Answer(this.onClickHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        onPressed: onClickHandler,
        child: Text(
          answerText,
        ),
        color: Colors.blue,
        textColor: Colors.white,
      ),
      width: double.infinity,
      margin: EdgeInsets.only(left: 10, right: 10),
    );
  }
}
