import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resomy_client/core/helper/navigatable.dart';
import 'package:resomy_client/core/routes/routes.dart';
import 'package:resomy_client/modules/system/screens/components/background_image.dart';
import 'package:resomy_client/modules/system/screens/components/exit_button_item.dart';
import 'package:resomy_client/modules/system/screens/components/user_date_input.dart';
import 'package:sizer/sizer.dart';

class WeddingNumberScreen extends StatelessWidget implements Navigatable {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        height: height,
        child: Container(
          child: Stack(
            children: [
              BackgroundImage(),
              Positioned(
                top: 18.10.h,
                left: 5.33.w,
                right: 5.33.w,
                child: calculation(context),
              ),
              imageContainer(),
              information(),
              ExitButtonItem(250, 250, 250),
            ],
          ),
        ),
      ),
    );
  }

  Widget calculation(BuildContext context) => Container(
        child: Column(
          children: [
            Text(
              'Число свадьбы',
              style: GoogleFonts.montserrat(
                color: Color.fromRGBO(73, 80, 87, 1),
                fontSize: 12.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              'введите назначенную дату свадьбы',
              textAlign: TextAlign.center,
              style: GoogleFonts.montserrat(
                color: Color.fromRGBO(73, 80, 87, 1),
                fontSize: 10.sp,
                fontWeight: FontWeight.normal,
              ),
            ),
            Row(
              children: [
                UserDateInput(250, 228, 240, 13.6.w, TextInputType.number),
                UserDateInput(250, 228, 240, 13.6.w, TextInputType.number),
                UserDateInput(250, 228, 240, 29.33.w, TextInputType.number),
              ],
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, Routes.wedding_number_result);
              },
              child: Container(
                width: 39.2.w,
                height: 5.55.h,
                padding: EdgeInsets.only(
                    top: 0.2.h, left: 4.8.w, right: 4.8.w, bottom: 0.2.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.white,
                  border: Border.all(
                    color: Color.fromARGB(255, 93, 99, 106),
                  ),
                ),
                child: AutoSizeText(
                  'Получить комбинацию',
                  style: GoogleFonts.montserrat(
                    fontSize: 16,
                    color: Color.fromARGB(255, 73, 80, 87),
                    fontWeight: FontWeight.w700,
                  ),
                  maxLines: 2,
                  minFontSize: 8,
                  maxFontSize: 20,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        ),
        padding:
            EdgeInsets.only(left: 10.w, top: 2.h, right: 10.w, bottom: 3.h),
        width: 89.06.w,
        height: 26.h,
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
      );

  Widget imageContainer() => Positioned(
        top: 46.h,
        left: 5.33.w,
        right: 5.33.w,
        child: Container(
          child: Image.asset(
            'assets/images/jpg/wedding_number_result.jpg',
            width: 81.6.w,
            height: 17.85.h,
          ),
          width: 89.06.w,
          height: 21.58.h,
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

  Widget information() => Positioned(
        top: 69.45.h,
        left: 5.33.w,
        right: 5.33.w,
        child: Container(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              Text(
                'Свадьба – грандиозное и значимое событие в жизни каждого человека. Большинство из нас не задумывается о дате проведения торжества с точки зрения нумерологии, а зря. Магия чисел может помочь в определении наиболее подходящего дня для такого важного мероприятия. Это немаловажно с точки зрения дальнейшей счастливой семейной жизни.',
                style: GoogleFonts.montserrat(
                  fontSize: 11.sp,
                  color: Color.fromARGB(255, 73, 80, 87),
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.justify,
              ),
            ],
          ),
          padding:
              EdgeInsets.only(left: 7.w, top: 2.4.h, right: 7.w, bottom: 2.h),
          width: 89.06.w,
          height: 21.58.h,
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

  @override
  String getName() {
    return Routes.wedding_number_screen;
  }
}
