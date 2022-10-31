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

class RichCodeResult extends StatelessWidget implements Navigatable {
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
              top: 38.5.h,
              left: 5.5.w,
              right: 5.5.w,
              child: informationContainer(),
            ),
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

  Widget resultContainer() => Container(
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 1.72.h,
              left: 24.13.w,
              right: 24.13.w,
              child: AutoSizeText(
                'Код богатства',
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
                    '''Число богатства 9
- Это нейтральный код. Он не несет позитивного, либо негативного значения. Девятки не смогут баснословно разбогатеть, но и бедными тоже не будут. Они имеют достаточное количество денег для проживания и удовлетворения повседневных потребностей. Такие люди занимают среднее социальное положение, ничем особым не отличаясь. Если придерживаться золотой средины в расходах, можно жить сравнительно обеспеченно.
''',
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
        height: 28.32.h,
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
    return Routes.rich_code_result;
  }
}
