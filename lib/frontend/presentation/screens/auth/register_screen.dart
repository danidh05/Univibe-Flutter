import 'package:flutter/material.dart';
import 'package:univibeflutter/frontend/global/router/navigator_screen.dart';
import 'package:univibeflutter/frontend/presentation/components/header_login.dart';
import 'package:univibeflutter/frontend/presentation/screens/auth/university_select.dart';
import 'package:univibeflutter/frontend/presentation/widgets/buttons.dart';
import 'package:univibeflutter/frontend/presentation/widgets/materails/fields.dart';
import 'package:univibeflutter/frontend/presentation/widgets/texts.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

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
                title: "Register",
                subTitle: "Please register to login",
              ),
              FieldTile(
                prefixIcon: const Icon(
                  Icons.person_outline,
                ),
                labelText: "Nickname",
              ),
              FieldTile(
                prefixIcon: const Icon(
                  Icons.person_outline,
                ),
                labelText: "User name",
              ),
              FieldTile(
                prefixIcon: const Icon(
                  Icons.phone_outlined,
                ),
                labelText: "Phone Number",
              ),
              FieldTile(
                prefixIcon: const Icon(
                  Icons.email_outlined,
                ),
                labelText: "University email",
              ),
              FieldTile(
                prefixIcon: const Icon(
                  Icons.lock_outline,
                ),
                labelText: "password",
              ),
              ButtonSignUp(
                callback: () {
                  changeScreen(
                    context,
                    const UniversitySelect(),
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
