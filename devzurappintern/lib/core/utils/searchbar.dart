import 'package:flutter/material.dart';

class SearchBarPage extends StatelessWidget {
  const SearchBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 0),
        fillColor: Colors.grey[300],
        filled: true,
        prefixIcon: const Icon(Icons.search),
        hintText: "Search...",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide.none,
        ),
      ),
      style: const TextStyle(fontSize: 15),
    );
  }
}
