import 'package:flutter/material.dart';
import 'package:univibeflutter/widgets/buttons.dart';
import 'package:univibeflutter/widgets/fields.dart';
import 'package:univibeflutter/widgets/header_login.dart';
import 'package:univibeflutter/widgets/texts.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const HeaderLogin(),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center ,
                    children: [
                      const TextLableLogin(
                        title: "Login",
                        subTitle: "Please sign in to your account",
                      ),
                      FieldTile(
                        labelText: "University email",
                        prefixIcon: const Icon(Icons.email_outlined),
                      ),
                      const FieldPassword(),
                      const ButtonLogIn(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
