import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resomy_client/core/routes/routes.dart';
import 'package:resomy_client/modules/system/screens/components/category_item.dart';
import 'package:resomy_client/modules/system/screens/components/container_screen_item.dart';

import 'components/background_image.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        height: height,
        child: Stack(
          children: [
            BackgroundImage(),
            subText(),
            ListView(
              padding: EdgeInsets.zero,
              children: [
                ContainerScreenItem(
                  'assets/images/jpg/popular_calculations_1.jpg',
                  'Денежный код',
                  onTap: () {
                    Navigator.pushNamed(context, Routes.money_screen);
                  },
                ),
                ContainerScreenItem(
                  'assets/images/jpg/popular_calculations_2.jpg',
                  'Расчет совместимости по дате рождения',
                  onTap: () {
                    Navigator.pushNamed(context, Routes.love_screen);
                  },
                ),
                ContainerScreenItem(
                  'assets/images/jpg/popular_calculations_1.jpg',
                  'Денежная комбинация',
                  onTap: () {
                    Navigator.pushNamed(context, Routes.money_screen);
                  },
                ),
                ContainerScreenItem(
                  'assets/images/jpg/popular_calculations_2.jpg',
                  'Расчет совместимости по дате рождения',
                  onTap: () {
                    Navigator.pushNamed(context, Routes.love_screen);
                  },
                ),
                ContainerScreenItem(
                  'assets/images/jpg/popular_calculations_1.jpg',
                  'Денежная комбинация',
                  onTap: () {
                    Navigator.pushNamed(context, Routes.money_screen);
                  },
                ),
              ],
              scrollDirection: Axis.horizontal,
            ),
            categoriesGrid(context),
          ],
        ),
      ),
    );
  }

  String title = 'Популярные расcчеты';

  Widget subText() => Positioned(
        top: 43.34.h,
        left: 5.33.w,
        child: Text(
          title,
          style: GoogleFonts.montserrat(
            fontSize: 12.5.sp,
            fontWeight: FontWeight.w600,
            color: Color.fromARGB(255, 73, 80, 87),
          ),
        ),
      );

  Widget categoriesGrid(BuildContext context) => Positioned(
        top: 18.h,
        left: 4.w,
        right: 4.w,
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  CategoryItem(
                    'assets/images/svg/Health.svg',
                    'Health',
                    onTap: () {
                      Navigator.pushNamed(context, Routes.health_screen);
                    },
                  ),
                  CategoryItem(
                    'assets/images/svg/Money.svg',
                    'Money',
                    onTap: () {
                      Navigator.pushNamed(context, Routes.money_screen);
                    },
                  ),
                  CategoryItem(
                    'assets/images/svg/Love.svg',
                    'Love',
                    onTap: () {
                      Navigator.pushNamed(context, Routes.love_screen);
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CategoryItem(
                    'assets/images/svg/Work.svg',
                    'Work',
                    onTap: () {
                      Navigator.pushNamed(context, Routes.work_screen);
                    },
                  ),
                  CategoryItem(
                    'assets/images/svg/Home.svg',
                    'Family',
                    onTap: () {
                      Navigator.pushNamed(context, Routes.family_screen);
                    },
                  ),
                  CategoryItem(
                    'assets/images/svg/Other.svg',
                    'Other',
                    onTap: () {
                      Navigator.pushNamed(context, Routes.other_screen);
                    },
                  ),
                ],
              ),
            ],
          ),
          padding: EdgeInsets.only(
              left: 10.26.w, top: 0.98.h, right: 10.26.w, bottom: 2.2.h),
          width: 92.w,
          height: 21.55.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
        ),
      );
}
