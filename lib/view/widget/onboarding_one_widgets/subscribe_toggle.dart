import 'package:clario/view/widget/common_widgets/text_widget.dart';
import 'package:flutter/material.dart';

class SubscribeToggle extends StatefulWidget {
  const SubscribeToggle({super.key,required this.screenSize});
  final Size screenSize;
  @override
  State<SubscribeToggle> createState() => _SubscribeToggleState();
}

class _SubscribeToggleState extends State<SubscribeToggle> {
  bool isSubscribed = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.screenSize.width * 0.9,
      padding: EdgeInsets.symmetric(vertical: widget.screenSize.height * 0.02),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextWidget(text: "Subscribe to product update", color: Color(0xff0D0D12), size: widget.screenSize.width/28, fontFamily: 'Inter', weight: FontWeight.w600),
                SizedBox(height: widget.screenSize.height * 0.005),
                TextWidget(text: "Get the latest updates about features and products updates.", color: Color(0xff666D80), size: widget.screenSize.width/36, fontFamily: 'Inter', weight: FontWeight.w500,maxline: true,),
              ],
            ),
          ),
          Switch(
            value: isSubscribed,
            onChanged: (value) {
              setState(() {
                isSubscribed = value;
              });
            },
            activeColor: Colors.green,
            inactiveThumbColor: Colors.white,
            inactiveTrackColor: Color(0xffDFE1E6),
          ),
          SizedBox(height: widget.screenSize.height/15,)
        ],
      ),
    );
  }
}