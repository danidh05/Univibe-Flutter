import 'package:devzurappintern/core/utils/appbarpage.dart';
import 'package:devzurappintern/core/utils/bullettextpoints.dart';
import 'package:flutter/material.dart';

class AboutDescPage extends StatelessWidget {
  const AboutDescPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Appbarpage(text: "About"),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "About UniVibe",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontSize: 20),
                ),
                Text(
                  "Welcome to UniVibe, the ultimate mobile application designed exclusively for university students! UniVibe aims to enhance your academic and social experience by providing a platform that integrates various essential features tailored to meet the unique needs of students. Here’s what you can do with UniVibe:",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontSize: 12),
                ),
                Text(
                  "Student Feed",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontSize: 20),
                ),
                Text(
                  "Stay connected with your university community through a dynamic feed where you can:",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontSize: 12),
                ),
                BulletPoint(text: "Post updates, ideas, and questions."),
                BulletPoint(text: "Comment on posts to engage in discussions."),
                BulletPoint(
                    text:
                        "Like, repost, share, and save content that interests you."),
                Text(
                  "Secure Login",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontSize: 20),
                ),
                Text(
                  "Your security is our priority. Only students with a valid university ID can login, ensuring a safe and exclusive community.",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontSize: 12),
                ),
                Text(
                  "Chatting",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontSize: 20),
                ),
                Text(
                  "Communicate seamlessly with your peers through our built-in chat feature. Whether it's group discussions or one-on-one conversations, stay connected anytime, anywhere.",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontSize: 12),
                ),
                Text(
                  "Courses",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontSize: 20),
                ),
                Text(
                  "Access a comprehensive section dedicated to your courses. Get updates, materials, and communicate with classmates and instructors with ease.",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontSize: 12),
                ),
                Text(
                  "Internships",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontSize: 20),
                ),
                Text(
                  "Discover internship opportunities that match your major and career aspirations. Apply directly through the app and get tips and advice from fellow students.",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontSize: 12),
                ),
                Text(
                  "Team Tasks",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontSize: 20),
                ),
                Text(
                  "Collaborate efficiently with your project teams using our Team Tasks feature. Track progress, assign tasks, and manage deadlines to ensure successful project completion.",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontSize: 12),
                ),
                Text(
                  "Location Request",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontSize: 20),
                ),
                Text(
                  "Need a ride? Use the Location request feature to:",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontSize: 12),
                ),
                BulletPoint(
                    text: "Send a request to students near your location."),
                BulletPoint(
                    text: "Get a ride from fellow students who live nearby."),
                BulletPoint(
                    text:
                        "Accept requests from peers, fostering a supportive community."),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
