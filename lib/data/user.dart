import 'package:uuid/uuid.dart';

class User {
  final Uuid userId;
  final String username;
  final String firstName;
  final String surName;
  final DateTime joinedOn;
  final String gender;
  final DateTime lastLoggedIn;
  final String religion;
  final List<String> groups;
  final String image;
  final List<String> wishedTo;
  final List<String> wished;

  User(
      {this.userId,
      this.firstName,
      this.gender,
      this.groups,
      this.joinedOn,
      this.lastLoggedIn,
      this.religion,
      this.surName,
      this.username,
      this.image,
      this.wished,
      this.wishedTo});

  factory User.fromJson(Map<String, dynamic> users) {
    return User(
        userId: users['userId'],
        username: users['username'],
        firstName: users['firstName'],
        surName: users['surName'],
        gender: users['gender'],
        joinedOn: users['joinedOn'],
        religion: users['religion'],
        lastLoggedIn: users[new DateTime.now()],
        image: users['image'],
        groups: users['groups'],
        wishedTo: users['wishedTo'],
        wished: users['wished']);
  }

  User user = User(
      userId: new Uuid(),
      username: 'A two bedroom bungalow',
      firstName: '18 Aso Drive, Maitama, Abuja',
      surName: 'Mark Ochoga',
      joinedOn: new DateTime.now(),
      lastLoggedIn: new DateTime.now(),
      gender: '',
      image: "/assets/profiles/img1.jpg",
      religion: 'verified',
      wishedTo: ['wishedBy'],
      wished: ['wished']);
}
