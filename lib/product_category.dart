import 'dart:math';

import 'package:app_phone/provider/product_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

class ProductCategory extends StatefulWidget {
  const ProductCategory({super.key});

  @override
  State<ProductCategory> createState() => _ProductCategoryState();
}

class _ProductCategoryState extends State<ProductCategory> {
  @override
  Widget build(BuildContext context) {
    var category = Provider.of<ProductProvider>(context);
    if (category.list.isEmpty) {
      category.getProducts();
    }

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        height: 35,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ...category.categorylist.map((e) {
              return Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    color: Colors.brown,
                    borderRadius: BorderRadius.circular(15)),
                child: TextButton(
                  onPressed: () {
                    category.SearchCategory(e);
                  },
                  child: Text(
                    e,
                    style: TextStyle(
                      color: Colors.deepOrangeAccent,
                    ),
                  ),
                ),
              );
            }).toList(),
          ],
        ),
      ),
    );
  }
}
