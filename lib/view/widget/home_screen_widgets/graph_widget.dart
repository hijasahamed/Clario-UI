import 'package:clario/view/widget/common_widgets/text_widget.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GraphWidget extends StatelessWidget {
  const GraphWidget({super.key,required this.screenSize});
  final Size screenSize;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xffDFE1E6),width: 1.5),
        borderRadius: BorderRadius.circular(screenSize.width/35)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(screenSize.width/35),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SvgPicture.asset(
                      'asset/image/piggy.svg',
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(width: 8),
                    TextWidget(text: 'Revenue', color: Color(0xff666D80), size: screenSize.width/25, fontFamily: 'Inter', weight: FontWeight.w500)
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(screenSize.width/75),
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xffDFE1E6),width: 1.5),
                    borderRadius: BorderRadius.circular(screenSize.width/50)
                  ),
                  child: Row(
                    children: [
                      TextWidget(text: 'All Products', color: Color(0xff666D80), size: screenSize.width/27, fontFamily: 'Inter', weight: FontWeight.w500),
                      Icon(Icons.keyboard_arrow_down)
                    ],
                  ),
                )
              ],
            ),
          ),
          Divider(color: Color(0xffDFE1E6),),
          SizedBox(height: screenSize.height/120),
          Padding(
            padding: EdgeInsets.all(screenSize.width/35),
            child: Column(
              children: [
                Row(
                  children: [
                    TextWidget(text: "\$23,569.00", color: Color(0xff0D0D12), size: screenSize.width/16, fontFamily: 'Inter', weight: FontWeight.bold),
                    Spacer(),
                    const Icon(Icons.arrow_upward, color: Color(0xff40C4AA), size: 16),
                    TextWidget(text: '10.5%', color: Color(0xff40C4AA), size: screenSize.width/30, fontFamily: 'Inter', weight: FontWeight.w600),
                    SizedBox(width: screenSize.width/75,),
                    TextWidget(text: 'from last period', color: Color(0xff666D80), size: screenSize.width/30, fontFamily: 'Inter', weight: FontWeight.w500),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    _buildLegend(Color(0xff104127), "This period"),
                    const SizedBox(width: 16),
                    _buildLegend(Color(0xff33CFFF), "Last period"),
                  ],
                ),
                SizedBox(height: screenSize.height/80,)
              ],
            ),
          ),
          // Line Chart
          Padding(
            padding: EdgeInsets.all(screenSize.width/35),
            child: AspectRatio(
              aspectRatio: 1.6,
              child: LineChart(
                LineChartData(
                  gridData: FlGridData(show: false),
                  titlesData: FlTitlesData(
                    leftTitles: AxisTitles(
                      sideTitles: SideTitles(showTitles: true, interval: 5000, reservedSize: 40),
                    ),
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(showTitles: true, interval: 10, reservedSize: 32),
                    ),
                    rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                    topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                  ),
                  borderData: FlBorderData(show: false),
                  lineBarsData: [
                    LineChartBarData(
                      spots: [
                        FlSpot(0, 12000),
                        FlSpot(1, 15000),
                        FlSpot(2, 13000),
                        FlSpot(3, 18000),
                        FlSpot(4, 20000),
                      ],
                      isCurved: true,
                      color: Colors.green,
                      dotData: FlDotData(show: true),
                      belowBarData: BarAreaData(show: false),
                    ),
                    LineChartBarData(
                      spots: [
                        FlSpot(0, 10000),
                        FlSpot(1, 11000),
                        FlSpot(2, 12500),
                        FlSpot(3, 12800),
                        FlSpot(4, 12900),
                      ],
                      isCurved: true,
                      color: Colors.blue,
                      dotData: FlDotData(show: true),
                      // ignore: deprecated_member_use
                      belowBarData: BarAreaData(show: true, color: Colors.blue.withOpacity(0.2)),
                    ),
                  ],
                ),
              ),
            ),
          ),
      
          // Legend
          
        ],
      ),
    );
  }
  Widget _buildLegend(Color color, String text) {
  return Row(
      children: [
        Container(width: 12, height: 12, color: color, margin: const EdgeInsets.only(right: 4)),
        Text(text, style: TextStyle(fontSize: 14,color: Color(0xff666D80))),
      ],
    );
  }
}