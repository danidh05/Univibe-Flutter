import 'package:flutter/material.dart';

import 'package:awesome_dialog/awesome_dialog.dart';

class BlockedProfileComp extends StatelessWidget {
  BlockedProfileComp({super.key, required this.text, required this.textdesc});
  String text;
  String textdesc;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 330,
      height: 80,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage("assets/profileimage.png"),
            radius: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  text,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
                Text(
                  textdesc,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff55EFC4),
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          MaterialButton(
            color: Color(0xffd9d9d9),
            onPressed: () {
              AwesomeDialog(
                context: context,
                dialogType: DialogType.info,
                animType: AnimType.scale,
                title: 'Are you sure?',
                desc: 'Are you sure you want to unblock Adam Atieh?',
                btnOkOnPress: () {},
                btnCancelOnPress: () {},
              ).show();
            },
            child: Text(
              "Unblock",
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
            ),
          ),
        ],
      ),
    );
  }
}
