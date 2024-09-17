import 'package:flutter/material.dart';

class HeaderLogin extends StatelessWidget {
  final bool? haveLoginImage;
  const HeaderLogin({super.key, this.haveLoginImage});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5,10,5,0 ),
      child: Column(
        children: [
          const SizedBox(
            height: 100,
            width: double.infinity,
            child: Image(
              image: AssetImage(
                "assets/images/logo_univibe.png",
              ),
            ),
          ),
          haveLoginImage == null || haveLoginImage!
              ? const SizedBox(
                  height: 250,
                  width: double.infinity,
                  child: Image(
                    image: AssetImage(
                      "assets/images/logo_login.png",
                    ),
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
