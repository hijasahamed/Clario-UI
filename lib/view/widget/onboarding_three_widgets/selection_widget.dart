import 'package:clario/view/widget/common_widgets/text_widget.dart';
import 'package:clario/view/widget/onboarding_three_widgets/selection_button.dart';
import 'package:flutter/material.dart';

class SelectionWidget extends StatelessWidget {
  const SelectionWidget({
    super.key,
    required this.screenSize,
  });

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        TextWidget(text: 'What will you be using Clario for?', color: Color(0xff0D0D12), size: screenSize.width/28, fontFamily: 'Inter', weight: FontWeight.bold),
        const SizedBox(height: 20),
        Row(
          spacing: screenSize.width/38,
          children: [
            SelectionButton(text: 'Sales', screenSize: screenSize,isColored: true,),
            SelectionButton(text: 'Recruiting',screenSize: screenSize,),
            SelectionButton(text: 'Marketing',screenSize: screenSize,isColored: true,),
            SelectionButton(text: 'Investing',screenSize: screenSize,),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          spacing: screenSize.width/38,
          children: [
            SelectionButton(text: 'Customer Success',screenSize: screenSize,),
            SelectionButton(text: 'Human Resources',screenSize: screenSize,isColored: true,),
          ],
        ),
        const SizedBox(height: 10),
        SizedBox(
          width: screenSize.width/4,
          child: SelectionButton(text: 'Fundraising',screenSize: screenSize,)
        ),
        const SizedBox(height: 20),
        TextWidget(text: 'What are you working on at the moment?', color: Color(0xff0D0D12), size: screenSize.width/28, fontFamily: 'Inter', weight: FontWeight.bold),
        const SizedBox(height: 20),
        Row(
          spacing: screenSize.width/38,
          children: [
            SelectionButton(text: 'Tracking Leads', screenSize: screenSize,isColored: true,),
            SelectionButton(text: 'Hiring New People',screenSize: screenSize,isColored: true,),
            SelectionButton(text: 'Others',screenSize: screenSize,),
          ],
        ),
        const SizedBox(height: 25),
      ],
    );
  }
}
