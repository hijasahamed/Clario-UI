import 'package:clario/view/screen/onboarding_two_screen.dart';
import 'package:clario/view/widget/common_widgets/text_widget.dart';
import 'package:flutter/material.dart';

class ContinueButton extends StatelessWidget {
  const ContinueButton({
    super.key,
    required this.screenSize,
  });

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => OnboardingTwoScreen(screenSize: screenSize,)),
        );
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
    );
  }
}