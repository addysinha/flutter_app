import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  var buttonName;
  Function selectHandler;

  Answer(this.buttonName, this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(buttonName),
        onPressed: selectHandler,
        color: Colors.amberAccent,
      ),
    );
  }
}
