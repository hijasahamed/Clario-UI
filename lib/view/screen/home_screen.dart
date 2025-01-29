import 'package:clario/view/widget/home_screen_widgets/filter_import_widget.dart';
import 'package:clario/view/widget/home_screen_widgets/graph_widget.dart';
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
      appBar: AppBar(
        backgroundColor: Colors.white,
        flexibleSpace: SizedBox(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(left: screenSize.width/25,right: screenSize.width/25,bottom: 2),
              child: HomeAppBarWidget(screenSize: screenSize),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(screenSize.width/25),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Divider(color: Color(0XFFDFE1E6),),
                FilterAndImportWidget(screenSize: screenSize),
                SalesCardWidget(screenSize: screenSize),
                SizedBox(height: screenSize.height/45,),
                GraphWidget(screenSize: screenSize)
              ],
            ),
          ),
        ),
      ),
    );
  }
}