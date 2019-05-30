import '../data/propertyList.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<http.Response> postProperty(Property property) async {
  final response = await http.post(
    Uri.encodeFull(
        'https://www.my-json-server.typicode.com/LivingfaithProzav/wishapp/properties.json'),
    headers: {"Accept": "application/json"},
    body: json.encode(property),
  );
  return response;
}
