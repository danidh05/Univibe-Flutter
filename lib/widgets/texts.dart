import 'package:flutter/material.dart';

class TextLableLogin extends StatelessWidget {
  final String title;
  final String subTitle;
  const TextLableLogin(
      {super.key, required this.title, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: Text(
              title,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
            child: Text(
              subTitle,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
        ],
      ),
    );
  }
}
