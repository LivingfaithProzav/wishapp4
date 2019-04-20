import 'package:flutter/material.dart';
import 'package:wishapp/screens/property_screen.dart';

class PropertyLink extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return RaisedButton(
      onPressed: ()
      {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Property()),
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
