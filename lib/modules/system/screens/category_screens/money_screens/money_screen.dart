import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resomy_client/core/helper/navigatable.dart';
import 'package:resomy_client/core/routes/routes.dart';
import 'package:resomy_client/modules/system/screens/components/background_image.dart';
import 'package:resomy_client/modules/system/screens/components/exit_button_item.dart';
import 'package:resomy_client/modules/system/screens/components/calculation_image_container.dart';
import 'package:sizer/sizer.dart';

class MoneyScreen extends StatelessWidget implements Navigatable {
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
              top: 30.h,
              right: 8.w,
              left: 8.w,
              child: CalculationImageContainer(
                  'assets/images/png/money.png', 'Денежный код', 256,
                  onTap: () {
                Navigator.pushNamed(context, Routes.money_code_screen);
              }),
            ),
            Positioned(
              top: 48.1.h,
              right: 8.w,
              left: 8.w,
              child: CalculationImageContainer(
                  'assets/images/png/money.png', 'Именные деньги', 225,
                  onTap: () {
                Navigator.pushNamed(context, Routes.custom_money_screen);
              }),
            ),
            Positioned(
              top: 66.21.h,
              right: 8.w,
              left: 8.w,
              child: CalculationImageContainer(
                  'assets/images/png/money.png', 'Денежные числа', 128,
                  onTap: () {
                Navigator.pushNamed(context, Routes.money_number_screen);
              }),
            ),
            Positioned(
              top: 84.31.h,
              right: 8.w,
              left: 8.w,
              child: CalculationImageContainer(
                  'assets/images/png/money.png', 'Код богатство', 97,
                  onTap: () {
                Navigator.pushNamed(context, Routes.rich_code_screen);
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
    return Routes.money_screen;
  }
}
