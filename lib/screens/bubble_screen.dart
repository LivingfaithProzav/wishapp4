import 'package:flutter/material.dart';
import 'package:wishapp/components/speech_bubble.dart';

class BubbleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade50,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: .9,
        title: Text(
          'Putra',
          style: TextStyle(color: Colors.green),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.green,
          ),
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.videocam,
              color: Colors.green,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.call,
              color: Colors.green,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.more_vert,
              color: Colors.green,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Bubble(
              message: 'Hi there, this is a message',
              time: '12:00',
              delivered: true,
              isMe: false,
            ),
            Bubble(
              message: 'Whatsapp like bubble talk',
              time: '12:01',
              delivered: true,
              isMe: false,
            ),
            Bubble(
              message: 'Nice one, Flutter is awesome',
              time: '12:00',
              delivered: true,
              isMe: true,
            ),
            Bubble(
              message: 'I\'ve told you so dude!',
              time: '12:00',
              delivered: true,
              isMe: false,
            ),
          ],
        ),
      ),
    );
  }
}
