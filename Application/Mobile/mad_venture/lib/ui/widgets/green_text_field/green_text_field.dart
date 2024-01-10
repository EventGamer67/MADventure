import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mad_venture/tools/theme.dart';

class GreenTextField extends StatelessWidget {
  final String? hint;
  final TextInputType? type;
  final Function(String)? onChanged;
  final List<TextInputFormatter>? formats;
  final TextAlign? textAlign;
  const GreenTextField(
      {super.key,
      this.hint,
      this.type,
      this.formats,
      this.textAlign,
      this.onChanged});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged ?? (text) {},
      textAlign: textAlign ?? TextAlign.start,
      style: TextStyle(color: Colors.white, fontFamily: MyTheme.font),
      keyboardType: type ?? TextInputType.text,
      inputFormatters: formats ?? [],
      decoration: InputDecoration(
          hintStyle: TextStyle(
              fontFamily: MyTheme.font,
              color: const Color.fromRGBO(102, 102, 102, 1)),
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: MyTheme.accentColor)),
          enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Color.fromRGBO(102, 102, 102, 1))),
          hoverColor: MyTheme.accentColor,
          hintText: hint ?? ''),
    );
  }
}
