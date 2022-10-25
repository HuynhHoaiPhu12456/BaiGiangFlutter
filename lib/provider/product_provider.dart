import 'dart:convert';

import 'package:app_phone/model/product_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

//Dung de theo doi tien trinh lay api va notify
class ProductProvider extends ChangeNotifier {
  List<ProductModel> list = [];
  void getProducts() async {
    //get data from web api
    var url = "https://fakestoreapi.com/products";
    var client = http.Client();
    var rs = await client.get(Uri.parse(url));
    var jsonString = rs.body;
    var jsonObject = jsonDecode(jsonString) as List;
    list = jsonObject.map((e) {
      return ProductModel.fromJson(e);
    }).toList();
    notifyListeners();
  }
}
