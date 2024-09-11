import 'package:flutter/material.dart';
import 'package:univibeflutter/frontend/global/router/navigator_screen.dart';
import 'package:univibeflutter/frontend/presentation/components/header_login.dart';
import 'package:univibeflutter/frontend/presentation/screens/auth/major_select.dart';
import 'package:univibeflutter/frontend/presentation/widgets/buttons.dart';
import 'package:univibeflutter/frontend/presentation/widgets/product_drop_down_search.dart';
import 'package:univibeflutter/frontend/presentation/widgets/texts.dart';

class UniversitySelect extends StatefulWidget {
  const UniversitySelect({super.key});

  @override
  State<UniversitySelect> createState() => _UniversitySelectState();
}

class _UniversitySelectState extends State<UniversitySelect> {
  TextEditingController controllerUniversty = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HeaderLogin(),
              const TextLableLogin(
                title: "University Select",
                subTitle: "Please select your university",
              ),
              ProductDropdownSearch(
                lable: "University",
                searchFields: universityNames,
                controller: controllerUniversty,
              ),
              ButtonSignUp(
                callback: () {
                  changeScreen(
                    context,
                    const MajorSelect(),
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

List<String> universityNames = [
  'American University of Beirut',
  'Lebanese American University',
  'Université Saint-Joseph',
  'Lebanese University',
  'Notre Dame University – Louaize',
  'Beirut Arab University',
  'Holy Spirit University of Kaslik (USEK)',
  'Haigazian University',
  'Antonine University',
  'Islamic University of Lebanon'
];
