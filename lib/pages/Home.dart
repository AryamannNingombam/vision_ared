import 'package:flutter/material.dart';
import '../services/Layout.dart';


class Home extends StatelessWidget {





  static const URL = 'home/';
  @override
  Widget build(BuildContext context) {
    Widget returnBody ()=>Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Welcome",style:TextStyle(
              fontSize: 70,
              color: Colors.white
          )),
          RaisedButton(
            color:  Layout.SecondaryColor,
            child: Text('Start',style: TextStyle(color: Colors.white),),

            onPressed: () {
              //Navigate to Screen 1
              Navigator.pushNamed(context, 'boards/');
            },
          )
        ],
      ),
    );
    return Layout(body:returnBody(),title:"Home");

  }
}
