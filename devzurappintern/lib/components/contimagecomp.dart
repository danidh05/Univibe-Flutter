import 'package:flutter/material.dart';

class ContImageComp extends StatelessWidget {
  const ContImageComp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 200,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.grey),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(
          "assets/imageconbig.png",
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
