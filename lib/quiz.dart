import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  var questions;
  var questionNumber;
  Function functionHandler;

  Quiz(this.questions, this.questionNumber, this.functionHandler);

  @override
  Widget build(BuildContext context) {
    return Container(child: Column(
      children: <Widget>[
        Question(questions[questionNumber]['question']),
        ...((questions[questionNumber]['answer'] as List<Map<String, Object>>).map((answer) {
          return Answer(answer['text'], () => functionHandler(answer['score']));
        })).toList(),
      ],
    ));
  }
}
