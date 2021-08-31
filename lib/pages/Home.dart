import 'package:flutter/material.dart';

class Home extends StatelessWidget {

  Color SecondaryColor = Color(0xff025D59);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff313131),
      appBar: AppBar(
        backgroundColor: SecondaryColor,
        title: Text("Home",style:TextStyle(
          color: Colors.white
        ),),
        centerTitle: true,

      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Welcome",style:TextStyle(
              fontSize: 70,
              color: Colors.white
            )),
            RaisedButton(
              color:  SecondaryColor,
              child: Text('Start',style: TextStyle(color: Colors.white),),

              onPressed: () {
                //Navigate to Screen 1
                Navigator.pushNamed(context, 'boards/');
              },
            )
          ],
        ),
      ),
    );
  }
}
