import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';
import './score.dart';


main() => runApp(MyApp());

class MyApp extends StatefulWidget{


  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
       _totalScore = 0;
    });
  }

  var questions = [
    {'questionText': 'What\'s your favorite color?',
      'answers':[Score('Black',10), Score('Red',5 ), Score('Green', 3), Score('White',4)]},
    {'questionText': 'What\'s your favorite animal?',
      'answers':[Score('Rabbit',10), Score('Elephant', 5), Score('lion', 4), Score('Girrafe', 3)]},
    {'questionText': 'Who is your favorite instructor?',
      'answers':[Score('Raghu', 3), Score('Raghu', 3), Score('Raghu', 3), Score('Raghu', 3)]},
  ];

  @override
  Widget build(BuildContext context) {

    return MaterialApp(home: Scaffold(
        appBar: AppBar(title: Text('quiz')),
        body:  _questionIndex < questions.length ?
        Quiz(answerQuestion: _answerQuestion, questions: questions, questionIndex: _questionIndex) :
            Result(_totalScore, _resetQuiz)
    ));
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex+1;
    });
    print(_questionIndex);
  }

}
