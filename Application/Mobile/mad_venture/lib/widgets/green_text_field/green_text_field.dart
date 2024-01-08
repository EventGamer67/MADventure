import 'package:flutter/material.dart';
import 'package:mad_venture/tools/theme.dart';

class GreenTextField extends StatelessWidget {
  const GreenTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(color: Colors.white, fontFamily: MyTheme.font),
      decoration: InputDecoration(
          hintStyle: TextStyle(
              fontFamily: MyTheme.font,
              color: Color.fromRGBO(102, 102, 102, 1)),
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: MyTheme.accentColor)),
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: MyTheme.accentColor)),
          hoverColor: MyTheme.accentColor,
          hintText: "Email"),
    );
  }
}
