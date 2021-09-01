import 'package:flutter/material.dart';
import 'package:vision_ared/pages/Subject.dart';
import '../services/Layout.dart';
import '../services/ScreenArguments.dart';


class Class extends StatelessWidget {

  static const URL = 'class/';
  dynamic previousData;
  Class({this.previousData});


  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context).settings.arguments as ScreenArguments;

    List<RaisedButton> returnClasses(){
      const List<String> allClasses = ['6','7','8','9','10'];
      List<RaisedButton> result = [];
      for (String class_ in allClasses){
        result.add(RaisedButton(
          color:  Layout.SecondaryColor,
          child: Text(class_,style: TextStyle(color: Colors.white),),

          onPressed: () {
          //navigate to subject;
            args.class_ = class_;
            Navigator.pushNamed(context, Subject.URL,
            arguments: args);
          },
        ));
      }
      return result;

    }
    Widget returnBody(){
      return Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Choose your class",style:TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            )),
            Column(
              children: returnClasses(),
            )
          ],
        )
      );
    }


    return Layout(title:"Class",body :returnBody());
  }
}