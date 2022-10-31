import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resomy_client/core/helper/navigatable.dart';
import 'package:resomy_client/core/routes/routes.dart';
import 'package:resomy_client/modules/system/screens/components/background_image.dart';
import 'package:resomy_client/modules/system/screens/components/exit_button_item.dart';
import 'package:resomy_client/modules/system/screens/components/user_comment_item.dart';
import 'package:sizer/sizer.dart';

class FamilyNumberResult extends StatelessWidget implements Navigatable {
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
              top: 38.h,
              left: 5.5.w,
              right: 5.5.w,
              child: informationContainer(),
            ),
            Positioned(
              top: 57.73.h,
              left: 5.5.w,
              right: 5.5.w,
              child: commentContainer(),
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
                'Число вашей семьи',
                textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(
                  color: Color.fromRGBO(73, 80, 87, 1),
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w600,
                ),
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
                  '9',
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
        height: 16.h,
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
                    '''Здесь есть общая цель, будь то научное исследование или возделывание приусадебного участка. Причиной развода может стать мелочность и самомнение одного из супругов. Если это не произойдет, домочадцы будут жить долго и счастливо. ''',
                    style: GoogleFonts.montserrat(
                      color: Color.fromRGBO(73, 80, 87, 1),
                      fontSize: 11.sp,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  padding: EdgeInsets.only(top: 1.84.h),
                ),
              ],
            ),
          ],
        ),
        width: 88.93.w,
        height: 15.76.h,
        padding: EdgeInsets.only(left: 4.8.w, right: 4.8.w, bottom: 2.4.h),
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

  Widget commentContainer() => Container(
        child: Stack(
          children: [
            UserCommentItem('assets/images/png/ava1.png', 'Диниза',
                'Теперь часто буду применять свой код!', 2.4.h, 1.78.h, 4.25.h),
            UserCommentItem('assets/images/png/ava2.png', 'Айкен',
                'Так интересно читать!', 8.31.h, 7.82.h, 9.9.h),
            UserCommentItem('assets/images/png/ava1.png', 'Вы',
                'Ваш комментарий', 14.34.h, 13.73.h, 16.3.h)
          ],
        ),
        width: 83.93.w,
        height: 21.h,
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
    return Routes.family_number_result;
  }
}
