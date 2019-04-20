

class MessageModel {
  final String name;
  final String message;
  final String time;
  final String avatarUrl;

  MessageModel({this.name, this.message, this.time, this.avatarUrl});
}
  List<MessageModel> dummyData = [
    new MessageModel(
    name: 'Mark Ochoga',
      message: ' How are you doing?',
      time: '15:30',
      avatarUrl: 'assets/images/property1.jpg'
    ),
    new MessageModel(
        name: 'Isa Mike',
        message: ' I am doing fine?',
        time: '15:50',
        avatarUrl: 'assets/images/property1.jpg'
    ),
    new MessageModel(
        name: 'James ida',
        message: ' How about your job?',
        time: '15:59',
        avatarUrl: 'assets/images/property1.jpg'
    ),
    new MessageModel(
        name: 'Musa Ochoga',
        message: ' My Job is doing great?',
        time: '16:30',
        avatarUrl: 'assets/images/property1.jpg'
    ),
    new MessageModel(
        name: 'Mary Uche',
        message: ' Am going home now?',
        time: '16:40',
        avatarUrl: 'assets/images/property1.jpg'
    ),
    new MessageModel(
        name: 'Mercy John',
        message: ' How about your son?',
        time: '17:30',
        avatarUrl: 'assets/images/property1.jpg'
    )
  ];
