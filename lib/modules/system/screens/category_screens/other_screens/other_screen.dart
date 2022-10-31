import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resomy_client/core/helper/navigatable.dart';
import 'package:resomy_client/core/routes/routes.dart';
import 'package:resomy_client/modules/system/screens/components/background_image.dart';
import 'package:resomy_client/modules/system/screens/components/exit_button_item.dart';
import 'package:resomy_client/modules/system/screens/components/calculation_image_container.dart';
import 'package:sizer/sizer.dart';

class OtherScreen extends StatelessWidget implements Navigatable {
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
                  'assets/images/png/totem_animal.png', 'Totem animal', 256,
                  onTap: () {
                Navigator.pushNamed(context, Routes.totem_animal_screen);
              }),
            ),
            Positioned(
              top: 49.13.h,
              right: 8.w,
              left: 8.w,
              child: CalculationImageContainer(
                  'assets/images/png/wedding_number.png', 'Traits', 225,
                  onTap: () {
                Navigator.pushNamed(context, Routes.traits_screen);
              }),
            ),
            Positioned(
              top: 67.24.h,
              right: 8.w,
              left: 8.w,
              child: CalculationImageContainer(
                  'assets/images/png/pythagoras_square.png',
                  'Pythagoras square',
                  128, onTap: () {
                Navigator.pushNamed(context, Routes.pythagoras_square_screen);
              }),
            ),
            Positioned(
              top: 85.34.h,
              right: 8.w,
              left: 8.w,
              child: CalculationImageContainer(
                  'assets/images/png/fate_number.png', 'Fate_number', 97,
                  onTap: () {
                Navigator.pushNamed(context, Routes.fate_number_screen);
              }),
            ),
            ExitButtonItem(250, 250, 250),
          ],
        ),
      ),
    );
  }

  @override
  String getName() {
    return Routes.other_screen;
  }
}
