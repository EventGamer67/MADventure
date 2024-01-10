import 'package:flutter/material.dart';
import 'package:mad_venture/tools/theme.dart';

class GreenElevatedButtonBase extends StatelessWidget {
  final List<Widget> items;
  final Function ontap;
  const GreenElevatedButtonBase({super.key, required this.items, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){ontap();},
      child: Container(
        decoration: BoxDecoration(
            color: MyTheme.accentColor,
            border: Border.all(
                color: const Color.fromRGBO(112, 112, 122, 1), width: 1),
            borderRadius: const BorderRadius.all(Radius.circular(35))),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Center(
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: items),
          ),
        ),
      ),
    );
  }
}
