List<Contact> contacts = [];

class Contact{
  final int id;
  final String firstName;
  final String surName;
  final String avatar;
  final String location;
  final List<Object> sent;
  final String lastContacted;
  final String requestedNotice;
  final List<String> scheduledNotice;

  Contact({this.id, this.firstName, this.surName,
  this.avatar, this.location, this.lastContacted,
  this.sent, this.requestedNotice, this.scheduledNotice});

  factory Contact.fromJson(Map<String, dynamic> contacts){
      
      return Contact(id: contacts['id'], firstName: contacts['firstName'], 
      surName: contacts['surName'],avatar: contacts['avatar'],
      location: contacts['contacts'], lastContacted: contacts['lastContacted'], 
      sent: contacts['sent'], requestedNotice: contacts['requestedNotice'], 
      scheduledNotice: contacts['scheduledNotice']);



  }


}

