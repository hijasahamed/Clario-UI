import 'package:clario/view/widget/common_widgets/text_widget.dart';
import 'package:clario/view/widget/onboarding_one_widgets/clario_logo_widget.dart';
import 'package:clario/view/widget/onboarding_one_widgets/continue_button.dart';
import 'package:clario/view/widget/onboarding_one_widgets/intro_text_widget.dart';
import 'package:clario/view/widget/onboarding_one_widgets/privacy_bar_widget.dart';
import 'package:clario/view/widget/onboarding_three_widgets/selection_widget.dart';
import 'package:flutter/material.dart';

class OnboardingThreeScreen extends StatelessWidget {
  const OnboardingThreeScreen({super.key, required this.screenSize});
  final Size screenSize;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            left: screenSize.width / 15,
            right: screenSize.width / 15,
            top: screenSize.width / 35,
            bottom: screenSize.width / 35,
          ),
          child: SizedBox.expand(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClarioLogoWidget(screenSize: screenSize),
                IntroTextWidget(
                  screenSize: screenSize,
                  num: '3',
                  title: 'Customize your workspace',
                ),
                TextWidget(
                  text:
                      'You can easily create workflows for virtually any use case. We’ve got dozens of templates to get you started, or you can start with a blank canvas',
                  color: Color(0xff666D80),
                  size: screenSize.width / 30,
                  fontFamily: 'Inter',
                  weight: FontWeight.w500,
                  maxline: true,
                ),
                SelectionWidget(screenSize: screenSize),
                ContinueButton(screenSize: screenSize, pageNumber: 3),
                Expanded(child: PrivacyBarWidget(screenSize: screenSize))
              ],
            ),
          ),
        ),
      ),
    );
  }
}