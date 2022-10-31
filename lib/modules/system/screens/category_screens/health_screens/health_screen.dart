import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:resomy_client/core/helper/navigatable.dart';
import 'package:resomy_client/core/routes/routes.dart';
import 'package:resomy_client/modules/system/screens/components/background_image.dart';
import 'package:resomy_client/modules/system/screens/components/exit_button_item.dart';
import 'package:resomy_client/modules/system/screens/components/calculation_icon_container.dart';

class HealthScreen extends StatelessWidget implements Navigatable {
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
                'Биоритмы человека',
                256,
                'assets/images/svg/Health.svg',
                onTap: () {
                  Navigator.pushNamed(context, Routes.bioritm_screen);
                },
              ),
            ),
            Positioned(
              top: 44.58.h,
              left: 10.w,
              right: 10.w,
              child: CalculationIconContainer(
                'Число здоровья и болезней',
                256,
                'assets/images/svg/Health_screen_number_of_health.svg',
                onTap: () {
                  Navigator.pushNamed(context, Routes.health_number_screen);
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
    return Routes.health_screen;
  }
}
