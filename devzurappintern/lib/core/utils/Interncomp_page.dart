import 'package:flutter/material.dart';

class IternCompPage extends StatelessWidget {
  IternCompPage(
      {super.key,
      required this.text,
      required this.subtext,
      required this.ontap});
  String text;
  String subtext;
  void Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: 320,
        height: 100,
        child: Row(
          children: [
            Image.asset(
              "assets/vector.png",
              height: 90,
              width: 90,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text,
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                  ),
                  Text(
                    subtext,
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
