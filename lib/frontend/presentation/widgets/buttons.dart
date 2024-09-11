import 'package:flutter/material.dart';
import 'package:univibeflutter/frontend/global/router/navigator_screen.dart';
import 'package:univibeflutter/frontend/presentation/screens/auth/register_screen.dart';
import 'package:univibeflutter/frontend/presentation/screens/auth/sign_in_screen.dart';
import 'package:univibeflutter/frontend/presentation/screens/auth/university_select.dart';

class ButtonLogIn extends StatelessWidget {
  const ButtonLogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          height: 45,
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              changeScreen(
                context,
                const UniversitySelect(),
              );
            },
            child: const Text(
              "Login",
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Don't have account? ",
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              TextButton(
                onPressed: () {
                  changeScreen(
                    context,
                    const RegisterScreen(),
                  );
                },
                child: const Text(
                  "Sign Up",
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class ButtonSignUp extends StatelessWidget {
  final String? lable;
  final VoidCallback callback;
  const ButtonSignUp({super.key, required this.callback, this.lable});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          height: 45,
          width: double.infinity,
          child: ElevatedButton(
            onPressed: callback,
            child: Text(
              lable ?? "Next",
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Already have account? ",
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              TextButton(
                onPressed: () {
                  changeScreen(
                    context,
                    const SignInScreen(),
                  );
                },
                child: const Text(
                  "Sign in",
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
