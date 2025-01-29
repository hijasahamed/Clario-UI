import 'package:clario/view/widget/common_widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FilterAndImportWidget extends StatelessWidget {
  const FilterAndImportWidget({
    super.key,
    required this.screenSize,
  });

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: screenSize.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: screenSize.height * 0.02),
          Container(
            width: screenSize.width,
            padding: EdgeInsets.symmetric(
              vertical: screenSize.height * 0.012,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Color(0XFFDFE1E6),width: 1.5),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.calendar_today, color: Color(0XFF808897), size: 18),
                SizedBox(width: screenSize.width * 0.02),
                TextWidget(text: "Last updated: Feb 28, 2024", color: Color(0XFF666D80), size: screenSize.width/28, fontFamily: 'Inter', weight: FontWeight.w600),
                SizedBox(width: screenSize.width * 0.02),
                SvgPicture.asset(
                  'asset/image/refresh.svg',
                  fit: BoxFit.cover,
                )
              ],
            ),
          ),
          SizedBox(height: screenSize.height * 0.02),
          Row(
            children: [
              Container(
                width: screenSize.width / 3,
                padding: EdgeInsets.symmetric(vertical: screenSize.height * 0.011),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.filter_alt_outlined, color: Color(0XFF808897)),
                    SizedBox(width: screenSize.width * 0.02),
                    TextWidget(
                      text: "Filter",
                      color: Color(0XFF666D80),
                      size: screenSize.width / 28,
                      fontFamily: 'Inter',
                      weight: FontWeight.w600,
                    ),
                  ],
                ),
              ),
              SizedBox(width: screenSize.width * 0.02),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(
                    vertical: screenSize.height * 0.012,
                  ),
                  decoration: BoxDecoration(
                    color: Color(0XFF104127),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        'asset/image/download.svg',
                        fit: BoxFit.cover,
                      ),
                      SizedBox(width: screenSize.width * 0.02),
                      TextWidget(
                        text: "Import/Export",
                        color: Colors.white,
                        size: screenSize.width / 28,
                        fontFamily: 'Inter',
                        weight: FontWeight.w600,
                      ),
                      SizedBox(width: screenSize.width * 0.02),
                      Icon(Icons.keyboard_arrow_down, color: Colors.white),
                    ],
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: screenSize.height * 0.02),
        ],
      ),
    );
  }
}