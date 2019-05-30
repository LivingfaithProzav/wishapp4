import '../data/propertyList.dart' show Property;
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../data/myProperty.dart';

Future<http.Response> postProperty(Property property) async {
  final response = await http.post(
    Uri.encodeFull(
        "https://www.my-json-server.typicode.com/LivingfaithProzav/wishapp/properties.json"),
    headers: {"Accept": "application/json"},
    body: json.encode(property),
  );
  return response;
}

Future<http.Response> patchProperty(Property property) async {
  final response = await http.patch(
    Uri.encodeFull(
        "https://www.my-json-server.typicode.com/LivingfaithProzav/wishapp/properties.json"),
    headers: {"Accept": "application/json"},
    body: json.encode(property),
  );
  return response;
}

Future<http.Response> deleteProperty(id) async {
  final response = await http.delete(
    Uri.encodeFull(
        "https://www.my-json-server.typicode.com/LivingfaithProzav/wishapp/properties.json?id"),
  );
  return response;
}

//api for propertyList invoked by initialstate or re-invoked by setstate
Future<http.Response> fetchProperties() async {
  final response = await http.get(
      Uri.encodeFull(
          "https://www.my-json-server.typicode.com/LivingfaithProzav/wishapp/properties.json"),
      headers: {"Accept": "application/json"});
  Property.fromJson(json.decode(response.body));
  /* var returnData = json.decode(response.body);
         return data = returnData['properties']; */
  return null;
}

//api for propertyList invoked by initialstate or re-invoked by setstate
Future<http.Response> fetchMyProperties(postedBy) async {
  final response = await http.get(
      Uri.encodeFull(
          "https://www.my-json-server.typicode.com/LivingfaithProzav/wishapp/properties.json?postedBy={Mike}"),
      headers: {"Accept": "application/json"});
  MyProperty.fromJson(json.decode(response.body));
  /* var returnData = json.decode(response.body);
         return data = returnData['properties']; */
  return null;
}

// fetch a selected property
Future<http.Response> fetchMyProperty(username, id) async {
  final response = await http.get(
      Uri.encodeFull(
          "https://www.my-json-server.typicode.com/LivingfaithProzav/wishapp/properties.json?postedBy={Mike}&pid={id}"),
      headers: {"Accept": "application/json"});
  Property.fromJson(json.decode(response.body));
  /* var returnData = json.decode(response.body);
         return data = returnData['properties']; */
  return null;
}
