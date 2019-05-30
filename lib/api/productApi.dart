import '../data/products.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';



//api for product
fetchProduct() async {
    final response = await http.get(
        Uri.encodeFull('https://www.my-json-server.typicode.com/LivingfaithProzav/wishapp/product.json'),
        headers: {"Accept": "application/json"});
        Product.fromJson(json.decode(response.body));
         /* var returnData = json.decode(response.body);
         return data = returnData['product']; */
         
  
  }
