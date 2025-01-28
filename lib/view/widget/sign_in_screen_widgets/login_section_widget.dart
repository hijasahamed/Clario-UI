import 'package:clario/view/widget/common_widgets/custom_textformfield.dart';
import 'package:clario/view/widget/common_widgets/text_widget.dart';
import 'package:clario/view/widget/onboarding_one_widgets/continue_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginSectionWidget extends StatefulWidget {
  const LoginSectionWidget({super.key,required this.screenSize});
  final Size screenSize;

  @override
  State<LoginSectionWidget> createState() => _LoginSectionWidgetState();
}

class _LoginSectionWidgetState extends State<LoginSectionWidget> {
  bool checked = false;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(widget.screenSize.width / 35),
      ),
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.all(widget.screenSize.width/30),
        child: Column(
          spacing: widget.screenSize.width/25,
          children: [
            Container(
              padding: EdgeInsets.only(bottom: widget.screenSize.width/35),
              child: Column(
                spacing: widget.screenSize.width/50,
                children: [
                  SvgPicture.asset('asset/image/circle person.svg',fit: BoxFit.cover,),
                  TextWidget(text: 'Login to your account', color: Color(0xff0D0D12), size: widget.screenSize.width/19.5, fontFamily: 'Inter', weight: FontWeight.w800),
                  TextWidget(text: 'Enter your details to login', color: Color(0xff666D80), size: widget.screenSize.width/30, fontFamily: 'Inter', weight: FontWeight.w500),
                ],
              ),
            ),
            CustomTextField(label: 'Email', hintText: 'johndoe@mail.com'),
            CustomTextField(label: 'Password', hintText: '• • • • • • • •',isPasswordField: true,),
            Row(
              children: [
                Checkbox(
                  checkColor: Colors.green,
                  activeColor: const Color.fromARGB(255, 244, 244, 244),
                  side: BorderSide(color: Color.fromARGB(255, 202, 202, 203)),
                  value: checked,
                  onChanged: (value) {
                    setState(() {
                      checked = value!;
                    });
                  },
                ),
                TextWidget(
                  text: 'Keep me logged in',
                  color: Color(0xff0D0D12),
                  size: widget.screenSize.width / 29,
                  fontFamily: 'Inter',
                  weight: FontWeight.w500,
                ),
                Spacer(),
                TextWidget(
                  text: 'Forgot Password?',
                  color: Color(0xff104127),
                  size: widget.screenSize.width / 29,
                  fontFamily: 'Inter',
                  weight: FontWeight.w500,
                ),
              ],
            ),
            ContinueButton(screenSize: widget.screenSize, pageNumber: 4)
          ],
        ),
      ),
    );
  }
}