import 'package:app_phone/provider/product_provider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

class ProductCard extends StatefulWidget {
  const ProductCard({super.key});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    var pp = Provider.of<ProductProvider>(context);
    if (pp.list.isEmpty) {
      pp.getProducts();
    }
    return Container(
      child: ListView(
        children: [
          ...pp.cardlist.map((e) {
            return Padding(
              padding: const EdgeInsets.only(top: 1),
              child: Container(
                height: 125,
                width: 200,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.amber.shade200)),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.network(
                          e.image.toString(),
                          height: 75,
                          width: 75,
                        ),
                        Container(
                          width: 250,
                          child: Text(
                            e.title ?? "",
                            style: TextStyle(),
                          ),
                        ),
                        Text(
                          e.price.toString(),
                        ),
                        TextButton(
                            onPressed: () => pp.cardlist.remove(e),
                            child: Text(
                              "X",
                            ))
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          TextButton(
                              onPressed: () => pp.Ex(),
                              child: Icon(
                                Icons.add,
                              )),
                          Text("1"),
                          TextButton(
                              onPressed: () => pp.Ex(),
                              child: Icon(
                                Icons.remove,
                              ))
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
        ],
      ),
    );
  }
}
