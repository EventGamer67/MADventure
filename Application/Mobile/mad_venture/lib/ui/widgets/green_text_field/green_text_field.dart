import 'package:flutter/material.dart';
import 'package:mad_venture/tools/theme.dart';

class GreenTextField extends StatelessWidget {
  final String hint;
  const GreenTextField({super.key, required this.hint});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(color: Colors.white, fontFamily: MyTheme.font),
      decoration: InputDecoration(
          hintStyle: TextStyle(
              fontFamily: MyTheme.font,
              color: const Color.fromRGBO(102, 102, 102, 1)),
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: MyTheme.accentColor)),
          enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Color.fromRGBO(102, 102, 102, 1))),
          hoverColor: MyTheme.accentColor,
          hintText: hint),
    );
  }
}
