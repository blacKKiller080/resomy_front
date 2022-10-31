import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class UserDateInput extends StatelessWidget {
  int r;
  int g;
  int b;
  double widthNum;
  TextInputType textType;

  UserDateInput(this.r, this.g, this.b, this.widthNum, this.textType);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.widthNum,
      height: 6.48.h,
      child: TextField(
        decoration: InputDecoration(
          enabledBorder: InputBorder.none,
        ),
        style: GoogleFonts.montserrat(
          color: Color.fromRGBO(247, 133, 133, 1),
          fontSize: 21.sp,
          fontWeight: FontWeight.w400,
        ),
        keyboardType: this.textType,
        textAlign: TextAlign.center,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Color.fromARGB(255, this.r, this.g, this.b),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.9),
            spreadRadius: 3,
            blurRadius: 5,
            offset: Offset(0, 3), // changes position of sshadow
          ),
        ],
      ),
    );
  }
}
