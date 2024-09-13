import 'package:flutter/material.dart';
import 'package:taskdev1/constant/colors.dart';
import 'package:taskdev1/constant/images_lists.dart';
import 'package:taskdev1/constant/images.dart';
import 'package:taskdev1/constant/text.dart';
import 'package:taskdev1/widgets/home_page/customBottomNavigationBar.dart';
import 'package:taskdev1/widgets/home_page/drawer.dart';
import 'package:taskdev1/widgets/home_page/post_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          children: [
            SizedBox(
              height: 70,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    SizedBox(
                      width: 117,
                      height: 57,
                      child: Image.asset(
                        AppImages.logopng,
                        fit: BoxFit.fill,
                      ),
                    ),
                    const Spacer(),
                    SizedBox(
                      width: 32,
                      height: 32,
                      child: Image.asset(AppImages.bell),
                    ),
                    GestureDetector(
                      onTap: () {
                        _scaffoldKey.currentState?.openEndDrawer();
                      },
                      child: const Icon(
                        Icons.menu,
                        color: AppColors.black,
                        size: 50,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Divider(
              color: AppColors.grey200,
              thickness: 2,
            ),
            Container(
              padding: const EdgeInsets.only(right: 10, left: 25),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.all(10),
                    height: 100,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.grey200,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Image.asset(
                            AppImages.avatar,
                            fit: BoxFit.fill,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const Row(
                              children: [
                                Text(
                                  AppText.ahmadsharkawi,
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                                Text(
                                  AppText.ceatbau,
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: Color.fromRGBO(85, 239, 196, 1)),
                                ),
                              ],
                            ),
                            const Text(
                              AppText.whats,
                              style: TextStyle(color: AppColors.grey),
                            ),
                            SizedBox(
                              height: 30,
                              width: 135,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: 4,
                                itemBuilder: (context, index) {
                                  return Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    margin: const EdgeInsets.only(left: 10),
                                    height: 20,
                                    width: 20,
                                    child:
                                        Image.asset(contactImagesList[index]),
                                  );
                                },
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ///////////// post Widget ///////////////
                  const PostWidget(), // Widget From another File which considrate  post Widget
                  const PostWidget(), // Widget From another File which considrate  post Widget
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar:
          const CustomButtonNavigationBar(), //widget From Another File
      endDrawer: const DrawerWidget(), //widget From Another File
    );
  }
}
