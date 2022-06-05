import 'package:flutter/material.dart';

ThemeData themeData() {
  return ThemeData(
    inputDecorationTheme: inputDecorationTheme(),
  );
}

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(28),
    borderSide: const BorderSide(color: Colors.white),
  );

  OutlineInputBorder outlineEnableBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(28),
    borderSide: const BorderSide(color: Colors.white60),
  );

  return InputDecorationTheme(
      contentPadding: const EdgeInsets.symmetric(horizontal: 25),
      border: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      enabledBorder: outlineEnableBorder,
      hintStyle: const TextStyle(color: Colors.white70),
      labelStyle: const TextStyle(
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: 18));
}
