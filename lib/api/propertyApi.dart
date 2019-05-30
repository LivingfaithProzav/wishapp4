import '../data/propertyList.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';



//api for property
fetchProperty() async {
    final response = await http.get(
        Uri.encodeFull('https://www.my-json-server.typicode.com/LivingfaithProzav/wishapp/property.json'),
        headers: {"Accept": "application/json"});
        Property.fromJson(json.decode(response.body));
         /* var returnData = json.decode(response.body);
         return data = returnData; */
         
  
  }
