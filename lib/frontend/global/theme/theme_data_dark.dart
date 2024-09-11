import 'package:flutter/material.dart';

final ThemeData themeDataDark = ThemeData(
  // Define the default brightness and colors.
  primaryColor: Colors.red,
  useMaterial3: true,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  scaffoldBackgroundColor: Colors.black,
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.red,
  ),
  hoverColor: Colors.red.withOpacity(0.2),
  fontFamily: "Robot",

  // Define the default TextTheme. Use this to specify the default text styling for headlines, titles, bodies of text, and more.
  textTheme: const TextTheme(
    headlineSmall: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
    headlineMedium: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
    headlineLarge: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
  ),

  // Define the default button styles
  buttonTheme: const ButtonThemeData(
    buttonColor: Colors.red,
    textTheme: ButtonTextTheme.primary,
  ),

  iconTheme: const IconThemeData(
    color: Colors.orange,
    size: 24.0,
  ),

  // Define the default input decoration theme
  inputDecorationTheme: InputDecorationTheme(
    border: const OutlineInputBorder(),
    filled: true,
    fillColor: Colors.grey[800],
  ),
);
