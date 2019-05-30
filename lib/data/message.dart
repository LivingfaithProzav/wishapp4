import 'package:uuid/uuid.dart';

class Message {
  final Uuid messageId;
  final String name;
  final String text;
  final DateTime time;
  final String avatarUrl;
  final bool seen;
  final bool read;
  final List<String> images;

  Message(
      {this.messageId,
      this.name,
      this.text,
      this.time,
      this.avatarUrl,
      this.seen,
      this.read,
      this.images});

  factory Message.fromJson(Map<String, dynamic> messages) {
    return Message(
      messageId: messages['messageId'],
      name: messages['name'],
      text: messages['text'],
      time: messages[new DateTime.now()],
      avatarUrl: messages['avatarUrl'],
      seen: messages['seen'],
      read: messages['read'],
      images: messages['images'],
    );
  }

  Message message = Message(
    messageId: new Uuid(),
    name: 'A two bedroom bungalow',
    time: new DateTime.now(),
    avatarUrl: "/assets/profiles/img1.jpg",
    images: ["/assets/images/property1.jpg", '/assets/images/property2.jpg'],
    seen: true,
    read: false,
  );
}

List<Message> messageList = [
  new Message(
      name: 'Mark Ochoga',
      text: ' How are you doing?',
      time: new DateTime.now(),
      avatarUrl: 'assets/profiles/img2.jpg',
      seen: true,
      read: false,
      images: ['assets/images/property1.jpg', 'assets/images/property2.jpg']),
  new Message(
      name: 'Isa Mike',
      text: ' I am doing fine?',
      time: new DateTime.now(),
      avatarUrl: 'assets/profiles/img2.jpg',
      seen: true,
      read: false,
      images: ['assets/images/property1.jpg', 'assets/images/property2.jpg']),
  new Message(
      name: 'James ida',
      text: ' How about your job?',
      time: new DateTime.now(),
      avatarUrl: 'assets/profiles/img2.jpg',
      seen: true,
      read: false,
      images: ['assets/images/property1.jpg', 'assets/images/property2.jpg']),
  new Message(
      name: 'Musa Ochoga',
      text: ' My Job is doing great?',
      time: new DateTime.now(),
      avatarUrl: 'assets/profiles/img2.jpg',
      seen: true,
      read: false,
      images: ['assets/images/property1.jpg', 'assets/images/property2.jpg']),
  new Message(
      name: 'Mary Uche',
      text: ' Am going home now?',
      time: new DateTime.now(),
      avatarUrl: 'assets/profiles/img2.jpg',
      seen: true,
      read: false,
      images: ['assets/images/property1.jpg', 'assets/images/property2.jpg']),
  new Message(
      name: 'Mercy John',
      text: ' How about your son?',
      time: new DateTime.now(),
      avatarUrl: 'assets/profiles/img2.jpg',
      seen: true,
      read: false,
      images: ['assets/images/property1.jpg', 'assets/images/property2.jpg'])
];
