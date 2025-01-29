import 'package:clario/view/widget/common_widgets/text_widget.dart';
import 'package:flutter/material.dart';

class SalesCardHolderWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  final String amount;
  final String percentage;
  final Color percentageColor;
  final Size screenSize;

  const SalesCardHolderWidget({super.key, 
    required this.icon,
    required this.title,
    required this.amount,
    required this.percentage,
    required this.percentageColor,
    required this.screenSize,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(screenSize.width * 0.05),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4,
            spreadRadius: 1,
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.blue.shade50,
                child: Icon(icon, color: Colors.blue),
              ),
              Spacer(),
              Icon(Icons.arrow_forward, color: Colors.grey),
            ],
          ),
          SizedBox(height: screenSize.height * 0.01),
          TextWidget(
            text: title,
            color: Color(0XFF666D80),
            size: screenSize.width / 28,
            fontFamily: 'Inter',
            weight: FontWeight.w600,
          ),
          SizedBox(height: screenSize.height * 0.005),
          TextWidget(
            text: amount,
            color: Colors.black,
            size: screenSize.width / 20,
            fontFamily: 'Inter',
            weight: FontWeight.bold,
          ),
          SizedBox(height: screenSize.height * 0.01),
          Row(
            children: [
              Icon(
                percentageColor == Colors.green ? Icons.arrow_upward : Icons.arrow_downward,
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
        ],
      ),
    );
  }
}