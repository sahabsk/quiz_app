import 'package:flutter/material.dart';
import 'package:quiz_app/answer.dart';
import 'package:quiz_app/questions.dart';
import 'package:quiz_app/result.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final questions = const [
    {
      "questionText": "Country with maximum number of FIFA Trophy?",
      "answers": [
        {"text": "Brazil", "Score": 10},
        {"text": "Germany", "Score": 0},
        {"text": "Argentina", "Score": 0},
        {"text": "Itly", "Score": 0}
      ]
    },
    {
      "questionText": "Which sport is more popular?",
      "answers": [
        {"text": "Cricket", "Score": 0},
        {"text": "Football", "Score": 10},
        {"text": "Hokey", "Score": 0},
        {"text": "Basketball", "Score": 10}
      ]
    },
    {
      "questionText": "Which country win the FIFA World Cup 2022?",
      "answers": [
        {"text": "Australia", "Score": 0},
        {"text": "France", "Score": 0},
        {"text": "Argentina", "Score": 10},
        {"text": "Portugal", "Score": 0}
      ]
    },
    {
      "questionText": "Which one is Capital of South Africa",
      "answers": [
        {"text": "CapeTown", "Score": 10},
        {"text": "Paris", "Score": 0},
        {"text": "Bangalore", "Score": 0},
        {"text": "Sydney", "Score": 0}
      ]
    },
    {
      "questionText": "Next ICC Cricket World Cup held in Country?",
      "answers": [
        {"text": "Australia", "Score": 0},
        {"text": "India", "Score": 10},
        {"text": "England", "Score": 0},
        {"text": "New Zealand", "Score": 0}
      ]
    },
  ];
  int _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    setState(() {
      _questionIndex = _questionIndex + 1;
      _totalScore += score;
    });
    print(_questionIndex);
    if (_questionIndex < questions.length) {
      print("More questions");
    } else {
      print("No more questions");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quiz App"),
        centerTitle: true,
      ),
      body: _questionIndex < questions.length
          ? Column(
              children: [
                Question(
                  questions[_questionIndex]["questionText"] as String,
                ),
                ...(questions[_questionIndex]["answers"]
                        as List<Map<String, dynamic>>)
                    .map((answer) {
                  return Answer(() => _answerQuestion(answer["Score"]),
                      answer["text"] as String);
                }).toList(),
              ],
            )
          : Result(_totalScore, _resetQuiz),
    );
  }
}
