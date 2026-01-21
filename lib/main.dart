import 'package:bus_app/AppTheme/Themedata.dart';
import 'package:bus_app/Loginpg.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(My_app());
}

class My_app extends StatelessWidget {
  const My_app({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Loginpg(),
      theme: Apptheme.lightheme,
    );
  }
}
