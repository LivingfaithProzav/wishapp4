import 'package:flutter/material.dart';


class Timestamp extends StatelessWidget {
  Timestamp(this.timestamp);

  final DateTime timestamp;

  /// This size could be calculated similarly to the way the text size in
  /// [Bubble] is calculated instead of using magic values.
  static final Size size = Size(60.0, 25.0);

  @override
  Widget build(BuildContext context) => Container(
    padding: EdgeInsets.all(3.0),
    decoration: BoxDecoration(
      color: Colors.greenAccent,
      border: Border.all(color: Colors.yellow),
    ),
    child:
    Text('${timestamp.hour}:${timestamp.minute}:${timestamp.second}'),
  );
}
