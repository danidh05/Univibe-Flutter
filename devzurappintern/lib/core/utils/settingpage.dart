import 'package:flutter/material.dart';

class Settingpageutil extends StatelessWidget {
  Settingpageutil(
      {super.key, required this.text, required this.icon, required this.ontap});
  String text;
  IconData? icon;
  void Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        child: Row(
          children: [
            Icon(icon),
            SizedBox(
              width: 8,
            ),
            Text(
              "$text",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
