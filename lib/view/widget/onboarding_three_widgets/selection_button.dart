import 'package:clario/view/widget/common_widgets/text_widget.dart';
import 'package:flutter/material.dart';

class SelectionButton extends StatelessWidget {
  const SelectionButton({super.key,required this.text,required this.screenSize,this.isColored});
  final String text;
  final Size screenSize;
  final bool? isColored;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isColored == true
        ? HSLColor.fromColor(Color(0xff7EDDF1))
            .withLightness(0.97)
            .toColor()
        : Colors.transparent,
        borderRadius: BorderRadius.circular(7),
        border: Border.all(width: 1.5,color: isColored==true? Color(0xff7EDDF1):Color(0xffDFE1E6))
      ),
      padding: EdgeInsets.all(screenSize.width/40),
      child: Center(child: TextWidget(text: text, color: isColored==true? Color(0xff7EDDF1): Color(0xff666D80), size: screenSize.width/33, fontFamily: 'Inter', weight: FontWeight.w700),),
    );
  }
}