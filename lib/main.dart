import 'package:flutter/material.dart';
import './result.dart';
import './quiz.dart';

class Hello extends StatefulWidget {
  @override
  _HelloState createState() => _HelloState();
}

class _HelloState extends State<Hello> {
  int answerIndex = 0;
  int score = 0;
  var questions = [
    {
      'question': 'What\'s your favorite animal ',
      'answer': [
        {'text': 'Dog', 'score': 5},
        {'text': 'Cat', 'score': 3},
        {'text': 'Hors', 'score': 7},
        {'text': 'No one', 'score': 10},
      ],
    },
    {
      'question': 'What\'s your favorit color',
      'answer': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 7},
        {'text': 'Blue', 'score': 6},
        {'text': 'Green', 'score': 4},
        {'text': 'Yellow', 'score': 2},
        {'text': 'White', 'score': 1},
      ]
    },
    {
      'question': 'What\'s your favorit techonology',
      'answer': [
        {'text': 'Flutter', 'score': 4},
        {'text': 'React Native', 'score': 7},
        {'text': 'Ionic', 'score': 10},
      ]
    }
  ];

  void answerPressed(int score) {
    if (questions.length > answerIndex) {
      this.score += score;

      setState(() {
        answerIndex += 1;
      });
    }
  }

  void handleReset() {
    score = 0;
    setState(() {
      answerIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Welcom :)'),
      ),
      body: answerIndex < questions.length
          ? Quize(
              answerIndex: answerIndex,
              questions: questions,
              answerPressed: answerPressed)
          : Result(handleReset, score),
    ));
  }
}

void main() {
  runApp(Hello());
}
