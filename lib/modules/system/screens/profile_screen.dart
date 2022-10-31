import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:resomy_client/core/routes/routes.dart';
import 'package:resomy_client/modules/system/screens/components/profile_screen_item.dart';

import 'components/background_image.dart';

class ProfileScreen extends StatelessWidget {
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
              top: 24.26.h,
              left: 4.13.w,
              right: 4.13.w,
              child: ProfileScreenItem('Personal information',
                  'assets/images/svg/settings_icon1.svg', onTap: () {
                Navigator.pushNamed(context, Routes.person_info_screen);
              }),
            ),
            Positioned(
              top: 35.47.h,
              left: 4.13.w,
              right: 4.13.w,
              child: ProfileScreenItem(
                'Security', 'assets/images/svg/settings_icon2.svg',
                //     onTap: () {
                //   Navigator.pushNamed(context, Routes.person_info_screen);
                // }
              ),
            ),
            Positioned(
              top: 46.67.h,
              left: 4.13.w,
              right: 4.13.w,
              child: ProfileScreenItem(
                  'Exit', 'assets/images/svg/settings_icon3.svg', onTap: () {
                Navigator.pushNamed(context, Routes.authorization_screen);
              }),
            ),
          ],
        ),
      ),
    );
  }
}
