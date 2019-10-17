import 'package:firtst_one_flutter/question.dart';
import 'package:flutter/material.dart';

//void main(){
//  runApp(FirstApp());
//}

void main() => runApp(FirstApp());

class FirstApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FirstAppState();
  }


}
class _FirstAppState extends State<FirstApp>{
  var _questionIndex = 0;

/*  void answerToQuestion1(){
    _questionIndex++;
    print("You are of type 1");
  }
  void answerToQuestion2(){
    print("You are of type 2");
  }
  void answerToQuestion3(){
    print("You are of type 3");
  }*/

  void answerToQuestion1(){
    setState(() {
      _questionIndex = ++_questionIndex%3;
      print("You are of type 1");
    });
  }
  void answerToQuestion2(){
    setState(() {
      _questionIndex++;
      print("You are of type2");
    });
  }
  void answerToQuestion3(){
    setState(() {
      _questionIndex++;
      print("You are of type 3");
    });
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
            Question(questions.elementAt(_questionIndex)),
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


