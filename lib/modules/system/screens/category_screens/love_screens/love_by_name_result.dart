import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resomy_client/core/helper/navigatable.dart';
import 'package:resomy_client/core/routes/routes.dart';
import 'package:resomy_client/modules/system/screens/components/background_image.dart';
import 'package:resomy_client/modules/system/screens/components/comment_container.dart';
import 'package:resomy_client/modules/system/screens/components/exit_button_item.dart';
import 'package:sizer/sizer.dart';

class LoveByNameResult extends StatelessWidget implements Navigatable {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        height: height,
        child: Stack(
          children: [
            BackgroundImage(),
            mainContainer(),
            ExitButtonItem(250, 250, 250),
            Positioned(
              top: 91.52.h,
              left: 5.5.w,
              right: 5.5.w,
              child: CommentContainer(),
            ),
          ],
        ),
      ),
    );
  }

  Widget mainContainer() => Positioned(
        top: 18.h,
        left: 5.35.w,
        right: 5.35.w,
        child: Container(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              Column(
                children: [
                  Text(
                    'Результат расчета',
                    style: GoogleFonts.montserrat(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 73, 80, 87),
                    ),
                    textAlign: TextAlign.start,
                  ),
                  Container(
                    width: 19.46.w,
                    height: 6.52.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color.fromARGB(255, 250, 228, 240),
                    ),
                    padding:
                        EdgeInsets.only(top: 0.2.h, left: 0.2.h, right: 0.2.h),
                    margin: EdgeInsets.only(top: 2.46.h, bottom: 4.53.w),
                    child: Center(
                      child: AutoSizeText(
                        "5 & 6",
                        style: GoogleFonts.montserrat(
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(255, 247, 133, 133),
                        ),
                        maxLines: 1,
                        minFontSize: 8,
                        maxFontSize: 55,
                      ),
                    ),
                  ),
                  Text(
                    '''5 и 6: Пятерке нравятся перемены, а шестерке — постоянство. Учитесь мириться с особенностями характера партнера.

По отдельности каждого партнера:

Число 5: Любители приключений, пятерки ценят острые ощущения и перемены в жизни. Эти люди не терпят однообразия, быстро теряя интерес к любой монотонной деятельности. Часто они непредсказуемы, способны быстро изменить свое мнение, а потому не отличаются надежностью.

Число 6: Люди с числом имени 6 любят быть в центре внимания, часто высокомерны и эгоистичны. Проявляют заботу об окружающих обычно только если она принесет им моральное удовлетворение от своего поступка. Людей этого числа много в шоу-бизнесе, иных публичных профессиях.''',
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w500,
                      fontSize: 12.sp,
                      color: Color.fromARGB(255, 73, 80, 87),
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              ),
            ],
          ),
          padding: EdgeInsets.only(
              left: 5.33.w, top: 3.h, right: 5.33.w, bottom: 1.84.h),
          width: 89.w,
          height: 70.75.h,
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

  @override
  String getName() {
    return Routes.love_by_name_result;
  }
}
