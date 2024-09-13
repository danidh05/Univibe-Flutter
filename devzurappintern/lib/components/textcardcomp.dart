import 'package:flutter/material.dart';

class TextCardCom extends StatelessWidget {
  TextCardCom({super.key, required this.text});
  String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Text(
              "$text",
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[400],
                  fontWeight: FontWeight.bold),
            ),
          ],
        )
      ],
    );
  }
}
