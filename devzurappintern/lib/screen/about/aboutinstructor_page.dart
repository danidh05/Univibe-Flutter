import 'package:devzurappintern/core/utils/appbarpage.dart';
import 'package:flutter/material.dart';

class AboutInstructor extends StatelessWidget {
  AboutInstructor({super.key});
  List colors = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Appbarpage(text: "About"),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Instructor Ratings",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                ),
                SizedBox(height: 20),
                Text(
                  "Find the best instructors for your major. View ratings and reviews from other students to choose the right classes and get the most out of your education.",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
                ),
                SizedBox(height: 30),
                Text(
                  "UniVibe is your all-in-one solution to enhance your university experience, making it more collaborative, engaging, and convenient. Join us today and take your campus life to the next level!",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 12,
                    color: Color(0xff43B193),
                  ),
                ),
                Center(
                  child: Column(
                    children: [
                      Image.asset("assets/univibeimg.png"),
                      SizedBox(
                        height: 50,
                      ),
                      ShaderMask(
                        shaderCallback: (bounds) => LinearGradient(
                          colors: [
                            Color(0xff1E5D4B), // Start color
                            Color(0xff43B193), // End color
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ).createShader(bounds),
                        child: Text(
                          "Powered By\ndevzur.com",
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.w900,
                            color: Colors.white, // Use white as a placeholder
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                          width: 200,
                          height: 48,
                          child: Image.asset("assets/devzuricon.png"))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
