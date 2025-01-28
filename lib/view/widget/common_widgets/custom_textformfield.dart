import 'package:flutter/material.dart';
import 'package:intl_phone_field/country_picker_dialog.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final String hintText;
  final int? pageNumber;
  final bool? isPasswordField;
  const CustomTextField({super.key, required this.label, required this.hintText,this.pageNumber,this.isPasswordField});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Colors.black87,
          ),
        ),
        SizedBox(height: 8),
        pageNumber==2?
        IntlPhoneField(
          dropdownIconPosition: IconPosition.trailing,
          disableLengthCheck: true,
          flagsButtonMargin: EdgeInsets.only(left: 10),
          pickerDialogStyle: PickerDialogStyle(backgroundColor: Colors.white),
          initialCountryCode: 'US',
          keyboardType: TextInputType.phone,
          showDropdownIcon: true,
          style: const TextStyle(
              color: Color(0xFF424141), fontWeight: FontWeight.normal),
          decoration: InputDecoration(
            suffixIcon: Icon(Icons.keyboard_arrow_down),
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.black),
            contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Color(0xffDFE1E6)),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Color(0xffDFE1E6)),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Colors.blue, width: 1.5),
            ),
          ),
        ):
        TextFormField(
          textCapitalization: TextCapitalization.words,
          decoration: InputDecoration(
            suffixIcon: isPasswordField==true? Icon(Icons.visibility,color: Color(0xffA4ABB8),) : null,
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.grey),
            contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Color(0xffDFE1E6)),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Color(0xffDFE1E6)),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Colors.blue, width: 1.5),
            ),
          ),
        ),
      ],
    );
  }
}