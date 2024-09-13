import 'package:flutter/material.dart';

class Appbarpage extends StatelessWidget {
  Appbarpage({super.key, required this.text});
  String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 18.0),
          child: Row(
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
              Text(
                "Back",
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        )
      ],
    );
  }
}
