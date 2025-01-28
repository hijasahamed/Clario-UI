import 'package:clario/view/widget/common_widgets/custom_textformfield.dart';
import 'package:flutter/material.dart';

class UserDetailsFormWidget extends StatelessWidget {
  const UserDetailsFormWidget({
    super.key,
    required this.screenSize,
    required this.pageNumber,
  });

  final Size screenSize;
  final int pageNumber;

  @override
  Widget build(BuildContext context) {
    return pageNumber == 1
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: screenSize.height / 40),
              CustomTextField(label: "First name", hintText: "John"),
              SizedBox(height: 16),
              CustomTextField(label: "Last name", hintText: "Doe"),
              SizedBox(height: 16),
              CustomTextField(label: "Email", hintText: "johndoe@mail.com"),
              SizedBox(height: screenSize.height / 70),
            ],
          )
        : pageNumber == 2
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: screenSize.height / 40),
                  CustomTextField(
                      label: "Workspace name",
                      hintText: "Clario workspace"),
                  SizedBox(height: 16),
                  CustomTextField(
                      label: "Workspace handle",
                      hintText: "app.clario.com/my-workspace"),
                  SizedBox(height: 16),
                  CustomTextField(
                    pageNumber: 2,
                      label: "Billing country", hintText: "United States"),
                  SizedBox(height: screenSize.height / 70),
                ],
              )
            : const SizedBox.shrink(); // Return an empty widget if pageNumber is not 1 or 2.
  }
}