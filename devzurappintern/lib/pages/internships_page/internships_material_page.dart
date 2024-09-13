import 'package:devzurappintern/pages/internships_page/internships_details_page.dart';
import 'package:devzurappintern/utils/Interncomp_page.dart';
import 'package:devzurappintern/utils/appbarpage.dart';
import 'package:flutter/material.dart';

class InternshipsMaterialPage extends StatelessWidget {
  InternshipsMaterialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(children: [
        Column(
          children: [
            Appbarpage(text: "Internships"),
            SizedBox(
              height: 25,
            ),
            IternCompPage(
              ontap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => InternshipsDetailsPage()));
              },
              text: "Web development intern",
              subtext: "Company: Devzur",
            ),
            Divider(
              thickness: 1,
              color: Colors.black,
              indent: 20,
              endIndent: 20,
            ),
            SizedBox(
              height: 3,
            ),
            IternCompPage(
              ontap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => InternshipsDetailsPage()));
              },
              text: "Mobile development intern",
              subtext: "Company: Devzur",
            ),
            Divider(
              thickness: 1,
              color: Colors.black,
              indent: 20,
              endIndent: 20,
            ),
            SizedBox(
              height: 3,
            ),
            IternCompPage(
              ontap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => InternshipsDetailsPage()));
              },
              text: "UI/Ux development intern",
              subtext: "Company: Devzur",
            ),
            Divider(
              thickness: 1,
              color: Colors.black,
              indent: 20,
              endIndent: 20,
            )
          ],
        ),
      ]),
    );
  }
}
