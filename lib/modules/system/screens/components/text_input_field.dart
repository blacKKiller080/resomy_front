import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class TextInputField extends StatelessWidget {
  String label;
  TextInputType textType;
  MaskTextInputFormatter maskFormatter;

  TextInputField(this.label, this.textType, this.maskFormatter);

  //TextInputField(this.label, this.textType);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 78.66.w,
      height: 6.36.h,
      child: TextField(
        decoration: InputDecoration(
          contentPadding:
              EdgeInsets.symmetric(vertical: 2.2.h, horizontal: 4.8.w),
          labelText: label,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
        style: TextStyle(
          fontSize: 13.sp,
        ),
        inputFormatters: [maskFormatter],
        keyboardType: this.textType,
      ),
    );
  }
}
