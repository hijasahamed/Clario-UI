import 'package:clario/view/screen/onboarding_one.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ClarioApp());
}

class ClarioApp extends StatelessWidget {
  const ClarioApp({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);
    return MaterialApp(
      title: 'Clario',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: OnboardingOne(screenSize: screenSize,),
    );
  }
}