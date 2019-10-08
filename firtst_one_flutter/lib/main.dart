import 'package:flutter/material.dart';

//void main(){
//  runApp(FirstApp());
//}

void main() => runApp(FirstApp());

class FirstApp extends StatelessWidget {

  void answerToQuestion1(){
    print("You are of type 1");
  }
  void answerToQuestion2(){
    print("You are of type 2");
  }
  void answerToQuestion3(){
    print("You are of type 3");
  }

  @override
  Widget build(BuildContext context) {
//    return MaterialApp(home: Text('Hello!'),);

    var questions = [
      "What is your fav colour?",
      "What is your Fav season",
      "What is your fav movie?"
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My first app"),
        ),
        body: Column(
          children: <Widget>[
            Text(questions[0]),
            RaisedButton(
              child: Text("Answer 1"),
              onPressed: answerToQuestion1,
            ),
            RaisedButton(
              child: Text("Answer 2"),
              onPressed: answerToQuestion2,
            ),
            RaisedButton(
              child: Text("Answer 3"),
              onPressed: answerToQuestion3,
            ),
          ],
        ),
      ),
    );
  }
}
