import 'package:flutter/material.dart';

ThemeData lightModeTheme = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    surface: Colors.white,  // screen background color
    primary: Colors.black,
    secondary: Colors.grey.shade200,
  )
);


ThemeData darkModeTheme = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    surface: Colors.black,
    primary: Colors.white,
    secondary: Colors.green.shade500,
  )
);