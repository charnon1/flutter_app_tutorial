import 'package:flutter/material.dart';

import "./quiz.dart";
import "./result.dart";

void main(){
 runApp(MyApp()); //flutter code. Instantiate a MyApp() class
}

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState(); // () indicates an OBJECT
  }
}

class _MyAppState extends State<MyApp>{

  final _questions = const [ // compiled time constant. final is primarily used for runtime constant
    { "questionText": "What is your favourite colour?",
      "answers": [{"text":"Black", "score":10}, {"text":"Blue", "scrore":5}, {"text":"Red", "score":3}, {"text":"white","score":1}],
    },
    { "questionText":  "What is your favourite animal?",
      "answers": [{"text":"Dog","score":10}, {"text":"Cat","score":5}, {"text":"Fish","score":3}, {"text":"Kangaroo","score":1}],
    },
    { "questionText":  "Who is your instructor?",
      "answers": [{"text":"Max","score":10}, {"text":"Matt","score":5}, {"text":"Maxine","score":3}, {"text":"Maximus","score":1}],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0 ;

  void _resetQuiz(){
    setState((){
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {

    _totalScore += score;

    setState((){
      _questionIndex = _questionIndex + 1;
    });

    if (_questionIndex < _questions.length){
      print("we have no questions");
    }

  }

  @override
  Widget build(BuildContext context ){

    return MaterialApp(home: Scaffold(
      appBar: AppBar(title: Text("My first App"),),
      body: _questionIndex < _questions.length ? Quiz(_questions, _questionIndex, _answerQuestion) : Result(_totalScore, _resetQuiz),
    ),);
  }

}
