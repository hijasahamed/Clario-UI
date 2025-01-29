import 'package:clario/view/screen/home_screen.dart';
import 'package:clario/view/screen/onboarding_three_screen.dart';
import 'package:clario/view/screen/onboarding_two_screen.dart';
import 'package:clario/view/screen/sign_in_screen.dart';
import 'package:clario/view/widget/common_widgets/text_widget.dart';
import 'package:flutter/material.dart';

class ContinueButton extends StatelessWidget {
  const ContinueButton({
    super.key,
    required this.screenSize,
    required this.pageNumber
  });

  final Size screenSize;
  final int pageNumber;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(screenSize.width / 35),
      child: InkWell(
        onTap: () {
          pageNumber==1?
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => OnboardingTwoScreen(screenSize: screenSize,)),
          ): pageNumber==2?
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => OnboardingThreeScreen(screenSize: screenSize,)),
          ): pageNumber==3?
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SignInScreen(screenSize: screenSize,)),
          ): pageNumber==4?
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomeScreen(screenSize: screenSize,)),
          ): null;
        },
        child: Ink(
          width: screenSize.width,
          padding: EdgeInsets.all(screenSize.width/30),
          decoration: BoxDecoration(
            color: Color(0xff104127),
            borderRadius: BorderRadius.circular(screenSize.width/35)
          ),
          child: Center(child: TextWidget(text: 'Continue', color: Colors.white, size: screenSize.width/25, fontFamily: 'Inter', weight: FontWeight.w600)),
        ),
      ),
    );
  }
}