import 'package:devzurappintern/components/contimagecomp.dart';
import 'package:devzurappintern/pages/internships_page/internships_material_page.dart';
import 'package:devzurappintern/utils/appbarpage.dart';
import 'package:flutter/material.dart';

class CourseDetails extends StatelessWidget {
  const CourseDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(children: [
          Column(children: [
            Appbarpage(
              text: "Courses",
            ),
            SizedBox(
              height: 20,
            ),
            ContImageComp(),
            Padding(
              padding: const EdgeInsets.only(left: 30.0, top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Title of the course",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur ullamcorper nulla eget sagittis tempus. Integer dignissim nulla nec\n blandit ornare. Cras sed finibus velit, a sodales ipsum. Morbi vitae ligula metus. Praesent ac sapien nec lorem scelerisque maximus vitae interdum odio.")
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => InternshipsMaterialPage()));
              },
              child: Container(
                width: 280,
                height: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey[400],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Enroll to the course",
                      style: TextStyle(
                          color: Color(0xff43B193),
                          fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.arrow_upward_rounded,
                      color: Colors.green,
                    )
                  ],
                ),
              ),
            ),
          ])
        ]));
  }
}
