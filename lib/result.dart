import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  var totalScore;
  Function functionHandler;

  Result(this.totalScore, this.functionHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: <Widget>[
        Center(
          widthFactor: double.infinity,
          child: Text(
            'You scored ' + totalScore.toString() + ' points !',
            style: TextStyle(fontSize: 28, color: Colors.blue),
          ),
        ),
        RaisedButton(
          child: Text('Reset'),
          onPressed: functionHandler,
          color: Colors.amberAccent,
        )
      ],
    ));
  }
}
