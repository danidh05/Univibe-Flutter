import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:taskdev1/constant/images.dart';
import 'package:taskdev1/constant/images_lists.dart';
import 'package:taskdev1/constant/text.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  bool itemsMoved = false;
  final TextEditingController _controller = TextEditingController();
  int maxLines = 1; // Initial number of lines

  void moveItemsDown() {
    setState(() {
      itemsMoved = !itemsMoved;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 25, bottom: 25),
            height: MediaQuery.of(context).size.height * 0.92,
            child: ListView(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Row(
                    children: [
                      const Text(
                        "New Vibe",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                      const Spacer(),
                      InkWell(
                        onTap: () {
                          //    s
                        },
                        child: const Text(
                          "Cancel",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: const Divider(
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Row(
                    crossAxisAlignment: !itemsMoved
                        ? CrossAxisAlignment.start
                        : CrossAxisAlignment.center,
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
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                AppText.ahmadsharkawi,
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16,
                                    color: Colors.black),
                              ),
                              Text(
                                AppText.ceatbau,
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16,
                                    color: Color(0xFF55EFC4)),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          !itemsMoved
                              ? InkWell(
                                  onTap: moveItemsDown,
                                  child: Text(
                                    "What's New?",
                                    style: TextStyle(
                                        color: Color(0xFFC7C7C7),
                                        fontSize: 11,
                                        fontWeight: FontWeight.w400),
                                  ),
                                )
                              : Container(),
                        ],
                      )
                    ],
                  ),
                ),
                if (itemsMoved)
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 40),
                    child: TextFormField(
                      showCursor: true,
                      autofocus: true,
                      onChanged: (val) {
                        int lengthWithoutSpaces =
                            val.replaceAll(' ', '').length;
                        setState(() {
                          if (lengthWithoutSpaces >= 0 &&
                              lengthWithoutSpaces <= 50) {
                            maxLines = 1;
                          } else if (lengthWithoutSpaces >= 51 &&
                              lengthWithoutSpaces <= 101) {
                            maxLines = 2;
                          } else if (lengthWithoutSpaces >= 102 &&
                              lengthWithoutSpaces <= 152) {
                            maxLines = 3;
                          } // Add more conditions as needed
                          else if (lengthWithoutSpaces >= 153 &&
                              lengthWithoutSpaces <= 203) {
                            maxLines = 4;
                          } else if (lengthWithoutSpaces >= 204 &&
                              lengthWithoutSpaces <= 254) {
                            maxLines = 5;
                          } else if (lengthWithoutSpaces >= 255 &&
                              lengthWithoutSpaces <= 305) {
                            maxLines = 6;
                          } else if (lengthWithoutSpaces >= 306 &&
                              lengthWithoutSpaces <= 356) {
                            maxLines = 7;
                          } else if (lengthWithoutSpaces >= 357 &&
                              lengthWithoutSpaces <= 407) {
                            maxLines = 8;
                          }
                        });
                      },
                      controller: _controller,
                      maxLines:
                          maxLines, //عند تحديد عدد الاسطر هو بشكل تلقائي ينزل سطر
                      decoration: const InputDecoration(
                        hintText: "What's New?",
                        border: InputBorder.none,
                        hintStyle: TextStyle(color: Colors.grey),
                      ),
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 11.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                fileCamera != null
                    ? Container(
                        margin: maxLines == 1
                            ? const EdgeInsets.only(
                                left: 40, right: 40, top: 10)
                            : const EdgeInsets.symmetric(horizontal: 40),
                        height: 212,
                        width: 355,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(
                              20), //تجعل خواف الصورة دائرية
                          child: Image.file(
                            fileCamera!,
                            fit: BoxFit.fill,
                          ),
                        ),
                      )
                    : Container(),
                Padding(
                  padding: fileCamera == null
                      ? const EdgeInsets.symmetric(horizontal: 40)
                      : const EdgeInsets.symmetric(horizontal: 40),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: SizedBox(
                      height: 40,
                      width: 200,
                      child: Row(
                        children: [
                          !itemsMoved
                              ? const SizedBox(
                                  width: 60,
                                )
                              : Container(),
                          for (int i = 0; i < 4; i++)
                            GestureDetector(
                              onTap: () {
                                //Function Which response to Finctionality
                                getFunction(i);
                              },
                              child: Container(
                                width: 20,
                                height: 20,
                                margin: const EdgeInsets.only(right: 15),
                                child: Image.asset(
                                  contactImagesList[i],
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          itemsMoved
                              ? Align(
                                  alignment: Alignment.bottomRight,
                                  child: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        itemsMoved = false;
                                        maxLines = 1;
                                      });
                                    },
                                    icon: const Icon(Icons.cancel_sharp),
                                  ),
                                )
                              : Container(),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 490,
            right: 30,
            child: MaterialButton(
              height: 34,
              minWidth: 75,
              color: const Color(0xFF43B193),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40),
              ),
              onPressed: () {},
              child: const Text(
                "Post",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ),
        ],
      ),
    );
  }

  File? fileCamera;

  getFunction(int index) async {
    if (index == 0 || index == 1) {
      final ImagePicker picker = ImagePicker();
      final XFile? imageCamera = await picker.pickImage(
          source: index == 0 ? ImageSource.gallery : ImageSource.camera);
      fileCamera = File(imageCamera!.path);
      setState(() {});
    } else if (index == 3) {
    } else {}
  }
}
