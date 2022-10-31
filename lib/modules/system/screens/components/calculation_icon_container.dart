import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class CalculationIconContainer extends StatefulWidget {
  String label;
  int num;
  String imagePath;
  void Function()? onTap;

  CalculationIconContainer(this.label, this.num, this.imagePath, {this.onTap});

  @override
  _CalculationIconContainerState createState() =>
      _CalculationIconContainerState();
}

class _CalculationIconContainerState extends State<CalculationIconContainer> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.widget.onTap,
      child: Stack(
        children: [
          Container(
            width: 80.w,
            height: 11.94.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.4),
                  spreadRadius: 5,
                  blurRadius: 8,
                  offset: Offset(0, 0), // changes position of shadow
                ),
              ],
            ),
          ),
          Positioned(
            top: 1.23.h,
            left: 5.w,
            child: SvgPicture.asset(
              this.widget.imagePath,
              width: 10.66.w,
              height: 4.92.h,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 9.23.h,
            left: 14.13.w,
            child: Text(
              'Искали ${this.widget.num} людей',
              textAlign: TextAlign.center,
              style: GoogleFonts.montserrat(
                fontSize: 8.5.sp,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 247, 133, 133),
              ),
            ),
          ),
          Positioned(
            top: 1.6.h,
            left: 17.06.w,
            child: Container(
              width: 52.53.w,
              height: 4.19.h,
              child: Text(
                this.widget.label,
                style: GoogleFonts.montserrat(
                  fontSize: 11.sp,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 33, 33, 33),
                ),
                //textAlign: TextAlign.justify,
                overflow: TextOverflow.visible,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
