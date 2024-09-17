import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final String title;
  const Header({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
        Row(
          children: [
            IconButton(
              icon: const Icon(Icons.arrow_back_ios_new_rounded),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            Text(
              "Back",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ],
        )
      ],
    );
  }
}
