import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final Function resetQuiz;

  Result(this.score, this.resetQuiz);

  String get getScore {
    String scoreText;
    if (score <= 8) {
      scoreText = "Your score is less than or eqauls to 8";
    } else if (score <= 12) {
      scoreText = "Your score is more than 8 and less than or equals to 12";
    } else {
      scoreText = "Your score is higher than 16";
    }
    return scoreText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: <Widget>[
        Text(
          "You have completed the quiz. here is your result: " + getScore,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        FlatButton(
          child: Text('Restart quiz'),
          onPressed: resetQuiz,
          textColor: Colors.deepPurpleAccent,
        ),
      ]),
    );
  }
}
