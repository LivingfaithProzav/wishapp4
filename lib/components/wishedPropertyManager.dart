import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';

class WishedPropertyManager{
String url = 'https://www.my-json-server.typicode.com/LivingfaithProzav/wishapp/properties';
  Stream<int>  wishedPropertyCount() async* {
    
    var response = await http.get(Uri.encodeFull(url), headers:{"Accept": "application/json"});
    List users;

    var extractdata = json.decode(response.body);
    users = extractdata["users"];
    for (var i = 0; i < users.length; i++){
      await Future.delayed(Duration(seconds: 2));
      yield i++;
    }
   
}
final StreamController<int> _wishedPropertyCounter = StreamController<int>();
Stream<int> get wishedPropertyCounter => _wishedPropertyCounter.stream; 

}





class Wished extends StatefulWidget{
  @override
  _WishedState createState() => _WishedState();

}

class _WishedState extends State<Wished>{

final StreamController<int> _wishedPropertyCounter = StreamController<int>();
Stream<int> get wishedPropertyCounter => _wishedPropertyCounter.stream; 



 String url = 'https://www.my-json-server.typicode.com/LivingfaithProzav/wishapp/properties';
  Stream<int>  _wishedProperties() async* {
    
    var response = await http.get(Uri.encodeFull(url), headers:{"Accept": "application/json"});
    List users;

    var extractdata = json.decode(response.body);
    users = extractdata["users"];
    for (var i = 0; i < users.length; i++){
      await Future.delayed(Duration(seconds: 2));
      yield i++;
    }
    
    }
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Chip(
      label: StreamBuilder<int>(
      
      stream: _wishedProperties(),
      builder: (context, snapshot){
        return Text(
          "1", 
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        );
      },
            
          ),
          backgroundColor: Colors.red,
    );
        
      
  }
}
