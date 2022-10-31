import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resomy_client/core/helper/navigatable.dart';
import 'package:resomy_client/core/routes/routes.dart';
import 'package:resomy_client/modules/system/screens/components/background_image.dart';
import 'package:resomy_client/modules/system/screens/components/exit_button_item.dart';
import 'package:resomy_client/modules/system/screens/components/calculation_image_container.dart';
import 'package:sizer/sizer.dart';

class FamilyScreen extends StatelessWidget implements Navigatable {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        height: height,
        child: Stack(
          children: [
            BackgroundImage(),
            Positioned(
              top: 31.03.h,
              right: 8.w,
              left: 8.w,
              child: CalculationImageContainer(
                  'assets/images/png/family_number.png', 'Family number', 256,
                  onTap: () {
                Navigator.pushNamed(context, Routes.family_number_screen);
              }),
            ),
            Positioned(
              top: 49.13.h,
              right: 8.w,
              left: 8.w,
              child: CalculationImageContainer(
                  'assets/images/png/wedding_number.png', 'Wedding number', 225,
                  onTap: () {
                Navigator.pushNamed(context, Routes.wedding_number_screen);
              }),
            ),
            Positioned(
              top: 67.24.h,
              right: 8.w,
              left: 8.w,
              child: CalculationImageContainer(
                  'assets/images/png/kids_number.png', 'How much kids', 128,
                  onTap: () {
                Navigator.pushNamed(context, Routes.kids_count_screen);
              }),
            ),
            // Positioned(
            //   top: 85.34.h,
            //   right: 8.w,
            //   left: 8.w,
            //   child: CalculationImageContainer(
            //       'assets/images/png/money.png', 'Деньги', 97),
            // ),
            ExitButtonItem(250, 250, 250),
          ],
        ),
      ),
    );
  }

  @override
  String getName() {
    return Routes.family_screen;
  }
}
