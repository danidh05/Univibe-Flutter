import 'package:flutter/material.dart';
import 'package:univibeflutter/core/theme/style/color_app.dart';
import 'package:univibeflutter/widgets/fields.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
              child: Row(
                children: [
                  Text(
                    "Edit Profile",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const Spacer(),
                  TextButton(
                    child: const Text("Cancel"),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(10, 5, 10, 5),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: ColorApp.colorBorder,
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  FieldTileColumn(
                    labelText: "Username",
                    hintText: "@username",
                  ),
                  FieldTileColumn(
                    labelText: "Nickname",
                    hintText: "type your nickname...",
                  ),
                  FieldTileColumn(
                    labelText: "Bio",
                    hintText: "type your bio...",
                    maxLines: 3,
                  ),
                  FieldTileColumn(
                    labelText: "Links",
                    hintText: "enter your link...",
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      "Save",
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
