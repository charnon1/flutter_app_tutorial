import 'package:flutter/material.dart';

void main(){
 runApp(MyApp()); //flutter code. Instantiate a MyApp() class
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context ){
    return MaterialApp(home: Scaffold(
      appBar: AppBar(title: Text("My first App"),),
      body: Text("This is my default text"),
    ),);
  }

}