import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  String urlImage =
      "https://images.unsplash.com/photo-1661956602868-6ae368943878?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHw2fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=600&q=60";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Hello App",
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
        leading: const Icon(
          Icons.menu,
          color: Colors.white,
          size: 40,
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Text(
                "Hello World!",
                style: TextStyle(
                  color: Colors.orange,
                  fontSize: 30,
                ),
              ),
              const Text(
                "Welcome to my class",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 30,
                ),
              ),
              Row(
                children: const [
                  Icon(
                    Icons.star,
                    color: Colors.orange,
                    size: 30,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.orange,
                    size: 30,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.orange,
                    size: 30,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.orange,
                    size: 30,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.orange,
                    size: 30,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.orange,
                    size: 30,
                  ),
                  Text(
                    "60 ration",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.amberAccent,
                    ),
                  ),
                ],
              ),
              Image.network(urlImage),
              Image.asset("assets/images/univern.jpg"),
            ],
          ),
        ),
      ),
    );
  }
}
