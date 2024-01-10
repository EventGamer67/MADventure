import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mad_venture/tools/theme.dart';
import 'package:mad_venture/ui/widgets/green_elevated_button/green_elevated_button.dart';
import 'package:mad_venture/ui/widgets/green_text_field/green_text_field.dart';

class RegistrationScreenPhoneActivation extends StatefulWidget {
  const RegistrationScreenPhoneActivation({super.key});

  @override
  State<RegistrationScreenPhoneActivation> createState() =>
      _RegistrationScreenPhoneActivationState();
}

class _RegistrationScreenPhoneActivationState
    extends State<RegistrationScreenPhoneActivation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/map_background.png'))),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: MyTheme.backgroundColor,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(24))),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        const Image(
                            image: AssetImage('assets/images/logo.png')),
                        const SizedBox(
                          height: 30,
                        ),
                        Text(
                          'Activation code was sent to number:',
                          style: TextStyle(
                              fontFamily: MyTheme.font,
                              fontSize: 18,
                              color: const Color.fromRGBO(102, 102, 102, 1)),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Text(
                          '+7 999 223 43 23',
                          style: TextStyle(
                              fontFamily: MyTheme.font,
                              fontSize: 18,
                              color: const Color.fromRGBO(102, 102, 102, 1)),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 70,
                          child: Row(mainAxisSize: MainAxisSize.min, children: [
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 5),
                              height: 60,
                              width: 60,
                              child: GreenTextField(
                                type: TextInputType.number,
                                onChanged: (text){ if(text.length == 1){FocusScope.of(context).nextFocus();}},
                                textAlign: TextAlign.center,
                                formats: [
                                  FilteringTextInputFormatter.digitsOnly,
                                  LengthLimitingTextInputFormatter(1)
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 5),
                              height: 60,
                              width: 60,
                              child: GreenTextField(
                                onChanged: (text){ if(text.length == 1){FocusScope.of(context).nextFocus();}},
                                type: TextInputType.number,
                                textAlign: TextAlign.center,
                                formats: [
                                  FilteringTextInputFormatter.digitsOnly,
                                  LengthLimitingTextInputFormatter(1)
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 5),
                              height: 60,
                              width: 60,
                              child: GreenTextField(
                                onChanged: (text){ if(text.length == 1){FocusScope.of(context).nextFocus();}},
                                type: TextInputType.number,
                                textAlign: TextAlign.center,
                                formats: [
                                  FilteringTextInputFormatter.digitsOnly,
                                  LengthLimitingTextInputFormatter(1)
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 5),
                              height: 60,
                              width: 60,
                              child: GreenTextField(
                                onChanged: (text){ if(text.length == 1){FocusScope.of(context).nextFocus();}},
                                type: TextInputType.number,
                                textAlign: TextAlign.center,
                                formats: [
                                  FilteringTextInputFormatter.digitsOnly,
                                  LengthLimitingTextInputFormatter(1)
                                ],
                              ),
                            ),
                          ]),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          '299 sec',
                          style: TextStyle(
                              fontFamily: MyTheme.font,
                              fontSize: 18,
                              color: const Color.fromRGBO(102, 102, 102, 1)),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(20),
                          child: Text(
                            "Send code again",
                            style: TextStyle(
                                color: Color.fromRGBO(102, 102, 102, 1),
                                fontSize: 20),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
