import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ClarioLogoWidget extends StatelessWidget {
  const ClarioLogoWidget({
    super.key,
    required this.screenSize
  });
  final Size screenSize;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SvgPicture.asset(
          'asset/image/clario_logo.svg',
          fit: BoxFit.contain,
          height: screenSize.width/15,
          width: screenSize.width/15,
        ),
        SizedBox(height: screenSize.width/10,),
      ],
    );
  }
}