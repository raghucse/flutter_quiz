import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './Question.dart';
import './Answer.dart';
import 'score.dart';

class Quiz extends StatelessWidget {
  final Function answerQuestion;
  final questions;
  final int questionIndex;

  Quiz({@required this.answerQuestion,
      @required this.questions,
      @required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Question(questions[questionIndex]['questionText']),
      ...(questions[questionIndex]['answers'] as List<Score>).map((answer) {
        return Answer(() => answerQuestion(answer.score), answer.text);}).toList()
    ],);
  }
}
