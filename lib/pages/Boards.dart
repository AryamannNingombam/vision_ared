import 'package:flutter/material.dart';
import 'package:vision_ared/services/ScreenArguments.dart';
import "Class.dart";
import '../services/Layout.dart';

class Boards extends StatelessWidget {



  static const URL = 'boards/';
  @override
  Widget build(BuildContext context) {

    List<RaisedButton> returnBoards(){
      const List<String> allBoards = ['CBSE','ICSE','STATE'];
      List<RaisedButton> result = [];
      for (String board in allBoards){
        result.add(RaisedButton(
          color:  Layout.SecondaryColor,
          child: Text(board,style: TextStyle(color: Colors.white),),

          onPressed: () {
            //Navigate to boards
            Navigator.pushNamed(context,Class.URL,
            arguments: ScreenArguments(board),
            );
          },
        ));
      }
      return result;

    }
    Widget returnBody(){
      return Center(
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Choose your boards",style:TextStyle(
                fontSize: 30,
                color: Colors.white,
              fontWeight: FontWeight.bold,
            )),
            Column(
              children: returnBoards(),
            )

          ],
        )
      );
    }


    return Layout(title:"Boards",body:returnBody());
  }
}

    
    