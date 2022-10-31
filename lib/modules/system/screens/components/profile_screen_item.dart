import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreenItem extends StatefulWidget {
  String label;
  String imagePath;
  void Function()? onTap;

  ProfileScreenItem(this.label, this.imagePath, {this.onTap});

  @override
  _ProfileScreenItemState createState() => _ProfileScreenItemState();
}

class _ProfileScreenItemState extends State<ProfileScreenItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.widget.onTap,
      child: Stack(
        children: [
          Container(
            width: 97.w,
            height: 8.62.h,
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
            top: 2.46.h,
            left: 3.2.w,
            child: SvgPicture.asset(
              this.widget.imagePath,
              width: 8.w,
              height: 3.69.h,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            left: 13.86.w,
            bottom: 3.2.h,
            child: Text(
              this.widget.label,
              style: GoogleFonts.montserrat(
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(255, 73, 80, 87),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
