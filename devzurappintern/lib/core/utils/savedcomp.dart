import 'package:flutter/material.dart';

class SavedTextSpan extends StatelessWidget {
  const SavedTextSpan({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset("assets/adamimage.png")),
        SizedBox(
          width: 10,
        ),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "Adam Atieh .",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Colors.black,
                ),
              ),
              TextSpan(
                text: "CS at LIU",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Color(0xff55EFC4),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class TextSavedPage extends StatelessWidget {
  const TextSavedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Text(
        "Learning Git and platforms like Github, or Bitbucket is essential for anyone in software develpment or IT, These tools empower you to manage and track code changed  ...see more",
        style: TextStyle(
            fontSize: 11, color: Colors.black, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class IconSavedPage extends StatelessWidget {
  const IconSavedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: Row(
        children: [
          Icon(Icons.favorite),
          Icon(Icons.message_outlined),
          Icon(Icons.swap_vert),
          SizedBox(
            width: 170,
          ),
          Icon(Icons.save),
        ],
      ),
    );
  }
}

class TextAndIcon extends StatelessWidget {
  const TextAndIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SavedTextSpan(),
        SizedBox(
          width: 30,
        ),
        Text("5 min"),
        SizedBox(
          width: 10,
        ),
        Icon(Icons.more_horiz),
      ],
    );
  }
}
