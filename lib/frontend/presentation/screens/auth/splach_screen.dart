import 'dart:async';

import 'package:flutter/material.dart';
import 'package:univibeflutter/frontend/global/router/navigator_screen.dart';
import 'package:univibeflutter/frontend/global/theme/style/color_app.dart';
import 'package:univibeflutter/frontend/presentation/screens/auth/sign_in_screen.dart';
/// TODO : Abdelkader (signed) from 18:12 to 22:24 
class SplachScreen extends StatefulWidget {
  const SplachScreen({super.key});

  @override
  State<SplachScreen> createState() => _SplachScreenState();
}

class _SplachScreenState extends State<SplachScreen> {
  @override
  void initState() {
    super.initState();

    // Start a timer that will navigate to the sign-in screen after 3 seconds
    Timer(const Duration(seconds: 3), () {
      // Navigate to the SignIn screen using pushReplacement to prevent going back to SplashScreen
      changeScreen(
        context,
        const SignInScreen(),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/images/background.png",
            ),
            fit: BoxFit.fill,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacer(),
              const Image(
                height: 125,
                width: 250,
                fit: BoxFit.fill,
                image: AssetImage("assets/images/logo_univibe.png"),
              ),
              const Spacer(),
              ShaderMask(
                shaderCallback: (bounds) => const LinearGradient(
                  colors: [
                    ColorApp.colorPrimary,
                    Colors.black,
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ).createShader(
                    Rect.fromLTWH(0, 0, bounds.width, bounds.height)),
                child: const Text(
                  'Powered By',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              const Image(
                height: 35,
                width: 150,
                image: AssetImage("assets/images/logo_devzur.png"),
              ),
              const SizedBox(
                height: 35,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
