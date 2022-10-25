import 'dart:math';

import 'package:flutter/material.dart';

class HastagWidget extends StatelessWidget {
  HastagWidget({super.key});

  List<String> hashList = [
    "Travel",
    "Food",
    "School",
    "Fubuki",
    "Mikodanye",
    "Subaru",
    "Yup",
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ...hashList.map((e) {
            return Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    color: Color(Random().nextInt(0xffffffff)),
                    borderRadius: BorderRadius.circular(30)),
                child: Text(e,
                    style: TextStyle(fontSize: 20, color: Colors.black)));
          }).toList()
        ],
      ),
    );
  }
}
