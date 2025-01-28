import 'package:clario/view/widget/common_widgets/text_widget.dart';
import 'package:flutter/material.dart';

class IntroTextWidget extends StatelessWidget {
  const IntroTextWidget({
    super.key,
    required this.screenSize,
  });

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextWidget(text: '1/3', color: Color(0xff666D80), size: screenSize.width/31, fontFamily: 'Inter', weight: FontWeight.w800),
        TextWidget(text: "Let’s get to you know", color: Color(0xff0D0D12), size: screenSize.width/21, fontFamily: 'Inter', weight: FontWeight.bold),
        SizedBox(height: 15,)
      ],
    );
  }
}