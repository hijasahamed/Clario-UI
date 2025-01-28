import 'package:clario/view/widget/common_widgets/text_widget.dart';
import 'package:clario/view/widget/onboarding_one_widgets/user_details_form_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class UserDetailsWidget extends StatelessWidget {
  const UserDetailsWidget({
    super.key,
    required this.screenSize,
    required this.pageNumber
  });

  final Size screenSize;
  final int pageNumber;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          spacing: screenSize.width/23,
          children: [
            Container(
              padding: EdgeInsets.all(screenSize.width/28),
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xffDFE1E6),width: 1.5),
                shape: BoxShape.circle,
              ),
              child: Center(
                child: SvgPicture.asset(
                  'asset/image/person.svg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(screenSize.width/37),
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xffDFE1E6),width: 1.5),
                borderRadius: BorderRadius.circular(screenSize.width/35)
              ),
              child: Row(
                spacing: screenSize.width/35,
                children: [
                  SvgPicture.asset(
                    'asset/image/upload image icon.svg',
                    fit: BoxFit.cover,
                  ),
                  TextWidget(text: 'Add Image', color: Color(0xff0D0D12), size: screenSize.width/30, fontFamily: 'Inter', weight: FontWeight.bold)
                ],
              )
            )
          ],
        ),
        UserDetailsFormWidget(screenSize: screenSize,pageNumber: pageNumber,)
      ],
    );
  }
}