import 'package:flutter/material.dart';

void main(){
 runApp(MyApp()); //flutter code. Instantiate a MyApp() class
}

class MyApp extends StatelessWidget {

  @override
  build(BuildContext context ){
    return MaterialApp(home: Text("Home"),);
  }

}