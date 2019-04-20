import 'package:flutter/material.dart';

class PropertyData extends StatelessWidget{
  final topText = Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Text(
        'Properties Views',
        style: new TextStyle(fontWeight: FontWeight.bold)
      ),
      new Row(
        children: <Widget>[
          new Icon(Icons.play_arrow),
          new Text('View All', style: TextStyle(fontWeight: FontWeight.bold))
        ],
      ),
    ],
  );
  final propertyViews = Expanded(
    child: Padding(
      padding: const EdgeInsets.only(top: 8.0),
    child: new ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 5,
      itemBuilder: (context, index) => new Stack(
        alignment: Alignment.bottomRight,
        children: <Widget>[
          new Container(
            width: 60.0,
            height: 60.0,
            decoration: new BoxDecoration(
              shape: BoxShape.circle,
              image: new DecorationImage(
                fit: BoxFit.fill,
                image: new AssetImage('assets/images/property1.jpg'),
              ),
            ),
            margin: const EdgeInsets.symmetric(horizontal:8.0),
          ),
          index == 0 ? Positioned(
            right: 10.0,
            child: CircleAvatar(
                backgroundColor: Colors.blueAccent,
              radius: 10.0,
              child: new Icon(Icons.add, size: 14.0, color: Colors.white,),
            ),

          )
              : new Container()
        ],
      )
    ),
  ),
  );

  @override
  Widget build(BuildContext context){
    return new Container(
      margin: const EdgeInsets.all(16.0),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        topText,
        propertyViews,
      ],
    ),
    );
  }
}
