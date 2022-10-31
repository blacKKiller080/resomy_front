import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class ResultButtonItem extends StatefulWidget {
  void Function()? onTap;

  ResultButtonItem({this.onTap});
  @override
  _ResultButtonItemState createState() => _ResultButtonItemState();
}

class _ResultButtonItemState extends State<ResultButtonItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.widget.onTap,
      child: Stack(
        children: [
          Container(
            width: 39.2.w,
            height: 5.54.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Color.fromRGBO(249, 248, 250, 0),
              border: Border.all(
                color: Color.fromRGBO(93, 99, 106, 1),
              ),
            ),
            child: Text(
              'Получить комбинацию',
              textAlign: TextAlign.center,
              style: GoogleFonts.montserrat(
                fontSize: 11.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
