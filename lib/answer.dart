import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;
  const Answer(this.selectHandler, this.answerText, {super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.purple,
          shadowColor: Colors.green,
          side: BorderSide(
            width: 2,
            color: Colors.purpleAccent,
            style: BorderStyle.solid,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18)
          )
        ),
        onPressed: selectHandler,
        child: Text(
          answerText,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
        ),
      ),
    );
  }
}
