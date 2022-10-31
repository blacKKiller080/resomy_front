import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resomy_client/modules/system/screens/components/user_date_input.dart';
import 'dart:ui';
import 'package:sizer/sizer.dart';
import 'package:resomy_client/core/helper/navigatable.dart';
import 'package:resomy_client/core/routes/routes.dart';
import 'package:resomy_client/modules/system/screens/components/background_image.dart';
import 'package:resomy_client/modules/system/screens/components/exit_button_item.dart';
import '../../components/result_button_item.dart';

class MoneyCode extends StatelessWidget implements Navigatable {
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
              top: 18.22.h,
              left: 5.5.w,
              right: 5.5.w,
              child: calculation(context),
            ),
            Positioned(
              top: 46.8.h,
              left: 5.50.w,
              right: 5.5.w,
              child: informationContainer(),
            ),
            ExitButtonItem(250, 250, 250),
          ],
        ),
      ),
    );
  }

  Widget calculation(BuildContext context) => Container(
        child: Column(
          children: [
            Text(
              'Денежный код',
              style: GoogleFonts.montserrat(
                color: Color.fromRGBO(73, 80, 87, 1),
                fontSize: 12.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              'введите вашу дату рождения',
              textAlign: TextAlign.center,
              style: GoogleFonts.montserrat(
                color: Color.fromRGBO(73, 80, 87, 1),
                fontSize: 10.sp,
                fontWeight: FontWeight.normal,
                height: 0.2,
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
                Navigator.pushNamed(context, Routes.money_code_result);
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

  Widget informationContainer() => Container(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Stack(
              children: <Widget>[
                Positioned(
                  top: 4.92.h,
                  left: 13.w,
                  right: 13.w,
                  child: Text(
                    'Что такое денежный код?',
                    //textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                      color: Color.fromRGBO(73, 80, 87, 1),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    '''Финансовый код подразумевает нумерологическую комбинацию из даты вашего рождения и других показателей. Она (комбинация) приумножает финансы и стимулирует больше зарабатывать. 

Узнайте, для чего же просчитывать код привлечения денег: 

  Для приумножения финансов 
  Для управления финансовыми потоками
  Для приумножения прибыли ''',
                    textAlign: TextAlign.justify,
                    style: GoogleFonts.montserrat(
                      color: Color.fromRGBO(73, 80, 87, 1),
                      fontSize: 11.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  padding: EdgeInsets.only(top: 10.34.h),
                ),
              ],
            ),
          ],
        ),
        padding: EdgeInsets.only(left: 4.5.w, right: 4.5.w, bottom: 5.h),
        width: 89.06.w,
        height: 41.h,
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
      );

  @override
  String getName() {
    return Routes.money_code_screen;
  }
}
