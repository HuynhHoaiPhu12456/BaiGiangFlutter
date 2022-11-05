import 'dart:convert';

import 'package:app_phone/model/product_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

//Dung de theo doi tien trinh lay api va notify
class ProductProvider extends ChangeNotifier {
  List<ProductModel> list = [];
  List<String> categorylist = [];
  List<ProductModel> cardlist = [];
  List<ProductModel> searchlist = [];
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

    for (var element in list) {
      if (!categorylist.contains(element.category)) {
        categorylist.add(element.category.toString());
      }
    }

    notifyListeners();
  }

  void SearchTilte(String text) {
    searchlist.clear();
    for (var element in list) {
      if (element.title.toString().toLowerCase().contains(text.trim())) {
        searchlist.add(element);
      }
    }
  }

  void SearchCategory(String text) {
    searchlist.clear();
    for (var element in list) {
      if (element.category.toString().compareTo(text) == 0) {
        searchlist.add(element);
      }
    }
  }

  void Ex() {}

  void SearchA() {
    searchlist.clear();
    for (var element in list) {
      if (element.title.toString().toLowerCase().characters.first == "a") {
        searchlist.add(element);
      }
    }
  }

  void SearchB() {
    searchlist.clear();
    for (var element in list) {
      if (element.title.toString().toLowerCase().characters.first == "b") {
        searchlist.add(element);
      }
    }
  }

  void SearchD() {
    searchlist.clear();
    for (var element in list) {
      if (element.title.toString().toLowerCase().characters.first == "d") {
        searchlist.add(element);
      }
    }
  }

  void SearchF() {
    searchlist.clear();
    for (var element in list) {
      if (element.title.toString().toLowerCase().characters.first == "f") {
        searchlist.add(element);
      }
    }
  }

  void SearchJ() {
    searchlist.clear();
    for (var element in list) {
      if (element.title.toString().toLowerCase().characters.first == "j") {
        searchlist.add(element);
      }
    }
  }

  void SearchL() {
    searchlist.clear();
    for (var element in list) {
      if (element.title.toString().toLowerCase().characters.first == "l") {
        searchlist.add(element);
      }
    }
  }

  void SearchM() {
    searchlist.clear();
    for (var element in list) {
      if (element.title.toString().toLowerCase().characters.first == "m") {
        searchlist.add(element);
      }
    }
  }

  void SearchO() {
    searchlist.clear();
    for (var element in list) {
      if (element.title.toString().toLowerCase().characters.first == "o") {
        searchlist.add(element);
      }
    }
  }

  void SearchS() {
    searchlist.clear();
    for (var element in list) {
      if (element.title.toString().toLowerCase().characters.first == "s") {
        searchlist.add(element);
      }
    }
  }

  void SearchR() {
    searchlist.clear();
    for (var element in list) {
      if (element.title.toString().toLowerCase().characters.first == "r") {
        searchlist.add(element);
      }
    }
  }

  void SearchP() {
    searchlist.clear();
    for (var element in list) {
      if (element.title.toString().toLowerCase().characters.first == "p") {
        searchlist.add(element);
      }
    }
  }

  void SearchW() {
    searchlist.clear();
    for (var element in list) {
      if (element.title.toString().toLowerCase().characters.first == "w") {
        searchlist.add(element);
      }
    }
  }

  void SearchBelow100() {
    searchlist.clear();
    for (var element in list) {
      if (element.price!.toDouble() < 100.0) {
        searchlist.add(element);
      }
    }
  }

  void SearchFrom100To200() {
    searchlist.clear();
    for (var element in list) {
      if (element.price!.toDouble() > 100.0 &&
          element.price!.toDouble() < 250.0) {
        searchlist.add(element);
      }
    }
  }

  void SearchFrom250To1000() {
    searchlist.clear();
    for (var element in list) {
      if (element.price!.toDouble() > 250.0 &&
          element.price!.toDouble() < 1000.0) {
        searchlist.add(element);
      }
    }
  }
}
