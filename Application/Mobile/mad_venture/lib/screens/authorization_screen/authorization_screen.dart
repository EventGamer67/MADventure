import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mad_venture/screens/registration_screen/registration_screen.dart';
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
                        const GreenTextField(
                          hint: "Email",
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const GreenTextField(
                          hint: "Password",
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        GreenElevatedButtonBase(
                          ontap: () {
                            showDialog(
                                context: context,
                                builder: (context) =>
                                    const ErrorMessageDialog());
                          },
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
                          ontap: () {},
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
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const RegistrationScreen()));
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Text(
                              "Sign up",
                              style: TextStyle(
                                  color: MyTheme.accentColor, fontSize: 20),
                            ),
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

class ErrorMessageDialog extends StatelessWidget {
  const ErrorMessageDialog({super.key});

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
                        'assets/svg/error.svg',
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
                        "Error",
                        style: TextStyle(
                            color: Colors.red,
                            fontFamily: MyTheme.font,
                            fontSize: 26,
                            fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Text(
                        "No connection to server\nCheck the internet on your device",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: MyTheme.font,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
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
                                color: Colors.red,
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

// Row(
//         children: [
//           Container(
//             child: Padding(
//                 padding: EdgeInsets.all(10),
//                 child: SvgPicture.asset(
//                   'assets/svg/error.svg',
//                   height: 100,
//                 )),
//             decoration: BoxDecoration(
//                 color: MyTheme.backgroundColor, shape: BoxShape.circle),
//           ),
//           Container(
//             height: 120,
//             child: Text("123"),
//             decoration: BoxDecoration(color: MyTheme.backgroundColor),
//           )
//         ],
//       ),


    // return Dialog(
    //     child: Container(
    //   height: 140,
    //   child: Stack(fit: StackFit.loose, children: [
    //     Positioned(
    //         left: 58,
    //         child: Container(
    //           height: 160,
    //           child: Text("123"),
    //           decoration: BoxDecoration(color: MyTheme.backgroundColor),
    //         )),
    //     Align(
    //       alignment: Alignment.centerLeft,
    //       child: Container(
    //         child: Align(
    //           alignment: Alignment.centerLeft,
    //           child: Container(
    //             decoration: BoxDecoration(
    //                 color: MyTheme.backgroundColor, shape: BoxShape.circle),
    //             child: Padding(
    //               padding: const EdgeInsets.all(8.0),
    //               child: SvgPicture.asset(
    //                 'assets/svg/error.svg',
    //                 height: 100,
    //               ),
    //             ),
    //           ),
    //         ),
    //       ),
    //     ),
    //   ]),
    // ));