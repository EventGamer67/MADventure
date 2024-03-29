import 'package:flutter/material.dart';
import 'package:mad_venture/ui/screens/splash_screen/splash_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SplashScreen()
    );
  }
}
