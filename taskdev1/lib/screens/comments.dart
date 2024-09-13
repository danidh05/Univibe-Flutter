import 'package:flutter/material.dart';
import 'package:taskdev1/constant/images.dart';
import 'package:taskdev1/constant/text.dart';
import 'package:taskdev1/widgets/home_page/customBottomNavigationBar.dart';

class CommentsPage extends StatefulWidget {
  const CommentsPage({super.key});

  @override
  State<CommentsPage> createState() => _CommentsPageState();
}

class _CommentsPageState extends State<CommentsPage> {
  bool bottomNavigationBarShow = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bottomNavigationBarShow
          ? Colors.white
          : Colors.white.withOpacity(0.8),
      body: Stack(
        children: [
          ListView(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 5, top: 10),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_back_ios_outlined,
                        size: 22,
                      ),
                    ),
                    const Text(
                      "Back",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Text(
                      "Vibe",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20, left: 50, right: 50),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          child: Image.asset(
                            AppImages.avatarCirular,
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        const Text(
                          AppText.ahmadsharkawi,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                        const Text(
                          AppText.ceatbau,
                          style: TextStyle(
                              color: Color(0xFF55EFC4),
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 26,
                    ),
                    const Text(
                      "learning Git and platforms like Github, GitHub ,or Bitbucket is essentail for anyone in software development  or IT",
                      style:
                          TextStyle(fontSize: 11, fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: GestureDetector(
                            onTap: () {},
                            child: Image.asset(
                              AppImages.image_comment,
                              height: 20,
                              width: 20,
                            ),
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: GestureDetector(
                              onTap: () {},
                              child: Image.asset(
                                AppImages.message_comment,
                                height: 20,
                                width: 20,
                              ),
                            )),
                        const Text(
                          "59",
                          style: TextStyle(),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: GestureDetector(
                            onTap: () {},
                            child: Image.asset(
                              AppImages.Repeat_comment,
                              height: 20,
                              width: 20,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: GestureDetector(
                            onTap: () {},
                            child: Image.asset(
                              AppImages.Navigation_comment,
                              height: 20,
                              width: 20,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: GestureDetector(
                            onTap: () {},
                            child: Image.asset(
                              AppImages.bookmark_comment,
                              height: 20,
                              width: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      color: Colors.grey.withOpacity(0.1),
                    ),
                    const Align(
                      alignment: Alignment.bottomLeft,
                      child: const Text(
                        "Replies",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 15),
                      ),
                    ),
                    Divider(
                      color: Colors.grey.withOpacity(0.1),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Container(
                      width: double.infinity,
                      height: 700,
                      child: ListView.separated(
                        separatorBuilder: (BuildContext contedx, int index) {
                          return Divider(
                            color: Colors.grey.withOpacity(0.1),
                          );
                        },
                        itemCount: 3,
                        itemBuilder: (BuildContext context, int index) {
                          return GestureDetector(
                            onTap: () {
                              ///////////////////////////////////////

                              setState(() {
                                bottomNavigationBarShow = false;
                              });

                              //showModalBottomSheet استخدمت هذا النوع من أجل ان يعتم الواجهة التي تحته
                              showModalBottomSheet(
                                backgroundColor: Colors.transparent,
                                //    isScrollControlled: true,
                                context: context,
                                builder: (context) {
                                  return Container(
                                      height: 258,
                                      width: double.infinity,
                                      decoration: const BoxDecoration(
                                        color: Color(0xFFF9F9F9),
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(26),
                                            topLeft: Radius.circular(26)),
                                      ),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 20, bottom: 40),
                                            child: Image.asset(AppImages
                                                .HomeIndicator_comment),
                                          ),
                                          Container(
                                            height: 90,
                                            width: 338,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(17),
                                              color: const Color(0xFFE4E4E4),
                                            ),
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      vertical: 6,
                                                      horizontal: 25),
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        "Block",
                                                        style: TextStyle(
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          color: Colors.red,
                                                        ),
                                                      ),
                                                      const Spacer(),
                                                      InkWell(
                                                        onTap: () {
                                                          Navigator.of(context)
                                                              .pop();
                                                          print(
                                                              "111111111111111111111111111111");
                                                          showModalBottomSheet(
                                                            context: context,
                                                            builder: (s) {
                                                              return Container(
                                                                padding:
                                                                    const EdgeInsets
                                                                        .only(
                                                                        top: 30,
                                                                        bottom:
                                                                            8,
                                                                        left:
                                                                            30,
                                                                        right:
                                                                            40),
                                                                height: 428,
                                                                width: double
                                                                    .infinity,
                                                                decoration:
                                                                    const BoxDecoration(
                                                                        color: Colors
                                                                            .white,
                                                                        borderRadius:
                                                                            BorderRadius.only(
                                                                          topLeft:
                                                                              Radius.circular(49),
                                                                          topRight:
                                                                              Radius.circular(49),
                                                                        )),
                                                                child: Column(
                                                                  children: [
                                                                    Image.asset(
                                                                        AppImages
                                                                            .HomeIndicator_comment),
                                                                    Container(
                                                                      margin: const EdgeInsets
                                                                          .only(
                                                                        top: 10,
                                                                      ),
                                                                      height:
                                                                          80,
                                                                      width: 80,
                                                                      child:
                                                                          ClipRRect(
                                                                        borderRadius:
                                                                            BorderRadius.circular(20),
                                                                        child: Image
                                                                            .asset(
                                                                          AppImages
                                                                              .user_Shape_comment,
                                                                          fit: BoxFit
                                                                              .fill,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    const Text(
                                                                      "Block Adam Atieh?",
                                                                      style: TextStyle(
                                                                          fontWeight: FontWeight
                                                                              .w700,
                                                                          fontSize:
                                                                              25,
                                                                          color:
                                                                              Colors.black),
                                                                    ),
                                                                    Padding(
                                                                      padding: const EdgeInsets
                                                                          .only(
                                                                          top:
                                                                              10),
                                                                      child:
                                                                          Row(
                                                                        children: [
                                                                          Container(
                                                                            height:
                                                                                32,
                                                                            width:
                                                                                32,
                                                                            child:
                                                                                Image.asset(
                                                                              AppImages.minuscircle_comment,
                                                                              fit: BoxFit.fill,
                                                                            ),
                                                                          ),
                                                                          SizedBox(
                                                                            width:
                                                                                10,
                                                                          ),
                                                                          Text(
                                                                            "they won't be able to find your profile or\ncontent on UniVibe",
                                                                            style: TextStyle(
                                                                                fontWeight: FontWeight.w500,
                                                                                fontSize: 14,
                                                                                color: Colors.black),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: const EdgeInsets
                                                                          .only(
                                                                          top:
                                                                              10),
                                                                      child:
                                                                          Row(
                                                                        children: [
                                                                          Container(
                                                                            height:
                                                                                32,
                                                                            width:
                                                                                32,
                                                                            child:
                                                                                Image.asset(
                                                                              AppImages.eyeoff_comment,
                                                                              fit: BoxFit.fill,
                                                                            ),
                                                                          ),
                                                                          SizedBox(
                                                                            width:
                                                                                10,
                                                                          ),
                                                                          Text(
                                                                            "No one will be able to see their replies to your\nposts unless you unblock them.",
                                                                            style: TextStyle(
                                                                                fontWeight: FontWeight.w500,
                                                                                fontSize: 14,
                                                                                color: Colors.black),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: const EdgeInsets
                                                                          .only(
                                                                          top:
                                                                              10),
                                                                      child:
                                                                          Row(
                                                                        children: [
                                                                          Container(
                                                                            height:
                                                                                32,
                                                                            width:
                                                                                32,
                                                                            child:
                                                                                Image.asset(
                                                                              AppImages.Belloff_comment,
                                                                              fit: BoxFit.fill,
                                                                            ),
                                                                          ),
                                                                          SizedBox(
                                                                            width:
                                                                                10,
                                                                          ),
                                                                          Text(
                                                                            "they won't be notified that blocked them.",
                                                                            style: TextStyle(
                                                                                fontWeight: FontWeight.w500,
                                                                                fontSize: 14,
                                                                                color: Colors.black),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    SizedBox(
                                                                      height:
                                                                          30,
                                                                    ),
                                                                    MaterialButton(
                                                                      minWidth:
                                                                          293,
                                                                      height:
                                                                          50,
                                                                      shape: RoundedRectangleBorder(
                                                                          borderRadius:
                                                                              BorderRadius.circular(16)),
                                                                      color: Colors
                                                                          .black,
                                                                      child:
                                                                          Text(
                                                                        "Block",
                                                                        style: TextStyle(
                                                                            color: Colors
                                                                                .white,
                                                                            fontSize:
                                                                                20,
                                                                            fontWeight:
                                                                                FontWeight.w700),
                                                                      ),
                                                                      onPressed:
                                                                          () {},
                                                                    ),
                                                                    SizedBox(
                                                                      height:
                                                                          20,
                                                                    ),
                                                                    Image.asset(
                                                                      AppImages
                                                                          .HomeIndicator1_comment,
                                                                    ),
                                                                  ],
                                                                ),
                                                              );
                                                            },
                                                          ).then(
                                                            (v) {
                                                              setState(() {
                                                                bottomNavigationBarShow =
                                                                    true;
                                                              });
                                                            },
                                                          );
                                                        },
                                                        child: Image.asset(
                                                            AppImages
                                                                .Userx_comment),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Divider(
                                                  color: Colors.grey
                                                      .withOpacity(0.1),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      vertical: 5,
                                                      horizontal: 25),
                                                  child: Row(
                                                    children: [
                                                      const Text(
                                                        "Report",
                                                        style: TextStyle(
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          color: Colors.red,
                                                        ),
                                                      ),
                                                      const Spacer(),
                                                      InkWell(
                                                        onTap: () {
                                                          Navigator.of(context)
                                                              .pop();
                                                          print(
                                                              "111111111111111111111111111111");
                                                          showModalBottomSheet(
                                                            context: context,
                                                            builder: (s) {
                                                              return Container(
                                                                padding:
                                                                    const EdgeInsets
                                                                        .only(
                                                                        top: 30,
                                                                        bottom:
                                                                            8,
                                                                        left:
                                                                            30,
                                                                        right:
                                                                            40),
                                                                height: 428,
                                                                width: double
                                                                    .infinity,
                                                                decoration:
                                                                    const BoxDecoration(
                                                                        color: Colors
                                                                            .white,
                                                                        borderRadius:
                                                                            BorderRadius.only(
                                                                          topLeft:
                                                                              Radius.circular(49),
                                                                          topRight:
                                                                              Radius.circular(49),
                                                                        )),
                                                                child: Column(
                                                                  children: [
                                                                    Image.asset(
                                                                        AppImages
                                                                            .HomeIndicator_comment),
                                                                    Container(
                                                                      margin: const EdgeInsets
                                                                          .only(
                                                                        top: 10,
                                                                      ),
                                                                      height:
                                                                          80,
                                                                      width: 80,
                                                                      child:
                                                                          ClipRRect(
                                                                        borderRadius:
                                                                            BorderRadius.circular(20),
                                                                        child: Image
                                                                            .asset(
                                                                          AppImages
                                                                              .user_Shape_comment,
                                                                          fit: BoxFit
                                                                              .fill,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    const Text(
                                                                      "Report Adam Atieh?",
                                                                      style: TextStyle(
                                                                          fontWeight: FontWeight
                                                                              .w700,
                                                                          fontSize:
                                                                              25,
                                                                          color:
                                                                              Colors.black),
                                                                    ),
                                                                    SizedBox(
                                                                      height:
                                                                          10,
                                                                    ),
                                                                    Text(
                                                                      "why are you reporting Adam Atieh?",
                                                                      style: TextStyle(
                                                                          fontWeight: FontWeight
                                                                              .w500,
                                                                          fontSize:
                                                                              14,
                                                                          color:
                                                                              Colors.black),
                                                                    ),
                                                                    SizedBox(
                                                                      height: 5,
                                                                    ),
                                                                    Text(
                                                                      "Pleace write a reason for reporting this post:",
                                                                      style: TextStyle(
                                                                          fontWeight: FontWeight
                                                                              .w500,
                                                                          fontSize:
                                                                              14,
                                                                          color:
                                                                              Colors.black),
                                                                    ),
                                                                    SizedBox(
                                                                      height:
                                                                          10,
                                                                    ),
                                                                    Container(
                                                                      padding:
                                                                          const EdgeInsets
                                                                              .all(
                                                                              5),
                                                                      width:
                                                                          328,
                                                                      height:
                                                                          105,
                                                                      decoration: BoxDecoration(
                                                                          borderRadius: BorderRadius.circular(
                                                                              16),
                                                                          color:
                                                                              const Color(0xFFD9D9D9)),
                                                                      child:
                                                                          SizedBox(
                                                                        width:
                                                                            328,
                                                                        height:
                                                                            105,
                                                                        child:
                                                                            TextFormField(
                                                                          maxLines:
                                                                              4,
                                                                          decoration:
                                                                              InputDecoration(
                                                                            border:
                                                                                InputBorder.none, // Remove default border
                                                                            hintText:
                                                                                'Type here...',
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    SizedBox(
                                                                      height:
                                                                          10,
                                                                    ),
                                                                    MaterialButton(
                                                                      minWidth:
                                                                          293,
                                                                      height:
                                                                          50,
                                                                      shape: RoundedRectangleBorder(
                                                                          borderRadius:
                                                                              BorderRadius.circular(16)),
                                                                      color: Colors
                                                                          .black,
                                                                      child:
                                                                          Text(
                                                                        "Block",
                                                                        style: TextStyle(
                                                                            color: Colors
                                                                                .white,
                                                                            fontSize:
                                                                                20,
                                                                            fontWeight:
                                                                                FontWeight.w700),
                                                                      ),
                                                                      onPressed:
                                                                          () {},
                                                                    ),
                                                                    SizedBox(
                                                                      height:
                                                                          20,
                                                                    ),
                                                                    Image.asset(
                                                                      AppImages
                                                                          .HomeIndicator1_comment,
                                                                    ),
                                                                  ],
                                                                ),
                                                              );
                                                            },
                                                          ).then(
                                                            (v) {
                                                              setState(() {
                                                                bottomNavigationBarShow =
                                                                    true;
                                                              });
                                                            },
                                                          );
                                                        },
                                                        child: Image.asset(AppImages
                                                            .Userminus_comment),
                                                      ),
                                                      // Image.asset(AppImages
                                                      //     .Userminus_comment)
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const Spacer(),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 20),
                                            child: Image.asset(AppImages
                                                .HomeIndicator1_comment),
                                          ),
                                        ],
                                      ));
                                },
                              ).then((val) {
                                setState(() {
                                  bottomNavigationBarShow = true;
                                });
                              });

                              ///////////////////////////////
                            },
                            child: Container(
                              padding:
                                  const EdgeInsets.only(top: 12, bottom: 5),
                              height: 80,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    child: Image.asset(
                                      AppImages.avatarCirular,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          const Text(
                                            AppText.ahmadsharkawi,
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400),
                                          ),
                                          const Text(
                                            AppText.ceatbau,
                                            style: TextStyle(
                                                color: Color(0xFF55EFC4),
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ],
                                      ),
                                      Text("I agree"),
                                      Container(
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 8),
                                              child: GestureDetector(
                                                onTap: () {},
                                                child: Image.asset(
                                                  AppImages.image_comment,
                                                  height: 20,
                                                  width: 20,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 8),
                                                child: GestureDetector(
                                                  onTap: () {},
                                                  child: Image.asset(
                                                    AppImages.message_comment,
                                                    height: 20,
                                                    width: 20,
                                                  ),
                                                )),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                  Spacer(),
                                  Image.asset(AppImages.threePoint_comment),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Positioned(
            bottom: 6,
            left: 6,
            child: Container(
              height: 40,
              width: 404,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: const Color(0xFFD9D9D9),
              ),
              child: TextFormField(),
            ),
          )
        ],
      ),
      bottomNavigationBar:
          bottomNavigationBarShow ? const CustomButtonNavigationBar() : null,
    );
  }
}
