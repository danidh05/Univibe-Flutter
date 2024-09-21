import 'package:devzurappintern/core/utils/appbarpage.dart';
import 'package:devzurappintern/core/utils/settingpage.dart';
import 'package:devzurappintern/screen/about/about_desc_page.dart';
import 'package:devzurappintern/screen/blockedprofiles/blockedprofile_page.dart';
import 'package:devzurappintern/screen/deactivateordelete/deactivate_or_delete.dart';
import 'package:devzurappintern/screen/reportaproblem/reportaproblem_page.dart';
import 'package:devzurappintern/screen/setting_pages/saved_page.dart';
import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Appbarpage(
            text: "Settings",
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 40.0, top: 25, right: 40, bottom: 15),
            child: Column(
              children: [
                Settingpageutil(
                  ontap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SavedPage()));
                  },
                  icon: Icons.save,
                  text: "Saved",
                ),
                SizedBox(
                  height: 15,
                ),
                Settingpageutil(
                  ontap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BlockedProfilePage()));
                  },
                  icon: Icons.app_blocking_outlined,
                  text: "Blocked Profiles",
                ),
                SizedBox(
                  height: 15,
                ),
                Settingpageutil(
                    ontap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DeactivateOrDelete()));
                    },
                    icon: Icons.desktop_access_disabled_outlined,
                    text: "Deactivate or delete profile"),
                SizedBox(
                  height: 15,
                ),
                Settingpageutil(
                  ontap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ReportaproblemPage()));
                  },
                  icon: Icons.report,
                  text: "Report a problem",
                ),
                SizedBox(
                  height: 15,
                ),
                Settingpageutil(
                  ontap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AboutDescPage()));
                  },
                  icon: Icons.signal_cellular_alt_2_bar_outlined,
                  text: "About",
                ),
              ],
            ),
          ),
          Divider(
            thickness: 1,
            color: Colors.black,
            endIndent: 0,
            indent: 0,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 40.0,
              top: 4,
              right: 40,
            ),
            child: Row(
              children: [
                Icon(
                  Icons.lock_open_rounded,
                  size: 30,
                  color: Color(0xffff0000),
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Logout",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xffff0000),
                      fontSize: 23),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
