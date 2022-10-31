import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resomy_client/core/helper/navigatable.dart';
import 'package:resomy_client/core/routes/routes.dart';
import 'package:resomy_client/modules/system/screens/components/background_image.dart';
import 'package:resomy_client/modules/system/screens/components/comment_container.dart';
import 'package:resomy_client/modules/system/screens/components/exit_button_item.dart';
import 'package:resomy_client/modules/system/screens/components/user_comment_item.dart';
import 'package:sizer/sizer.dart';

class DestinyResult extends StatelessWidget implements Navigatable {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: height,
        child: Stack(
          children: [
            BackgroundImage(),
            // Positioned(
            //   top: 19.10.h,
            //   left: 5.5.w,
            //   right: 5.5.w,
            //   child: Container(
            //     height: height - 25.h,
            //     child: ListView(
            //       padding: EdgeInsets.zero,
            //       children: [
            Positioned(
              top: 19.10.h,
              left: 5.5.w,
              right: 5.5.w,
              child: resultContainer(),
            ),

            // SizedBox(
            //   height: 5.h,
            // ),
            Positioned(
              top: 35.71.h,
              left: 5.5.w,
              right: 5.5.w,
              child: imageContainer(),
            ),
            Positioned(
              top: 64.45.h,
              left: 5.33.w,
              right: 5.33.w,
              child: information(),
            ),
            Positioned(
              top: 96.h,
              left: 5.5.w,
              right: 5.5.w,
              child: CommentContainer(),
            ),
            //       ],
            //     ),
            //   ),
            // ),
            ExitButtonItem(250, 250, 250),
          ],
        ),
      ),
    );
  }

  Widget resultContainer() => Container(
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 1.72.h,
              left: 24.13.w,
              right: 24.13.w,
              child: AutoSizeText(
                'Результат расчета',
                textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(
                  color: Color.fromRGBO(73, 80, 87, 1),
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
                maxLines: 1,
                maxFontSize: 25,
                minFontSize: 8,
              ),
            ),
            Positioned(
              top: 6.5.h,
              left: 34.8.w,
              child: Container(
                width: 19.46.w,
                height: 6.52.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color.fromARGB(255, 250, 228, 240),
                ),
                padding: EdgeInsets.only(left: 8.w, top: 1.h),
                child: Text(
                  '5',
                  style: GoogleFonts.montserrat(
                    color: Color.fromRGBO(247, 133, 133, 1),
                    fontSize: 20.sp,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ),
          ],
        ),
        //padding: EdgeInsets.only(left: 15, top: 12, right: 15, bottom: 10),
        width: 88.93.w,
        height: 13.91.h,
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

  Widget imageContainer() => Container(
        child: Column(
          children: [
            AutoSizeText(
              'Cчастливчик',
              textAlign: TextAlign.center,
              style: GoogleFonts.montserrat(
                color: Color.fromRGBO(73, 80, 87, 1),
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
              maxLines: 1,
              maxFontSize: 25,
              minFontSize: 8,
            ),
            Image.asset(
              'assets/images/jpg/destiny_result.jpg',
            ),
          ],
          mainAxisAlignment: MainAxisAlignment.spaceAround,
        ),
        width: 88.93.w,
        height: 25.98.h,
        padding: EdgeInsets.only(bottom: 2.h),
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

  Widget information() => Container(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Text(
              '''Образ – счастливчик, баловень судьбы, энтузиаст.
Символ – треугольник.
Ключевое слово – оптимист.
Девиз – Улыбайтесь господа.
Твое предназначение – донести до мира свою позитивную энергию, эмоции и мысли через творчество.
Твоя духовная миссия — пробуждать энергию и поднимать дух людей, веселить и подбадривать.
Твоя жизненная задача – развивать оптимизм и энтузиазм, распространяя вокруг себя радость.
Людям с Числом Судьбы 3 предначертана судьба творческого человека и оптимиста. Тебе необходимо просто пробуждать воображение и дух у людей, пока в них не появится вера на лучший сюжет в их жизни. Там, где радость и смех, уныние и боль уходит.  Совмещай искренность с позитивом, и ты никогда не потерпишь неудачу. Выражай свои идеи легко и всегда только творческим подходом.
Эти люди пользуются всегда популярностью и их рады видеть в любом обществе. Никто не может устоять перед их обаянием. Наделенные красноречием, которое иногда переходит в безудержную болтливость, очень легко налаживают контакты. Отличаются находчивостью и активностью. Редко стремятся доминировать надо окружающими, но любят находиться в центре внимания. Всегда принимают, как должное то, что приготовила им судьба.
«Тройки», как правило, страдают от нервного переутомления. А все потому, что думают больше о других, чем о себе, любят взваливать на себя чужие проблемы и из-за этого постоянно откладывают отдых. Из-за этого может портится цвет лица и возникать различные проблемы с кожей. В личной жизни всегда ласковы, любовь их глубока, преданность дому и семье. Им очень необходима эмоциональная привязанность. Для успеха подойду больше «свободные профессии», потому что это творческие натуры. Трудностей с добывание денег никогда нет, а вот удерживать заработанное приходится учиться.''',
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
        height: 28.58.h,
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

  @override
  String getName() {
    return Routes.destiny_result;
  }
}
