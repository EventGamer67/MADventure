import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mad_venture/tools/theme.dart';
import 'package:mad_venture/ui/popups/message_dialog/message_dialog_types.dart';

class MessageDialog extends StatelessWidget {
  final MessageDialogTypes type;
  final String message;
  const MessageDialog({super.key, required this.type, required this.message});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: SizedBox(
        height: 120,
        width: double.infinity,
        child: Row(
          children: [
            FittedBox(
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(stops: const [
                  0.5,
                  0.5,
                  1
                ], colors: [
                  Colors.transparent,
                  MyTheme.backgroundColor,
                  MyTheme.backgroundColor
                ])),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: MyTheme.backgroundColor),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: SvgPicture.asset(
                        type == MessageDialogTypes.error
                            ? 'assets/svg/error.svg'
                            : 'assets/svg/success.svg',
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: MyTheme.backgroundColor,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 15, 15, 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        type == MessageDialogTypes.error ? 'Error' : 'Success',
                        style: TextStyle(
                            color: type == MessageDialogTypes.error
                                ? Colors.red
                                : MyTheme.accentColor,
                            fontFamily: MyTheme.font,
                            fontSize: 26,
                            fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      Text(
                        message,
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: MyTheme.font,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Container(
                          alignment: Alignment.centerRight,
                          child: Text(
                            "OK",
                            textAlign: TextAlign.end,
                            style: TextStyle(
                                color: type == MessageDialogTypes.error
                                    ? Colors.red
                                    : MyTheme.accentColor,
                                fontFamily: MyTheme.font,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
