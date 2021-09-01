import 'package:flutter/material.dart';
import 'package:vision_ared/pages/Images.dart';
import 'package:vision_ared/services/Layout.dart';
import 'package:vision_ared/services/ScreenArguments.dart';


class Subtopic extends StatelessWidget {

  static const URL = 'subtopic/';

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context).settings.arguments as ScreenArguments;
    List<RaisedButton> returnSubtopics(){
      const List<String> subtopics = ['subtopic1','subtopic2','subtopic3'];
      List<RaisedButton> result = [];
      for (String subtopic in subtopics){
        result.add(RaisedButton(
          color:  Layout.SecondaryColor,
          child: Text(subtopic,style: TextStyle(color: Colors.white),),

          onPressed: () {
            //Navigate to images
            args.subtopic = subtopic;
            Navigator.pushNamed(context,Images.URL,
                arguments: args
            );
          },
        ));
      }
      return result;
    }

    Widget returnBody(){
      return Center(
        child : Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Choose your subtopic",style:TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            )),
            SizedBox(height:20),
            Column(
              children: returnSubtopics(),
            )
          ],
        )
      );
    }


    return Layout(title:"Subtopic",body:returnBody());
  }
}
