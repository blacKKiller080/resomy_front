import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'package:google_fonts/google_fonts.dart';

class ContainerScreenItem extends StatefulWidget {
  String imagePath;
  String label;

  void Function()? onTap;

  ContainerScreenItem(this.imagePath, this.label, {this.onTap});
  @override
  _ContainerScreenItemState createState() => _ContainerScreenItemState();
}

class _ContainerScreenItemState extends State<ContainerScreenItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.widget.onTap,
      child: Container(
        child: Stack(
          children: [
            Positioned(
              left: 3.13.w,
              top: 1.84.h,
              child: Container(
                width: 41.85.w,
                height: 25.86.h,
                child: Image.asset(
                  this.widget.imagePath,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 32.h,
              left: 2.w,
              right: 2.w,
              child: AutoSizeText(
                this.widget.label,
                textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(
                  fontSize: 11.5.sp,
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(255, 73, 80, 87),
                ),
                minFontSize: 8,
                maxFontSize: 35,
                maxLines: 3,
              ),
            )
          ],
        ),
        width: 47.9.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 3,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        margin:
            EdgeInsets.only(top: 47.17.h, left: 4.w, bottom: 6.h, right: 6.5.w),
      ),
    );
  }
}
