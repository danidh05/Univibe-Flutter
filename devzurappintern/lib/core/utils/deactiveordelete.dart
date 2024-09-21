import 'package:flutter/material.dart';

class DeactiveordfeleteComp extends StatelessWidget {
  DeactiveordfeleteComp(
      {super.key, required this.text, this.color, required this.ontap});
  Color? color;
  String text;
  void Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 15,
        right: 15,
        top: 250,
      ),
      child: GestureDetector(
        onTap: ontap,
        child: Container(
          width: 368,
          height: 53,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12), color: Colors.grey),
          child: Center(
            child: Text(
              text,
              style: TextStyle(fontWeight: FontWeight.bold, color: color),
            ),
          ),
        ),
      ),
    );
  }
}
