import 'package:flutter/material.dart';
import 'package:mad_venture/ui/screens/onboard_screen/onboard_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _nextSreen();
  }

  void _nextSreen() async {
    await Future.delayed(const Duration(seconds: 2));
    // ignore: use_build_context_synchronously
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => const OnboardScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image:
                    AssetImage('assets/images/splash_screen_background.png'))),
        child: const Align(
          alignment: Alignment(0, -0.45),
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Image(
              image: AssetImage('assets/images/logo.png'),
            ),
          ),
        ),
      ),
    );
  }
}
