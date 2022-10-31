import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resomy_client/core/routes/routes.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'components/background_image.dart';
import 'components/container_screen_item.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        height: height,
        child: Stack(
          children: [
            BackgroundImage(),
            mainText(),
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
          ],
        ),
      ),
    );
  }

  Widget mainText() => Positioned(
        top: 18.h,
        left: 4.w,
        right: 4.w,
        child: Container(
          child: AutoSizeText(
            'Resomy  - это уникальное и полезное приложение для людей, которые интересуются нумерологией. В приложении вы можете узнать ваши нумерологические расчеты в разных сферах',
            style: GoogleFonts.montserrat(
              fontSize: 30,
              color: Color.fromARGB(255, 73, 80, 87),
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.justify,

            // maxLines: 3,
            minFontSize: 8,
            maxFontSize: 35,
          ),
          padding:
              EdgeInsets.only(left: 7.w, top: 2.5.h, right: 7.w, bottom: 2.5.h),
          width: 91.97.w,
          height: 19.97.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of sshadow
              ),
            ],
          ),
        ),
      );

  String title = 'Популярные рассчеты';

  Widget subText() => Positioned(
        top: 43.2.h,
        left: 5.3.w,
        child: Text(
          title,
          style: GoogleFonts.montserrat(
            fontSize: 12.5.sp,
            fontWeight: FontWeight.w600,
            color: Color.fromARGB(255, 73, 80, 87),
          ),
        ),
      );
}
