import 'package:devzurappintern/components/containerspage.dart';
import 'package:devzurappintern/components/textcardcomp.dart';
import 'package:devzurappintern/utils/appbarpage.dart';
import 'package:devzurappintern/utils/searchbar.dart';
import 'package:flutter/material.dart';

class CoursesPage extends StatelessWidget {
  CoursesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Column(
            children: [
              Appbarpage(text: "Courses"),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Expanded(
                      child: SearchBarPage(),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.menu,
                        size: 48,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  TextCardCom(
                    text: "Card 13",
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ContainersPage(),
                  ContainersPage(),
                  ContainersPage(),
                  ContainersPage(),
                ],
              ),
              SizedBox(
                width: 40,
              ),
              Column(
                children: [
                  TextCardCom(
                    text: "Card 14",
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ContainersPage(),
                  ContainersPage(),
                  ContainersPage(),
                  ContainersPage(),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
