import 'package:flutter/material.dart';

class Person extends StatelessWidget {
  final String image;
  final String name;

  const Person({super.key, required this.image, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 3,
            width: MediaQuery.of(context).size.width,
            // color: Colors.green,
            child: Image.asset(image),
          ),
           Text(
            name,
            style: TextStyle(fontSize: 100),
          )
        ],
      ),
    );
  }
}
