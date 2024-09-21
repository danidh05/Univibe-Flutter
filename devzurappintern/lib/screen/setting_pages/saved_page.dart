import 'package:devzurappintern/core/utils/appbarpage.dart';
import 'package:devzurappintern/core/utils/savedcomp.dart';
import 'package:flutter/material.dart';

class SavedPage extends StatelessWidget {
  const SavedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Appbarpage(text: "Saved"),
          SizedBox(
            height: 25,
          ),
          Column(
            children: [
              Container(
                width: 330,
                height: 330,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xfff6f6f6),
                ),
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    children: [
                      TextAndIcon(),
                      TextSavedPage(),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          "assets/gitandgithubimage.png",
                          height: 170,
                        ),
                      ),
                      IconSavedPage()
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 330,
                height: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xfff6f6f6),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      TextAndIcon(),
                      TextSavedPage(),
                      SizedBox(
                        height: 20,
                      ),
                      IconSavedPage()
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
