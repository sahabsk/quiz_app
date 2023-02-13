import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  String questionText;
  Question(this.questionText, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
