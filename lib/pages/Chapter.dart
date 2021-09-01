import 'package:flutter/material.dart';
import 'package:vision_ared/pages/Subtopic.dart';
import 'package:vision_ared/services/Data.dart';
import 'package:vision_ared/services/Layout.dart';
import 'package:vision_ared/services/ScreenArguments.dart';

class Chapter extends StatelessWidget {

  static const URL = 'chapter/';

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context).settings.arguments as ScreenArguments;
    List<String> allChapters;
    if (args.subject == Subjects.Physics){
      allChapters = PhysicsChapters;
    }else if (args.subject == Subjects.Chemistry){
      allChapters = ChemistryChapters;
    }else if (args.subject == Subjects.Biology){
      allChapters = BiologyChapters;
    }

    List<RaisedButton> returnChapters(){

      List<RaisedButton> result = [];
      for (String chapter in allChapters){
        result.add(RaisedButton(
          color:  Layout.SecondaryColor,
          child: Text(chapter,style: TextStyle(color: Colors.white),),

          onPressed: () {
            //Navigate to boards
            args.chapter = chapter;
            Navigator.pushNamed(context,Subtopic.URL,
              arguments: args
            );
          },
        ));
      }
      return result;

    }

    Widget returnBody(){
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Choose your chapter",style:TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            )),
            Column(
              children: returnChapters(),
            )
          ],
        ),
      );
    }


    return Layout(title:"Chapter",body:returnBody());
  }
}
