import 'package:clario/view/widget/common_widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SalesCardHolderWidget extends StatelessWidget {
  final String image;
  final String title;
  final String amount;
  final String percentage;
  final Color percentageColor;
  final Size screenSize;

  const SalesCardHolderWidget({super.key, 
    required this.image,
    required this.title,
    required this.amount,
    required this.percentage,
    required this.percentageColor,
    required this.screenSize,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenSize.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Color(0XFFDFE1E6),width: 1.5)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(screenSize.width * 0.05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: screenSize.width/8,
                  width: screenSize.width/8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Color(0XFFDFE1E6),width: 1.5)
                  ),
                  child: Center(
                    child: SvgPicture.asset(
                      image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: screenSize.height * 0.01),
                TextWidget(
                  text: title,
                  color: Color(0XFF666D80),
                  size: screenSize.width / 28,
                  fontFamily: 'Inter',
                  weight: FontWeight.w500,
                ),
                SizedBox(height: screenSize.height * 0.005),
                Row(
                  children: [
                    TextWidget(
                      text: amount,
                      color: Colors.black,
                      size: screenSize.width / 20,
                      fontFamily: 'Inter',
                      weight: FontWeight.bold,
                    ),
                    Spacer(),
                    SvgPicture.asset(
                      'asset/image/more arrow.svg',
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(screenSize.width/35),
            decoration: BoxDecoration(
              border: Border(top: BorderSide(color: Color(0XFFDFE1E6))),
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15),bottomRight: Radius.circular(15)),
              color: Color(0xffF8F9FB) 
            ),
            child: Row(
              children: [
                Icon(
                  percentageColor == Color(0XFF40C4AA) ? Icons.arrow_upward : Icons.arrow_downward,
                  color: percentageColor,
                  size: screenSize.width / 25,
                ),
                SizedBox(width: screenSize.width * 0.01),
                TextWidget(
                  text: "$percentage%",
                  color: percentageColor,
                  size: screenSize.width / 28,
                  fontFamily: 'Inter',
                  weight: FontWeight.w600,
                ),
                Spacer(),
                TextWidget(
                  text: "from last period",
                  color: Color(0XFF666D80),
                  size: screenSize.width / 30,
                  fontFamily: 'Inter',
                  weight: FontWeight.w500,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}