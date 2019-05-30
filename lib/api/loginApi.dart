
import '../data/propertyList.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


Future<http.Response> postProperty(Property property) async{
  final response = await http.post(
    Uri.encodeFull('https://www.my-json-server.typicode.com/LivingfaithProzav/wishapp/properties.json'),
        headers: {"Accept": "application/json"},
      body: json.encode(property),
  );
  return response;
}

Future<http.Response> patchProperty(Property property) async{
  final response = await http.patch(
    Uri.encodeFull('https://www.my-json-server.typicode.com/LivingfaithProzav/wishapp/properties.json'),
        headers: {"Accept": "application/json"},
      body: json.encode(property),
  );
  return response;
}


Future<http.Response> deleteProperty(Property property) async{
  final response = await http.delete(
    Uri.encodeFull('https://www.my-json-server.typicode.com/LivingfaithProzav/wishapp/properties.json'),
        );
  return response;
}
//api for propertyList
fetchProperty() async {
    final response = await http.get(
        Uri.encodeFull('https://www.my-json-server.typicode.com/LivingfaithProzav/wishapp/properties.json'),
        headers: {"Accept": "application/json"});
        Property.fromJson(json.decode(response.body));
         /* var returnData = json.decode(response.body);
         return data = returnData['properties']; */
         
  
  }


