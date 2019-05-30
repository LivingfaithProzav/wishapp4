import 'package:uuid/uuid.dart';

class Agent {
  final Uuid agentId;
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
  final List<String> requestedNotice;
  final List<String> scheduledNotice;

  Agent(
      {this.agentId,
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
      this.wishedTo,
      this.requestedNotice,
      this.scheduledNotice});

  factory Agent.fromJson(Map<String, dynamic> agents) {
    return Agent(
        agentId: agents['agentId'],
        username: agents['username'],
        firstName: agents['firstName'],
        surName: agents['surName'],
        gender: agents['gender'],
        joinedOn: agents['joinedOn'],
        religion: agents['religion'],
        lastLoggedIn: agents[new DateTime.now()],
        image: agents['image'],
        groups: agents['groups'],
        wishedTo: agents['wishedTo'],
        wished: agents['wished'],
        requestedNotice: agents['requstedNotice'],
        scheduledNotice: agents['scheduledNotice']);
  }

  Agent agent = Agent(
      agentId: new Uuid(),
      username: 'A two bedroom bungalow',
      firstName: '18 Aso Drive, Maitama, Abuja',
      surName: 'Mark Ochoga',
      joinedOn: new DateTime.now(),
      lastLoggedIn: new DateTime.now(),
      gender: '',
      image: "/assets/profiles/img1.jpg",
      religion: 'verified',
      wishedTo: ['wishedBy'],
      wished: ['wished'],
      requestedNotice: [''],
      scheduledNotice: ['']);
}
