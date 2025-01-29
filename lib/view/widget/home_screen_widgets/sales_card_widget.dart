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
          icon: Icons.currency_exchange,
          title: "Total Sales",
          amount: "\$23,569.00",
          percentage: "10,5%",
          percentageColor: Colors.green,
          screenSize: screenSize,
        ),
        SizedBox(height: screenSize.height * 0.02),
        SalesCardHolderWidget(
          icon: Icons.bar_chart,
          title: "Avg. Sale value",
          amount: "\$12,680.00",
          percentage: "3,4%",
          percentageColor: Colors.green,
          screenSize: screenSize,
        ),
        SizedBox(height: screenSize.height * 0.02),
        SalesCardHolderWidget(
          icon: Icons.person,
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