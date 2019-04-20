import 'package:flutter/material.dart';
import 'package:wishapp/components/user.dart';

class User extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Prozav - User',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: UserTabbedPage(),
    );
  }
}