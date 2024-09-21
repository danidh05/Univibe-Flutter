import 'package:flutter/material.dart';
import 'package:univibeflutter/core/theme/style/color_app.dart';

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

class HeaderUnivibe extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;

  const HeaderUnivibe({super.key})
      : preferredSize = const Size.fromHeight(75);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      leadingWidth: 135,
      toolbarHeight: 75,
      leading: const Padding(
        padding: EdgeInsets.all(5),
        child: Image(
          height: 75,
          width: 125,
          fit: BoxFit.fill,
          image: AssetImage("assets/images/logo_univibe.png"),
        ),
      ),
      actions: [
        IconButton(
          iconSize: 32,
          onPressed: () {},
          icon: const Icon(
            Icons.notifications_outlined,
            color: ColorApp.colorPrimary,
          ),
        ),
        IconButton(
          iconSize: 36,
          onPressed: () {},
          icon: const Icon(
            Icons.menu_rounded,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
