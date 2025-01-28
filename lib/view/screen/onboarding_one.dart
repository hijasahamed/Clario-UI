import 'package:clario/view/widget/onboarding_one_widgets/clario_logo_widget.dart';
import 'package:flutter/material.dart';

class OnboardingOne extends StatelessWidget {
  const OnboardingOne({super.key, required this.screenSize});
  final Size screenSize;
  @override
  Widget build(BuildContext context) {
    return Scaffold(      
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: screenSize.width/15,right: screenSize.width/15,top: screenSize.width/35,bottom: screenSize.width/35),
          child: Column(
            children: [
              ClarioLogoWidget(screenSize: screenSize,),
            ],
          ),
        ),
      ),
    );
  }
}