import 'package:flutter/material.dart';
import '../data/contacts.dart';
import '../api/contactsApi.dart';

class ContactManager extends StatelessWidget{
  
  ContactManager({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      title: 'Contacts',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Contacts'),
        ),
        body: Container(
          child: FutureBuilder(
            future: fetchContact(),
            builder: (BuildContext context, AsyncSnapshot snapshot){
              if (snapshot.data == null){
                return Container(
                  child: Center(
                    child: Text('Loading...')
                    ),
                );
              } else {
                return ListView.builder(
                  itemCount: contacts.length,
                  itemBuilder: (BuildContext context, int index){
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                          snapshot.data[index].image
                        ),
                      ),
                      title: Text(snapshot.data[index].name),
                      subtitle: Text(snapshot.data[index].location),
                      onTap: (){
                        Navigator.push(context, 
                        new MaterialPageRoute(
                          builder: (context) => ContactDetailPage(snapshot.data[index]);
                        ),
                        );
                      },
                    );
                  },
                );
              }
            },
          ),
        ),
      ),
    );
  }
  
}


class ContactDetailPage extends StatelessWidget{
  final Contact contact;
  ContactDetailPage(this.contact);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(contact.firstName),

      ),
    );
  }
}