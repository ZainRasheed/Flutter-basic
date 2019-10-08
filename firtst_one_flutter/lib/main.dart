import 'package:flutter/material.dart';

//void main(){
//  runApp(FirstApp());
//}

void main() => runApp(FirstApp());

class FirstApp extends StatelessWidget{
  @override
  Widget build(  context) {
    // TODO: implement build
//    return MaterialApp(home: Text('Hello!'),);
    return MaterialApp(home: Scaffold(
      appBar: AppBar(
        title: Text("My first app"),
      ),
      body: Text("This the body tetx"),
    ),);
  }

}