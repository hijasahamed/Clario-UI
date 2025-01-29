import 'package:clario/view/widget/common_widgets/text_widget.dart';
import 'package:clario/view/widget/home_screen_widgets/filter_import_widget.dart';
import 'package:clario/view/widget/home_screen_widgets/home_appbar_widget.dart';
import 'package:clario/view/widget/home_screen_widgets/sales_card_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key,required this.screenSize});
  final Size screenSize;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(screenSize.width/25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HomeAppBarWidget(screenSize: screenSize),
              SizedBox(height: screenSize.height/80,),
              Divider(color: Color(0XFFDFE1E6),),
              FilterAndImportWidget(screenSize: screenSize),
              SalesCardWidget(screenSize: screenSize),
            ],
          ),
        ),
      ),
    );
  }
}





