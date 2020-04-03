import 'package:flutter/material.dart';

class Question extends StatelessWidget{

  final String questionText; // declare type here since we dont initialise the value therefore no type inference can occur

//  Question(questionText){
//    this.questionText = questionText;
//  }

  Question(this.questionText);

  @override
  Widget build(BuildContext context ){
    return Text(
      questionText,
      style: TextStyle(fontSize: 28),
      textAlign: TextAlign.center,
    );
  }
}