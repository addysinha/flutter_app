import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questions = [
    {
      'question': 'What\'s your favourite color ?',
      'answer': [
        {'text': 'red', 'score': 1},
        {'text': 'green', 'score': 2},
        {'text': 'blue', 'score': 3},
        {'text': 'black', 'score': 4}
      ]
    },
    {
      'question': 'What\'s your favourite animal ?',
      'answer': [
        {'text': 'lion', 'score': 1},
        {'text': 'elephant', 'score': 2},
        {'text': 'rabbit', 'score': 3}
      ]
    },
    {
      'question': 'What\'s your favourite fruit ?',
      'answer': [
        {'text': 'apple', 'score': 1},
        {'text': 'banana', 'score': 2},
        {'text': 'mango', 'score': 3},
        {'text': 'grapes', 'score': 4}
      ]
    }
  ];

  var _questionNumber = 0;
  var totalScore = 0;

  void _buttonPressAction(score) {
    setState(() {
      _questionNumber++;
      totalScore += score;
    });
    print(_questionNumber);
  }

  void _resetGame() {
    setState(() {
      _questionNumber = 0;
      totalScore = 0;
    });
  }

  Widget build(BuildContext context) {
    print('print questionNumber under build: ' + _questionNumber.toString());
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter App'),
        ),
        body: _questionNumber < _questions.length
            ? Quiz(_questions, _questionNumber, _buttonPressAction)
            : Result(totalScore, _resetGame),
      ),
    );
  }
}
