import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class ButtonItem extends StatelessWidget {
  String label;
  double widthNum;
  double leftPadding;
  double rightPadding;

  void Function()? onTap;

  ButtonItem(this.label, this.widthNum, this.leftPadding, this.rightPadding,
      {this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: widthNum,
        height: 5.54.h,
        padding:
            EdgeInsets.only(top: 1.1.h, left: leftPadding, right: rightPadding),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Color.fromARGB(255, 255, 151, 151),
        ),
        child: AutoSizeText(
          label,
          style: GoogleFonts.montserrat(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
          maxFontSize: 25,
          maxLines: 1,
          minFontSize: 8,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
