import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;
  Result(
    this.resultScore,
    this.resetHandler,
  );

  String get resultPhrase {
    // var resultText = "You did It";
    if (resultScore <= 20) {
      return "Unsatisfied";
    } else if (resultScore <= 30) {
      return "Very Good";
    } else if (resultScore <= 40) {
      return "Excellent";
    }
    return "Outstanding";
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              maxRadius: 55,
              child: CircleAvatar(
                maxRadius: 50,
                  backgroundColor:Colors.white,
                  child: Text(
                resultScore.toString(),
                style: TextStyle(fontSize: 40, color: Colors.black, fontWeight: FontWeight.bold),
              )),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Your Score!!",
              style: TextStyle(fontSize: 28),
            ),
            SizedBox(
              height: 150,
            ),
            Text(
              resultPhrase,
              style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
            ),
            TextButton(
                onPressed: resetHandler,
                child: Text(
                  "Reset",
                  style: TextStyle(fontSize: 20),
                ))
          ],
        ),
      ),
    );
  }
}
