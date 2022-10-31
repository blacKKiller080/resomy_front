import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resomy_client/modules/system/screens/components/comment_container.dart';
import 'dart:ui';
import 'package:sizer/sizer.dart';
import 'package:resomy_client/core/helper/navigatable.dart';
import 'package:resomy_client/core/routes/routes.dart';
import 'package:resomy_client/modules/system/screens/components/background_image.dart';
import 'package:resomy_client/modules/system/screens/components/exit_button_item.dart';
import '../../components/user_comment_item.dart';

class MoneyCodeResult extends StatelessWidget implements Navigatable {
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
              top: 18.35.h,
              left: 5.5.w,
              right: 5.5.w,
              child: resultContainer(),
            ),
            Positioned(
              top: 39.77.h,
              left: 5.5.w,
              right: 5.5.w,
              child: informationContainer(),
            ),
            Positioned(
              top: 67.73.h,
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
                'Ваш денежный код',
                textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(
                  color: Color.fromRGBO(73, 80, 87, 1),
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Container(
              child: Text(
                '''здесь заложена установка на удачу, богатство,   денежное процветание.''',
                textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(
                  color: Color.fromRGBO(73, 80, 87, 1),
                  fontSize: 10.5.sp,
                  fontWeight: FontWeight.normal,
                  height: 0.15.h,
                ),
              ),
              padding:
                  EdgeInsets.only(top: 4.31.h, left: 11.33.w, right: 11.33.w),
            ),
            Positioned(
              top: 8.99.h,
              left: 29.6.w,
              child: Container(
                width: 29.33.w,
                height: 6.03.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color.fromARGB(255, 250, 228, 240),
                ),
                padding: EdgeInsets.only(left: 6.4.w, top: 1.1.h),
                child: Text(
                  '2237',
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
        width: 88.93.w,
        height: 18.22.h,
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
                Positioned(
                  top: 1.85.h,
                  left: 4.4.w,
                  right: 4.4.w,
                  child: Text(
                    'Как использовать денежный код?',
                    style: GoogleFonts.montserrat(
                      color: Color.fromRGBO(73, 80, 87, 1),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    '''Код нужно нанести на купюру крупного достоинства и носите в кошельке как амулет на привлечение денег.
                
Как можно чаще применяйте финансовый код, используйте его при любой возможности и не сообщайте заветные цифры никому. 
              
Не забывайте, что деньги легко приходят к тем, кто доверяет этому миру, открыт всему новому, готов искренне верить и работать для достижения благородных целей. ''',
                    style: GoogleFonts.montserrat(
                      color: Color.fromRGBO(73, 80, 87, 1),
                      fontSize: 11.sp,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  padding: EdgeInsets.only(top: 5.91.h),
                ),
              ],
            ),
          ],
        ),
        width: 88.93.w,
        height: 24.75.h,
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

  @override
  String getName() {
    return Routes.money_code_result;
  }
}
