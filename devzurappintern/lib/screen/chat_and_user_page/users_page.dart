import 'package:devzurappintern/widget/cardcomp.dart';
import 'package:devzurappintern/core/utils/searchbar.dart';
import 'package:flutter/material.dart';

class UserFirstPage extends StatelessWidget {
  const UserFirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Ahmad Sharkawi",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        leading: const Icon(Icons.arrow_back_ios),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(child: SearchBarPage()),
                SizedBox(
                  width: 5,
                ),
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey[300],
                  ),
                  child: IconButton(
                    icon: Icon(Icons.group),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            CardComp(),
          ],
        ),
      ),
    );
  }
}
