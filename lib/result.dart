import 'package:flutter/material.dart';


class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'You are awesome and innocent!';
    } else if (resultScore <= 12) {
      resultText = 'Pretty likable!';
    } else {
      resultText = 'you are ..  strange?!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column (mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget> [
        padding(Text(resultPhrase, style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold,))),
        padding(TextButton(onPressed: resetHandler, child: Text('Restart Quiz'),
        style: ButtonStyle(foregroundColor: MaterialStateProperty.all(Colors.blue)),))
      ]
    );
  }
  
  Widget padding(Widget widget) {
    return  Padding(
      padding: EdgeInsets.fromLTRB(50, 0, 0, 0),
      child: widget);
  }

}
