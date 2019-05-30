import 'package:http/http.dart' as http;
import 'dart:convert';
import '../data/contacts.dart';


//api for contactList  
  fetchContact() async {
    final String url = 'https://www.my-json-server.typicode.com/LivingfaithProzav/wishapp/properties.json';
    final response = await http.get(
      Uri.encodeFull(url),
        headers: {"Accept": "application/json"}
        );
 
     Contact.fromJson(json.decode(response.body));
    
  }