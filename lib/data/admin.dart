import 'package:uuid/uuid.dart';

class Admin {
  final Uuid adminId;
  final int adminLevel;
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

  Admin(
      {this.adminId,
      this.adminLevel,
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

  factory Admin.fromJson(Map<String, dynamic> admins) {
    return Admin(
        adminId: admins['adminId'],
        adminLevel: admins['adminLevel'],
        username: admins['username'],
        firstName: admins['firstName'],
        surName: admins['surName'],
        gender: admins['gender'],
        joinedOn: admins['joinedOn'],
        religion: admins['religion'],
        lastLoggedIn: admins[new DateTime.now()],
        image: admins['image'],
        groups: admins['groups'],
        wishedTo: admins['wishedTo'],
        wished: admins['wished'],
        requestedNotice: admins['requstedNotice'],
        scheduledNotice: admins['scheduledNotice']);
  }

  Admin admin = Admin(
      adminId: new Uuid(),
      adminLevel: 1,
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
