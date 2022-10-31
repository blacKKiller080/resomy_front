import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

class ExitButtonItem extends StatelessWidget {
  int r;
  int g;
  int b;

  ExitButtonItem(this.r, this.g, this.b);

  Widget build(BuildContext context) {
    return Positioned(
      top: 8.13.h,
      left: 6.66.w,
      child: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
          child: SvgPicture.asset(
            'assets/images/svg/Exit.svg',
            color: Color.fromARGB(255, r, g, b),
          ),
          width: 2.66.w,
          height: 1.85.h,
        ),
      ),
    );
  }
}
