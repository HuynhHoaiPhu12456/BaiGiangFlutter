import 'package:app_phone/product_category.dart';
import 'package:app_phone/product_header.dart';
import 'package:app_phone/productlist_page.dart';
import 'package:app_phone/sort_product_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProductHomePage extends StatefulWidget {
  const ProductHomePage({super.key});

  @override
  State<ProductHomePage> createState() => _ProductHomePageState();
}

class _ProductHomePageState extends State<ProductHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "HOME PAGE",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
      body: Column(
        children: [
          ProductHeader(),
          ProductCategory(),
          SortProduct(),
          Expanded(child: ProductListPage())
        ],
      ),
    );
  }
}
