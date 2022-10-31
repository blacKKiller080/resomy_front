import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resomy_client/core/helper/navigatable.dart';
import 'package:resomy_client/core/routes/routes.dart';
import 'package:resomy_client/modules/system/screens/components/exit_button_item.dart';
import 'package:sizer/sizer.dart';

class VerificationScreen extends StatelessWidget implements Navigatable {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        height: height,
        child: verificationCodeContainer(context),
      ),
    );
  }

  Widget verificationCodeContainer(BuildContext context) => Stack(
        children: <Widget>[
          ExitButtonItem(247, 133, 133),
          Positioned(
            top: 16.62.h,
            left: 36.5.w,
            right: 36.5.w,
            child: Text(
              "00:23",
              style: GoogleFonts.montserrat(
                fontSize: 28.sp,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 255, 151, 151),
              ),
            ),
          ),
          Positioned(
            top: 23.5.h,
            left: 21.3.w,
            right: 21.3.w,
            child: Container(
              width: 57.3.w,
              height: 7.h,
              child: AutoSizeText(
                'Type the verification code '
                'we’ve send to you',
                style: GoogleFonts.montserrat(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 73, 80, 87),
                ),
                maxFontSize: 30,
                maxLines: 3,
                minFontSize: 8,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          userDateInput(10.66.w, 71.46.w),
          userDateInput(31.2.w, 50.93.w),
          userDateInput(51.73.w, 30.4.w),
          userDateInput(72.26.w, 9.86.w),
          Positioned(
            top: 49.26.h,
            right: 37.46.w,
            child: GestureDetector(
              onTap: () {
                print('hello');
              },
              child: Text(
                "Send again",
                style: GoogleFonts.montserrat(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 255, 151, 151),
                ),
              ),
            ),
          ),
        ],
      );

  Widget userDateInput(double leftPos, double rightPos) => Positioned(
        top: 36.33.h,
        right: rightPos,
        left: leftPos,
        child: Container(
          width: 17.86.w,
          height: 8.62.h,
          child: TextField(
            decoration: InputDecoration(
              enabledBorder: InputBorder.none,
            ),
            style: GoogleFonts.montserrat(
              color: Color.fromRGBO(247, 133, 133, 1),
              fontSize: 32.sp,
              fontWeight: FontWeight.w400,
            ),
            keyboardType: TextInputType.datetime,
            textAlign: TextAlign.center,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Color.fromARGB(255, 250, 228, 240),
          ),
        ),
      );

  @override
  String getName() {
    return Routes.verification_screen;
  }
}
