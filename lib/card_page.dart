import 'package:app_phone/product_card.dart';
import 'package:app_phone/product_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CardPage extends StatefulWidget {
  const CardPage({super.key});

  @override
  State<CardPage> createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "CARD",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
        body: Column(
          children: [
            ProductHeader(),
            Expanded(child: ProductCard()),
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Container(
                width: 250,
                alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.blueAccent),
                  ),
                  child: Text(
                    "CHECK OUT",
                    style: TextStyle(fontSize: 35, color: Colors.white),
                  ),
                  onPressed: null,
                ),
              ),
            )
          ],
        ));
  }
}
