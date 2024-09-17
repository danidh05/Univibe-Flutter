import 'package:flutter/material.dart';

class DialogeAlertDelete extends StatelessWidget {
  const DialogeAlertDelete({super.key});

  @override
  Widget build(BuildContext context) {
    return const AlertDialog(
      icon: Icon(
        Icons.delete,
      ),
      iconColor: Colors.red,
      content: Text("are you sure you want to delete this item?"),
      actions: [
        TextButton(
          onPressed: null,
          child: Text("Cancel"),
        ),
        ElevatedButton(
          onPressed: null,
          child: Text("Yes"),
        ),
      ],
    );
  }
}
