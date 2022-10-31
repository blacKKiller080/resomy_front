import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class PythagorasSquareImage extends StatelessWidget {
  PythagorasSquareImage();

  @override
  Widget build(BuildContext context) {
    return Container(
      // child: Image.asset(
      //   'assets/images/jpg/pythagoras_square_result.jpg',
      // ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              rowContainer('486484', '1', 'характер'),
              rowContainer('77784', '4', 'здоровье'),
              rowContainer('78484', '7', 'удача'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              rowContainer('1111', '2', 'энергетика'),
              rowContainer('41544', '5', 'логика'),
              rowContainer('99954', '8', 'призвание'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              rowContainer('48684', '3', 'познание'),
              rowContainer('84', '6', 'трудолюбие'),
              rowContainer('566584', '9', 'ум, память'),
            ],
          ),
        ],
      ),
      width: 88.93.w,
      height: 28.13.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
    );
  }

  Widget rowContainer(String result, String num, String label) => Container(
        width: 18.66.w,
        height: 8.62.h,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              num,
              style: GoogleFonts.montserrat(
                fontSize: 11.sp,
                color: Color.fromARGB(255, 73, 80, 87),
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
            ),
            AutoSizeText(
              result,
              style: GoogleFonts.montserrat(
                fontSize: 16,
                color: Color.fromARGB(255, 73, 80, 87),
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
              maxLines: 1,
              minFontSize: 5,
              maxFontSize: 25,
            ),
            AutoSizeText(
              label,
              style: GoogleFonts.montserrat(
                fontSize: 15,
                color: Color.fromARGB(255, 73, 80, 87),
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
              maxLines: 1,
              minFontSize: 5,
              maxFontSize: 25,
            ),
          ],
        ),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.red),
          borderRadius: BorderRadius.circular(0.5),
          color: Colors.white,
        ),
      );
}
