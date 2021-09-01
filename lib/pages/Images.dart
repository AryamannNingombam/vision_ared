import 'package:flutter/material.dart';
import 'package:vision_ared/services/Layout.dart';
import 'package:vision_ared/services/ScreenArguments.dart';


class Images extends StatelessWidget {

  static const URL = 'images/';

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context).settings.arguments as ScreenArguments;
    Text returnText(String s,String title){
      return Text('${title} : ${s}',style: TextStyle(color: Colors.white,
      fontWeight: FontWeight.bold,
        fontSize: 20
      ),);
    }

    Widget returnBody(){
      return Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            returnText(args.boards,"Boards"),
            returnText(args.class_,"Class"),
            returnText(args.subject.toString().split('.')[1],"Subject"),
            returnText(args.chapter,"Chapter"),
            returnText(args.subtopic,'Subtopic'),

          ],
        )
      );
    }

    return Layout(title:"Images",body:returnBody());
  }
}
