import 'package:flutter/material.dart';

void main(){
 runApp(MyApp()); //flutter code. Instantiate a MyApp() class
}

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState(); // () indicates an OBJECT
  }
}

class MyAppState extends State<MyApp>{

  var questionIndex = 0;

  void answerQuestion() {
    setState((){
      questionIndex = questionIndex + 1;
    });
    print("hello");
  }

  @override
  Widget build(BuildContext context ){
    var questions = ["What is your favourite colour?", "What is your favourite animal?"];

    return MaterialApp(home: Scaffold(
      appBar: AppBar(title: Text("My first App"),),
      body: Column(children: [
        Text(questions[questionIndex]),
        RaisedButton(child: Text("Answer 1"), onPressed: answerQuestion,),
        RaisedButton(child: Text("Answer 2"), onPressed: () => print("Answer 2 chosen"),),
        RaisedButton(child: Text("Answer 3"), onPressed: () {print("hello world"); print("Answer 3 chosen");},),
      ],),
    ),);
  }

}
