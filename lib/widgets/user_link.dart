import 'package:flutter/material.dart';
import 'package:wishapp/screens/user_screen.dart';

class UserLink extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return RaisedButton(
      onPressed: ()
      {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => User()),
        );
      },
      textColor: Colors.white,
      padding: const EdgeInsets.all(0.0),
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: <Color>[Colors.red, Colors.green, Colors.blue],
          ),


        ),

      ),
    );
  }
}
