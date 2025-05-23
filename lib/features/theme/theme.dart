import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  useMaterial3: true,
  colorScheme: ColorScheme.light(
    primary: Colors.grey.shade300,
    onPrimary: Colors.black,
    secondary: Colors.grey.shade200,
    onSecondary: Colors.black,
    surface: Colors.grey.shade400,
    onSurface: Colors.black,
    //background: Colors.white,
    //onBackground: Colors.black,
    error: Colors.red,
    onError: Colors.white,
  )
);

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  useMaterial3: true,
  colorScheme: ColorScheme.dark(
    primary: Colors.grey.shade800,
    onPrimary: Colors.white,
    secondary: Colors.grey.shade700,
    onSecondary: Colors.white,
    surface: Colors.grey.shade900,
    onSurface: Colors.white,
    //background: Colors.black,
    //onBackground: Colors.white,
    error: Colors.red.shade400,
    onError: Colors.black,
  )
);