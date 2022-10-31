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

class FateNumberResult extends StatelessWidget implements Navigatable {
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
            Positioned(
              top: 91.52.h,
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
                        "1",
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
                    '''Общая характеристика. Люди, чье число судьбы по дате рождения равно единице, — прирожденные лидеры. Стремление быть в первых рядах, выделяться из серой массы — врожденная их особенность. Это яркие индивидуалисты, для которых собственное “Я” всегда стоит на первом месте. Это невероятно активные, амбициозные, оригинальные и независимые личности, способные ради достижения своих целей идти по головам.

Достоинства. Уверенность в себе, небывалая целеустремленность, решительность и отвага, энергичность и позитивное видение жизни, честность и благородство — качества, которыми наделило число 1 своих подопечных. Люди-единицы слывут неунывающими оптимистами, отличаются хорошим чувством юмора. Они из тех, кто предпочитает работать своим собственным умом. От природы они талантливы, и этот свой талант умеют направлять в созидательное русло.

Недостатки. Личности, управляемые числом судьбы 1, отличаются завидным упрямством, доходящим до упертости, чрезмерной прямолинейностью, высокомерностью и надменностью. Они эгоистичны, нетерпеливы, циничны, часто излишне агрессивны. Единицы любят власть и стремятся подогнуть под себя окружающих, характеризуются диктаторскими замашками. Тяжело воспринимают критику в свой адрес, не умеют признавать свою неправоту. Не лишены тщеславия, склонны к лени.
Предназначение: быть руководителем и вдохновителем, заряжать окружающих своим энтузиазмом, призывать их к деятельности.''',
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
    return Routes.fate_number_result;
  }
}
