import 'package:devzurappintern/pages/chat_and_user_page/chat_page.dart';
import 'package:flutter/material.dart';

class CardComp extends StatelessWidget {
  const CardComp({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ChatPage()));
      },
      child: Container(
        child: Row(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage("assets/profileimage.png"),
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Adam Atieh",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text(
                  "Hello Ahmad, I would to share this post wi....",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      color: Colors.grey),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
