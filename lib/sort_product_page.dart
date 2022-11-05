import 'package:app_phone/provider/product_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

class SortProduct extends StatefulWidget {
  const SortProduct({super.key});

  @override
  State<SortProduct> createState() => _SortProductState();
}

class _SortProductState extends State<SortProduct> {
  @override
  Widget build(BuildContext context) {
    var pp = Provider.of<ProductProvider>(context);
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    color: Colors.brown,
                    borderRadius: BorderRadius.circular(15)),
                child: TextButton(
                    onPressed: () => pp.SearchBelow100(),
                    child: const Text(
                      "Below 100",
                      style: TextStyle(
                        color: Colors.orange,
                      ),
                    ))),
            Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    color: Colors.brown,
                    borderRadius: BorderRadius.circular(15)),
                child: TextButton(
                    onPressed: () => pp.SearchFrom100To200(),
                    child: const Text(
                      "100 to 250",
                      style: TextStyle(
                        color: Colors.orange,
                      ),
                    ))),
            Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    color: Colors.brown,
                    borderRadius: BorderRadius.circular(15)),
                child: TextButton(
                    onPressed: () => pp.SearchFrom250To1000(),
                    child: const Text(
                      "250 to 1000",
                      style: TextStyle(
                        color: Colors.orange,
                      ),
                    ))),
            Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    color: Colors.brown,
                    borderRadius: BorderRadius.circular(15)),
                child: TextButton(
                    onPressed: () => pp.SearchA(),
                    child: const Text(
                      "A",
                      style: TextStyle(
                        color: Colors.orange,
                      ),
                    ))),
            Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    color: Colors.brown,
                    borderRadius: BorderRadius.circular(15)),
                child: TextButton(
                    onPressed: () => pp.SearchB(),
                    child: const Text(
                      "B",
                      style: TextStyle(
                        color: Colors.orange,
                      ),
                    ))),
            Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    color: Colors.brown,
                    borderRadius: BorderRadius.circular(15)),
                child: TextButton(
                    onPressed: () => pp.SearchD(),
                    child: const Text(
                      "D",
                      style: TextStyle(
                        color: Colors.orange,
                      ),
                    ))),
            Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    color: Colors.brown,
                    borderRadius: BorderRadius.circular(15)),
                child: TextButton(
                    onPressed: () => pp.SearchF(),
                    child: const Text(
                      "F",
                      style: TextStyle(
                        color: Colors.orange,
                      ),
                    ))),
            Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    color: Colors.brown,
                    borderRadius: BorderRadius.circular(15)),
                child: TextButton(
                    onPressed: () => pp.SearchJ(),
                    child: const Text(
                      "J",
                      style: TextStyle(
                        color: Colors.orange,
                      ),
                    ))),
            Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    color: Colors.brown,
                    borderRadius: BorderRadius.circular(15)),
                child: TextButton(
                    onPressed: () => pp.SearchL(),
                    child: const Text(
                      "L",
                      style: TextStyle(
                        color: Colors.orange,
                      ),
                    ))),
            Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    color: Colors.brown,
                    borderRadius: BorderRadius.circular(15)),
                child: TextButton(
                    onPressed: () => pp.SearchM(),
                    child: const Text(
                      "M",
                      style: TextStyle(
                        color: Colors.orange,
                      ),
                    ))),
            Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    color: Colors.brown,
                    borderRadius: BorderRadius.circular(15)),
                child: TextButton(
                    onPressed: () => pp.SearchO(),
                    child: const Text(
                      "O",
                      style: TextStyle(
                        color: Colors.orange,
                      ),
                    ))),
            Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    color: Colors.brown,
                    borderRadius: BorderRadius.circular(15)),
                child: TextButton(
                    onPressed: () => pp.SearchP(),
                    child: const Text(
                      "P",
                      style: TextStyle(
                        color: Colors.orange,
                      ),
                    ))),
            Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    color: Colors.brown,
                    borderRadius: BorderRadius.circular(15)),
                child: TextButton(
                    onPressed: () => pp.SearchR(),
                    child: const Text(
                      "R",
                      style: TextStyle(
                        color: Colors.orange,
                      ),
                    ))),
            Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    color: Colors.brown,
                    borderRadius: BorderRadius.circular(15)),
                child: TextButton(
                    onPressed: () => pp.SearchS(),
                    child: const Text(
                      "S",
                      style: TextStyle(
                        color: Colors.orange,
                      ),
                    ))),
            Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    color: Colors.brown,
                    borderRadius: BorderRadius.circular(15)),
                child: TextButton(
                    onPressed: () => pp.SearchW(),
                    child: const Text(
                      "W",
                      style: TextStyle(
                        color: Colors.orange,
                      ),
                    ))),
          ],
        ),
      ),
    );
  }
}
