import 'package:clario/view/widget/common_widgets/text_widget.dart';
import 'package:flutter/material.dart';

class PrivacyBarWidget extends StatelessWidget {
  const PrivacyBarWidget({
    super.key,
    required this.screenSize,
  });

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: screenSize.height/19),
        TextWidget(text: '© 2024 Clario', color: Color(0xff666D80), size: screenSize.width/30, fontFamily: 'Inter', weight: FontWeight.w500),
        SizedBox(height: screenSize.height/80),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.lock_outline,color: Color(0xff808897),),
            ),
            TextWidget(text: 'Privacy', color: Color(0xff666D80), size: screenSize.width/30, fontFamily: 'Inter', weight: FontWeight.w500),
            const SizedBox(width: 20.0),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.description,color: Color(0xff808897),),
            ),
            TextWidget(text: 'Terms', color: Color(0xff666D80), size: screenSize.width/30, fontFamily: 'Inter', weight: FontWeight.w500),
            const SizedBox(width: 20.0),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.help_outline,color: Color(0xff808897),),
            ),
            TextWidget(text: 'Get help', color: Color(0xff666D80), size: screenSize.width/30, fontFamily: 'Inter', weight: FontWeight.w500),
          ],
        ),
      ],
    );
  }
}