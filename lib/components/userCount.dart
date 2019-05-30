import 'package:flutter/material.dart';

class UserCount extends StatefulWidget{
  UserCount ({Key key}) : super(key: key);

  
  @override
  _UserCountState createState() => _UserCountState();

}


class _UserCountState extends State<UserCount>{
  // futureBuilder that returns increment in users
 
@override
  void initState() {
    super.initState();
    this._getUserCount();
  }


  Future<int> _getUserCount() async {
    
    var data = await http.get("https://www.my-json-server.typicode.com/LivingfaithProzav/wishapp/properties");
    var jsonData = json.decode(data.body);

    int userCount = jsonData.length;

    return userCount;

    setState(() {
     var updateUserCount = userCount; 
    });

}



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return null;
  }

}
