import 'package:flutter/material.dart';
import 'package:wishapp/components/property_tab.dart';

class Property extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Property',
      theme: ThemeData(
        primaryColor: Colors.green,
        primaryIconTheme: IconThemeData(color: Colors.green),
        primaryTextTheme: TextTheme(title: TextStyle(color:Colors.green)),

      ),
      home: PropertyTabbedPage(),
    );
  }
}
