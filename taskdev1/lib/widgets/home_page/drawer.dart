import 'package:flutter/material.dart';
import 'package:taskdev1/constant/images.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xFF43B193),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            //this is drawer tittle ;
            // DrawerHeader(
            //   decoration: BoxDecoration(
            //     color: const Color(0xFF55EFC4),
            //   ),
            //   child: Text(
            //     'Drawer Header',
            //     style: TextStyle(
            //       color: Colors.white,
            //       fontSize: 24,
            //     ),
            //   ),
            // ),

            Container(
              height: 100,
              width: double.infinity,
              color: const Color(0xFF43B193),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 60,
                    child: Image.asset(
                      AppImages.logopng,
                      fit: BoxFit.fill,
                      color: Colors.white,
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text(
                      "X",
                      style: TextStyle(
                          fontSize: 50,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
            ),

            for (int i = 0; i < drawerString.length; i++)
              ListTile(
                leading: Image.asset(drawerImages[i]),
                title: Text(
                  drawerString[i],
                  style: const TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 20,
                      color: Colors.white),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            const Padding(
              padding: EdgeInsets.only(top: 270, bottom: 10),
              child: Divider(
                color: Colors.black,
              ),
            ),
            Column(
              children: [
                Image.asset(AppImages.blacklogo),
                Image.asset(AppImages.poweredByDEVZURCOM),
                Image.asset(AppImages.meetOurDevelopmentTeam),
              ],
            )
          ],
        ),
      ),
    );
  }
}

List<String> drawerString = [
  "Settings",
  "Courses",
  "Internships",
  "Team Tasks",
  "Location Requests",
  "Instructors",
];

List<String> drawerImages = [
  AppImages.settings,
  AppImages.book,
  AppImages.feather,
  AppImages.users,
  AppImages.map,
  AppImages.checksquare,
];
