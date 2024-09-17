import 'package:devzurappintern/widget/contimagecomp.dart';
import 'package:devzurappintern/core/utils/appbarpage.dart';
import 'package:devzurappintern/core/utils/bullettextpoints.dart';
import 'package:devzurappintern/core/utils/imagetextcomp.dart';
import 'package:flutter/material.dart';

class InternshipsDetailsPage extends StatelessWidget {
  const InternshipsDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            Column(
              children: [
                Appbarpage(text: "Internships"),
                SizedBox(height: 10),
                ContImageComp(),
                ImageTextComp(text: "Web Development Intern"),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Row(
                    children: [
                      const Text(
                        "Company: Devzur",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff8f8f8f),
                        ),
                      ),
                      SizedBox(width: 8),
                      Image.asset("assets/deczuricon.png", scale: 1.0),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            const Text(
              "About the job\nJob Overview:",
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "Join our client's dynamic marketing team to develop and enhance mobile-first, responsive web applications that are user-centric. As a skilled Mid-level Web Developer, you'll work closely with fellow developers, designers, and marketing professionals to produce top-notch digital products that address the requirements of our organization and its stakeholders.\n",
              style: TextStyle(
                fontSize: 10,
                height: 1.5,
                fontWeight: FontWeight.w700,
              ),
            ),
            const Text(
              "Education & Experience Required:",
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 10),
            const BulletPoint(
                text:
                    "6+ years of experience in a corporate or enterprise setting."),
            const BulletPoint(
                text:
                    "Bachelor's degree in Computer Science, Information Technology, or related discipline."),
            const SizedBox(height: 20),
            const Text(
              "Technical Skills:",
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 10),
            const BulletPoint(
                text: "Proficient in HTML, CSS (SCSS), jQuery, C#, and Razor."),
            const BulletPoint(
                text:
                    "Well-versed in Bootstrap, SASS/LESS, and automation tools such as Gulp or Grunt."),
            const BulletPoint(
                text:
                    "Knowledgeable about RESTful services, JSON, ASP.NET, MVC, SQL databases, and continuous integration/delivery pipelines."),
            const BulletPoint(
                text: "Experienced in Version Control using Git."),
            const BulletPoint(
                text: "Comfortable with browser development tools."),
            const BulletPoint(
                text:
                    "Acquainted with leading front-end libraries and frameworks such as React, Angular, or Vue.js."),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 140,
                  height: 45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xff55efc4)),
                  child: Center(
                      child: Text(
                    "Apply",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 20),
                  )),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  width: 140,
                  height: 45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.black),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Save",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 20),
                      ),
                      Icon(
                        Icons.save,
                        color: Colors.white,
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
