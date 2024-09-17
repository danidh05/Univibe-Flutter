import 'package:flutter/material.dart';
import 'package:univibeflutter/core/router/navigator_screen.dart';
import 'package:univibeflutter/screens/auth/guidelines_screen.dart';
import 'package:univibeflutter/widgets/buttons.dart';
import 'package:univibeflutter/widgets/header_login.dart';
import 'package:univibeflutter/widgets/product_drop_down_search.dart';
import 'package:univibeflutter/widgets/texts.dart';

class MajorSelect extends StatefulWidget {
  const MajorSelect({super.key});

  @override
  State<MajorSelect> createState() => _MajorSelectState();
}

class _MajorSelectState extends State<MajorSelect> {
  TextEditingController controllerMajor = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const HeaderLogin(),
              const TextLableLogin(
                title: "Major  Select",
                subTitle: "Please select your major",
              ),
              ProductDropdownSearch(
                lable: "Major",
                searchFields: majors,
                controller: controllerMajor,
              ),
              ButtonSignUp(
                callback: () {
                  changeScreen(
                    context,
                    const GuidelinesScreen(),
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

List<String> majors = [
  'Computer Science',
  'Electrical Engineering',
  'Business Administration',
  'Mechanical Engineering',
  'Psychology',
  'Medicine',
  'Architecture',
  'Marketing',
  'Law',
  'Graphic Design',
  'Finance',
  'Civil Engineering',
  'Nursing',
  'Political Science',
  'Economics'
];
