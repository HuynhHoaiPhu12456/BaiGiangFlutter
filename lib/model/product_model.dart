import 'dart:convert';

class ProductModel {
  int? id;
  String? title;
  num? price;
  String? description;
  String? category;
  String? image;
  ProductModel(
      {this.id,
      this.title,
      this.price,
      this.description,
      this.category,
      this.image});

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    var p = ProductModel(
        id: json['id'],
        title: json['title'],
        price: json['price'],
        description: json['description'],
        category: json['category'],
        image: json['image']);
    return p;
  }
}
