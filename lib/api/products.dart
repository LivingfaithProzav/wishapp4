import "../data/products.dart" show Product;
import "package:http/http.dart" as http;
import "dart:convert" show json;

//api for prodcuts
Future<http.Response> fetchProducts() async {
  final response = await http.get(
      Uri.encodeFull(
          "https://www.my-json-server.typicode.com/LivingfaithProzav/wishapp/products.json"),
      headers: {"Accept": "application/json"});
  Product.fromJson(json.decode(response.body));
  /* var returnData = json.decode(response.body);
         return data = returnData['products']; */
  return null;
}

Future<http.Response> postProduct(Product product) async {
  final response = await http.post(
    Uri.encodeFull(
        "https://www.my-json-server.typicode.com/LivingfaithProzav/wishapp/properties.json"),
    headers: {"Accept": "application/json"},
    body: json.encode(product),
  );
  return response;
}

Future<http.Response> patchProduct(Product product) async {
  final response = await http.patch(
    Uri.encodeFull(
        'https://www.my-json-server.typicode.com/LivingfaithProzav/wishapp/properties.json'),
    headers: {"Accept": "application/json"},
    body: json.encode(product),
  );
  return response;
}

Future<http.Response> deleteProduct(id) async {
  final response = await http.delete(
    Uri.encodeFull(
        "https://www.my-json-server.typicode.com/LivingfaithProzav/wishapp/properties.json?id"),
  );
  return response;
}

//api for propertyList
Future<http.Response> fetchProduct(id) async {
  final response = await http.get(
      Uri.encodeFull(
          "https://www.my-json-server.typicode.com/LivingfaithProzav/wishapp/properties.json?id"),
      headers: {"Accept": "application/json"});
  Product.fromJson(json.decode(response.body));
  /* var returnData = json.decode(response.body);
         return data = returnData['properties']; */
  return null;
}
