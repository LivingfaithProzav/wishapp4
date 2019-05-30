import 'package:uuid/uuid.dart';

class Comment {
  final Uuid commentId;
  final String name;
  final String text;
  final DateTime time;
  final String avatarUrl;
  final bool seen;
  final bool read;
  final List<String> images;

  Comment(
      {this.commentId,
      this.name,
      this.text,
      this.time,
      this.avatarUrl,
      this.seen,
      this.read,
      this.images});

  factory Comment.fromJson(Map<String, dynamic> comments) {
    return Comment(
      commentId: comments['commentId'],
      name: comments['name'],
      text: comments['text'],
      time: comments[new DateTime.now()],
      avatarUrl: comments['avatarUrl'],
      seen: comments['seen'],
      read: comments['read'],
      images: comments['images'],
    );
  }

  Comment comment = Comment(
    commentId: new Uuid(),
    name: 'A two bedroom bungalow',
    time: new DateTime.now(),
    avatarUrl: "/assets/profiles/img1.jpg",
    images: ["/assets/images/property1.jpg", '/assets/images/property2.jpg'],
    seen: true,
    read: false,
  );
}

List<Comment> commentList = [
  new Comment(
      name: 'Mark Ochoga',
      text: ' How are you doing?',
      time: new DateTime.now(),
      avatarUrl: 'assets/profiles/img2.jpg',
      seen: true,
      read: false,
      images: ['assets/images/property1.jpg', 'assets/images/property2.jpg']),
  new Comment(
      name: 'Isa Mike',
      text: ' I am doing fine?',
      time: new DateTime.now(),
      avatarUrl: 'assets/profiles/img2.jpg',
      seen: true,
      read: false,
      images: ['assets/images/property1.jpg', 'assets/images/property2.jpg']),
  new Comment(
      name: 'James ida',
      text: ' How about your job?',
      time: new DateTime.now(),
      avatarUrl: 'assets/profiles/img2.jpg',
      seen: true,
      read: false,
      images: ['assets/images/property1.jpg', 'assets/images/property2.jpg']),
  new Comment(
      name: 'Musa Ochoga',
      text: ' My Job is doing great?',
      time: new DateTime.now(),
      avatarUrl: 'assets/profiles/img2.jpg',
      seen: true,
      read: false,
      images: ['assets/images/property1.jpg', 'assets/images/property2.jpg']),
  new Comment(
      name: 'Mary Uche',
      text: ' Am going home now?',
      time: new DateTime.now(),
      avatarUrl: 'assets/profiles/img2.jpg',
      seen: true,
      read: false,
      images: ['assets/images/property1.jpg', 'assets/images/property2.jpg']),
  new Comment(
      name: 'Mercy John',
      text: ' How about your son?',
      time: new DateTime.now(),
      avatarUrl: 'assets/profiles/img2.jpg',
      seen: true,
      read: false,
      images: ['assets/images/property1.jpg', 'assets/images/property2.jpg'])
];
