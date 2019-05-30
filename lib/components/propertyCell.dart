import 'package:flutter/material.dart';

class PropertyCell extends StatelessWidget {
  final property;
  PropertyCell(this.property);

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new Container(
          padding: new EdgeInsets.all(16.0),
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Image.network(property['postedBy']),
              new Container(
                height: 8.0,
              ),
              new Text(
                property['description'],
                style:
                    new TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        new Divider(),
      ],
    );
  }
}
