import 'package:devzurappintern/core/utils/appbarpage.dart';
import 'package:devzurappintern/core/utils/deactiveordelete.dart';
import 'package:flutter/material.dart';

class DeactivateOrDelete extends StatelessWidget {
  const DeactivateOrDelete({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Appbarpage(text: "Deactivate or delete"),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 368,
                  height: 67,
                  child: Card(
                    color: Color(0xffd9d9d9),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/circleimage.png"),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "@Ahmad Sharkawi",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.black),
                                ),
                                Text(
                                  "CE at BAU",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 16),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Deactivating your profile is temporary",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    Text(
                        "Your UniVibe profile, content, likes, and followers will not be visible to anyone until you reactivate your profile by logging back in.",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w400)),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Deleting your profile is permenant",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    Text(
                        "Your UniVibe profile, content, likes, and followers will be hidden before being permanently removed in 30 days.",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w400)),
                  ],
                ),
              ),
              DeactiveordfeleteComp(
                ontap: () {},
                text: "Deactivate your profile",
                color: Colors.black,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 368,
                    height: 53,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color(0xffe6e6e6)),
                    child: Center(
                      child: Text(
                        "Delete porfile",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.red),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
