import 'package:flutter/material.dart';

class Apptheme {
  static ThemeData get lightheme => ThemeData(
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.blueAccent,
      centerTitle: true,
    ),
  );
  static ThemeData get Darktheme => ThemeData(
    appBarTheme: AppBarTheme(backgroundColor: Colors.grey, centerTitle: true),
  );
}
