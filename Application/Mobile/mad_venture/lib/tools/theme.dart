import 'package:flutter/material.dart';

sealed class MyTheme{
  static Color whiteColor = const Color.fromARGB(255, 255, 255, 255);
  static Color accentColor = const Color.fromARGB(255, 20, 199, 175);
  static Color backgroundColor = const Color.fromARGB(255, 44, 44, 45);

  static String font = 'Gotham';

  static TextStyle greenText = const TextStyle(fontFamily: 'Gotham', color:  Color.fromARGB(255, 20, 199, 175));
  static TextStyle whiteText = const TextStyle(fontFamily: 'Gotham', color:  Colors.white);
}