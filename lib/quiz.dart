import 'package:flutter/material.dart';
import 'package:flutter_course/question.dart';

import 'answer.dart';

class Quize extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int answerIndex;
  final Function answerPressed;

  Quize(
      {required this.answerIndex,
      required this.questions,
      required this.answerPressed});

  @override
  Widget build(BuildContext context) {
    print('${answerIndex} --- ${questions[answerIndex]['question']}');
    return Column(
      children: [
        Question(
          questionText: questions[answerIndex]['question'],
        ),
        ...(questions[answerIndex]['answer'] as List<Map<String, Object>>)
            .map((answer) => Answer(() => answerPressed(answer['score']),
                answer['text']! as String))
            .toList(),
      ],
    );
  }
}
