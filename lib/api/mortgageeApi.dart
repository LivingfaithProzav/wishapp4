import 'package:http/http.dart' as http;
import 'dart:convert';
import '../data/mortgagee.dart';

Future<http.Response> postProperty(Mortgagee mortgagee) async {
  final response = await http.post(
    Uri.encodeFull(
        "https://www.my-json-server.typicode.com/LivingfaithProzav/wishapp/mortgagees.json"),
    headers: {"Accept": "application/json"},
    body: json.encode(mortgagee),
  );
  return response;
}

Future<http.Response> patchMortgagee(Mortgagee mortgagee) async {
  final response = await http.patch(
    Uri.encodeFull(
        "https://www.my-json-server.typicode.com/LivingfaithProzav/wishapp/mortgagees.json"),
    headers: {"Accept": "application/json"},
    body: json.encode(mortgagee),
  );
  return response;
}

Future<http.Response> deleteMortgagee(id) async {
  final response = await http.delete(
    Uri.encodeFull(
        "https://www.my-json-server.typicode.com/LivingfaithProzav/wishapp/mortgagees.json?id"),
  );
  return response;
}

//api for propertyList invoked by initialstate or re-invoked by setstate
Future<http.Response> fetchMyProperties(postedBy) async {
  final response = await http.get(
      Uri.encodeFull(
          "https://www.my-json-server.typicode.com/LivingfaithProzav/wishapp/mortgagees.json?postedBy={Mike}"),
      headers: {"Accept": "application/json"});
  Mortgagee.fromJson(json.decode(response.body));
  /* var returnData = json.decode(response.body);
         return data = returnData['properties']; */
  return null;
}

// fetch a selected property
Future<http.Response> fetchMortgagee(username, id) async {
  final response = await http.get(
      Uri.encodeFull(
          "https://www.my-json-server.typicode.com/LivingfaithProzav/wishapp/mortgagees.json?postedBy={Mike}&pid={id}"),
      headers: {"Accept": "application/json"});
  Mortgagee.fromJson(json.decode(response.body));
  /* var returnData = json.decode(response.body);
         return data = returnData['properties']; */
  return null;
}
