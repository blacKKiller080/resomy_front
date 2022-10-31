import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class BackgroundImage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 27.46.h,
      child: Image.asset(
        'assets/images/jpg/flamingo1.jpg',
        fit: BoxFit.cover,
      ),
    );
  }
}
