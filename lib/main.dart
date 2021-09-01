import 'package:flutter/material.dart';
import 'pages/Home.dart';
import 'pages/Boards.dart';
import 'pages/Chapter.dart';
import 'pages/Class.dart';
import 'pages/Images.dart';
import 'pages/Subject.dart';
import 'pages/Subtopic.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      
      routes: {
        Home.URL : (context)=>Home(),
         Boards.URL : (context)=>Boards(),
        Chapter.URL : (context)=>Chapter(),
        Class.URL : (context)=>Class(),
        Images.URL : (context)=>Images(),
        Subject.URL : (context)=>Subject(),
    Subtopic.URL : (context)=>Subtopic(),
      },
      initialRoute: Home.URL,
    );
  }
}
