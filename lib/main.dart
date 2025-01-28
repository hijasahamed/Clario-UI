import 'package:clario/view/screen/onboarding_one_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const ClarioApp());
}

class ClarioApp extends StatelessWidget {
  const ClarioApp({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light,
    ));
    return MaterialApp(
      title: 'Clario',
      debugShowCheckedModeBanner: false,
      home: OnboardingOneScreen(screenSize: screenSize,),
    );
  }
}