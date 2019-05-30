import 'package:http/http.dart' as http;
import 'dart:convert';
import "../data/mortgagee.dart" show Mortgagee;
import "../data/account.dart" show Account;

//sign up
Future<http.Response> createAccount() async {
  final response = await http.post(
      Uri.encodeFull(
          "https://www.my-json-server.typicode.com/LivingfaithProzav/wishapp/accounts.json?signUp={id}"),
      headers: {"Accept": "application/json"});
  Account.fromJson(json.decode(response.body));
  /* var returnData = json.decode(response.body);
         return data = returnData['properties']; */
  return null;
}

// login
Future<http.Response> fetchUser() async {
  final response = await http.post(
      Uri.encodeFull(
          "https://www.my-json-server.typicode.com/LivingfaithProzav/wishapp/users.json?login={id}"),
      headers: {"Accept": "application/json"});
  Account.fromJson(json.decode(response.body));
  /* var returnData = json.decode(response.body);
         return data = returnData['properties']; */
  return null;
}

//api for propertyList invoked by initialstate or re-invoked by setstate
Future<http.Response> fetchProperties() async {
  final response = await http.get(
      Uri.encodeFull(
          "https://www.my-json-server.typicode.com/LivingfaithProzav/wishapp/mortgagees.json"),
      headers: {"Accept": "application/json"});
  Mortgagee.fromJson(json.decode(response.body));
  /* var returnData = json.decode(response.body);
         return data = returnData['properties']; */
  return null;
}

Future<http.Response> fetchProperty(id) async {
  final response = await http.get(
      Uri.encodeFull(
          "https://www.my-json-server.typicode.com/LivingfaithProzav/wishapp/properties.json"),
      headers: {"Accept": "application/json"});
  Mortgagee.fromJson(json.decode(response.body));
  /* var returnData = json.decode(response.body);
         return data = returnData['properties']; */
  return null;
}

Future<http.Response> fetchMortgagees() async {
  final response = await http.get(
      Uri.encodeFull(
          "https://www.my-json-server.typicode.com/LivingfaithProzav/wishapp/mortgagees.json?pid={id}"),
      headers: {"Accept": "application/json"});
  Mortgagee.fromJson(json.decode(response.body));
  /* var returnData = json.decode(response.body);
         return data = returnData['properties']; */
  return null;
}

// fetch a selected mortgagee
Future<http.Response> fetchMortgagee(id) async {
  final response = await http.get(
      Uri.encodeFull(
          "https://www.my-json-server.typicode.com/LivingfaithProzav/wishapp/mortgagees.json?pid={id}"),
      headers: {"Accept": "application/json"});
  Mortgagee.fromJson(json.decode(response.body));
  /* var returnData = json.decode(response.body);
         return data = returnData['properties']; */
  return null;
}
