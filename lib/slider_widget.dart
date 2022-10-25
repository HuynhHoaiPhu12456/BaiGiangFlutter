import 'package:flutter/material.dart';

class SliderWidget extends StatelessWidget {
  SliderWidget({super.key});
  List<String> list = [
    'assets/images/univern.jpg',
    'assets/images/univern.jpg',
    'assets/images/univern.jpg',
    'assets/images/univern.jpg',
    'assets/images/univern.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    //ctrl + shift + R
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        child: Row(
          children: [
            //for (int i = 0; i < list.length; i++) Image.asset(list[i]),
            ...list.map((e) {
              return Container(
                height: 300,
                width: MediaQuery.of(context).size.width * .8,
                margin: EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(e), fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(30)),
              );
            }).toList()
          ],
        ),
      ),
    );
  }
}
