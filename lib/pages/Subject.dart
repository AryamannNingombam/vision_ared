import 'package:flutter/material.dart';
import 'package:vision_ared/pages/Chapter.dart';
import 'package:vision_ared/services/Layout.dart';
import '../services/ScreenArguments.dart';
import '../services/Data.dart';

class Subject extends StatelessWidget {


  static const URL = 'subject/';


  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context).settings.arguments as ScreenArguments;

    List<RaisedButton> returnSubject(){
      List<Subjects> allSubjects = [Subjects.Biology,Subjects.Chemistry,Subjects.Physics];
      List<RaisedButton> result = [];
      for (Subjects subject in allSubjects){
        String sub = subject.toString();
        sub = sub.split('.')[1];

        result.add(RaisedButton(
          color:  Layout.SecondaryColor,
          child: Text(sub,style: TextStyle(color: Colors.white),),

          onPressed: () {
            //Navigate to chapter;
            args.subject = subject;
            Navigator.pushNamed(context,Chapter.URL,
              arguments: args
            );
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
            Text("Choose your Subject",style:TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            )),
            SizedBox(height: 20,),
            Column(
              children:returnSubject(),
            )
          ],
        )
      );
    }

    return Layout(title:"Subject",body: returnBody(),);
  }
}

    
    