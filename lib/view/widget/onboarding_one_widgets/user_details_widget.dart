import 'package:clario/view/widget/common_widgets/custom_textformfield.dart';
import 'package:clario/view/widget/common_widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class UserDetailsWidget extends StatelessWidget {
  const UserDetailsWidget({
    super.key,
    required this.screenSize,
  });

  final Size screenSize;

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
        SizedBox(height: screenSize.height/40),
        CustomTextField(label: "First name", hintText: "John"),
        SizedBox(height: 16),
        CustomTextField(label: "Last name", hintText: "Doe"),
        SizedBox(height: 16),
        CustomTextField(label: "Email", hintText: "johndoe@mail.com"),
        SizedBox(height: screenSize.height/70),
      ],
    );
  }
}