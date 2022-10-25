import 'package:app_phone/hastag_widget.dart';
import 'package:app_phone/slider_widget.dart';
import 'package:flutter/material.dart';

class DestinationPage extends StatelessWidget {
  DestinationPage({super.key});
  String content =
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          //blockImage(context),
          SliderWidget(),
          HastagWidget(),
          blockTitle(context),
          blockButton(context),
          blockDescription(context),
        ]),
      ),
    );
  }

  blockImage(BuildContext context) {
    return Image.asset("assets/images/univern.jpg");
  }

  blockTitle(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: const [
              Text(
                "Nui Phu Si",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Kitayama, Fujinomiya, Shizuoka 418-0112, Japan",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 10,
                ),
              ),
            ],
          ),
          Row(
            children: const [
              Icon(Icons.star, color: Colors.amber, size: 20),
              Text(
                "70",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.amberAccent,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  blockButton(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        button("Call", Icons.phone),
        button("Route", Icons.near_me),
        button("Share", Icons.share),
      ],
    );
  }

  button(String title, IconData iconData) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: Column(
        children: [
          Icon(
            iconData,
            color: Colors.blue,
            size: 30,
          ),
          Text(
            title,
            style: const TextStyle(
              color: Colors.blueAccent,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }

  blockDescription(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: Text(
        content,
        textAlign: TextAlign.justify,
      ),
    );
  }
}
