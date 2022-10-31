import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:resomy_client/core/helper/navigatable.dart';
import 'package:resomy_client/core/routes/routes.dart';
import 'package:resomy_client/modules/system/screens/components/background_image.dart';
import 'package:resomy_client/modules/system/screens/components/exit_button_item.dart';
import 'package:resomy_client/modules/system/screens/components/calculation_icon_container.dart';

class LoveScreen extends StatelessWidget implements Navigatable {
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
              top: 30.78.h,
              left: 10.w,
              right: 10.w,
              child: CalculationIconContainer(
                'Расчет совместимости по дате рождения',
                256,
                'assets/images/svg/Love_screen_by_num.svg',
                onTap: () {
                  Navigator.pushNamed(context, Routes.love_by_date);
                },
              ),
            ),
            Positioned(
              top: 44.58.h,
              left: 10.w,
              right: 10.w,
              child: CalculationIconContainer(
                'Расчет совместимости по имени',
                256,
                'assets/images/svg/Love_screen_by_name.svg',
                onTap: () {
                  Navigator.pushNamed(context, Routes.love_by_name_screen);
                },
              ),
            ),
            Positioned(
              top: 58.37.h,
              left: 10.w,
              right: 10.w,
              child: CalculationIconContainer(
                'Нумерология любви: мужской код',
                256,
                'assets/images/svg/Love_screen_mens_code.svg',
                onTap: () {
                  Navigator.pushNamed(context, Routes.men_code_screen);
                },
              ),
            ),
            Positioned(
              top: 72.16.h,
              left: 10.w,
              right: 10.w,
              child: CalculationIconContainer(
                'Нумерология любви: женский код',
                256,
                'assets/images/svg/Love_screen_mens_code.svg',
                onTap: () {
                  Navigator.pushNamed(context, Routes.women_code_screen);
                },
              ),
            ),
            ExitButtonItem(250, 250, 250),
          ],
        ),
      ),
    );
  }

  @override
  String getName() {
    return Routes.love_screen;
  }
}
