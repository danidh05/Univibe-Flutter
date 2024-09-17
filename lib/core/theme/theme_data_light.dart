import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:univibeflutter/core/theme/style/color_app.dart';

ThemeData themeData = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: ColorApp.colorPrimary,
  ),
  useMaterial3: true,
  fontFamily: GoogleFonts.inter().fontFamily,
  scaffoldBackgroundColor: Colors.white,
  dividerColor: ColorApp.colorSecondary,
  appBarTheme: const AppBarTheme(
    backgroundColor: ColorApp.colorSecondary,
    foregroundColor: Colors.white,
    iconTheme: IconThemeData(
      color: Colors.white,
    ),
  ),
  dividerTheme: DividerThemeData(
    color: ColorApp.colorSecondary.withOpacity(0.5),
    endIndent: 10,
    indent: 10,
  ),
  chipTheme: ChipThemeData(
    labelPadding: const EdgeInsets.only(left: 5, right: 5),
    side: BorderSide.none,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(25),
      side: BorderSide.none,
    ),
    color: WidgetStateProperty.all(
      ColorApp.colorGreen.withOpacity(0.25),
    ),
    selectedColor: ColorApp.colorGreen,
    iconTheme: const IconThemeData(
      color: Colors.white,
    ),
    surfaceTintColor: Colors.white,
    labelStyle: const TextStyle(
      fontSize: 10,
      color: Colors.black87,
    ),
  ),
  dialogTheme: DialogTheme(
    surfaceTintColor: Colors.white,
    backgroundColor: Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(25),
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: const WidgetStatePropertyAll(ColorApp.colorSecondary),
      foregroundColor: const WidgetStatePropertyAll(Colors.black),
      elevation: const WidgetStatePropertyAll(0.5),
      shadowColor: const WidgetStatePropertyAll(ColorApp.colorSecondary),
      iconColor: const WidgetStatePropertyAll(Colors.black),
      shape: WidgetStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      textStyle: const WidgetStatePropertyAll(
        TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w700,
          fontSize: 18,
        ),
      ),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: const WidgetStatePropertyAll(Colors.black),
      foregroundColor: const WidgetStatePropertyAll(ColorApp.colorSecondary),
      elevation: const WidgetStatePropertyAll(2),
      shadowColor: const WidgetStatePropertyAll(ColorApp.colorSecondary),
      iconColor: const WidgetStatePropertyAll(ColorApp.colorPrimary),
      shape: WidgetStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      textStyle: const WidgetStatePropertyAll(
        TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w700,
          fontSize: 18,
        ),
      ),
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      foregroundColor: const WidgetStatePropertyAll(ColorApp.colorPrimary),
      iconColor: const WidgetStatePropertyAll(ColorApp.colorPrimary),
      shape: WidgetStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      textStyle: const WidgetStatePropertyAll(
        TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w700,
          fontSize: 18,
        ),
      ),
    ),
  ),
  cardTheme: CardTheme(
    shape: RoundedRectangleBorder(
      side: BorderSide(
        color: ColorApp.colorPrimary.withOpacity(0.2),
      ),
      borderRadius: BorderRadius.circular(
        15,
      ),
    ),
    elevation: 1,
    surfaceTintColor: Colors.white,
    color: Colors.white,
    shadowColor: ColorApp.colorPrimary.withOpacity(0.2),
  ),
  inputDecorationTheme: const InputDecorationTheme(
    filled: true,
    fillColor: ColorApp.colorBackGroud,
    contentPadding: EdgeInsets.only(left: 10, right: 10),
    suffixIconColor: ColorApp.colorText,
    iconColor: ColorApp.colorText,
    prefixIconColor: ColorApp.colorText,
    errorStyle: TextStyle(
      fontSize: 8,
      fontWeight: FontWeight.normal,
      color: ColorApp.colorRed,
    ),
    errorBorder: OutlineInputBorder(
      gapPadding: 0,
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.zero,
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: ColorApp.colorPrimary),
      borderRadius: BorderRadius.all(
        Radius.circular(
          10,
        ),
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: ColorApp.colorPrimary),
      borderRadius: BorderRadius.all(
        Radius.circular(
          10,
        ),
      ),
    ),
    disabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: ColorApp.colorPrimary),
      borderRadius: BorderRadius.all(
        Radius.circular(
          10,
        ),
      ),
    ),
    focusedErrorBorder: OutlineInputBorder(
      gapPadding: 0,
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.zero,
    ),
  ),
  expansionTileTheme: ExpansionTileThemeData(
    collapsedShape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(25),
      side: BorderSide.none,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(25),
      side: BorderSide.none,
    ),
  ),
  popupMenuTheme: PopupMenuThemeData(
    surfaceTintColor: Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(
        10,
      ),
    ),
  ),
  textTheme: const TextTheme(
    headlineLarge: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w700,
      fontSize: 36,
    ),
    headlineMedium: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w600,
      fontSize: 23,
    ),
    headlineSmall: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w500,
      fontSize: 18,
    ),
  ),
);
