import 'package:flutter/material.dart';
import 'package:univibeflutter/core/router/navigator_screen.dart';
import 'package:univibeflutter/core/theme/style/color_app.dart';
import 'package:univibeflutter/screens/home_page.dart';
import 'package:univibeflutter/widgets/buttons.dart';
import 'package:univibeflutter/widgets/header_login.dart';

class GuidelinesScreen extends StatelessWidget {
  const GuidelinesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const HeaderLogin(
                haveLoginImage: false,
              ),
              Text(
                "Important Guidelines",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: const Color(0xffD9D9D9),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const SingleChildScrollView(
                    child: Text(
                      "Welcome to UniVibe, your go-to app for connecting with fellow university students, accessing academic resources, and collaborating on projects. To ensure a positive and productive experience for everyone, please follow these guidelines:\n\n"
                      "1. Real Name and University ID Usage\n"
                      "Real Name Requirement: When creating your profile, please use your real name as it appears on your university ID. This helps maintain a professional and trustworthy environment.\n"
                      "University ID Verification: Ensure you register with your valid university ID to access the app. This helps us verify that all users are legitimate university students.\n\n"
                      "2. Appropriate Content\n"
                      "Academic Focus: Posts should be related to studying, university life, academic achievements, and educational discussions. Keep the content relevant to your academic journey.\n"
                      "Respectful Communication: Be respectful and courteous in your interactions with others. Any form of harassment, bullying, or inappropriate behavior will not be tolerated.\n\n"
                      "3. Engaging with Posts\n"
                      "Constructive Comments: When commenting on posts, provide constructive feedback and engage in meaningful discussions. Avoid off-topic or disruptive comments.\n"
                      "Positive Interaction: Like, share, and save posts that you find useful or inspiring. Repost content that could benefit others in your university community.\n\n"
                      "4. Using Chat and Team Tasks\n"
                      "Professional Communication: Use the chat feature for academic discussions, project coordination, and team collaboration. Keep conversations professional and on-topic.\n"
                      "Effective Collaboration: Utilize the team tasks feature to manage and track project tasks efficiently. Ensure all team members are updated on progress and deadlines.\n\n"
                      "5. Course and Internship Sections\n"
                      "Accurate Information: When accessing the courses section, make sure to provide and use accurate information about course schedules, assignments, and resources.\n"
                      "Professional Applications: Apply for internships through the app professionally. Ensure your application materials are complete and well-prepared.",
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "I agree to Terms and Conditions",
                    style: TextStyle(
                      color: ColorApp.colorRed,
                    ),
                  ),
                  Checkbox(value: true, onChanged: (value) {})
                ],
              ),
              ButtonSignUp(
                lable: "Proceed to homepage",
                callback: () {
                  changeScreen(
                    context,
                    const HomePage(),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
