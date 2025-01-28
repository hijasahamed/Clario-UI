import 'package:clario/view/widget/onboarding_one_widgets/clario_logo_widget.dart';
import 'package:clario/view/widget/onboarding_one_widgets/privacy_bar_widget.dart';
import 'package:clario/view/widget/sign_in_screen_widgets/login_section_widget.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key, required this.screenSize});
  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFF8F9FB),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: screenSize.width/15,right: screenSize.width/15,top: screenSize.width/35,bottom: screenSize.width/35),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClarioLogoWidget(screenSize: screenSize),
              LoginSectionWidget(screenSize: screenSize),
              
              Expanded(child: PrivacyBarWidget(screenSize: screenSize))
            ],
          ),
        )
      ),
    );
  }
}