import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:resomy_client/core/helper/navigatable.dart';
import 'package:resomy_client/core/routes/routes.dart';
import 'package:resomy_client/modules/system/screens/components/background_image.dart';
import 'package:resomy_client/modules/system/screens/components/exit_button_item.dart';
import 'package:resomy_client/modules/system/screens/components/calculation_icon_container.dart';

class WorkScreen extends StatelessWidget implements Navigatable {
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
                'Предназначения и миссия',
                256,
                'assets/images/svg/Work_screen_destiny.svg',
                onTap: () {
                  Navigator.pushNamed(context, Routes.destiny_screen);
                },
              ),
            ),
            Positioned(
              top: 44.58.h,
              left: 10.w,
              right: 10.w,
              child: CalculationIconContainer(
                'Выбор профессии',
                118,
                'assets/images/svg/Work_screen_profession_choice.svg',
                onTap: () {
                  Navigator.pushNamed(context, Routes.profession_choice_screen);
                },
              ),
            ),
            Positioned(
              top: 58.37.h,
              left: 10.w,
              right: 10.w,
              child: CalculationIconContainer(
                'Успешная работа',
                26,
                'assets/images/svg/Work_screen_successful_work.svg',
                onTap: () {
                  Navigator.pushNamed(context, Routes.successful_work_screen);
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
    return Routes.work_screen;
  }
}
