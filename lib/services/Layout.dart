import 'package:flutter/material.dart';



class Layout extends StatelessWidget {
  String title;
  Widget body;

  Layout({this.title,this.body});
  static const Color SecondaryColor = Color(0xff025D59);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff313131),
      appBar: AppBar(
        backgroundColor: SecondaryColor,
        title: Text(this.title,style:TextStyle(
            color: Colors.white
        ),),
        centerTitle: true,

      ),
      body: this.body
    );
  }
}
