import 'package:flutter/material.dart';
import 'package:mad_venture/tools/theme.dart';
import 'package:mad_venture/widgets/green_elevated_button/green_elevated_button.dart';
import 'package:mad_venture/widgets/green_text_field/green_text_field.dart';

class AuthorizationScreen extends StatefulWidget {
  const AuthorizationScreen({super.key});

  @override
  State<AuthorizationScreen> createState() => _AuthorizationScreenState();
}

class _AuthorizationScreenState extends State<AuthorizationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomInset: false,
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
                        GreenTextField(),
                        const SizedBox(
                          height: 30,
                        ),
                        GreenTextField(),
                        const SizedBox(
                          height: 30,
                        ),
                        GreenElevatedButtonBase(
                          items: [
                            Text(
                              "Sign in",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: MyTheme.font,
                                  fontSize: 20),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        GreenElevatedButtonBase(
                          items: [
                            const Icon(
                              Icons.facebook,
                              color: Colors.white,
                              size: 20,
                            ),
                            Text(
                              "Sign in with Facebook",
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
