import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:resomy_client/core/helper/navigatable.dart';
import 'package:resomy_client/core/routes/routes.dart';
import 'package:resomy_client/modules/system/screens/components/background_image.dart';
import 'package:resomy_client/modules/system/screens/components/buttons_item.dart';
import 'package:resomy_client/modules/system/screens/components/exit_button_item.dart';
import 'package:resomy_client/modules/system/screens/components/text_input_field.dart';
import 'package:sizer/sizer.dart';

class AuthorizationScreen extends StatelessWidget implements Navigatable {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        height: height,
        child: Stack(
          children: [
            BackgroundImage(),
            mainInputColumn(),
            Positioned(
              top: 50.73.h,
              right: 30.4.w,
              left: 30.4.w,
              child: ButtonItem('Войти', 39.2.h, 13.3.w, 13.3.w),
            ),
            Positioned(
              top: 69.81.h,
              left: 10.1.w,
              right: 10.1.w,
              child: subText(context),
            ),
            ExitButtonItem(250, 250, 250),
          ],
        ),
      ),
    );
  }

  Widget mainInputColumn() => Positioned(
        top: 24.87.h,
        left: 4.66.w,
        right: 4.66.w,
        child: Container(
          padding: EdgeInsets.only(left: 6.w, top: 5.h, right: 6.w),
          width: 74.26.w,
          height: 41.87.h,
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
          child: Column(
            children: <Widget>[
              TextInputField(
                'Номер телефона',
                TextInputType.number,
                MaskTextInputFormatter(
                  mask: '+# (###) ###-##-##',
                  filter: {"#": RegExp(r'[0-9]')},
                ),
              ),
              SizedBox(
                height: 4.43.h,
              ),
              TextInputField(
                  'PIN-код', TextInputType.number, MaskTextInputFormatter()),
            ],
          ),
        ),
      );

  Widget subText(BuildContext context) => Row(
        children: [
          Text(
            'У вас нет аккаунта? ',
            style: GoogleFonts.montserrat(
              fontSize: 12.2.sp,
              color: Color.fromARGB(255, 142, 138, 138),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, Routes.registration_screen);
            },
            child: Text(
              'Зарегистрируйтесь',
              style: GoogleFonts.montserrat(
                  fontSize: 12.2.sp,
                  color: Color.fromARGB(255, 255, 151, 151),
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
        mainAxisAlignment: MainAxisAlignment.center,
      );

  @override
  String getName() {
    return Routes.authorization_screen;
  }
}
