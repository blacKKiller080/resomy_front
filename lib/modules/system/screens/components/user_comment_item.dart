import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class UserCommentItem extends StatefulWidget {
  String imagePath;
  String name;
  String comment;
  double topName;
  double topImage;
  double topComment;

  UserCommentItem(this.imagePath, this.name, this.comment, this.topName,
      this.topImage, this.topComment);
  @override
  _UserCommentItemState createState() => _UserCommentItemState();
}

class _UserCommentItemState extends State<UserCommentItem> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: this.widget.topImage,
          left: 3.73.w,
          child: Image.asset(this.widget.imagePath),
        ),
        Positioned(
          top: this.widget.topName,
          left: 14.71.w,
          child: Text(
            this.widget.name,
            style: GoogleFonts.montserrat(
              color: Color.fromRGBO(73, 80, 87, 1),
              fontSize: 10.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Positioned(
          top: this.widget.topComment,
          left: 16.84.w,
          child: Text(
            this.widget.comment,
            style: GoogleFonts.montserrat(
              color: Color.fromRGBO(73, 80, 87, 1),
              fontStyle: FontStyle.italic,
              fontSize: 10.sp,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
      ],
    );
  }
}
