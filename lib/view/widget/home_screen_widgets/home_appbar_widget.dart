import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeAppBarWidget extends StatelessWidget {
  const HomeAppBarWidget({
    super.key,
    required this.screenSize,
  });

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.all(screenSize.width/60),
          decoration: BoxDecoration(
            border: Border.all(color: Color(0XFFDFE1E6),width: 1.5),
            borderRadius: BorderRadius.circular(screenSize.width/40)
          ),
          child: Icon(Icons.menu,color: Color(0XFF808897),size: screenSize.width/20,)
        ),
        Spacer(),
        SizedBox(
          width: screenSize.width/4,
          child: Stack(
            fit: StackFit.loose,
            children: [
              Positioned(
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Image.asset(
                    'asset/image/f.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                left: screenSize.width/14,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Image.asset(
                    'asset/image/m.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                left: screenSize.width/7.5,
                bottom: screenSize.width/125,
                child: Container(
                  height: screenSize.width/12,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Color(0XFFDFE1E6),
                      width: 1.5, 
                    ),
                  ),
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: SvgPicture.asset(
                        'asset/image/plus icon.svg', 
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          width: 1.5,
          height: screenSize.width/16.5,
          color: Color(0XFFDFE1E6),
        ),
        SizedBox(width: screenSize.width/35,),
        Container(
          padding: EdgeInsets.all(screenSize.width/60),
          decoration: BoxDecoration(
            border: Border.all(color: Color(0XFFDFE1E6),width: 1.5),
            borderRadius: BorderRadius.circular(screenSize.width/40)
          ),
          child: Icon(Icons.more_vert,color: Color(0XFF808897),size: screenSize.width/20,)
        ),
      ],
    );
  }
}