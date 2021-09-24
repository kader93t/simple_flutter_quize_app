import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final VoidCallback resetHandler;
  final int score;
  Result(this.resetHandler, this.score);
  String get getText {
    String text = "Done";
    if (score > 20) {
      text = 'You\'re Bad';
    } else if (score > 10) {
      text = 'You have a good soul';
    } else {
      text = 'You\'re innocent';
    }
    return text;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          getText,
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        ElevatedButton(onPressed: resetHandler, child: Text('Back'))
      ],
    ));
  }
}
