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

class SuccessfulWorkResult extends StatelessWidget implements Navigatable {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
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
                  top: 35.h,
                  left: 5.33.w,
                  right: 5.33.w,
                  child: information(),
                ),
                Positioned(
                  top: 72.29.h,
                  left: 5.5.w,
                  right: 5.5.w,
                  child: CommentContainer(),
                ),
                ExitButtonItem(250, 250, 250),
              ],
            ),
          ),
        ],
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

  Widget information() => Container(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Text(
              '''Этому человеку нужно участвовать в независимых и оригинальных проектах, работать в частном бизнесе на предприятии с передовыми, новаторскими идеями и подходами. Он запрограммирован для творческой деятельности и для свободных профессий. Ему лучше трудиться не в общем большом коллективе, а взять на себя какую-то пусть и небольшую, но отдельную часть проекта. Уже в скором времени он сделает карьеру, и, как только ему предложат повышение, он не должен робеть и взвешивать, а тут же брать ответственность на себя. В принципе успех будет сопутствовать вам всегда и во всем.''',
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
            EdgeInsets.only(left: 5.w, top: 1.5.h, right: 5.w, bottom: 2.h),
        width: 89.06.w,
        height: 35.75.h,
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
    return Routes.successful_work_result;
  }
}
