import 'package:devzurappintern/core/utils/appbarpage.dart';
import 'package:devzurappintern/core/utils/blockeprofilecomp.dart';
import 'package:flutter/material.dart';

class BlockedProfilePage extends StatelessWidget {
  const BlockedProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Appbarpage(text: "Blocked Profiles"),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Column(
              children: [
                BlockedProfileComp(
                  text: "Ahmad Saadi",
                  textdesc: "CS at LIU",
                ),
                Divider(
                  thickness: 1,
                  color: Colors.black,
                  indent: 20,
                  endIndent: 20,
                ),
                BlockedProfileComp(
                  text: "Ahmad Shreidi",
                  textdesc: "ME at RHU",
                ),
                Divider(
                  thickness: 1,
                  color: Colors.black,
                  indent: 20,
                  endIndent: 20,
                ),
                BlockedProfileComp(
                  text: "Ahmad Sharkawi",
                  textdesc: "CE at BAU",
                ),
                Divider(
                  thickness: 1,
                  color: Colors.black,
                  indent: 20,
                  endIndent: 20,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
