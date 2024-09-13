import 'package:flutter/material.dart';
import 'package:taskdev1/constant/images.dart';
import 'package:taskdev1/constant/images_lists.dart';
import 'package:taskdev1/constant/text.dart';

class PostWidget extends StatefulWidget {
  const PostWidget({super.key});

  @override
  State<PostWidget> createState() => _PastWidgetState();
}

class _PastWidgetState extends State<PostWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 5),
      padding: const EdgeInsets.all(11),
      height: 350,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xFFF6F6F6),
      ),
      child: Column(
        children: [
          ///////////////////////
          Container(
            height: 302,
            child: ListView(
              children: [
                Container(
                  height: 90,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(40),
                          child: Image.asset(
                            AppImages.shape,
                            height: 40,
                            width: 40,
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Row(
                            children: [
                              Text(
                                AppText.ahmadsharkawi,
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w400),
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
                          const SizedBox(
                            height: 8,
                          ),
                          Container(
                            width: 240,
                            child: SeeMoreText(
                              maxLines: 4,
                              text:
                                  "See More', the full text should be visible and the option changes to 'See Less'.",
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      const Text(
                        "5min",
                        style: TextStyle(
                            color: Color(0xFF5E5E5E),
                            fontSize: 10,
                            fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      SizedBox(
                        width: 19,
                        height: 20,
                        child: Image.asset(AppImages.threepoints),
                      )
                    ],
                  ),
                ),

                ///////////////////////////
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 2),
                  height: 212,
                  width: 355,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset(
                    AppImages.git,
                    fit: BoxFit.fill,
                  ),
                ),

                //////////////////////////
              ],
            ),
          ),

          Row(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 13, right: 13, top: 4),
                height: 22,
                width: 120,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: reactionsImagesList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 22,
                      width: 20,
                      child: Image.asset(
                        reactionsImagesList[index],
                        fit: BoxFit.fill,
                      ),
                    );
                  },
                ),
              ),
              //  const Spacer(),
              Padding(
                padding: const EdgeInsets.only(left: 200),
                child: SizedBox(
                  height: 22,
                  width: 20,
                  child: Image.asset(
                    AppImages.bookmark,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class SeeMoreText extends StatefulWidget {
  final String text;
  final int maxLines;

  SeeMoreText({required this.text, this.maxLines = 3});

  @override
  _SeeMoreTextState createState() => _SeeMoreTextState();
}

class _SeeMoreTextState extends State<SeeMoreText> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.text,
          maxLines: isExpanded ? null : widget.maxLines,
          overflow: isExpanded ? TextOverflow.visible : TextOverflow.ellipsis,
          style: const TextStyle(fontSize: 11),
          textAlign: TextAlign.start,
        ),
        InkWell(
          onTap: () {
            setState(() {
              isExpanded = !isExpanded;
            });
          },
          child: Text(
            isExpanded ? "See Less" : "See More",
            style: const TextStyle(color: Colors.black, fontSize: 11),
          ),
        ),
      ],
    );
  }
}
