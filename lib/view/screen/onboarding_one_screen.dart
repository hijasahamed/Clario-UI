import 'package:clario/view/widget/onboarding_one_widgets/clario_logo_widget.dart';
import 'package:clario/view/widget/onboarding_one_widgets/continue_button.dart';
import 'package:clario/view/widget/onboarding_one_widgets/intro_text_widget.dart';
import 'package:clario/view/widget/onboarding_one_widgets/privacy_bar_widget.dart';
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
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: screenSize.width/15,right: screenSize.width/15,top: screenSize.width/35,bottom: screenSize.width/35),
          child: SizedBox.expand(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClarioLogoWidget(screenSize: screenSize,),
                IntroTextWidget(screenSize: screenSize,num: '1',title: 'Let’s get to you know',),
                SingleChildScrollView(child: UserDetailsWidget(screenSize: screenSize,pageNumber: 1,)),
                SubscribeToggle(screenSize: screenSize),
                ContinueButton(screenSize: screenSize,pageNumber: 1,),
                Expanded(child: PrivacyBarWidget(screenSize: screenSize)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}