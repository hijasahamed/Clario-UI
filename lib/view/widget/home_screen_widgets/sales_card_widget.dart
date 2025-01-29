import 'package:clario/view/widget/home_screen_widgets/sales_card_holder_widget.dart';
import 'package:flutter/material.dart';

class SalesCardWidget extends StatelessWidget {
  const SalesCardWidget({
    super.key,
    required this.screenSize,
  });

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SalesCardHolderWidget(
          image: 'asset/image/coins.svg',
          title: "Total Sales",
          amount: "\$23,569.00",
          percentage: "10,5%",
          percentageColor: Color(0XFF40C4AA),
          screenSize: screenSize,
        ),
        SizedBox(height: screenSize.height * 0.02),
        SalesCardHolderWidget(
          image: 'asset/image/bar.svg',
          title: "Avg. Sale value",
          amount: "\$12,680.00",
          percentage: "3,4%",
          percentageColor: Color(0XFF40C4AA),
          screenSize: screenSize,
        ),
        SizedBox(height: screenSize.height * 0.02),
        SalesCardHolderWidget(
          image: 'asset/image/home person.svg',
          title: "Total Deals",
          amount: "1,204",
          percentage: "0,5%",
          percentageColor: Colors.red,
          screenSize: screenSize,
        ),
      ],
    );
  }
}