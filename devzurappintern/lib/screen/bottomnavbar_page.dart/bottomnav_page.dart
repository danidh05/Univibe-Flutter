import 'package:devzurappintern/screen/about/aboutinstructor_page.dart';
import 'package:devzurappintern/screen/chat_and_user_page/users_page.dart';
import 'package:devzurappintern/screen/courses_pages/courses_page.dart';
import 'package:devzurappintern/screen/setting_pages/setting_screen.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  List<Color> colors = [
    Color(0xFF000000),
    Color(0xFF55EFC4),
  ];
  final List<Widget> pages = [
    UserFirstPage(),
    CoursesPage(),
    SettingPage(),
    AboutInstructor(),
    Text('Profile Page'),
  ];

  int selectedIndex = 0;

  void selectIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: pages[selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        currentIndex: selectedIndex,
        onTap: selectIndex,
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "",
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Container(
              width: 80,
              height: 40,
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: colors,
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                color: Color.fromRGBO(85, 239, 196, 1),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                  child: const Icon(Icons.add, size: 24, color: Colors.white)),
            ),
            label: "",
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.message_outlined),
            label: "",
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.person_outlined),
            label: "",
          ),
        ],
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
      ),
    );
  }
}
