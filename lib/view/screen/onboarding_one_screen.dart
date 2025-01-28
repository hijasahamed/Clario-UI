import 'package:clario/view/widget/common_widgets/text_widget.dart';
import 'package:clario/view/widget/onboarding_one_widgets/clario_logo_widget.dart';
import 'package:clario/view/widget/onboarding_one_widgets/continue_button.dart';
import 'package:clario/view/widget/onboarding_one_widgets/intro_text_widget.dart';
import 'package:clario/view/widget/onboarding_one_widgets/subscribe_toggle.dart';
import 'package:clario/view/widget/onboarding_one_widgets/user_details_widget.dart';
import 'package:flutter/material.dart';

class OnboardingOneScreen extends StatelessWidget {
  const OnboardingOneScreen({super.key, required this.screenSize});
  final Size screenSize;
  @override
  Widget build(BuildContext context) {
    return Scaffold(      
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: screenSize.width/15,right: screenSize.width/15,top: screenSize.width/35,bottom: screenSize.width/35),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClarioLogoWidget(screenSize: screenSize,),
                IntroTextWidget(screenSize: screenSize),
                UserDetailsWidget(screenSize: screenSize),
                SubscribeToggle(screenSize: screenSize),
                ContinueButton(screenSize: screenSize)
              ],
            ),
          ),
        ),
      ),
    );
  }
}