import 'package:flutter/material.dart';
import 'package:mad_venture/tools/theme.dart';
import 'package:mad_venture/ui/widgets/green_elevated_button/green_elevated_button.dart';
import 'package:mad_venture/ui/widgets/green_text_field/green_text_field.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
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
                        const GreenTextField(
                          hint: "Email",
                        ),
                        const GreenTextField(
                          hint: "Nickname",
                        ),
                        const Row(
                          children: [
                            Text(
                              "+",
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                                child: GreenTextField(
                              hint: "Code",
                            )),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                                flex: 6,
                                child: GreenTextField(
                                  hint: "Phone",
                                ))
                          ],
                        ),
                        const GreenTextField(
                          hint: "Password",
                        ),
                        const GreenTextField(
                          hint: "Repeat password",
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        GreenElevatedButtonBase(
                          ontap: (){},
                          items: [
                            Text(
                              "Sign up",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: MyTheme.font,
                                  fontSize: 20),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Text(
                            "Sign up",
                            style: TextStyle(
                                color: MyTheme.accentColor, fontSize: 20),
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
