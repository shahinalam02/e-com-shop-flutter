import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  colorScheme: ColorScheme.light(
    background: Colors.grey.shade200,
    primary: Colors.grey.shade200,
    secondary: Colors.grey.shade300,
    inversePrimary: Colors.grey[800],
  ),
);

ThemeData darkTheme = ThemeData(
  colorScheme: ColorScheme.dark(
    background: Colors.grey.shade900,
    primary: Colors.grey.shade200,
    secondary: Colors.grey.shade800,
    inversePrimary: Colors.grey.shade300,
  ),
);
