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
      children: [
        SvgPicture.asset(
          'asset/image/clario_logo.svg',
          fit: BoxFit.contain,
        ),
        SizedBox(height: screenSize.height/15,)
      ],
    );
  }
}