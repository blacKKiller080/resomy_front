import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class CategoryItem extends StatefulWidget {
  String iconPath;
  String title;
  void Function()? onTap;

  CategoryItem(this.iconPath, this.title, {this.onTap});

  @override
  _CategoryItemState createState() => _CategoryItemState();
}

class _CategoryItemState extends State<CategoryItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.widget.onTap,
      child: Column(
        children: [
          SvgPicture.asset(
            this.widget.iconPath,
            width: 13.3.w,
            height: 6.15.h,
            fit: BoxFit.cover,
          ),
          Text(
            this.widget.title,
            style: GoogleFonts.montserrat(
              fontSize: 12.sp,
              fontWeight: FontWeight.w600,
              color: Color.fromARGB(255, 73, 80, 87),
            ),
          ),
        ],
      ),
    );
  }
}
