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

class BioritmResult extends StatelessWidget implements Navigatable {
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
              top: 19.10.h,
              left: 5.5.w,
              right: 5.5.w,
              child: resultContainer(),
            ),
            Positioned(
              top: 46.h,
              left: 5.5.w,
              right: 5.5.w,
              child: informationContainer(),
            ),
            Positioned(
              top: 75.73.h,
              left: 5.5.w,
              right: 5.5.w,
              child: CommentContainer(),
            ),
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
              left: 25.13.w,
              right: 25.13.w,
              child: Text(
                'Ваши биоритмы',
                textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(
                  color: Color.fromRGBO(73, 80, 87, 1),
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            bioResultContainers('физический биоритм', 97.93, 4.82.h, 6.w),
            bioResultContainers(
                'эмоциональный биоритм', -22.93, 4.82.h, 43.5.w),
            bioResultContainers('интеллектуальный биоритм', 88.3, 14.8.h, 22.w),
          ],
        ),
        padding: EdgeInsets.only(right: 2.w, bottom: 1.h),
        width: 88.93.w,
        height: 24.87.h,
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

  Widget informationContainer() => Container(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Stack(
              children: <Widget>[
                Container(
                  child: Text(
                    '''Сейчас Вы находитесь в фазе физического минимума. Эта фаза характеризуется полным снижением энергичности и выносливости. Любая физическая активность неблагоприятно скажется на состоянии организма. Возможны травмы, заболевания. Необходимо быть осторожным: соблюдать режим, питаться здоровой пищей, полностью отказаться от алкоголя. Любые операции, будь то обычная прививка или хирургическое вмешательство, следует перенести на более благоприятное время. 

Сейчас Вы находитесь в фазе спада. В такие моменты на чаше весов все сильнее перевешивает депрессивное настроение. Вам тяжелее себя сдерживать в стрессовой ситуации. Любая критика или негативные известия, способны вызвать бурю не самых приятных эмоций. Такие отрицательные явления, как беспочвенные страхи и чувство вины, становятся все сильнее. В целом это отражается на Вашей адекватности и способности правильно оценивать ситуацию. Постарайтесь держать себя в руках.

Сейчас Вы находитесь в фазе интеллектуального минимума. Сейчас Вы не можете располагать теми интеллектуальными резервами, которые таит Ваш мозг. Память и способность концентрироваться Вас сильно подводят. В этот период лучше остановить выбор на простейшей, автоматизированной работе. Нельзя проводить рабочие мероприятия и решать серьезные вопросы. Также следует воздержаться от зачатия ребенка, если Ваш возраст достиг 35 лет. Он может родиться с различными отклонениями.''',
                    style: GoogleFonts.montserrat(
                      color: Color.fromRGBO(73, 80, 87, 1),
                      fontSize: 11.sp,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  padding: EdgeInsets.only(top: 2.4.h),
                ),
              ],
            ),
          ],
        ),
        width: 88.93.w,
        height: 28.h,
        padding: EdgeInsets.only(left: 5.3.w, right: 5.3.w, bottom: 2.4.h),
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

  Widget bioResultContainers(
          String label, double percentage, double _top, double _left) =>
      Positioned(
        top: _top,
        left: _left,
        child: Column(
          children: [
            Text(
              label,
              style: GoogleFonts.montserrat(
                color: Color.fromRGBO(73, 80, 87, 1),
                fontSize: 10.sp,
                fontWeight: FontWeight.normal,
              ),
              textAlign: TextAlign.center,
            ),
            Container(
              width: 29.33.w,
              height: 6.52.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color.fromARGB(255, 250, 228, 240),
              ),
              padding: EdgeInsets.only(top: 0.86.h),
              child: Text(
                percentage.toString() + '%',
                style: GoogleFonts.montserrat(
                  color: Color.fromRGBO(247, 133, 133, 1),
                  fontSize: 20.sp,
                  fontWeight: FontWeight.normal,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      );

  @override
  String getName() {
    return Routes.bioritm_result;
  }
}
