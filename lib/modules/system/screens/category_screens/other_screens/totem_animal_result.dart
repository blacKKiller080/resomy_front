import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resomy_client/core/helper/navigatable.dart';
import 'package:resomy_client/core/routes/routes.dart';
import 'package:resomy_client/modules/system/screens/components/background_image.dart';
import 'package:resomy_client/modules/system/screens/components/comment_container.dart';
import 'package:resomy_client/modules/system/screens/components/exit_button_item.dart';

import 'package:sizer/sizer.dart';

class TotemAnimalResult extends StatelessWidget implements Navigatable {
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
              top: 70.h,
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
                    'assets/images/jpg/totem_animal_result.jpg',
                    // width: 13.3.w,
                    // height: 6.15.h,
                  ),
                  Text(
                    '''Eсли в ходе расчетов у вам получилось число 4, то вам покровительствует Дельфин. Это животное соединяет в себе все стихии - Огненный характер, Воду, в которой он плавает, Воздух, которым он дышит, и мудрость стихии Земли. Чтобы всё было хорошо, вам необходимо просто поставить перед собой определенные цели в жизни, перестать распылять внимание и силы на ненужные дела и негативных людей.
''',
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
          height: 50.75.h,
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
    return Routes.totem_animal_result;
  }
}
