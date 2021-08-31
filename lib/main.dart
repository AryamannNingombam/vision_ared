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
        'home/' : (context)=>Home(),
         'boards/' : (context)=>Boards(),
        'chapter/' : (context)=>Chapter(),
        'class/' : (context)=>Class(),
        'images/' : (context)=>Images(),
        'subject/' : (context)=>Subject(),
    'subtopic/' : (context)=>Subtopic(),
      },
      initialRoute: 'home/',
    );
  }
}
