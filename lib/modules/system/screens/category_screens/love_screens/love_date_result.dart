import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resomy_client/core/helper/navigatable.dart';
import 'package:resomy_client/core/routes/routes.dart';
import 'package:resomy_client/modules/system/screens/components/background_image.dart';
import 'package:resomy_client/modules/system/screens/components/comment_container.dart';
import 'package:resomy_client/modules/system/screens/components/exit_button_item.dart';
import 'package:sizer/sizer.dart';

class LoveDateResult extends StatelessWidget implements Navigatable {
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
                      fontSize: 14.sp,
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
                    margin: EdgeInsets.only(top: 2.46.h, bottom: 4.53.w),
                    child: Center(
                      child: Text(
                        "4",
                        style: GoogleFonts.montserrat(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(255, 247, 133, 133),
                        ),
                      ),
                    ),
                  ),
                  Image.asset(
                    'assets/images/jpg/smile.jpg',
                    width: 13.3.w,
                    height: 6.15.h,
                  ),
                  Text(
                    '''Четверка – число основательное, символизирующее стабильность, покой, уверенность в завтрашнем дне. Для пар с таким кодом на первое место выходят семья, дети, домашний очаг.

  Их не прельщает кратковременная страсть и постоянные поиски острых ощущений. Участники этих тандемов стремятся к постоянству и надежности.

  Осознанное желание создать крепкую семью, свойственное парам с числом любви 4, гарантирует, что брак таких людей имеет все шансы выдержать любые испытания. Оба партнера демонстрируют серьезный подход к семье, не ленятся делать все для укрепления своего союза.

  Такое желание стать идеальной парой, занять определенное положение в глазах окружающих не должно быть самоцелью. Помните, что главное – не одобрение общества, а гармония и взаимопонимание внутри семьи. Боритесь с собственными предрассудками и навязанными извне стереотипами. Ваш союз будет по-настоящему монолитным, если добавлять в отношения перчинку в виде флирта, спонтанного секса и других приятных сюрпризов.''',
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
    return Routes.love_date_result;
  }
}
