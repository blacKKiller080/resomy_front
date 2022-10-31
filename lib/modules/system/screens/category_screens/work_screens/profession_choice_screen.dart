import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resomy_client/core/helper/navigatable.dart';
import 'package:resomy_client/core/routes/routes.dart';
import 'package:resomy_client/modules/system/screens/components/background_image.dart';
import 'package:resomy_client/modules/system/screens/components/exit_button_item.dart';
import 'package:resomy_client/modules/system/screens/components/user_date_input.dart';
import 'package:sizer/sizer.dart';

class ProfessionChoiceScreen extends StatelessWidget implements Navigatable {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            height: height + 10.h,
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
        ],
      ),
    );
  }

  Widget calculation(BuildContext context) => Container(
        child: Column(
          children: [
            Text(
              'Выбор профессии',
              style: GoogleFonts.montserrat(
                color: Color.fromRGBO(73, 80, 87, 1),
                fontSize: 13.sp,
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
            Text(
              'введите ваше имя',
              textAlign: TextAlign.center,
              style: GoogleFonts.montserrat(
                color: Color.fromRGBO(73, 80, 87, 1),
                fontSize: 10.sp,
                fontWeight: FontWeight.normal,
              ),
            ),
            UserDateInput(250, 228, 240, 60.8.w, TextInputType.name),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, Routes.profession_choice_result);
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
                margin: EdgeInsets.only(top: 1.h),
              ),
            ),
          ],
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        ),
        padding:
            EdgeInsets.only(left: 10.w, top: 2.h, right: 10.w, bottom: 3.h),
        width: 89.06.w,
        height: 37.27.h,
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
        top: 58.86.h,
        left: 5.33.w,
        right: 5.33.w,
        child: Container(
          child: Image.asset(
            'assets/images/jpg/profession_choice_screen.jpg',
          ),
          height: 22.66.h,
          width: 89.06.w,
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
        top: 84.85.h,
        left: 5.33.w,
        right: 5.33.w,
        child: Container(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              Text(
                'Профессия. Как найти свою профессию, какая работа подходит лучше всего, какая больше подойдет ребенку? Так мы часто задаем себе вопросы. Да и те кто уже работает не всегда уверены в правильности своего выбора.',
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
              EdgeInsets.only(left: 5.w, top: 2.4.h, right: 5.w, bottom: 2.h),
          width: 89.06.w,
          height: 17.58.h,
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
    return Routes.profession_choice_screen;
  }
}
