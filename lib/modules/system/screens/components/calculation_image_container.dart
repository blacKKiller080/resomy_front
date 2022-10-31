import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class CalculationImageContainer extends StatefulWidget {
  String imagePath;
  String label;
  int num;
  void Function()? onTap;

  CalculationImageContainer(this.imagePath, this.label, this.num, {this.onTap});
  @override
  _CalculationImageContainerState createState() =>
      _CalculationImageContainerState();
}

class _CalculationImageContainerState extends State<CalculationImageContainer> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.widget.onTap,
      child: Container(
        child: Stack(
          children: [
            Positioned(
              top: 9.72.h,
              left: 2.66.w,
              child: Text(
                this.widget.label,
                // textAlign: TextAlign.left,
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                  fontSize: 11.sp,
                ),
              ),
            ),
            Positioned(
              bottom: 0.92.h,
              right: 3.2.w,
              child: Text(
                'Искали ${this.widget.num} людей',
                //textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(
                  color: Color.fromRGBO(247, 133, 133, 1),
                  fontSize: 8.5.sp,
                  fontWeight: FontWeight.w600,
                  letterSpacing: -0.2,
                ),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              child: Image.asset(
                this.widget.imagePath,
                height: 8.25.h,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
        width: 84.w,
        height: 14.4.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color.fromARGB(255, 255, 255, 255),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of sshadow
            ),
          ],
        ),
      ),
    );
  }
}
