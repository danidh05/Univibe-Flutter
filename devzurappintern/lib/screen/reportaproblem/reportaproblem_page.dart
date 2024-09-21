import 'package:devzurappintern/core/utils/appbarpage.dart';
import 'package:flutter/material.dart';

class ReportaproblemPage extends StatelessWidget {
  const ReportaproblemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Appbarpage(text: "Report a problem"),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Having a problem?",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      fontSize: 16),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Please tell us your problem:",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontSize: 16),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: "Type your problem here...",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: Color(0xffd9d9d9),
                      contentPadding: EdgeInsets.only(
                          top: 2, right: 0, left: 0, bottom: 170)),
                  maxLines: 5,
                  minLines: 1,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 230.0),
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
                            "Send Report",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xff43B193),
                            ),
                          ),
                        ),
                      )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
