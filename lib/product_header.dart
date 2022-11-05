import 'package:app_phone/card_page.dart';
import 'package:app_phone/provider/product_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

class ProductHeader extends StatefulWidget {
  const ProductHeader({super.key});

  @override
  State<ProductHeader> createState() => _ProductHeaderState();
}

class _ProductHeaderState extends State<ProductHeader> {
  @override
  Widget build(BuildContext context) {
    var pp = Provider.of<ProductProvider>(context);
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.only(left: 10),
            child: SizedBox(
              height: 30,
              width: 350,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Tìm kiếm theo tên sản phẩm",
                ),
                onChanged: (text) => setState(() {
                  pp.SearchTilte(text);
                }),
              ),
            ),
          ),
          IconButton(
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => CardPage()))),
              icon: Icon(
                Icons.shopping_cart,
              ))
        ],
      ),
    );
  }
}
