import 'dart:html';

import 'package:app_phone/model/product_model.dart';
import 'package:app_phone/product_header.dart';
import 'package:app_phone/provider/product_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

class ProductDetail extends StatelessWidget {
  final ProductModel e;
  const ProductDetail(this.e);

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<ProductProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "PRODUCT DETAIL",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Row(
              children: [
                Image.network(
                  e.image.toString(),
                  height: 250,
                  width: MediaQuery.of(context).size.width,
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      e.description.toString(),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      TextButton(
                          onPressed: () => provider.Ex(),
                          child: Icon(
                            Icons.add,
                          )),
                      Text("1"),
                      TextButton(
                          onPressed: () => provider.Ex(),
                          child: Icon(
                            Icons.remove,
                          ))
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 250,
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blueAccent),
              ),
              child: Text(
                "ADD TO CARD",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              onPressed: () {
                provider.cardlist.add(e);
              },
            ),
          ],
        ),
      ),
    );
  }
}
